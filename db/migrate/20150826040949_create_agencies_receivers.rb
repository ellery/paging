class CreateAgenciesReceivers < ActiveRecord::Migration
  def change
    create_table :agencies_receivers do |t|
      t.belongs_to :agency, index: true
      t.belongs_to :receiver, index: true
    end
  end
end
