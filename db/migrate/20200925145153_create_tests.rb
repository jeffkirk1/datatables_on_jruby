class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :position
      t.string :office
      t.integer :age
      t.date :start_date
      t.integer :salary

      t.timestamps
    end
  end
end
