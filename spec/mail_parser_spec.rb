require 'spec_helper'
require_relative '../lib/mail_parser'

describe MailParser do
  it 'can read who an email was from, who it was to, and the date it was sent' do
    email = <<EMAIL
Date: Thu, 12 Dec 2013 00:00:00 +0000
From: cecelia@example.com
To: fatima@example.com
EMAIL

    expected = {
        "fatima@example.com" => "Old Friend"
    }

    expect(MailParser.new(email).relationships('cecelia@example.com')).to eq expected
  end
end