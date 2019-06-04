class CreateStudioImages < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_images do |t|
      t.references :studio
      t.string :image
      t.timestamps
    end
  end
end
