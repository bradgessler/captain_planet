module CaptainPlanet
  module ConfigurableAttributes
    def self.included(base)
      base.send(:extend, ClassMethods)
    end
  
    module ClassMethods
      def attr_configurable(*attrs)
        attrs.each do |attr|
          class_eval %{
            def #{attr}(val=nil)
              if val
                yield val if block_given?
                @#{attr} = val
              else
                @#{attr}
              end
            end}
        end
      end
    end
  end
end