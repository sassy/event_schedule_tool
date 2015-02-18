class CreateProposedDates < ActiveRecord::Migration
  def change
    create_table :proposed_dates do |t|
      t.date :proposed_date

      t.timestamps
    end
  end
end
