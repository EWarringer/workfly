class User < ApplicationRecord
  has_one :employer
  has_one :job_seeker

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, email: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
