class CreateLowereasterns < ActiveRecord::Migration[7.0]
  def change
    create_table :lowereasterns do |t|

      t.timestamps
    end
  end
end
