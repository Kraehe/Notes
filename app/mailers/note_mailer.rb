class NoteMailer < ApplicationMailer
  def note_email(note_id, email)
    @note = Notepad.find(note_id)
    mail(to: email, subject: 'this is an email')
  end
end
