class TeddyCom::Message
  attr_accessor :sender, :recipient, :text

  ALL = []

  def initialize(sender=nil, receiver=nil, text=nil)
    @sender = sender
    @receiver = receiver
    @text = text
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find(recipient, db)
    phone = db.execute("SELECT phone FROM members WHERE role_id = #{recipient}")
    make_pokemon = {id: id, name: name, type: type, db: db}
    new_pokemon =  Message.new(make_pokemon)
  end
  #binding.pry
end

#make send sms requests using each instance of message

#things to do:
#-hide info in send-sms
