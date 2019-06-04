class CreateStudioType < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_types do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :studios, :studio_types do |t|
      t.index [:studio_id, :studio_type_id]
      t.index [:studio_type_id, :studio_id]
    end
  end
end
