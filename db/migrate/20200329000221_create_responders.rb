class CreateResponders < ActiveRecord::Migration[5.2]
  def change
    create_table :responders do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
