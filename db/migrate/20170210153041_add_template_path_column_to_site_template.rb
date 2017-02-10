class AddTemplatePathColumnToSiteTemplate < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_site_templates, :template_path, :string
  end
end
