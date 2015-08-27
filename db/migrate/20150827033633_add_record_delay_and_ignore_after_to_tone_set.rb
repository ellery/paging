class AddRecordDelayAndIgnoreAfterToToneSet < ActiveRecord::Migration
  def change
    add_column :tone_sets, :record_delay, :float
    add_column :tone_sets, :ignore_after, :integer
  end
end
