class LanguageSkillLevel < ApplicationRecord
  enum skill_level_type: { beginner: 1, elemetary: 2, intermediate: 3, 'upper-intermediate': 4, advanced: 5 , proficient: 6} 
end
