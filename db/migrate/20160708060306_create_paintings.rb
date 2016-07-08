class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.timestamps null: false
    end

    add_attachment :paintings, :image
  end
end
