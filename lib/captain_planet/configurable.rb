module CaptainPlanet
  module Configurable
    def self.included(base)
      base.send :extend,  ClassMethods
      base.send :include, InstanceMethods
    end
    
    module InstanceMethods
    end
    
    module ClassMethods
      def attr_configurable(*attrs, &block)
        attrs.each do |attr|
          class_variable_set("@@__default_#{attr}", block)
          
          class_eval %(
            def #{attr}(val=nil)
              return @#{attr} || (@@__default_#{attr}.call if @@__default_#{attr}.respond_to?(:call)) unless val
              @#{attr} = val
            end)
        end
      end
    end
  end
end