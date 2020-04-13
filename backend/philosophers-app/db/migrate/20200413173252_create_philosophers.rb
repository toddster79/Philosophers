class CreatePhilosophers < ActiveRecord::Migration[6.0]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.text :summary
      t.string :image

      t.timestamps
    end
  end
end
