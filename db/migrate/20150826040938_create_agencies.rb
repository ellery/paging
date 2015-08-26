class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
