class Book < ActiveRecord::Base
	belongs_to :category
	belongs_to :author
	belongs_to :publisher

	validates_presence_of :title
end


# , :category_id, :author_id, :publisher_id, :isbn, :buy, :price, :format, :excerpt, :pages, :year