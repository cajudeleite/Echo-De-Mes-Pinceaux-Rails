class CreateTechniques < ActiveRecord::Migration[6.0]
  def change
    create_table :techniques do |t|
      t.string :name

      t.timestamps
    end
  end
end
