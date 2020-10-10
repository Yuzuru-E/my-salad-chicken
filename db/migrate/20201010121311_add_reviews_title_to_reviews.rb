class AddReviewsTitleToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :reviewTitle, :string
  end
end
