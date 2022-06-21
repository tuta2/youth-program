class CreateNorthrifts < ActiveRecord::Migration[7.0]
  def change
    create_table :northrifts do |t|

      t.timestamps
    end
  end
end
