class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.decimal :min_price
      t.decimal :max_price
      t.string :location

      t.timestamps
    end
  end
end
