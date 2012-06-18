require 'jgrep'

module MCollective
  module Data
    class Jgrep_data<Base
      query do |arguments|
        begin
          file,expression = arguments.gsub(/'|"/, '').split(',')
          json = YAML.load_file(file)
          result[:match] = !JGrep::jgrep(json, expression).empty?
        rescue Exception => e
          Log.debug(e)
          result[:match] = false
        end
      end
    end
  end
end
