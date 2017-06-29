# This migration comes from hotentic_engine (originally 20170628151027)
class AddColumnToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_images, :site_reference_id, :integer
  end
end
