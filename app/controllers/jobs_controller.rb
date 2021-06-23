class JobsController < ApplicationController
    
    def index
        # claas job class to get all the jobs its kinda like @@all
        jobs = Job.all 
        render json: jobs
    end

end
