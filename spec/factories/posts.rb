FactoryGirl.define do
  factory :post do
    caption "Ottoman Eggs - brunch worth waiting for #foodart"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/circa.jpg', 'image/jpg')
    location "Circa restaurat, Parramatta, Sydney"
    blog "Looks and tastes delicious. This is one of if not the signature dish - poached free range eggs with crumbed eggplant, garlic labneh, burnt chilli and sage butter served with a seeded sourdough. Definitely a must try. We ended up going a bit late (more lunch than brunch) and therefore had to wait for an hour or so for a table."
  end
end
