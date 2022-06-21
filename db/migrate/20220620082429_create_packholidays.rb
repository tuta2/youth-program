class CreatePackholidays < ActiveRecord::Migration[7.0]
  def change
    create_table :packholidays do |t|

      t.timestamps
    end
  end
end
