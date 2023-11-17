class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :last_name
      t.text :review
      t.float :grade
      t.references :suplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
