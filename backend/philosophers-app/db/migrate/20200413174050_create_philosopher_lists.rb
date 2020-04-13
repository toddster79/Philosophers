class CreatePhilosopherLists < ActiveRecord::Migration[6.0]
  def change
    create_table :philosopher_lists do |t|
      t.references :user 
      t.references :philosopher 

      t.timestamps
    end
  end
end
