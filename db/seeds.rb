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

job1 =Job.create(name: 'Danny', date: '09-01-2022', number_of_interviews: 20, state: 'PA', salary: 100000, number_of_applications: 40, job_board: jobBoard1 )