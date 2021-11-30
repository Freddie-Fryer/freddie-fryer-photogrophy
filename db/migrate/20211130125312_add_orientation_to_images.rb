class AddOrientationToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :orientation, :string
  end
end
