# This migration comes from hotentic_engine (originally 20170208105233)
class CreateHotenticEngineImageContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_image_containers do |t|

      t.belongs_to :hotentic_engine_site, new: {name: 'idx_image_containers_to_site_id' }
      t.belongs_to :hotentic_engine_page, new: {name: 'idx_image_containers_to_page_id' }
      t.timestamps

    end
  end
end
