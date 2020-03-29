class CreateRequestersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :requesters_users, :id => false do |t|
      t.integer :requester_id
      t.integer :user_id
    end
  end
end
