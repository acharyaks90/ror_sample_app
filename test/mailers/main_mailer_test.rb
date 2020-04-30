require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_mailer" do
    question = Question.create email: 'anil@yopmail.com', body: 'a test data'
    answer  = Answer.create email: 'anilanswer@yopmail.com', body: 'a test data'
    question.answers << answer
    mail = MainMailer.notify_question_mailer(answer)
    assert_equal "Notify question mailer", mail.subject
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
