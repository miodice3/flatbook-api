class User < ApplicationRecord
    has_many :user_projects
    has_many :projects, through: :user_projects
    validates_presence_of :name, :phone, :email 
end
