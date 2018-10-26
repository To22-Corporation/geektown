class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.integer :engineer_id
      t.references :language
      t.text :content

      t.timestamps
    end
  end
end
