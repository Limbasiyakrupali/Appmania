class ProductData {
  static Set<Map<String, dynamic>> favouritedata = {};
  static List<Map<String, dynamic>> favouriteproductdata = [];
  static Set<Map<String, dynamic>> cartdata = {};
  static List<Map<String, dynamic>> cartproductdata = [];
  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Avocada Salad",
          'price': 218,
          'rating': 4,
          'timing': "20min",
          'cookingTime': "10min",
          "Delivery charges": 10,
          'description':
              "This salad is a delightful combination of fresh, ripe avocados, crisp and cool cucumbers, complemented by a light lime dressing. ...",
          "number": 0,
          'ingidiance': [
            "🌶",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'thumbnail':
              "https://www.eatingbirdfood.com/wp-content/uploads/2021/03/avocado-salad-hero.jpg",
          'images': [
            "https://www.foodandwine.com/thmb/5UL9IUbOkFL83NOCS-TdcuoLZ8c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Spinach-Grapefruit-and-Avocado-Salad-with-Sesame-Vinaigrette-FT-RECIPE0124-5ba11fc4d8154435bcb152bd49ab42ff.jpg",
            "https://lemonsandzest.com/wp-content/uploads/2021/07/3-Bean-Avocado-Corn-Salad-13.jpg",
            "https://kalejunkie.com/wp-content/uploads/2023/06/KJ-Cucumber-Avocado-Salad-5.jpg",
          ]
        },
        {
          'id': 2,
          'title': "fruit Salad",
          'price': 250,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup. In different forms, fruit salad can be served as an...",
          'ingidiance': [
            "🍉",
            "🍊",
            "🍇",
            "🍍",
            "🍎",
            "🍐",
            "🍑",
            "🍌",
          ],
          'thumbnail':
              "https://fitfoodiefinds.com/wp-content/uploads/2020/05/salad-1.jpg",
          'images': [
            "https://www.modernhoney.com/wp-content/uploads/2023/05/Fruit-Salad-10.jpg",
            "https://natashaskitchen.com/wp-content/uploads/2015/04/Fruit-Salad-with-Orange-Poppy-Seed-Syrup-2.jpg",
            "https://www.chelseasmessyapron.com/wp-content/uploads/2014/04/FRUIT-SALAD-3-500x500.jpg",
          ]
        },
      ],
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Greek Salad",
          'price': 200,
          'rating': 4.2,
          'timing': "15min",
          'cookingTime': "10min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "this is one of the most popular salads in Greece, Turkey and Cyprus. This is because it is light, refreshing and easy to make. It is especially popular during the summer months...",
          'thumbnail':
              "https://www.italianbellavita.com/wp-content/uploads/2022/08/739C7136-CBA2-4DDC-8D56-ECA409F69AB9-3-735x735.jpeg",
          'ingidiance': [
            "🧀",
            "🥒",
            "🍋",
            "🫑",
            "🧂",
            "🧄",
          ],
          'images': [
            "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/08/Greek-Salad-6-1.jpg",
            "https://www.gimmesomeoven.com/wp-content/uploads/2018/06/Greek-Salad-6.jpg",
            "https://www.wellplated.com/wp-content/uploads/2022/05/Greek-Salad-Recipe-Easy.jpg",
          ]
        },
        {
          'id': 2,
          'title': "Cobb Salad",
          'price': 280,
          'rating': 4.7,
          'timing': "30min",
          'cookingTime': "20min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "The invention of the Cobb Salad is generally attributed to Robert Howard Cobb who co-owned The Brown Derby restaurant in Los Angeles. ...",
          'thumbnail':
              "https://www.cookingclassy.com/wp-content/uploads/2021/03/cobb-salad-18.jpg",
          'ingidiance': [
            "🐔",
            "🥚",
            "🥑",
            "🧅",
            "🧄",
            "🥦",
          ],
          'images': [
            "https://www.cookingclassy.com/wp-content/uploads/2021/03/cobb-salad-18.jpg",
            "https://thecleaneatingcouple.com/wp-content/uploads/2023/06/chicken-cobb-salad-1.jpg",
            "https://www.asaucykitchen.com/wp-content/uploads/2016/11/Autum-Cobb-Salad-3.jpg",
          ]
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Caprese Salad",
          'price': 220,
          'rating': 4.3,
          'timing': "15min",
          'cookingTime': "10min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "it's a simple Italian salad. Caprese is super easy to prepare and made up of only a few fresh ingredients: a generous ball of fresh mozzarella, red ripe tomatoes for slicing, a handful of ...",
          'ingidiance': [
            "🥦",
            "🧄",
            "🍏",
            "🥬",
            "🥑",
            "🌶",
          ],
          'thumbnail':
              "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-main-1.jpg",
          'images': [
            "https://www.modernhoney.com/wp-content/uploads/2021/07/Caprese-Salad-1-scaled.jpg",
            "https://www.supaintsonplates.com/wp-content/uploads/2020/10/1623933528046_resize_40.jpg",
            "https://cheeseknees.com/wp-content/uploads/2021/05/caprese-salad-sq.jpg",
          ]
        },
        {
          'id': 2,
          'title': "Spinach Salad",
          'price': 210,
          'rating': 4.1,
          'timing': "20min",
          'cookingTime': "10min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "The five basic types of salad are green salads (tossed or composed), bound, vegetable, fruit, and combination. The five basic salads that can be served throughout the course of a meal are starter...",
          'thumbnail':
              "https://www.ambitiouskitchen.com/wp-content/uploads/2023/05/Summer-Strawberry-Spinach-Salad-5.jpg",
          'ingidiance': [
            "🥬",
            "🥦",
            "🌶",
            "🧄",
            "🍋",
          ],
          'images': [
            "https://www.gimmesomeoven.com/wp-content/uploads/2016/09/Apple-Spinach-Recipe-3.jpg",
            "https://cdn-uploads.mealime.com/uploads/recipe/thumbnail/718/presentation_8a11d774-0443-4671-9b87-0029a6cfc6dd.jpeg",
            "https://www.veggiessavetheday.com/wp-content/uploads/2020/02/Chickpea-Spinach-Salad-FI-1200.jpg",
          ]
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Protines Salad",
          'price': 270,
          'rating': 4.6,
          'timing': "25min",
          'cookingTime': "15min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "Protein is an essential nutrient that plays a crucial role in many bodily functions, including muscle growth and repair, immune function, and hormone production. Adding protein to your salad can also help keep...",
          'thumbnail':
              "https://www.veganfriendly.org.uk/wp-content/uploads/2022/09/high-protein-vegan-salad.jpg",
          'ingidiance': [
            "🌶",
            "🌾",
            "🍋",
            "🥬",
            "🥦",
          ],
          'images': [
            "https://www.easycookingwithmolly.com/wp-content/uploads/2018/05/protein-packed-summer-salad-pin.jpg",
            "https://iheartvegetables.com/wp-content/uploads/2022/02/Edamame-Quinoa-Salad-4-of-12.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNmC4aZdG0-8oL78u717tlHT03K1ah2hRsdACJvACr3CAcmJ-9yJoBEfm3-VFRrSNX914&usqp=CAU",
          ]
        },
        {
          'id': 2,
          'title': "Crunch Salad",
          'price': 290,
          'rating': 4.8,
          'timing': "30min",
          'cookingTime': "20min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "A salad is a dish consisting of mixed ingredients, frequently vegetables. They are typically served chilled or at room temperature, though some can be served warm....",
          'thumbnail':
              "https://choosingchia.com/jessh-jessh/uploads/2021/06/Thai-Crunch-Salad-2-680x1020.jpg",
          'ingidiance': [
            "🌶",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'images': [
            "https://www.gimmesomeoven.com/wp-content/uploads/2023/05/Thai-Chicken-Salad-7.jpg",
            "https://www.gimmesomeoven.com/wp-content/uploads/2023/05/Thai-Chicken-Salad-5.jpg",
            "https://goodnessavenue.com/wp-content/uploads/2023/01/edamame-crunch-salad-2.jpg",
          ]
        },
      ]
    },
    {
      "CatagoryProducts": [
        {
          'id': 1,
          'title': "Waldorf Salad",
          'price': 240,
          'rating': 4.4,
          'timing': "20min",
          'cookingTime': "10min",
          "Delivery charges": 10,
          "number": 0,
          'description':
              "Apples, grapes, celery, and walnuts with mayonnaise...",
          'thumbnail':
              "https://www.throughthefibrofog.com/wp-content/uploads/2021/06/waldorf-salad-without-mayo-1.jpg",
          'ingidiance': [
            "🥑",
            "🧅",
            "🧄",
            "🥦",
            "🐔",
            "🥚",
          ],
          'images': [
            "https://thedevilwearssalad.com/wp-content/uploads/2022/09/The-Best-Waldorf-Salad-Recipe-2.jpg",
            "https://www.oliveandmango.com/images/uploads/2020_10_07_waldorf_salad_2.jpg",
            "https://www.crowdedkitchen.com/wp-content/uploads/2020/09/waldorf-salad-3.jpg",
          ]
        },
        {
          'id': 2,
          'title': "Whole Grains Salad",
          'price': 260,
          'rating': 4.5,
          'timing': "25min",
          'cookingTime': "15min",
          "Delivery charges": 10,
          "number": 0,
          'description': "Olives, cucumbers, tomatoes, and feta cheese...",
          'thumbnail':
              "https://eqhct8esjgc.exactdn.com/wp-content/uploads/2020/11/pomegranate-whole-grain-salad-with-dressing-l.jpg?strip=all&lossy=1&resize=600%2C800&ssl=1",
          'ingidiance': [
            "🌶",
            "🥑",
            "🧄",
            "🍏",
            "🥬",
            "🥦",
          ],
          'images': [
            "https://assets.epicurious.com/photos/59e8f2f0fd37ce654951ea9f/1:1/w_2560%2Cc_limit/grain-salad-with-olivers-and-whole-lemon-vinaigrette-recipe-BA-101917.jpg",
            "https://cherriesinjune.com/wp-content/uploads/2019/09/whole-wheat-penne-salad-1.jpg",
            "https://www.panningtheglobe.com/wp-content/uploads/2023/06/chopped-salad-recipe.jpg",
          ]
        },
      ]
    },
  ];

  static void uniquedata() {
    cartproductdata = cartdata.toList();
    favouriteproductdata = favouritedata.toList();
  }

  static void convertuniquedata() {
    favouriteproductdata = favouritedata.toList();
  }

  static num subtotal() {
    num sum = 0;

    for (var element in cartproductdata) {
      sum += element['price'];
    }
    return sum;
  }

  static num delivery() {
    num delivery = 10;

    return delivery;
  }

  static num finaltotal() {
    num total = 0;
    num delivery = 10;
    total = delivery + subtotal();
    return total;
  }
}
