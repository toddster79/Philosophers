class CreatePhilosopherLists < ActiveRecord::Migration[6.0]
  def change
    create_table :philosopher_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :philosopher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
