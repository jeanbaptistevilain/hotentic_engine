class AddContentColumnToTextContainer < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_text_containers, :content, :string
  end
end
