class CreateJoinTableDogStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_dog_strolls do |t|

      t.belongs_to :dog, index: true
      t.belongs_to :stroll, index: true

      t.timestamps
    end
  end
end
