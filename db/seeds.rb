# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create([
     {title:"Electronics"},
     {title:"Grocery"},
     {title:"Clothing"},
     {title:"Furniture"}
])



Item.create([

    {name: "Ps4", price:22, quantity:800, category: Category.first  },
    {name: "iPhone", price:35, quantity:900, category: Category.first  },
    {name: "Hairdryer", price:15, quantity:500, category: Category.first  },
    {name: "Dell inspirion", price:450, quantity:40, category: Category.first  },
    {name: "Banana", price:1, quantity:7000, category: Category.all()[1]  },
    {name: "Ceareal", price:20, quantity:443, category: Category.all[1]  },
    {name: "Bread", price:2, quantity:6765, category: Category.all[1]  },
    {name: "Milk" , price: 33, quantity:443, category: Category.all[1]  },
    {name: "Coder group merchandise", price:232, quantity:344, category:Category.all[2]  },
    {name: "Nike vapor", price:223, quantity:344, category: Category.all[2]  },
    {name: "R jewellery", price:50000, quantity:10, category: Category.all[2]  },
    {name: "gucci hoodie", price:4554, quantity:200, category: Category.all[2]  },
    {name: "Merc sofa", price:3444, quantity:44, category: Category.last  },
    {name: "Dinner  table", price:345, quantity:232, category: Category.last  },
    {name: "Entertainment system", price:764, quantity:694, category: Category.last },
    {name: "Bamp", price:44, quantity:55, category: Category.last  },
  

])
