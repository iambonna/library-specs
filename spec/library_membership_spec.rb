require './src/library'
require './src/book'
require './src/person'

describe 'membership' do

  it 'add new member to the library' do
    new_member = Person.new
    sf_library = Library.new
    new_member.go_to_library(sf_library)
    personal_info = { :first_name => 'Kevin',
                      :last_name => 'Dishman',
                      :address_number => '200',
                      :street => 'Randolph',
                      :city => 'Chicago',
                      :state => 'IL',
                      :zip => '60601',
                      :phone => '5551231234'
    }

    new_member.register_for_library_membership(personal_info)
    new_member.membership_number.should == '1'
    new_member.personal_info[:last_name].should == 'Dishman'
  end

end