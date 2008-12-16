class PagesController < ApplicationController
  def active_record_helper
    @error_tester = if params[:error_tester]
      ErrorTester.new(params[:error_tester])
    else
      # create instance with full of errors
      ErrorTester.new do |et|
        et.login = 'Calvin' # taken
        et.password = 'x'
        et.password_confirmation = 'xx' # confirmation wrong
        et.email = 'email' # invalid
        et.odd_number = '4'
        et.even_number = '15'
        et.number = 'elefant'
        et.five = '42'
        et.description = 'Lorem ipsum dolor sit amet, consectetuer adipiscing.'
        et.word = 'forty-two'
        et.agreement = '0'
      end
    end
    if @error_tester.save
      flash[:notice] = 'saved.'
    end
  end
end
