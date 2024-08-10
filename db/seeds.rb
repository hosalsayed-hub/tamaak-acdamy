
3.times do
  Category.create!([{
    name: Faker::Educator.degree,
    description: Faker::Lorem.paragraph,
  }])
end

3.times do
  Course.create!([{
    name: Faker::Educator.course_name,
    short_description: Faker::Lorem.paragraph,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    user_id: Faker::Number.between(from: 1, to: 3),
    category_id: Faker::Number.between(from: 1, to: 3),
    duration: Faker::Number.between(from: 0, to: 600),
    price: Faker::Number.between(from: 0, to: 200),
    published: true,
    approved: true,
    language: "English"
  }])
end

3.times do
  Lesson.create!([{
    name: Faker::Address.unique.city,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    video_url: "https://www.youtube.com/watch?v=ojXjR33bPOY",
    course_id: Faker::Number.between(from: 1, to: 9),
    row_order: Faker::Number.between(from: -50000, to: 50000),
  }])
end

1.times do
  Subscription.create!([{
    rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    course_id: Faker::Number.between(from: 1, to: 20),
    user_id: Faker::Number.between(from: 1, to: 3),
  }])
end
