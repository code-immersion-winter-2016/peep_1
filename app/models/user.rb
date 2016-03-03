class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :realtionships
  has_many :friends through :relationship

  validates :name , presence: true
  validates :username , presence: true , uniqueness: true

end
