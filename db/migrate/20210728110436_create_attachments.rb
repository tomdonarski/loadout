class CreateAttachments < ActiveRecord::Migration[6.1]
  def change
    create_table :attachments do |t|
      t.string :name, null: false
      t.float :accuracy_modifier, null: false, default: 0
      t.float :range_modifier, null: false, default: 0
      t.float :damage_modifier, null: false, default: 0
      t.float :fire_rate_modifier, null: false, default: 0
      t.float :mobility_modifier, null: false, default: 0
      t.float :control_modifier, null: false, default: 0
      t.timestamps
    end
  end
end
