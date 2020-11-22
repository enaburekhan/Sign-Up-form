class User < ApplicationRecord
    PASSWORD_REQUIRMENTS = /\A
    (?=.*\d)           # Must contain a digit
    (?=.*[a-z])        # Must contain a lower case character
    (?=.*[A-Z])        # Must contain an upper case characte
    /x.freeze
    validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20 }
    validates :email, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20 }
    validates :password, presence: true, length: { minimum: 8, maximum: 20 }, format: { with: PASSWORD_REQUIRMENTS }
      
end
