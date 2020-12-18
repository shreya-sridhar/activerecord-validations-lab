class Author < ActiveRecord::Base
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :phone_number, length: { is: 10 }
    validates :phone_number, uniqueness: true
end
