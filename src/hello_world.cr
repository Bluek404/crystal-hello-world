require "./hello_world/*"
require "Moonshine/moonshine"

include Moonshine
include Moonshine::Base
include Moonshine::Utils::Shortcuts

module HelloWorld
  def self.run(port = 8080)
    app = App.new(static_dirs = ["static"])

    app.route "/", do |request|
      ok "Hello World!"
    end
    app.run(port)
  end
end

HelloWorld.run()
