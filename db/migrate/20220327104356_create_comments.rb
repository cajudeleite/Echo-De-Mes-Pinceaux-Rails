class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :message
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
