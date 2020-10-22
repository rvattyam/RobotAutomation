import requests
import json
import jsonpath

api_url = 'https://reqres.in/api/users?page=2'

response = requests.get(api_url)
assert response.status_code == 200

#parse Response to JSON Format

jresponse = json.loads(response.text)


for j in jresponse['data']:
    print(j['first_name'])