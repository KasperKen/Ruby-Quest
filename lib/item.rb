class Item

    attr_accessor :name, :dice, :stat

    def initialize args
        args.each do |key,value|
          instance_variable_set("@#{key}", value) unless value.nil?
        end
    end

    def use
        @dice.roll
    end
end
