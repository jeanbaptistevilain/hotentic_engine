# This migration comes from hotentic_engine (originally 20170208102706)
class CreateHotenticEngineSites < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_sites do |t|

      t.belongs_to :hotentic_engine_site_template, new: {name: 'idx_sites_to_site_template_id' }
      t.timestamps
      t.string :name

    end
  end
end
