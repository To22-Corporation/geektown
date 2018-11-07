class AddCollageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :collage, index: true
  end
end
