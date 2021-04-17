class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  ROLES = %i[user admin].freeze
  enum role: ROLES

  def admin?
    role.to_sym == :admin
  end
end
