class ApplicationController < ActionController::Base
  after_action :log_after
  before_action :log_before
 
  def log_before
    logger.debug "firsttry"
  end

  def log_after
    logger.debug "log_after"
  end
end
