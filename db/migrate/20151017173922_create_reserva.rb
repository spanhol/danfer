class CreateReserva < ActiveRecord::Migration
  def change
    create_table :reserva do |t|
      t.date :data_inicial
      t.string :cpf
      t.integer :numero_quarto
      t.date :data_final

      t.timestamps null: false
    end
  end
end
