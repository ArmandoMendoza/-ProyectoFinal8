class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


enum user_type: [:freelance, :influencer, :tradicional]

has_one :profile, dependent: :destroy
has_many :users_press_conferences

after_create :create_user_profile


accepts_nested_attributes_for :profile, update_only: true

private

def create_user_profile
   create_profile! if profile.nil?
 end

end
