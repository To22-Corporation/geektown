class ChangeColumnToUser < ActiveRecord::Migration[5.2]

  # add null:false and default value to basic profile
  def up
    change_column :users, :role, :integer, null: false, default: 0
    change_column :users, :first_name, :string, null: false
    change_column :users, :first_name_kana, :string, null: false
    change_column :users, :last_name, :string, null: false
    change_column :users, :last_name_kana, :string, null: false
    change_column :users, :age, :integer, null: false, default: 20
    change_column :users, :job, :integer, null: false, default: 0
  end

  # for enabling rollback
  def down
    change_column :users, :role, :integer
    change_column :users, :first_name, :string
    change_column :users, :first_name_kana, :string
    change_column :users, :last_name, :string
    change_column :users, :last_name_kana, :string
    change_column :users, :age, :integer
    change_column :users, :job, :integer
  end
end