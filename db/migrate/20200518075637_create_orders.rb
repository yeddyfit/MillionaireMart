class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :design, foreign_key: true
      t.string :address
      t.string :shirt_size
      t.integer :creatorID

      t.timestamps
    end
  end
end
