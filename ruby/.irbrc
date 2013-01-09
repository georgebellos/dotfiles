require 'irb/completion'
require 'rubygems'
require 'hirb'
require 'awesome_print'
require 'bond'
require 'interactive_editor'
begin
  require 'wirble'
    Wirble.init
    Wirble.colorize
  rescue LoadError => err
    $stderr.puts "Couldn't load Wirble: #{err}"
end
IRB.conf[:PROMPT_MODE]  = :SIMPLE
