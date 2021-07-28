class AddNonNullConstraintOnWeaponsName < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:weapons, :name, false, 'Weapon')
  end
end
