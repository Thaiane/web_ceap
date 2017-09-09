class CreateQuota < ActiveRecord::Migration[5.1]
  def change
    create_table :quota do |t|
      t.string :type
      t.string :month
      t.string :year
      t.integer :value
      t.string :description

      t.timestamps
    end
  end
end
