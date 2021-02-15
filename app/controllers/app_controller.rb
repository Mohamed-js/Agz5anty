class AppController < ApplicationController
    def index
    end
    def cats
        @categories= Category.all
    end
    
end