# This migration comes from hotentic_engine (originally 20170331124833)
class CreateHotenticEngineImages < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_images do |t|
      t.string :reference
      t.timestamps
    end
  end
end
