class CreatePictureBases < ActiveRecord::Migration
  def change
    create_table :picture_bases do |t|
      t.references :flat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
