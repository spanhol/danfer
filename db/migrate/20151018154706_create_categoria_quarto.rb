class CreateCategoriaQuarto < ActiveRecord::Migration
  def change
    create_table :categoria_quarto do |t|
      t.string :descricao
      t.float :valor

      t.timestamps null: false
    end
  end
end
