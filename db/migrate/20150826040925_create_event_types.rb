class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.references :alert, index: true

      t.timestamps
    end
  end
end
