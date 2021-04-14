class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :linkedin
      t.string :github
      t.string :twitter
      t.string :facebook
      t.string :youtube
      t.string :instagram

      t.timestamps
    end
  end
end
