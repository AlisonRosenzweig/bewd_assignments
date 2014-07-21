json.array!(@project_ideas) do |project_idea|
  json.extract! project_idea, :id, :project_title, :project_details
  json.url project_idea_url(project_idea, format: :json)
end
