class Lyric <  ActiveRecord::Base
	self.table_name = "lyrics"

	has_many :userlyrics
end	