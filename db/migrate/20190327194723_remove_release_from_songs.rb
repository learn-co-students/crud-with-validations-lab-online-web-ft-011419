class RemoveReleaseFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :release, :boolean
  end
end
