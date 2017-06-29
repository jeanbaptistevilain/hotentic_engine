class AddColumnToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_images, :site_reference, :integer
  end
end
