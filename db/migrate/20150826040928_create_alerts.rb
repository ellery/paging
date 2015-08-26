class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.references :tone_set, index: true
      t.string :notes
      t.string :address

      t.timestamps
    end
  end
end
