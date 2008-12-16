class ErrorTester < ActiveRecord::Base
  attr_accessor :password_confirmation, :agreement, :odd_number, :even_number,
                :number, :five, :description, :word

  validates_presence_of :login, :password, :email, :country
  validates_uniqueness_of :login
  validates_exclusion_of :login, :in => %w{admin}
  validates_confirmation_of :password
  validates_acceptance_of :agreement
  validates_format_of :email, :with => /@/
  validates_length_of :description, :in => 10..20, :allow_nil => true
  validates_length_of :word, :allow_nil => true, :is => 5
  validates_numericality_of :odd_number,  :allow_nil => true, :odd  => true, :greater_than => 5, :less_than => 13
  validates_numericality_of :even_number, :allow_nil => true, :even => true, :greater_than_or_equal_to => 6, :less_than_or_equal_to => 12
  validates_numericality_of :five, :allow_nil => true, :equal_to => 5
  validates_numericality_of :number, :allow_nil => true
  validates_inclusion_of :number, :allow_nil => true, :in => %w{1 42 100}

  # crazy hack, just that we don't have to have all the columns in the db
  # why do we have to do this at all?
  %w{odd_number even_number five number}.each do |a|
    define_method "#{a}_before_type_cast" do
      send(a).to_s
    end
  end
end
