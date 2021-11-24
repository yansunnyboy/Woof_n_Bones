class Centre < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Ruby", "JavaScript", "CSS"]
end
