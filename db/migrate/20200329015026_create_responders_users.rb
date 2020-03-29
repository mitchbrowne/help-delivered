class CreateRespondersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :responders_users, :id => false do |t|
      t.integer :responder_id
      t.integer :user_id
    end
  end
end
