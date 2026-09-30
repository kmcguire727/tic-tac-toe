# frozen_string_literal: true

# rubocop:disable Layout/TrailingWhitespace
# Simple encapsulation to print logo to console for main.rb
module Logo
  def self.print_logo
    puts <<~'LOGO'
       _______ _        _______           _______         
      |__   __(_)      |__   __|         |__   __|        
         | |   _  ___     | | __ _  ___     | | ___   ___ 
         | |  | |/ __|    | |/ _` |/ __|    | |/ _ \ / _ \
         | |  | | (__     | | (_| | (__     | | (_) |  __/
         |_|  |_|\___|    |_|\__,_|\___|    |_|\___/ \___|
                                                          
    LOGO
  end
end
# rubocop:enable Layout/TrailingWhitespace
