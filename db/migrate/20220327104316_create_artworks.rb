class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.references :year, null: false, foreign_key: true
      t.references :technique, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
