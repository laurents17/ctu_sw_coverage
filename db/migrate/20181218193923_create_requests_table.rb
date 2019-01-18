class CreateRequestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :ooh_name
      t.date :startdate
      t.date :enddate
      t.time :starttime
      t.time :endtime
      t.text :todo
      t.string :cov_name
    end
  end
end
