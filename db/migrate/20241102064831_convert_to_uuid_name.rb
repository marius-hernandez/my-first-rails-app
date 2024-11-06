class ConvertToUuidName < ActiveRecord::Migration[7.2]
  def change
    rename_column :posts, :id, :uuid
  end
end
