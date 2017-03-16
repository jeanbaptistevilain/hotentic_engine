class AddColumnTitleAndDescToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_pages, :title, :text
    add_column :hotentic_engine_pages, :description, :text
  end
end
