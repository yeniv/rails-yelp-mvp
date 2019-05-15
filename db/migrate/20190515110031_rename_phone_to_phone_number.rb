class RenamePhoneToPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    change_table :restaurants do |t|
      t.remove :phone
      t.string :phone_number
    end
  end
end
