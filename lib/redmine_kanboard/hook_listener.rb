require 'uri'
require 'net/http'

class RedmineKanboard::HookLitener < Redmine::Hook::Listener

  def controller_issues_new_after_save(context = {})
    issue = context[:issue]
    controller = context[:controller]
    project = issue.project
    kanboard = Kanboard.where(:project_id => project.project.id).first
    return unless kanboard
    get(kanboard, issue, controller)
  end

private
  def get(kanboard, issue, controller)
    base_url, base_query = kanboard.url.split('?')
    url = URI.parse(base_url)
    # Get information about issue
    title = issue.subject
    description = controller.issue_url(issue)

    query = base_query + "&title=#{title}&description=#{description}&project_id=#{kanboard.project_id}"
    req = Net::HTTP::Get.new(url.path + "?" + query)
    p req.path
    res = Net::HTTP.start(url.host, url.port) { |http|
        http.request(req)
    }   
    puts res.body
  end
end
