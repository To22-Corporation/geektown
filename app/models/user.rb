class User < ApplicationRecord
  enum role: { general: 0, engineer: 1 }
  enum job: { collage: 0, bussiness: 1, student: 2 }

  has_many :user_contacts, class_name: 'Contact', :foreign_key => 'user_id'
  has_many :engineer_contacts, class_name: 'Contact', :foreign_key => 'engineer_id'
  has_many :languages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :first_name_kana, presence: true
  validates :first_name, presence: true
  validates :first_name_kana, presence: true
  validates :role, presence: true
  validates :age, presence: true
  validates :job, presence: true

  def full_name
    [last_name, first_name].join(' ')
  end
end
