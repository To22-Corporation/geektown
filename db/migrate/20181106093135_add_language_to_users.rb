class AddLanguageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :language, index: true
  end
end
