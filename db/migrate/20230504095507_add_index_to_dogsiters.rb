class AddIndexToDogsiters < ActiveRecord::Migration[7.0]
  def change
    add_reference :dogsiters, :city, foreign_key: true
  end
end
