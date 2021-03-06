require 'test_helper'

class AlertMailerTest < ActionMailer::TestCase
  test "alert" do
    mail = AlertMailer.alert
    assert_equal "Alert", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
