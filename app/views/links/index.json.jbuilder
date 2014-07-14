json.array!(@links) do |link|
  json.extract! link, :id, :title, :href, :target
  json.url link_url(link, format: :json)
end
