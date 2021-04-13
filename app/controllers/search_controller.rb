class SearchController < ApplicationController
    before_action :authenticate_user!

    def index
        if params["q"] && params["q"] != ''
            @keyword = params["q"].to_s
            @meds = Medication.where("lower(name) ILIKE '%#{@keyword}%'").or(Medication.where("lower(description) ILIKE '%#{@keyword}%'"))
            @cosms = CosmMed.where("lower(name) ILIKE '%#{@keyword}%'").or(CosmMed.where("lower(description) ILIKE '%#{@keyword}%'"))
            @results = @meds + @cosms

            if @results.empty?
                redirect_to search_path, alert: "لم نستطع ايجاد ما تبحث عنه، رجاءًا تأكد من الاسم."
            end
        end
    end

end