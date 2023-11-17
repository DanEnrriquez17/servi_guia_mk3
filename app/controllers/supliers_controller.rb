class SupliersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @supliers = Suplier.all
    if params[:query].present?
      sql_subquery = <<~SQL
        supliers.name @@ :query
        OR supliers.job @@ :query
        OR reviews.review @@ :query
      SQL
      @supliers = @supliers.joins(:reviews).where(sql_subquery, query: params[:query])
    end
  end
  def show
    @suplier = Suplier.find(params[:id])
    @reviews = @suplier.reviews
  end

  private

  def proveedor_params
    params.require(:suplier).permit(:avatar, :reviews)
  end
end
