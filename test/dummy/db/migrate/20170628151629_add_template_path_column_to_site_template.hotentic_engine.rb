# This migration comes from hotentic_engine (originally 20170210153041)
class AddTemplatePathColumnToSiteTemplate < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_site_templates, :template_path, :string
  end
end
