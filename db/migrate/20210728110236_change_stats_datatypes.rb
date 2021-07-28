class ChangeStatsDatatypes < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :weapons do |t|
        dir.up   { t.change :accuracy, :float }
        dir.up   { t.change :range, :float }
        dir.up   { t.change :damage, :float }
        dir.up   { t.change :fire_rate, :float }
        dir.up   { t.change :mobility, :float }
        dir.up   { t.change :control, :float }

        dir.down   { t.change :accuracy, :integer }
        dir.down   { t.change :range, :integer }
        dir.down   { t.change :damage, :integer }
        dir.down   { t.change :fire_rate, :integer }
        dir.down   { t.change :mobility, :integer }
        dir.down   { t.change :control, :integer }
      end
    end
  end
end
