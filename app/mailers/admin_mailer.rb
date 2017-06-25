# frozen_string_literal: true

class AdminMailer < ApplicationMailer
  def new_report(recipient, report)
    @report = report
    @me     = recipient

    locale_for_account(@me) do
      mail to: @me.user_email, subject: I18n.t('admin_mailer.new_report.subject')
    end
  end
end
