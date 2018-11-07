class DropJobFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :job, :integer
  end

  def down
    add_column :users, :job, :integer
  end
end
