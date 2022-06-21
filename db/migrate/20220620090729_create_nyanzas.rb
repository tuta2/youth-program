class CreateNyanzas < ActiveRecord::Migration[7.0]
  def change
    create_table :nyanzas do |t|

      t.timestamps
    end
  end
end
