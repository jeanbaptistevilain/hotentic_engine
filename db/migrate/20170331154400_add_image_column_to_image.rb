class AddImageColumnToImage < ActiveRecord::Migration[5.0]
  def change
    add_attachment :hotentic_engine_images, :image
  end
end
