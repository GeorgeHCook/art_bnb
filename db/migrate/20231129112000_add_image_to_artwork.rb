class AddImageToArtwork < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :image, :string
  end
end
