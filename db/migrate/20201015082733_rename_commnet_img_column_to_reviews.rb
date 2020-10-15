class RenameCommnetImgColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :commnetImg, :commentImg
  end
end
