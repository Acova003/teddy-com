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
    sql = <<-SQL
      SELECT *
      FROM members
    SQL

    DB[:conn].execute(sql).map do |row|
      self.new_from_db(row)
    end
  end

  def self.select_by_role_id(role_id)
    sql = <<-SQL
      SELECT phone
      FROM members
      WHERE role_id = ?
      LIMIT 1
    SQL

    DB[:conn].execute(sql, name).map do |row|
      self.new_from_db(row)
    end.first
  end
end

#make send sms requests using each instance of message

#things to do:
#-hide info in send-sms
