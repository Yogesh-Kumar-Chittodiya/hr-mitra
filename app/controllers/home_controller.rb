class HomeController < ApplicationController
    def index
        @title_text = "Hello World!"
        @sub_title_text = "I'm Here."
    end
end
