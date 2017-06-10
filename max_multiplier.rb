class MaxMultiplier
  attr_reader :input, :max_matchers, :matchers, :behaviour
  def initialize(input, max_matchers: 4, matchers: 48..57, behaviour: :*)
    @input = input
    @max_matchers = max_matchers
    @matchers = matchers
    @behaviour = behaviour
    @current_matchers = []
  end

  def calculate
    return unless input.is_a?(String)

    [].tap do |result|
      input.each_char do |char|
        if matchers.include? char.ord
          current_matchers.push(char.to_i)
        else
          current_matchers.clear
        end

        if current_matchers.length == max_matchers
          result << current_matchers.inject(behaviour)
          current_matchers.shift
        end
      end
    end.max
  end

  private
    attr_reader :current_matchers
end
