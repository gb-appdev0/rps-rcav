class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

    def play_any
      @input = params.fetch("user_play")
      @comp_move = ["rock", "paper", "scissors"].sample
      @result = ""

      if @input == "rock" then
        if @comp_move == "rock" then
          @result = "tied"
        elsif @comp_move == "paper" then
          @result = "lost"
        else
          @result = "won"
        end
      elsif @input == "paper" then
        if @comp_move == "rock" then
          @result = "won"
        elsif @comp_move == "paper" then
          @result = "tied"
        else
          @result = "lost"
        end

      else
        if @comp_move == "rock" then
          @result = "lost"
        elsif @comp_move == "paper" then
          @result = "won"
        else
          @result = "tied"
        end

      end

      render({ :template => "game_templates/solo.html.erb"})

    end

    def homepage
        
      render({ :template => "game_templates/rules.html.erb"})

    end

end
