# Simple encapsulation to print logo to console for main.rb
module Logo
  def self.print_logo
    # rubocop:disable-next Layout/TrailingWhitespace
    puts <<~'LOGO'
       _______ _        _______           _______         
      |__   __(_)      |__   __|         |__   __|        
         | |   _  ___     | | __ _  ___     | | ___   ___ 
         | |  | |/ __|    | |/ _` |/ __|    | |/ _ \ / _ \
         | |  | | (__     | | (_| | (__     | | (_) |  __/
         |_|  |_|\___|    |_|\__,_|\___|    |_|\___/ \___|
                                                          
    LOGO
  end

  def self.x_wins
    # rubocop:disable-next Layout/TrailingWhitespace
    puts <<~LOGO
          __  __           _           
      ╲ ╲╱ ╱ __      _(_)_ __  ___ 
       ╲  ╱  ╲ ╲ ╱╲ ╱ ╱ │ '_ ╲╱ __│
       ╱  ╲   ╲ V  V ╱│ │ │ │ ╲__ ╲
      ╱_╱╲_╲   ╲_╱╲_╱ │_│_│ │_│___╱
                                                            
    LOGO
  end

  def self.o_wins
    # rubocop:disable-next Layout/TrailingWhitespace
    puts <<~LOGO
         ___            _           
        ╱___╲ __      _(_)_ __  ___ 
       ╱╱  ╱╱ ╲ ╲ ╱╲ ╱ ╱ │ '_ ╲╱ __│
      ╱ ╲_╱╱   ╲ V  V ╱│ │ │ │ ╲__ ╲
      ╲___╱     ╲_╱╲_╱ │_│_│ │_│___╱
  
    LOGO
  end
end
