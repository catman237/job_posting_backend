class JobsController < ApplicationController
    
    def index
        # claas job class to get all the jobs, like @@all
        jobs = Job.all 
        render json: jobs
    end

    def create
    
        # this finds the job board that the job will belong too
        job_board1 = JobBoard.find_by(name: params[:cohort])

        newJob = Job.create(
        name: params[:name],
        date: params[:date],
        job_board_id: job_board1.id,
        number_of_applications: params[:number_of_applications],
        number_of_interviews: params[:number_of_interviews],
        state: params[:state],
        salary: params[:salary]
        )
        render json: newJob
    end

    def destroy
        @job.destroy
    end

end
