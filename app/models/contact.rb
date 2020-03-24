class Contact < MailForm::Base

  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :valitade => true
  attribute :nickname, :captcha => true

  def headers
    {
    :subject => "Mensagem",
    :to => "geral@be-seguro.com",
    :from => %("#{name}" <#{email}>)
  }

end
end


