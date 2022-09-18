class RemoveUserIdFromLoginUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :login_users, :user_id, :integer
  end
end
