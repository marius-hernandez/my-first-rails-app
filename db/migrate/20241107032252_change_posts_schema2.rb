class ChangePostsSchema2 < ActiveRecord::Migration[7.2]
  def change
    change_column_default :posts, :created_at, -> { 'CURRENT_TIMESTAMP' }
    change_column_default :posts, :updated_at, -> { 'CURRENT_TIMESTAMP' }
  end
end
