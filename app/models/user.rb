require 'net/http'
require 'bcrypt'

class User < ApplicationRecord
    devise :database_authenticatable, 
    :recoverable, :rememberable, :validatable
    has_one :student
    has_one :staff
    
    default_scope {order(email: :asc)}
end
