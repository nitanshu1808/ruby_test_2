require "spec_helper"
require "./ruby_exercise_3/phone_contact_list"

describe PhoneContactList do
	before(:all) do
		list = {nik: 987654321, abc: 9231, bill: 87, kane: 1234}
 		@phone_list = PhoneContactList.new(list)
  end

	it "return check list consisteny" do
		expect(@phone_list.check_consistency).to eql(true)
	end

end
 