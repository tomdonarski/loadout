class ChangeStatsDatatypesBack < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :weapons do |t|
        dir.up   { t.change :accuracy, :integer }
        dir.up   { t.change :range, :integer }
        dir.up   { t.change :damage, :integer }
        dir.up   { t.change :fire_rate, :integer }
        dir.up   { t.change :mobility, :integer }
        dir.up   { t.change :control, :integer }

        dir.down   { t.change :accuracy, :float }
        dir.down   { t.change :range, :float }
        dir.down   { t.change :damage, :float }
        dir.down   { t.change :fire_rate, :float }
        dir.down   { t.change :mobility, :float }
        dir.down   { t.change :control, :float }
      end
    end
  end
end
