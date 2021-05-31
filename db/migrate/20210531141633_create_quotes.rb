class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.integer :kind_id
      t.string :content
      t.string :author
      t.string :description

      t.timestamps
    end
  end
end
