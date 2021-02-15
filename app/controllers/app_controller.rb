class AppController < ApplicationController
    before_action :authenticate_user!, except: %i[index]
    def index
    end
    def cats
        @categories= Category.all
    end
end