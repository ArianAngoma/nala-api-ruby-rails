## Peticiones y Respuestas

### API Resources

- [POST /api/users](#post-apiusers)
- [POST /api/sessions](#post-apisessions)

- [GET /api/holidays](#get-apiholidays)
- [GET /api/holidays/[id]](#get-apiholidaysid)
- [POST /api/holidays](#post-apiholidays)
- [PUT /api/holidays/[id]](#put-apiholidaysid)
- [DELETE /api/holidays/[id]](#delete-apiholidaysid)

### POST /api/users

Request body:

    {
        "username": "arian2",
        "email": "arian2@gmail.com",
        "password": "123456"
    }

Response body:

    {
        "status": "OK",
        "message": "Usuario creado",
        "data": {
            "id": 4,
            "username": "arian2",
            "email": "arian2@gmail.com",
            "password": "123456",
            "created_at": "2021-08-09T04:11:33.464Z",
            "updated_at": "2021-08-09T04:11:33.464Z"
        }
    }

### POST /api/sessions

Request body:

    {
        "email": "arian2@gmail.com",
        "password": "123456"
    }

Response body:

    {
        "status": "OK",
        "message": "Usuario logueado",
        "data": {
            "id": 4,
            "username": "arian2",
            "email": "arian2@gmail.com",
            "password": "123456",
            "created_at": "2021-08-09T04:11:33.464Z",
            "updated_at": "2021-08-09T04:11:33.464Z"
        }
    }

### GET /api/holidays

Response body:

    {
        "status": "OK",
        "message": "Vacaciones cargadas",
        "data": [
            {
                "id": 1,
                "name": "Arian",
                "startDate": "01/01/2021",
                "endDate": "10/01/2021",
                "created_at": "2021-08-07T09:35:07.367Z",
                "updated_at": "2021-08-08T09:04:02.570Z"
            },
            {
                "id": 4,
                "name": "Arian2",
                "startDate": "01/02/2021",
                "endDate": "10/02/2021",
                "created_at": "2021-08-09T04:05:10.956Z",
                "updated_at": "2021-08-09T04:05:10.956Z"
            }
        ]
    }

### GET /api/holidays/[id]

Response body:

    {
        "status": "OK",
        "message": "Vacaciones cargadas",
        "data": [
            {
                "id": 1,
                "name": "Arian",
                "startDate": "01/01/2021",
                "endDate": "10/01/2021",
                "created_at": "2021-08-07T09:35:07.367Z",
                "updated_at": "2021-08-08T09:04:02.570Z"
            }
        ]
    }

### POST /api/holidays

Request body:

    {
        "name": "Arian2",
        "startDate": "01/02/2021",
        "endDate": "10/02/2021"
    }

Response body:
    
    {
        "status": "OK",
        "message": "Vacación guardada",
        "data": {
            "id": 4,
            "name": "Arian2",
            "startDate": "01/02/2021",
            "endDate": "10/02/2021",
            "created_at": "2021-08-09T04:05:10.956Z",
            "updated_at": "2021-08-09T04:05:10.956Z"
        }
    }

### PUT /api/holidays/[id]

Request body:

    {
        "name": "Arian2Editado",
        "startDate": "10/02/2021",
        "endDate": "20/02/2021"
    }

Response body:

    {
        "status": "OK",
        "message": "Vacación actualizado",
        "data": {
            "name": "Arian2Editado",
            "startDate": "10/02/2021",
            "endDate": "20/02/2021",
            "id": 4,
            "created_at": "2021-08-09T04:05:10.956Z",
            "updated_at": "2021-08-09T04:08:58.535Z"
        }
    }

### DELETE /api/holidays/[id]

Response body:

    {
        "status": "OK",
        "message": "Vacación eliminada",
        "data": {
            "id": 4,
            "name": "Arian2Editado",
            "startDate": "10/02/2021",
            "endDate": "20/02/2021",
            "created_at": "2021-08-09T04:05:10.956Z",
            "updated_at": "2021-08-09T04:08:58.535Z"
        }
    }