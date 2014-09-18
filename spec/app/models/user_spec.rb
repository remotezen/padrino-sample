require 'spec_helper'
#place in spec_helpers.rb
#to get rid of factory girl syntax
  #conf.include Rack::Test::Methods
  #conf.include FactoryGirl::Syntax::Methods
# to spec helper file
#require File.dirname(__FILE__) + "/factories"
 
  describe "User Model" do

    let(:user){build(:user)}
    let(:second_user){ build(:user)}
    it 'can be created' do
      expect(user).to_not be_nil
    end
    
    it 'fresh user should have not job offers' do
      expect(user.job_offers.size).to eq 0
    end
    
    it 'has job-offers' do
      user.job_offers.build(attributes_for(:job_offer))
      expect(user.job_offers.size).to eq 1
    end
    
    describe "when name is already used" do
      pending('should not be saved')
    end
    
    describe "names" do
      it 'expect to not have blank name' do
        user.name = ""
        expect(user.save).to be false
      end
    
      it "should have unique names" do
         expect(second_user.save).to be false
       end
    end
    
    describe "email" do
      it "shouldn't have blank email" do
        user.email = ""
        expect(user.save).to be false
      end
      
      it "should have unique email addresses" do
        second_user.email = user.email
        second_user.name = "Boris the Blade"
        expect(second_user.save).to be false 
      end
      
      it 'should be save a valid email address' do
        addresses = %w[thor@marvel.de hero@movie.com]
        addresses.each do |email|
          second_user.email = email
          expect(second_user.email).to be_truthy
        end

      end

      it 'should not be valid' do
        addresses = %w[fred,fred,rred fred.com fredfreboid@]
        addresses.each do |e|
          user.email = e
          expect(user.save).to be false 
        end

      end

    end
    
    describe "passwords" do
      pending('no blank password')
      pending('no blank password confirmation')
    end


  end

