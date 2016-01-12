FactoryGirl.define do	
	factory :places do
		name "Restaurant"
		description "Delicious Food"
		address "123 Fake Street"
		user_id "1"
	end

	factory :users do
		email "victoria_brouard@hotmail.co.uk"
		encrypted password "password"
	end

	factory :comments do
		message "Really great meal"
		rating "2_stars"
		user_id "1"
		place_id "1"
	end

	factory :photos do
		caption "Fab decor"
		place_id "1"
		picture "table.jpg"
	end

end

