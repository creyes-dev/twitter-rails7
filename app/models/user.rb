class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  validates :name, presence: true, length: {maximum:50}
  validates :first_name,  presence: true, length: {maximum:50}
  validates :last_name, presence: true, length: {maximum:50}
  validates :department_id, presence: true
end
