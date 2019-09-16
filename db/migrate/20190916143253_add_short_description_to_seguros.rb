class AddShortDescriptionToSeguros < ActiveRecord::Migration[5.2]
  def change
    add_column :seguros, :shortdescription, :string
  end
end
