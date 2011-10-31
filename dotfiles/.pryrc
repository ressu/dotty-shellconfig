begin
  require 'hirb'
rescue LoadError
else
  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end

  # Enable hirb support
  Hirb.enable
end
