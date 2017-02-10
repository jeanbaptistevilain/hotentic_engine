class RenameForeignKeyColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :hotentic_engine_image_containers, :hotentic_engine_page_id, :page_id
    rename_column :hotentic_engine_image_containers, :hotentic_engine_site_id, :site_id
    rename_column :hotentic_engine_text_containers, :hotentic_engine_page_id, :page_id
    rename_column :hotentic_engine_text_containers, :hotentic_engine_site_id, :site_id
    rename_column :hotentic_engine_sites, :hotentic_engine_site_template_id, :site_template_id
    rename_column :hotentic_engine_pages, :hotentic_engine_site_id, :site_id
  end
end
