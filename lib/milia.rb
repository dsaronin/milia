
require File.dirname(__FILE__) + '/milia/base'
require File.dirname(__FILE__) + '/milia/control'

require File.dirname(__FILE__) + '/milia/railtie' if defined?(Rails::Railtie)

module Milia

  # expecting params[:coupon] for sign-ups
  mattr_accessor :use_coupon
  @@use_coupon = true

  # use recaptcha to validate human params input
  mattr_accessor :use_recaptcha
  @@use_recaptcha = true

  # use sign_out to root; else return to sign-in page
  mattr_accessor :signout_to_root
  @@signout_to_root = true

  # use airbrake gem to log exceptions
  mattr_accessor :use_airbrake
  @@use_airbrake = false

  # Default way to setup milia. 
  def self.setup
    yield self
  end
  
end # module Milia
