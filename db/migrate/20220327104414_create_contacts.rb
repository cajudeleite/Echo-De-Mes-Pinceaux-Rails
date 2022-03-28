class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :e_mail
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
