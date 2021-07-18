Rails.application.routes.draw do

    get("/:user_play", { :controller => "application", :action => "play_any" } )
    
    get("/", { :controller => "application", :action => "homepage" } )

end
