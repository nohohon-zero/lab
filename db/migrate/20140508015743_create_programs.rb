class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
