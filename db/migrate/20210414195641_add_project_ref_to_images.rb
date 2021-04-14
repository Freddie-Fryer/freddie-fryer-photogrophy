class AddProjectRefToImages < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :project, foreign_key: true
  end
end
