class CreateFlatsharings < ActiveRecord::Migration[6.1]
  def change
    create_table :flatsharings do |t|
      t.string :title
      t.string :description
      t.integer :admin_id
      t.text :pending_invitation
      t.text :flat_mate
      t.timestamps
    end
  end
end
