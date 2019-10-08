# product_2 = Product.new(name:"Game Bottoms",price:1300,image_url:"https://images.squarespace-cdn.com/content/v1/5b846691aa49a1b7c058ef56/1548962609655-ZSR55O8XRU0VSGUJEHQY/ke17ZwdGBToddI8pDm48kI-m1vJaeVyBJ-0bE7B6LhB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1USaCaAzyhjUtjQsbfE2pAc-pZBu-PTOBzBHq-qiFsJR-ZtJ3qR9G2BYeA0wOAaeYNg/5ADFA418-90D0-40D1-B35E-5E7DFBC60971.png?format=750w",description:"Digital bottoms imitating the bottoms on a real game machine, using Adobe Photoshop and Adobe Illustrator.")
# product_2.save
# product_3 = Product.new(name:"Banana Flower",price:2500,image_url:"https://images.squarespace-cdn.com/content/v1/5b846691aa49a1b7c058ef56/1535404538345-HS5SLTXHYEDIJ4U6BYH0/ke17ZwdGBToddI8pDm48kJbosy0LGK_KqcAZRQ_Qph1Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyRoXPauM_hSH3XAFUMH3fmO1jdMVKkonRM0cGdyUtJRnZ7FnwXS6LE3CJOOwAGcs0/30319_119746041381333_1426536_n.jpg?format=750w",description:"Pencil sketches of objects including a banana flower.")
# product_3.save

# categories
# [[1, "Cheap"], [2, "Expensive"], [3, "Clearly"], [4, "neat"]]

# products
# Product.pluck(:id, :name, :price)
# [
# [1, "Scene In Austin", 0.2e4], 
# [2, "Game Bottoms", 0.13e4], 
# [3, "Banana Flower", 0.22e4]
# [4, "cocoa tree", 0.5e4], 
# [5, "Hogwarts Castle Set", 0.45e3], 
# [6, "Imladris!!! Riverdell set", 0.13e4], 
# ]
ProductCategory.create(product_id: 1, category_id: 1)
ProductCategory.create(product_id: 1, category_id: 3)
ProductCategory.create(product_id: 2, category_id: 2)
ProductCategory.create(product_id: 2, category_id: 3)
ProductCategory.create(product_id: 2, category_id: 4)
ProductCategory.create(product_id: 3, category_id: 2)
ProductCategory.create(product_id: 3, category_id: 4)
ProductCategory.create(product_id: 4, category_id: 2)
ProductCategory.create(product_id: 4, category_id: 4)
ProductCategory.create(product_id: 5, category_id: 1)
ProductCategory.create(product_id: 5, category_id: 4)
ProductCategory.create(product_id: 6, category_id: 1)
ProductCategory.create(product_id: 6, category_id: 3)
ProductCategory.create(product_id: 6, category_id: 4)

