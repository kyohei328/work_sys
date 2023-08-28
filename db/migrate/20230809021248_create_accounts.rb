class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :account_code, null:false
      t.string :name, null:false

      t.timestamps
    end
  end
end
