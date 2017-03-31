class AddColumnsToImageContainer < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_image_containers, :reference, :string
  end
end
