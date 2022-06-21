class CreateNairobis < ActiveRecord::Migration[7.0]
  def change
    create_table :nairobis do |t|

      t.timestamps
    end
  end
end
