class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.timestamps
    end
  end
end
