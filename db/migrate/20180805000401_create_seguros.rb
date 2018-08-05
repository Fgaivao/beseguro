class CreateSeguros < ActiveRecord::Migration[5.2]
  def change
    create_table :seguros do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :type

      t.timestamps
    end
  end
end
