class LanguageSkillAndLevel < ApplicationRecord
  belongs_to :language
  belongs_to :language_skill
  belongs_to :language_skill_level
end
