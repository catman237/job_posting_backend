class JobsController < ApplicationController
    
    def index
        # class job class to get all the jobs, like @@all
        jobs = Job.all 
        render json: jobs
    end

    def show
        job = Job.find(params[:id])
        render json: job
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
        job = Job.find(params[:id])
        job.destroy
        render json: job
    end

    def sorted_salary
        sorted_salary = Job.all.sort_by{ |job| job[:salary] } 
        render json: sorted_salary
    end

    def ordered_names
        ordered_names = Job.all.sort_by { |job| - job.name.length}
        render json: ordered_names
    end

    def ordered_interviews
        ordered_interviews = Job.all.sort_by { |job| - job.number_of_interviews }
        render json: ordered_interviews
    end

    def ordered_applications
        ordered_applications = Job.all.sort_by { |job| - job.number_of_applications }
        render json: ordered_applications
    end

    private 

    def Job_params
        params.require(:job).permit(
            :name, 
            :date, 
            :number_of_interviews, 
            :number_of_applications, 
            :state,
            :salary,
            :state,
            :job_board_id
        )
    end

end
