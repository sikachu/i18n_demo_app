class CreateErrorTesters < ActiveRecord::Migration
  def self.up
    create_table :error_testers do |t|
      t.string :login
      t.string :password
      t.string :email
      t.string :country
      t.integer :age

      t.timestamps
    end

    ErrorTester.reset_column_information
    ErrorTester.create do |et|
      et.login = "Calvin"
      et.password = "x"
      et.password_confirmation = "x"
      et.agreement = '1'
      et.email = "calvin@example.com"
      et.country = "United States"
    end
  end

  def self.down
    drop_table :error_testers
  end
end
