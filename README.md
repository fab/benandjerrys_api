Ben & Jerry's API
=================
A JSON API for finding which stores sell [Ben &amp; Jerry's ice cream](http://www.benjerry.com) and what flavors they stock.

This API was built using the data collected with the [Ben & Jerry's scraper](https://github.com/fab/benandjerrys_scraper).

## Using the API

### Stores

#### All stores

Send a GET request to ```/api/v1/stores``` to get a collection of all stores rendered in JSON:

```javascript
[
  {
    "id": 1,
    "name": "SAFEWAY",
    "address": "2227 S SHORE CENTER, ALAMEDA, CA 94501"
  },
  {
    "id": 2,
    "name": "LUCKY",
    "address": "815 MARINA VILLAGE PKWY, ALAMEDA, CA 94501"
  },
  ...
]
```

#### Individual stores

Send a GET request to ```/api/v1/stores/:store_id``` to get an individual store, including flavors sold, rendered in JSON:

```javascript
{
  "id": 34,
  "name": "WALGREENS",
  "address": "301 E 18TH ST, OAKLAND, CA 94606",
  "flavors": [
    {
      "id": 11,
      "name": "Chocolate Chip Cookie Dough"
    },
    {
      "id": 12,
      "name": "Chocolate Fudge Brownie™"
    },
    {
      "id": 16,
      "name": "Chunky Monkey®"
    },
    ...
  ]
}
```

### Flavors

#### All flavors

Send a GET request to ```/api/v1/flavors``` to get a collection of all flavors rendered in JSON:

```javascript
[
  {
    "id": 1,
    "name": "Liz Lemon"
  },
  {
    "id": 2,
    "name": "Coffee"
  },
  {
    "id": 3,
    "name": "Coffee BuzzBuzzBuzz!"
  },
  ...
]
```

#### Individual flavors

Send a GET request to ```/api/v1/flavors/:flavor_id``` to get an individual flavor, including the description, ingredients and image url, rendered in JSON:

```javascript
{
  "id": 30,
  "name": "Phish Food®",
  "description": "Chocolate Ice Cream with Gooey Marshmallow Swirls, Caramel Swirls & Fudge Fish",
  "ingredients": "Cream, Water, Skim Milk, Liquid Sugar (Sugar, Water), Corn Syrup, Sugar, Cocoa (Processed With
  Alkali), Coconut Oil, Butter (Cream, Salt), Egg Whites, Egg Yolks, Vanilla Extract, Corn Syrup Solids, Guar
  Gum, Cocoa, Milk Fat, Salt, Natural Flavor, Pectin, Carrageenan, Sodium Bicarbonate, Soy Lecithin."
  "img_url": "http://www.benjerry.com/templates/global-mobile-templates/assets/images/flavors/us/detail/7684010098.png"
}
```


