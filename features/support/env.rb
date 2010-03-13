$: << 'lib'

require 'rubygems'
require 'cucumber'
require 'spec/expectations'

require 'wipflash'
require 'wipflash_extensions'

include WiPFlash
include WiPFlash::Components

class CucumberWorld
  def path()
    "../../src/ExampleUIs/bin/Debug/ExampleUIs.exe"
  end
end

World do
  CucumberWorld.new
end