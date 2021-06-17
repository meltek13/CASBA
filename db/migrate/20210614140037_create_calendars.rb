class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.string :title
      t.string :description
      t.string :timedate
      t.integer :dashboard
      t.integer :by

      t.timestamps
    end
  end
end
