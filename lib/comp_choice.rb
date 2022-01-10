class Comp_choice
    attr_reader :choose
    attr_writer :rand_seed

    def initialize(random_choice)
      @choose = random_choice
    end

    def random_choice
      a = ['paper','rock','scissors']
      a.sample

    end
end