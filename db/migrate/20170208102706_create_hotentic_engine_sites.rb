class CreateHotenticEngineSites < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_sites do |t|

      t.belongs_to :hotentic_engine_site_template, index: { name: 'idx_sites_to_site_template_id' }
      t.timestamps
      t.string :name

    end
  end
end
