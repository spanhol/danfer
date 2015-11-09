class CreateEstadia < ActiveRecord::Migration
  def change
    create_table :estadia do |t|
      t.string :cpf
      t.integer :numero_quarto
      t.integer :categoria_quarto_id
      t.date :data_inicial
      t.date :data_final
      t.integer :qtde_pessoas
      t.float :valor_diaria

      t.timestamps null: false
    end
  end
end
