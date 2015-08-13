class Book < ActiveRecord::Base
	belongs_to :category
	belongs_to :author
	belongs_to :publisher

	validates_presence_of :title
end
