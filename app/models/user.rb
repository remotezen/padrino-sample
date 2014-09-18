class User < ActiveRecord::Base
  #field validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true,
    uniqueness: true
  validates :email, presence: true,
    uniqueness: true, format:{with: VALID_EMAIL_REGEX}
  validates :password, presence: true,
    confirmation: true

  has_many :job_offers  

end
