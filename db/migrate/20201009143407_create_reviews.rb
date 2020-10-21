class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.string :title, null: false
      t.integer :evaluation, null: false
      t.text :comment
      t.text :commentImg
      t.timestamps
    end
  end
end
