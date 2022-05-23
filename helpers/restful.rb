def restful(endpoint)
  response = Faraday.get(endpoint)
  payload = response.body
  data = JSON.parse(payload, object_class: OpenStruct)
  return data
end