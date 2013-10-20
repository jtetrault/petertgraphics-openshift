class ApplicationController < ActionController::Base
  protect_from_forgery

  # Returns a string containing the the given path, with the full protocol, host
  # and port number prepended to it.
  #
  def protocol_and_host(path)
    return "#{request.protocol}#{request.host_with_port}#{path}"
  end
end
