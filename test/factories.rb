FactoryGirl.define do	

	sequence :email do |n|
		"person#{n}@example.com"
	end

	factory :place do
		name "Restaurant"
		description "Delicious Food"
		address "123 Fake Street"
		association :user
	end

	factory :user do
		email
		password "password"
		password_confirmation "password"
	end

	factory :comment do
		message "Really great meal"
		rating "2_stars"
		user_id "1"
		place_id "1"
		association :user
		association :place
	end

	factory :photo do
		caption "Fab decor"
		place_id "1"
		picture "table.jpg"
		association :place
	end

end

