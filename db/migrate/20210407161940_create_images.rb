class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :title
      t.date :date
      t.time :time
      t.float :aperature
      t.string :speed
      t.integer :iso
      t.string :camera
      t.text :info

      t.timestamps
    end
  end
end
