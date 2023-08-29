class CreateContact < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :phone_number
      t.string :email
      t.integer :linked_id
      t.integer :link_precedence
      t.timestamp :deleted_at
      t.timestamps
    end
  end
end
