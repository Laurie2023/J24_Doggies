class CreateDogsiters < ActiveRecord::Migration[7.0]
  def change
    create_table :dogsiters do |t|
      t.string :name

      t.timestamps
    end
  end
end
