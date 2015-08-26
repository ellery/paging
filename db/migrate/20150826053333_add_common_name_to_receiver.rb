class AddCommonNameToReceiver < ActiveRecord::Migration
  def change
    add_column :receivers, :common_name, :string
  end
end
