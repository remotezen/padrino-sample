FactoryGirl.define do
  factory :user do
    name "Bob knob"
    email "Bobknob@gmail.com"
  end
  factory :job_offer do
    title "Padrino Engineer"
    location "Berlin"
    description "We want you..."
    contact "recruiter@awesome.com"
    time_start "01/01/2014"
    time_end  "01/04/2017"
  end
end
