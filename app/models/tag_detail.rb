class TagDetail < ActiveRecord::Base
  belongs_to :tag
  belongs_to :post
  before_save :add_junk

  def add_junk
  	self.junk = Time.now.to_s
  end
end
