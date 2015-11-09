class CreateHospede < ActiveRecord::Migration
  def change
    create_table :hospede do |t|
      t.string :cpf
      t.string :nome
      t.string :placa
      t.date :nascimento
      t.string :rg

      t.timestamps null: false
    end
  end
end
