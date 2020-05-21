class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.time :opened_at
      t.time :closed_at

      t.timestamps
    end
  end
end
