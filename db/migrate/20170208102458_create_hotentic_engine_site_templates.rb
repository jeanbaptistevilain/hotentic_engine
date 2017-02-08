class CreateHotenticEngineSiteTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_site_templates do |t|

      t.timestamps
      t.string :reference
      t.string :theme
      t.text :template_pages

    end
  end
end
