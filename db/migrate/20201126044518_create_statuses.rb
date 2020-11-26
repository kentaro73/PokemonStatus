class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :name, null: false
      t.integer :h, null: false
      t.integer :a, null: false
      t.integer :b, null: false
      t.integer :c, null: false
      t.integer :d, null: false
      t.integer :s, null: false

      t.timestamps
    end
  end
end
