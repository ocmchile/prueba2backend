# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.destroy_all
User.destroy_all
Inventory.destroy_all
Category.destroy_all

c = []
3.times do |i|
	c << Category.create(name: "Categoria" + i.to_s)
end

u = []
2.times do |i|
	u << User.create(name: "Usuario" + i.to_s, email: "Email@" + i.to_s)
end

w = []
6.times do |i|
	w << Work.create(desc: "Descripcion" + i.to_s, user: u.sample)
end

i = []
6.times do |j|
	i << Inventory.create(numserie: "Num" + j.to_s, tamrueda: j, desc: "Descripcion " + j.to_s, category: c.sample, work: w.sample)
end