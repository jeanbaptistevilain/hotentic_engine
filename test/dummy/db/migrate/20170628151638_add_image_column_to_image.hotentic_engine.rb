# This migration comes from hotentic_engine (originally 20170331154400)
class AddImageColumnToImage < ActiveRecord::Migration[5.0]
  def change
    add_attachment :hotentic_engine_images, :image
  end
end
