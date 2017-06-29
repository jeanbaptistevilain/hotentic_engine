# This migration comes from hotentic_engine (originally 20170315160737)
class AddLabelColumnToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_pages, :label, :string
  end
end
