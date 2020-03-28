class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :description
      t.string :type
      t.string :urgency
      t.text :image
      t.boolean :active, :default => false
      t.boolean :use_postcode, :default => true
      t.integer :location_id
      t.integer :user_id
      t.integer :responder_id

      t.timestamps
    end
  end
end
