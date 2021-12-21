cus1 = Customer.create({name: "sean"})
cus2 = Customer.create({name: "peter"})

cof1 = Coffee.create({title: "black"})
cof2 = Coffee.create({title: "flat white"})
cof3 = Coffee.create({title: "PSL"})

ord1 = Order.create({price: 10, customer_id:1, coffee_id:1})
ord2 = Order.create({price: 15, customer_id:2, coffee_id:1})
ord3 = Order.create({price: 15, customer_id:2, coffee_id:2})