module Puppet::Parser::Functions

  newfunction(:validate_platform, :type => :rvalue, :doc => <<-'ENDHEREDOC'
    Validates platform using metadata.json file.
    The function needs a module name to work.

    For example:

        if !validate_platform('ruby') {
            fails('Platform not supported in module "ruby"!')
        }
    ENDHEREDOC
  ) do |arguments|

    raise(Puppet::ParseError, "validate_platform(): should be called " +
      "with one parameter: the name of the module.") if arguments.size < 1

    if module_path = Puppet::Module.find(arguments[0], compiler.environment.to_s)
      local_path = module_path.path
    else
      raise(Puppet::ParseError, "Could not find module #{arguments[0]} in environment #{compiler.environment}")
    end

#    puts "==#{local_path}=="

    require 'json'
    fileContents = File.read("#{local_path}/metadata.json")
    parsed = JSON.parse(fileContents)

    operatingsystem = `facter operatingsystem`.strip
    operatingsystemrelease = `facter operatingsystemrelease`.strip

#    puts "==#{operatingsystem}=="
#    puts "==#{operatingsystemrelease}=="

    result = false
    for os in parsed['operatingsystem_support']
        if operatingsystem == os['operatingsystem']
            for release in os['operatingsystemrelease']
                if operatingsystemrelease.index(release) == 0
                    result = true
                end
            end
        end
    end

    return result

  end

end
