class CreateThingWithErrors < ActiveRecord::Migration
  def change
    create_table :thing_with_errors do |t|
      t.string :name

      t.timestamps
    end
  end
end
