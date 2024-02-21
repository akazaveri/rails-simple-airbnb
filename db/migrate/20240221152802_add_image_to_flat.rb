class AddImageToFlat < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :image, :string
  end
end
