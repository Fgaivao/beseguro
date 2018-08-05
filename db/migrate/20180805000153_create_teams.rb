class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :email

      t.timestamps
    end
  end
end
