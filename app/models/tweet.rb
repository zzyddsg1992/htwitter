class Tweet < ActiveRecord::Base
	 belongs_to :user
	 avlidates :content, length: { maximum: 140 }
end
