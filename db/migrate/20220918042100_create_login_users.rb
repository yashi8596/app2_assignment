class CreateLoginUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :login_users do |t|
      t.string :name, null: false
      t.text :introduction
      t.integer :user_id
      t.timestamps
    end
  end
end
