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

job1 =Job.create(name: 'Danny', date: '12-10-2021', number_of_interviews: 5, state: 'NV', salary: 90000, number_of_applications: 40, job_board: jobBoard1 )
job2 =Job.create(name: 'Chris', date: '08-12-2021', number_of_interviews: 1, state: 'CA', salary: 95000, number_of_applications: 30, job_board: jobBoard1 )
job3 =Job.create(name: 'Jay', date: '09-12-2021', number_of_interviews: 3, state: 'OH', salary: 90000, number_of_applications: 69, job_board: jobBoard1 )
job4 =Job.create(name: 'Mandy', date: '08-10-2021', number_of_interviews: 6, state: 'ID', salary: 95000, number_of_applications: 24, job_board: jobBoard1 )
job5 =Job.create(name: 'Tony', date: '10-10-2021', number_of_interviews: 9, state: 'CO', salary: 97000, number_of_applications: 10, job_board: jobBoard1 )
job6 =Job.create(name: 'Keith', date: '9-10-2021', number_of_interviews: 3, state: 'CO', salary: 70000, number_of_applications: 20, job_board: jobBoard1 )
job7 =Job.create(name: 'Brandon', date: '10-11-2021', number_of_interviews: 9, state: 'CO', salary: 70000, number_of_applications: 20, job_board: jobBoard1 )
job8 =Job.create(name: 'Michael', date: '11-12-2021', number_of_interviews: 5, state: 'CO', salary: 90000, number_of_applications: 20, job_board: jobBoard1 )
