# cat config.ru
require "roda"
require_relative 'config/environment'

class Application < Roda
  route do |r|
    # GET / request
    r.root do
      r.redirect "/health_check"
    end

    r.on "health_check" do
      "Hello world!!\n#{Time.now.strftime('%d.%m.%Y %H:%M:%S')}"
    end
  end
end

run Application.freeze.app
