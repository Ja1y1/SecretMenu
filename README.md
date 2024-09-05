# README

This repo is for a secret menu items ypu can use it to add and retrieve menu items.

## Getting Started 


### Pre-requisites and Local Development (macOs)


Developers who wishes to work on this project should already have ruby 3, rails 7 & sqlite3 ~> 1.4.

## API Reference 


### Getting Started 


BASE URL : This API runs on local host : http://127.0.0.1:3000 

Authentication: This version of the application does not require authentication or api keys. 



### API Endpoints


#### GET '/secret_menu_items'


Expects: None
Returns: A list of items

Sample: 
```curl
curl http://127.0.0.1:3000/secret_menu_items
```
```json
[
    {
        "id":8,
        "menu_name":"All you can eat",
        "resturant_name":"Ihop",
        "menu_description":"Pancake",
        "created_at":"2024-07-29T06:59:31.992Z",
        "updated_at":"2024-07-29T06:59:31.992Z"
    },
    {
        "id":9,
        "menu_name":"Nachos",
        "resturant_name":"TexMex",
        "menu_description":"Make your own plate",
        "created_at":"2024-07-29T06:59:31.994Z",
        "updated_at":"2024-07-29T06:59:31.994Z"
    },
]                                                                                                        
```

#### POST '/secret_menu_items'


Expects: A request body with this structure
```json
{
    "menu_name":"menu name",
    "resturant_name":"resturant name",
    "menu_description":"menu description"
}
```
Returns: The created item


Sample: 
```curl
curl http://127.0.0.1:3000/secret_menu_items -X POST -H "Content-Type: application/json" -d "'menu_name': 'menu name', 'resturant_name': 'restaurant name', 'menu_description': 'menu description'"
```
```json
[
    {
        "id":10,
        "menu_name":"menu name",
        "resturant_name":"resturant name",
        "menu_description":"menu description",
        "created_at":"2024-07-29T06:59:31.992Z",
        "updated_at":"2024-07-29T06:59:31.992Z"
    },
]                                                                                                        
```
#### GET '/secret_menu_items/<item_id>'


Expects: None
Returns: An item with the provided id

Sample: 
```curl
curl http://127.0.0.1:3000/secret_menu_items/9"
```
```json
[
    {
        "id":9,
        "menu_name":"Nachos",
        "resturant_name":"TexMex",
        "menu_description":"Make your own plate",
        "created_at":"2024-07-29T06:59:31.994Z",
        "updated_at":"2024-07-29T06:59:31.994Z"
    },
]                                                                                                        
```

#### PUT '/secret_menu_items/<item_id>'


Expects: New updated data for the item
Returns: Updated item

```curl
curl http://127.0.0.1:3000/secret_menu_items/10 -X PUT -H "Content-Type: application/json" -d "'menu_name': 'Burgers', 'resturant_name': 'Burger King', 'menu_description': 'You are what you eat'"
```
```json
[
    {
        "id":10,
        "menu_name":"Burgers",
        "resturant_name":"Burger King",
        "menu_description":"You are what you eat",
        "created_at":"2024-07-29T06:59:31.992Z",
        "updated_at":"2024-07-29T06:59:31.992Z"
    },
]                                                                                                        
```

#### Delete '/secret_menu_items/<item_id>'

Expects: None
Returns: The deleted item

```curl
curl http://127.0.0.1:3000/secret_menu_items/10 -X DELETE"
```
```json
[
    {
        "id":10,
        "menu_name":"Burgers",
        "resturant_name":"Burger King",
        "menu_description":"You are what you eat",
        "created_at":"2024-07-29T06:59:31.992Z",
        "updated_at":"2024-07-29T06:59:31.992Z"
    },
]                                                                                                        
```