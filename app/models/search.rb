class Search < ApplicationRecord

	def search_stuffs

		stuffs = Stuff.all

		stuffs = stuffs.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
		stuffs = stuffs.where(["location LIKE ?", location]) if location.present?
		stuffs = stuffs.where(["price >= ?", min_price]) if min_price.present?
		stuffs = stuffs.where(["price <= ?", max_price]) if max_price.present?

		return stuffs
	end
	
end
