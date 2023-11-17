class CreateSupliers < ActiveRecord::Migration[7.0]
  def change
    create_table :supliers do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :job
      t.string :hour
      t.float :cost
      t.string :location
      t.float :grade

      t.timestamps
    end
  end
end
