class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

end
