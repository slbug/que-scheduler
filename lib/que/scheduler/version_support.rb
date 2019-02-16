require 'que'

# The purpose of this module is to centralise the differences when supporting both que 0.x and
# 1.x with the same gem.
module Que
  module Scheduler
    module VersionSupport
      class << self
        def set_priority(context, priority)
          if zero_major?
            context.instance_variable_set("@priority", priority)
          else
            context.priority = priority
          end
        end

        def zero_major?
          @zero_major ||= Gem::Version.new('1.0.0') > Gem::Version.new(::Que::Version)
        end
      end
    end
  end
end
