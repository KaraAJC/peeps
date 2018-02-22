class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
    	t.string :title
    	t.datetime :start_time
    	t.datetime :end_time
    	t.boolean :pets_invited
      t.timestamps
    end
  end
end
