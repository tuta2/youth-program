class CreateNortheasterns < ActiveRecord::Migration[7.0]
  def change
    create_table :northeasterns do |t|

      t.timestamps
    end
  end
end
