class CreateUpdateTimes < ActiveRecord::Migration
  def change
    create_table :update_times do |t|

      t.timestamps null: false
    end
  end
end
