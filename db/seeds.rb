# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Job.destroy_all
JobBoard.destroy_all

jobBoard1 = JobBoard.create(name: '404')
jobBoard2 = JobBoard.create(name: 'Hack Street')

job1 =Job.create(name: 'Danny', date: '09-01-2022', number_of_interviews: 20, state: 'NV', salary: 120000, number_of_applications: 40, job_board: jobBoard1 )
job2 =Job.create(name: 'Chris', date: '09-01-2022', number_of_interviews: 20, state: 'CA', salary: 85000, number_of_applications: 30, job_board: jobBoard1 )
job3 =Job.create(name: 'Jay', date: '09-01-2022', number_of_interviews: 20, state: 'OH', salary: 100000, number_of_applications: 15, job_board: jobBoard1 )
job4 =Job.create(name: 'Mandy', date: '09-01-2022', number_of_interviews: 20, state: 'ID', salary: 90000, number_of_applications: 24, job_board: jobBoard1 )
job5 =Job.create(name: 'Tony', date: '09-01-2022', number_of_interviews: 20, state: 'CO', salary: 80000, number_of_applications: 10, job_board: jobBoard1 )
job6 =Job.create(name: 'Greg', date: '09-01-2022', number_of_interviews: 20, state: 'AL', salary: 65000, number_of_applications: 20, job_board: jobBoard1 )
