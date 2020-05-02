# Model

class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      subject: "Contact inquiry",
      to: 'laurabowd1@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
