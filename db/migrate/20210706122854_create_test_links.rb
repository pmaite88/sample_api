class CreateTestLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :test_links do |t|

      t.timestamps
    end
  end
end
