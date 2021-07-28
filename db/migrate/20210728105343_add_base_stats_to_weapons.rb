class AddBaseStatsToWeapons < ActiveRecord::Migration[6.1]
  def change
    change_table :weapons do |t|
      t.integer :accuracy, null: false, default: 0
      t.integer :range, null: false, default: 0
      t.integer :damage, null: false, default: 0
      t.integer :fire_rate, null: false, default: 0
      t.integer :mobility, null: false, default: 0
      t.integer :control, null: false, default: 0
    end
  end
end
