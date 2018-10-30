class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :engineer, class_name: 'User', foreign_key: 'engineer_id'
end
