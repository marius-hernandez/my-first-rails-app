class ConvertToUuid < ActiveRecord::Migration[7.2]
  def up
    remove_column :posts, :id
    add_column :posts, :id, :uuid, default: 'gen_random_uuid()', null: false, primary_key: true
  end
end
