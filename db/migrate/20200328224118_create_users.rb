class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.integer :postcode
      t.string :password_digest
      t.boolean :admin, :default => false
      t.text :image
      t.boolean :responder, :default => false
      # t.integer :requester_id
      # t.integer :responder_id

      t.timestamps
    end
  end
end
