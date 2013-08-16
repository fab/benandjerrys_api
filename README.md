Ben & Jerry's API
=================
A JSON API for finding which stores sell Ben &amp; Jerry's ice cream and what flavors they stock.

## Using the API

### Stores

#### All stores

Send a GET request to ```/api/v1/stores``` to get a collection of all stores rendered in JSON:
```
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
```
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

```
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

Send a GET request to ```/api/v1/flavors/:flavor_id``` to get an individual flavor, including the image url, rendered in JSON:

```
{
  "id": 28,
  "name": "Phish Food®",
  "img_url": "https://www.filepicker.io/api/file/LkkuWrAQVKmwhfQpskie"
}
```


