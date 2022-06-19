class CreateMombasas < ActiveRecord::Migration[7.0]
  def change
    create_table :mombasas do |t|
      t.string :sub_county
      t.integer :investiture_sungura
      t.integer :investiture_chipukizi
      t.integer :investiture_mwamba
      t.integer :investiture_jasiri
      t.integer :total

      t.timestamps
    end
  end
end
