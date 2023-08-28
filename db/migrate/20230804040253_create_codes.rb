class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.integer :code, null:false
      t.string :title, null:false
      t.text :body
      t.integer :occurrence_count, default: 1

      t.timestamps
    end
  end
end
