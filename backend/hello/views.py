import json

from django.http import HttpResponse


def hello_world(request):
    data = {'message': 'Hello, World!'}
    json_data = json.dumps(data)
    return HttpResponse(json_data, status=200, content_type='application/json')
