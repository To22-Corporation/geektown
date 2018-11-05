class User < ApplicationRecord
  has_one_attached :avatar
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

  def polite_job
    case job
    when 0
      '大学生'
    when 1
      '社会人'
    when 2
      '高校生'
    end
  end

  def polite_age
    age.to_s + '歳'
  end
end
