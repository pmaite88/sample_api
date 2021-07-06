# README

## Features

- create records in the database
- retrieve records from the database

## Usage

### GET

`curl -X GET http://localhost:3000/test_links`

```json
[
    {
        "id": 1,
        "created_at": "2021-07-06T12:32:16.938Z",
        "updated_at": "2021-07-06T12:32:16.938Z",
        "url": "http://localhost:3000/test_links/1.json"
    },
    {
        "id": 2,
        "created_at": "2021-07-06T12:34:06.126Z",
        "updated_at": "2021-07-06T12:34:06.126Z",
        "url": "http://localhost:3000/test_links/2.json"
    }
]
```

### POST

`curl -X POST http://localhost:3000/test_links`

```json
{
    "id": 3,
    "created_at": "2021-07-06T12:42:08.067Z",
    "updated_at": "2021-07-06T12:42:08.067Z",
    "url": "http://localhost:3000/test_links/3.json"
}
```

## Environment variables

Check .env.sample for guidance.

```
  DATABASE_NAME=sample_api
  DATABASE_USERNAME=sample_api
  DATABSE_PASSWORD=
```
