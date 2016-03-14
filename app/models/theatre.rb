class Theatre < ActiveRecord::Base
	has_one :theatre_detail

	has_many :tickets

	belongs_to :movie
end
