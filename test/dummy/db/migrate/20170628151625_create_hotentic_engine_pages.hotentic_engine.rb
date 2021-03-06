# This migration comes from hotentic_engine (originally 20170208102732)
class CreateHotenticEnginePages < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_pages do |t|

      t.belongs_to :hotentic_engine_site, new: {name: 'idx_pages_to_site_id' }
      t.timestamps
      t.integer :order
      t.string :path
      t.decimal :priority
      t.boolean :active
      t.string :metadata
      t.string :template_path

    end
  end
end
