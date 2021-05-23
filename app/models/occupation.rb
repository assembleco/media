class Occupation < ApplicationRecord
  belongs_to :person
  belongs_to :role
end
