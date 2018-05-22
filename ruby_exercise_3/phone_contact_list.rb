class PhoneContactList
  attr_accessor :phone_list
  
  def initialize(list)
    self.phone_list = list
  end

  def check_consistency
    p = 0
    @phone_list.each do |key, var|
      p += 1
      puts "HELLO #{key}"
      @phone_list.each do |_key, _var|
        if compare_word(var, _var)
          puts "The list is inconsisent as the user #{_key} contact no #{_var} similar to user #{key} with prefix #{var}"
          return false
          break
        end
      end
    end

    puts "List is consisent."
    return true
  end

  def compare_word(v1, v2)
    v1 && v2 && v1 != v2 && (v2.to_s =~ /^#{v1}\d*$/) == 0
  end

end
