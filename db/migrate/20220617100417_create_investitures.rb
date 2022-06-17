class CreateInvestitures < ActiveRecord::Migration[7.0]
  def change
    create_table :investitures do |t|
      t.string :detail

      t.timestamps
    end
  end
end
