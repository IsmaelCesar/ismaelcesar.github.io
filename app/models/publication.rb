class Publication < ApplicationRecord
  has_many :publication_authors
  has_many :authors, through: :publication_authors
end
