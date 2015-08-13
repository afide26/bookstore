class Publisher < ActiveRecord::Base
	has_many :books
	validates_presence_of :name, length: {minimum:3}
end
