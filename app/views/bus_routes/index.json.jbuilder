json.array!(@bus_routes) do |bus_route|
  json.extract! bus_route, :id, :name, :points
  json.url bus_route_url(bus_route, format: :json)
end
