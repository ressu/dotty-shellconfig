require 'rubygems'unless defined? Gem

# completion support
begin
  require 'bond'
rescue LoadError
  require 'irb/completion'
else
  Bond.start
end

unless defined?Ripl
  # Persistent commands
  require 'irb/ext/save-history'
  IRB.conf[:SAVE_HISTORY] = 100

  # prettyprint support
  require 'pp'

  # Be helpful and indent the line
  IRB.conf[:AUTO_INDENT] = true

  # Adds readline functionality
  IRB.conf[:USE_READLINE] = true

  begin
    # Make everything purdy!
    require 'wirble'
  rescue LoadError
  else
    #Wirble.init(:skip_prompt => true, :skip_history => true)
    Wirble.colorize
  end

  begin
    require 'hirb'
  rescue LoadError
  else
    # Enable hirb support
    Hirb.enable
  end
end

begin
  require "looksee"
rescue LoadError
end
