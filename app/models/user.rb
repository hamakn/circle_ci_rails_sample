class User < ActiveRecord::Base
  validates :name, length: { minimum: 2 }
  validates :email, uniqueness: true
end
