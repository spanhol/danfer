class CreateQuarto < ActiveRecord::Migration
  def change
    create_table :quarto do |t|
      t.integer :numero_quarto
      t.integer :andar
      t.integer :categoria_quarto_id

      t.timestamps null: false
    end
  end
end
