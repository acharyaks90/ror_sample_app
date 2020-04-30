class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_mailer.subject
  #
  def notify_question_mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
