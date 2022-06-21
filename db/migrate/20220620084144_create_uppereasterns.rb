class CreateUppereasterns < ActiveRecord::Migration[7.0]
  def change
    create_table :uppereasterns do |t|

      t.timestamps
    end
  end
end
