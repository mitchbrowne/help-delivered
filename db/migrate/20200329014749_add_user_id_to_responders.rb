class AddUserIdToResponders < ActiveRecord::Migration[5.2]
  def change
    add_column :responders, :user_id, :integer
  end
end
