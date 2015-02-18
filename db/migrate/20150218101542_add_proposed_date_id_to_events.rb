class AddProposedDateIdToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :proposed_date, index: true
  end
end
