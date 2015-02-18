class CreateJoinLists < ActiveRecord::Migration
  def change
    create_table :join_lists do |t|

      t.timestamps
    end
  end
end
