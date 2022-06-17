class CreateMombasas < ActiveRecord::Migration[7.0]
  def change
    create_table :mombasas do |t|
      t.string :detail

      t.timestamps
    end
  end
end
