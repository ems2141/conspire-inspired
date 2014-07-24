class MailParser
  def initialize(email)
    @email = email
  end

  def relationships(email_address)
    lines = @email.split("\n")
    date_string = lines.first[6..-1]
    date = Date.parse(date_string)

    keys = []
    lines.each do |line|
      if line.match('To:')
        keys << line[4..-1]
      end
    end

    {keys.first => old_or_new(date)}
  end

  def old_or_new(date)
    value = ""
    if (Time.now.year - date.year).abs > 0
      value << "Old Friend"
    elsif (Time.now.month - date.month).abs
      value << "Old Friend"
    elsif (Time.now.day - date.day).abs > 14
      value << "Old Friend"
    else
      value << "New Friend"
    end
    value
  end
end