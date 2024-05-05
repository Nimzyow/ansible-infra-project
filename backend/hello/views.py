import json

from django.http import HttpResponse


def hello_world(request):
    data = {'message': (
        'Hello, World! If you are seeing this message, the frontend has successfully' +
        ' communicated with the backend through a SSL reverse proxy -> loadbalancer -> django app')}
    json_data = json.dumps(data)
    return HttpResponse(json_data, status=200, content_type='application/json')
