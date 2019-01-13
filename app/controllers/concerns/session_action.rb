module SessionAction
  extend ActiveSupport::Concern
  def log_dashimasu
    Rails.logger.debug "コンサーン使った！"
  end
end
