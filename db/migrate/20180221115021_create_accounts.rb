class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :login
      t.string :password_digest

      t.timestamps
    end
    add_index :accounts, :login, unique: true
  end
end
