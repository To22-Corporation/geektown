class Language < ApplicationRecord
  has_many :user, through: :user_languages
  has_many :user_languages
end
