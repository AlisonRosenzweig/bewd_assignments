json.array!(@fun_facts) do |fun_fact|
  json.extract! fun_fact, :id
  json.url fun_fact_url(fun_fact, format: :json)
end
