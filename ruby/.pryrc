# Load gems on rails console that are not on the gemfile

GEMS = %{pry interactive_editor awesome_print hirb yard}
gems_to_add = Regexp.new(GEMS.gsub(" ", "|"))

if defined?(::Bundler)
  all_gems_path = ENV["_ORIGINAL_GEM_PATH"].split(':').first

  Dir.glob("#{all_gems_path}/gems/*") do |path|
    $LOAD_PATH << "#{path}/lib" if path =~ gems_to_add
  end
  $LOAD_PATH
end


require 'pry-doc'
require 'pry-debugger'
require 'pry-exception_explorer'
require 'pry-remote'
require 'pry-stack_explorer'
require 'interactive_editor'

begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end


begin
  require 'hirb'
rescue LoadError => err
  $stderr.puts "Couldn't load Hirb: #{err}"
end

if defined? Hirb
  # Slightly dirty hack to fully support in-session Hirb.disable/enable toggling
  Hirb::View.instance_eval do
    def enable_output_method
      @output_method = true
      @old_print = Pry.config.print
      Pry.config.print = proc do |output, value|
        Hirb::View.view_or_page_output(value) || @old_print.call(output, value)
      end
    end

    def disable_output_method
      Pry.config.print = @old_print
      @output_method = nil
    end
  end
  Hirb.enable
end

# view source on ruby methods
# http://pragmaticstudio.com/blog/2013/2/13/view-source-ruby-methods

def source_for(object, method)
  location = object.method(method).source_location
  `mate #{location[0]} -l #{location[1]}`
  location
end

require 'readline'
Pry.config.editor = 'vim'
