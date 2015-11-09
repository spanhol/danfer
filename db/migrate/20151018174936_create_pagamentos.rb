class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.date :data
      t.integer :dias
      t.integer :id_estadia

      t.timestamps null: false
    end
  end
end
