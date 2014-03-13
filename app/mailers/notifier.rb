
class Notifier
  default :from => "Yell@CloudFactory>"

  # the user receives new critique
  def new_critique(critique_receiver)
    @receiver = critique_receiver
    mail(:to => @receiver.email, :subject => "Someone has just yelled at you!")
  end

end