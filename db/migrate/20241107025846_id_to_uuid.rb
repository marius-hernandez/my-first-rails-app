class IdToUuid < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :id, :integer, if_exists:true

    add_column :users, :uuid, :uuid, primary_key: true, default: 'gen_random_uuid()'
  end
end
