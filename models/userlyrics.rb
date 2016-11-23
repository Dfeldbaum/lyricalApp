class Userlyrics <  ActiveRecord::Base
	self.table_name = "userlyrics"

	has_many :accounts
	has_many :lyrics
end	