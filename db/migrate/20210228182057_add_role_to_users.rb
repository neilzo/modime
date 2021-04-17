class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.integer :role, null: false, default: 0
    end
  end
end
