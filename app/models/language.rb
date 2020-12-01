class Language < ApplicationRecord
  has_many :language_skill_and_levels
  has_many :language_skills, through: :language_skill_and_levels
  has_many :language_skill_levels, through: :language_skill_and_levels
end
