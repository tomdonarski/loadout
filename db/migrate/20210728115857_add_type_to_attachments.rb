class AddTypeToAttachments < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE attachment_type AS ENUM ('muzzle', 'optics', 'stock', 'barrel', 'underbarrel', 'magazine', 'rear_grip');
    SQL
    add_column :attachments, :attachment_type, :attachment_type, null: false
    add_index :attachments, :attachment_type
  end
  def down
    remove_column :attachments, :attachment_type
    execute <<-SQL
      DROP TYPE attachment_type;
    SQL
  end
end
