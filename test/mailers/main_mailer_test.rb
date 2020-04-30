require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_mailer" do
    mail = MainMailer.notify_question_mailer
    assert_equal "Notify question mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
