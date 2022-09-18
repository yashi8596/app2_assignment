class DeleteLoginUsers < ActiveRecord::Migration[6.1]
  def change
    drop_table :login_users
  end
end
