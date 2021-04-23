class User < ApplicationRecord
    has_many :user_projects
    has_many :projects, through: :user_projects
    validates_presence_of :name, :email, :password
    validates_uniqueness_of :email
    has_secure_password
end
