class CreateUserAlertMethods < ActiveRecord::Migration
  def change
    create_table :user_alert_methods do |t|
      t.integer :method_type
      t.string :address
      t.references :user, index: true
      t.references :agency, index: true

      t.timestamps
    end
  end
end
