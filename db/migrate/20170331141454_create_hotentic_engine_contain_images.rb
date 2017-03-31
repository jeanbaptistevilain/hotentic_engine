class CreateHotenticEngineContainImages < ActiveRecord::Migration[5.0]
  def change
    create_table :hotentic_engine_contain_images do |t|
      t.belongs_to :image, index: { name: 'idx_contain_img_to_image' }
      t.belongs_to :image_container, index: { name: 'idx_contain_img_to_img_container' }
      t.timestamps
    end
  end
end
