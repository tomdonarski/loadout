class ChangeAttachmentStatsDatatype < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :attachments do |t|
        dir.up   { t.change :accuracy_modifier, :integer }
        dir.up   { t.change :range_modifier, :integer }
        dir.up   { t.change :damage_modifier, :integer }
        dir.up   { t.change :fire_rate_modifier, :integer }
        dir.up   { t.change :mobility_modifier, :integer }
        dir.up   { t.change :control_modifier, :integer }

        dir.down   { t.change :accuracy_modifier, :float }
        dir.down   { t.change :range_modifier, :float }
        dir.down   { t.change :damage_modifier, :float }
        dir.down   { t.change :fire_rate_modifier, :float }
        dir.down   { t.change :mobility_modifier, :float }
        dir.down   { t.change :control_modifier, :float }
      end
    end
  end
end
