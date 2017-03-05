crumb :root do
  link "トップ", root_path
end

crumb :video do |video| #引数でタイトルを表示
	link video.description, video #リンク(path)を指定
	parent :root
end

crumb :edit do |video|
	link "編集する #{video.description}", edit_video_path(post)
	parent :video, video
end

crumb :new do
	link "投稿する"
	parent :root
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).