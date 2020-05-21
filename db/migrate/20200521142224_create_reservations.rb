class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :table, null: false, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :user_name

      t.timestamps
    end
  end
end
