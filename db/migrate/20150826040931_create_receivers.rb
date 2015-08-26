class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :location
      t.float :frequency
      t.references :user, index: true
      t.float :latitude
      t.float :longitude
      t.float :haat

      t.timestamps
    end
  end
end
