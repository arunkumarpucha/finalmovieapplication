class Customer < ActiveRecord::Base
	has_many :tickets
	validates :name,:phno,presence: true
end
