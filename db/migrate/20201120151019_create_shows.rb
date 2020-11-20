class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :city
      t.datetime :show_time
      t.timestamps
    end
  end
end
