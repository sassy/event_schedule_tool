class AddUserIdToJoinLists < ActiveRecord::Migration
  def change
    add_reference :join_lists, :user, index: true
  end
end
