collection @users
attributes :id, :first_name, :last_name

node(:read) { |user| @test }