# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.delete_all
Keyword.delete_all
Job.delete_all

loc1 = Location.create!(city:"Boston", state:"MA")
loc2 = Location.create!(city:"New York", state:"NY")

key1 = Keyword.create!(name: "HTML")
key2 = Keyword.create!(name: "CSS")
key3 = Keyword.create!(name: "Creative Suite")
key4 = Keyword.create!(name: "Rails")
key5 = Keyword.create!(name: "Javascript")
key6 = Keyword.create!(name: "Sketching")
key7 = Keyword.create!(name: "Ruby")

job1 = Job.create!(name:"Jr. Web Developer", description:"Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna.", company:"Frog Designs", category: 1, position_type: 0, location_id: loc1.id )

job2 = Job.create!(name:"Sr. Web Developer", description: "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus.", company:"Frog Designs", category: 1, position_type: 0, location_id: loc1.id )

job3 = Job.create!(name:"Product Designer", description: "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec sed odio dui.", category: 0, position_type: 0, location_id: loc1.id )

job4 = Job.create!(name:"Sr. Product Designer", description:"Sed posuere consectetur est at lobortis. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod.", category: 0, position_type: 0, location_id: loc1.id )

job5 = Job.create!(name:"Shoe Designer", description:"Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna.", company:"Frog Designs", category: 0, position_type: 0, location_id: loc1.id )

job6 = Job.create!(name:"Shirt Designer", description:"Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod.", category: 0, position_type: 0, location_id: loc2.id )

job7 = Job.create!(name:"App Developer", description:"Sed posuere consectetur est at lobortis. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.", category: 0, position_type: 0, location_id: loc2.id )

job8 = Job.create!(name:"Mobile Developer", description:"Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.", category: 0, position_type: 0, location_id: loc2.id )

job9 = Job.create!(name:"Mobile App Developer", description:"Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna.", company:"Frog Designs", category: 1, position_type: 0, location_id: loc2.id )

job10 = Job.create!(name:"Jr. Web Developer", description:"Maecenas faucibus mollis interdum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.", company: "Apple Designs", category: 1, position_type: 0, location_id: loc2.id )

job11 = Job.create!(name:"Jr. Web Developer", description:"Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo.", company:"Apple Designs", category: 1, position_type: 0, location_id: loc2.id )

JobKeyword.create!(job_id:job1.id, keyword_id:key1.id);
JobKeyword.create!(job_id:job2.id, keyword_id:key2.id);
JobKeyword.create!(job_id:job3.id, keyword_id:key3.id);
JobKeyword.create!(job_id:job4.id, keyword_id:key4.id);
JobKeyword.create!(job_id:job5.id, keyword_id:key5.id);
JobKeyword.create!(job_id:job6.id, keyword_id:key6.id);
JobKeyword.create!(job_id:job7.id, keyword_id:key1.id);
JobKeyword.create!(job_id:job8.id, keyword_id:key2.id);
JobKeyword.create!(job_id:job9.id, keyword_id:key3.id);
JobKeyword.create!(job_id:job10.id, keyword_id:key4.id);
JobKeyword.create!(job_id:job11.id, keyword_id:key5.id);
JobKeyword.create!(job_id:job1.id, keyword_id:key2.id);
JobKeyword.create!(job_id:job2.id, keyword_id:key3.id);
JobKeyword.create!(job_id:job3.id, keyword_id:key4.id);
JobKeyword.create!(job_id:job4.id, keyword_id:key5.id);
JobKeyword.create!(job_id:job5.id, keyword_id:key6.id);
JobKeyword.create!(job_id:job6.id, keyword_id:key1.id);
JobKeyword.create!(job_id:job7.id, keyword_id:key2.id);
JobKeyword.create!(job_id:job8.id, keyword_id:key3.id);
JobKeyword.create!(job_id:job9.id, keyword_id:key4.id);
JobKeyword.create!(job_id:job10.id, keyword_id:key5.id);
JobKeyword.create!(job_id:job11.id, keyword_id:key6.id);
