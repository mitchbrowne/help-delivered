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
      t.boolean :volunteer, :default => false

      t.timestamps
    end
  end
end
