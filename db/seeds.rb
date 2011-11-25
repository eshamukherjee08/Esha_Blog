# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Post.delete_all
Post.create(:title => 'About Ruby On Rails',
  :content => 
    %{<p>
        <em>Ruby on Rails</em> is a magical development platform tackelling
        XSS easily on its own.
      </p>},
  :user_id => 1)
#...
Post.create(:title => 'Blogging Application',
  :content => 
    %{<p>
        <em>Blogging Application</em> is a platform to share
        thoughts and ideas.
      </p>},
  :user_id => 2)
# . . . 
Post.create(:title => 'About Life',
  :content => 
    %{<p>
        <em>About life</em> is all about perception.
      </p>},
  :user_id => 1)      
      