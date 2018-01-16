class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :toolid
      t.string :tname
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
