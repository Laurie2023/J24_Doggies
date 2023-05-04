class Dog < ApplicationRecord
  belongs_to :city
  has_many :join_table_dog_strolls
  has_many :strolls, through: :join_table_dog_strolls
  has_many :dogsiters, through: :strolls
end
