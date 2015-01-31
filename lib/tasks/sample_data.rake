namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		
		10.times do |n|
			name=Faker::Name.name
			email="example-#{n+1}@example.org"
			password="foobar"
			 User.create!(name: name,
				     email: email,
				     password: password,
				     password_confirmation: password)
			#unless user.save
			#	puts "error creating user"
			#end
		end
		
		

			
		
		
	end
end
