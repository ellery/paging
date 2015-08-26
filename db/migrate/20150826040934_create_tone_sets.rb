class CreateToneSets < ActiveRecord::Migration
  def change
    create_table :tone_sets do |t|
      t.float :a_tone
      t.float :b_tone
      t.float :long_tone
      t.float :a_tone_time
      t.float :b_tone_time
      t.float :long_tone_time
      t.references :agency, index: true

      t.timestamps
    end
  end
end
