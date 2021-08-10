class StatusMailer < ApplicationMailer
  def new_status_email
    @status = params[:status]

    mail(to: '180123107014@git.org.in', subject: "Training Status #{@status.date}")
  end
end
