class AddBasicProfileToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer
    add_column :users, :first_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :last_name, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :age, :integer
    add_column :users, :job, :integer
  end
end