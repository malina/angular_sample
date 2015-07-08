var faker = require('/usr/local/lib/node_modules/faker');

module.exports = function() {
  var data = { items: [] }
  var colors = ['red', 'white', 'black', 'blue', 'yellow', 'green'];

  for (var i = 1; i <= 1000; i++) {
    var instock = (i % 2) == 1 ? true : false
    data.items.push({ id: i,
                      name: faker.company.companyName(),
                      color: colors[Math.floor(Math.random()*colors.length)],
                      issue_date: faker.date.future(),
                      price: faker.finance.amount(),
                      rating: faker.finance.amount(0, 5),
                      image: faker.image.image(),
                      instock: instock
                      })
  }
  return data
}
