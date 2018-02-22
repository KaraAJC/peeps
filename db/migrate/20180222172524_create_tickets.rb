class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
    	t.belongs_to :party
    	t.belongs_to :person
    	t.integer :cost
      t.timestamps
    end
  end
end
