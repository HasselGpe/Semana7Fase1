class User < ActiveRecord::Base


  validates :email, :uniqueness => true
  validates_inclusion_of :birthday, :in => Date.new(1900)..Time.now.years_ago(18).to_date

  validate :telephone?
  validate :custom_email?

  def name
   return "#{first_name} #{last_name}"
  end

  def age
   return 2016 - birthday.year
  end
  #+  (?<=\@) + (\@ (.+) + (?<=\.)) + \.(.+)/+(?<=\.))

  def custom_email?
    sum = 0
    if email =~ /\@*\.*(?<=\@)*\@(.+)\w*\.(.+)\w[2]*/
      sum += 1
    end

    if sum < 1
      errors.add(:email, "WRONG EMAIL ADRESS")
    end
   
  end
 


  def telephone?
    phon_e = []
    phone.each_char {|x| phon_e << x if x =~ /\d/ }

    if phon_e.join.length < 10
      errors.add(:phone, "WRONG PHONE NUMBER")
    end

  end

end

