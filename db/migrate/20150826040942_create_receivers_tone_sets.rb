class CreateReceiversToneSets < ActiveRecord::Migration
  def change
    create_table :receivers_tone_sets do |t|
      t.belongs_to :receiver, index: true
      t.belongs_to :tone_set, index: true
    end
  end
end
