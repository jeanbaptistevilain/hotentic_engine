# This migration comes from hotentic_engine (originally 20170315165441)
class AddColumnTitleAndDescToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_pages, :title, :text
    add_column :hotentic_engine_pages, :description, :text
  end
end
