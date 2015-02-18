class AddJoinListIdToProposedDates < ActiveRecord::Migration
  def change
    add_reference :proposed_dates, :join_list, index: true
  end
end
