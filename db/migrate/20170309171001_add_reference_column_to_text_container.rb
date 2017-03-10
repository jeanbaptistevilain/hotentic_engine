class AddReferenceColumnToTextContainer < ActiveRecord::Migration[5.0]
  def change
    add_column :hotentic_engine_text_containers, :reference, :string
  end
end
