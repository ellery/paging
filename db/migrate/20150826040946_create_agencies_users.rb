class CreateAgenciesUsers < ActiveRecord::Migration
  def change
    create_table :agencies_users do |t|
      t.belongs_to :agency, index: true
      t.belongs_to :user, index: true
    end
  end
end
