class CreateExtensions < ActiveRecord::Migration[5.2]
  def change
    create_table :extensions do |t|

      t.timestamps
    end
  end
end
