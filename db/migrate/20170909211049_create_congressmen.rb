class CreateCongressmen < ActiveRecord::Migration[5.1]
  def change
    create_table :congressmen do |t|
      t.string :name
      t.string :party
      t.string :uf
      t.integer :ranking

      t.timestamps
    end
  end
end
