class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :category
      t.references :user, foreign_key: true
      t.string :publication_date
      t.text :description

      t.timestamps
    end
  end
end
