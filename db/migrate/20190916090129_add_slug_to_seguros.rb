class AddSlugToSeguros < ActiveRecord::Migration[5.2]
  def change
    add_column :seguros, :slug, :string
    add_index :seguros, :slug, unique: true
  end
end
