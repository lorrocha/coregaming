class ContactUs < ActionMailer::Base
  default to: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.contact.subject
  #
  def contact(contact)
    @contact = contact

    mail(from: contact.email, subject:'Someone wants to talk to ya!')
  end
end
