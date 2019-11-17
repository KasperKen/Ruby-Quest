class Item

    attr_accessor :name, :dice, :stat

    def initialize args
        args.each do |k,v|
          instance_variable_set("@#{k}", v) unless v.nil?
        end
    end

    def use
        @dice.roll
    end
end