class LanguageSkill < ApplicationRecord
  enum skill_type: { speaking: 1, reading: 2,  writing: 3, listening: 4}
end
