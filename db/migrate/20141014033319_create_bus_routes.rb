class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.string :name
      t.string :points

      t.timestamps
    end
  end
end
