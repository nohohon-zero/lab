class CreateProgramCategories < ActiveRecord::Migration
  def change
    create_table :program_categories do |t|
      t.references :program, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
