class EventSetup < ActiveRecord::Migration[5.2]
  def change
  	create_table :events do |t|
      t.text :description
      t.datetime :datetime
      t.string :place
      t.integer :creator_id
  	end
  	create_table :users do |t|
      t.string :name
  	end
  end
end
