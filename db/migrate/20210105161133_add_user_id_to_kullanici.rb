class AddUserIdToKullanici < ActiveRecord::Migration[6.1]
  def change
    add_column :kullanicis, :user_id, :integer
    add_index :kullanicis, :user_id
  end
end
