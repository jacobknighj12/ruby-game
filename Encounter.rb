class Encounter
    attr_reader :art 
    attr_reader :name
    attr_reader :options
    attr_reader :consequence
    attr_reader :encounter_intro

    def initialize()
        @name = "Friendly looking traveller"
        @encounter_intro = "The #{@name} offers to share their baked cherry pie with you!
        They seem to look genuine and happy."
       # @art =  friendly_traveller.readlines()
       @options = []
       @options.push("0. Gladly accept their offer to share their baked cherry pie. \n",)
       @options.push("1. Politely decline. \n",)
       @options.push("2. Attack them immediately with all the fury of the elements.\n",)
       @options.push("3. Simply walk away.\n",)
        # if @player.health < 50
        #     length = @options.length + 1
        #     @options.push(length". The friendly traveler also sees you are injured and offers to help")
        # end
       @consequence = []
        @consequence.push("0. You eat the pie, feel woozy, black out, and wake up naked with all your gold having been stolen.",)
        @consequence.push("1. You walk away.",)
        @consequence.push("2. You attack and defeat the traveller. Costing 5 stamina and losing 5 health but 
            gaining 10 gold from the bloody corpse of the smiling and non deceased friendly traveller.",)
        @consequence.push("3. As you walk away the traveller throws the hot pie at you, dealing 2 damage.",)

        @art = 
        "   .------\\ /------.  \n"\
        "   |       -       |   \n"\
        "   |               |   \n"\
        "   |               |   \n"\
        "   |               |   \n"\
        "_______________________\n"\
        "===========.===========\n"\
        "  / ~~~~~     ~~~~~ \\ \n"\
        " /|     |     |\\      \n"\
        " W   ---  / \\  ---   W\n"\
        " \\.      |o o|      ./\n"\
        "  |                 |  \n"\
        "  \\    #########    / \n"\
        "   \\  ## ----- ##  /  \n"\
        "    \\##         ##/   \n"\
        "     \\_____v_____/    \n"
        
    end
    def perform(player)
        puts " #{@art} "
        puts "#{player.name} encounters a #{@name}."
        puts "#{encounter_intro}"
        puts "#{options}"
        puts "Choose!"
        players_choice = gets.to_i
        puts consequence[players_choice]

        #apply here
        case players_choice
        when 0
            player.lose_all_gold
        when 1
        when 2
            player.take_damage(5)
            player.exert_yourself(5)
            player.acquire_gold(10)
        when 3
            player.take_damage(2)
        end
    end

    def print_me()
        puts " #{@art} "
        
    end
end