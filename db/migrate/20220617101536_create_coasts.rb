class CreateCoasts < ActiveRecord::Migration[7.0]
  def change
    create_table :coasts do |t|
      t.string :detail

      t.timestamps
    end
  end
end
