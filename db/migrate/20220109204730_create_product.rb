class CreateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title 
      t.string :projectURL
      t.string :techstack
      t.string :description

      t.belongs_to :experience, foreign_key: true


      t.timestamps
    end
  end
end
