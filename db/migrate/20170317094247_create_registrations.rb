class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :status
      t.decimal :price

      t.timestamps
    end
  end
end
