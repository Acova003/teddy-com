class TeddyCom::Message
  attr_accessor :sender, :receiver, :text

  ALL = []

  def initialize(sender=nil, receiver=nil, message=nil)
    @sender = title
    @receiver = description
    @message = url
    ALL << self
  end

  def self.all
    ALL
  end
  #binding.pry
end
