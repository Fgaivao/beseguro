class AddDestequeToSeguros < ActiveRecord::Migration[5.2]
  def change
    add_column :seguros, :destaque, :boolean
  end
end
