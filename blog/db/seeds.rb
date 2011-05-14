# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create :email => 'meltzerj@wharton.upenn.edu', 
                   :password => '3721000',
                   :password_confirmation => '3721000'
                   
Category.create [{:name => 'Programming'},
                 {:name => 'Event'},
                 {:name => 'Travel'},
                 {:name => 'Music'},
                 {:name => 'TV'}]
                 
user.articles.create :title => 'My post',
                     :body => 'This is a post created by a great author',
                     :published_at => Date.today
user.articles.create :title => 'Another post',
                    :body => 'This is another post created by a great author',
                    :published_at => Date.today
user.articles.create :title => 'Last post',
                     :body => 'This is the last post created by a great author',
                     :published_at => Date.today
                     
                  
