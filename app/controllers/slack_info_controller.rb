class SlackInfoController < ApplicationController
    def info
        slack_name = params[:slack_name]
        track = params[:track]
        current_day = Time.now.strftime('%A')
        utc_time = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')
        github_username = 'Muriithi-Gitonga'
        github_repo = 'zuri-backend-task'
        github_file_url = "https://github.com/Muriithi-Gitonga/zuri-backend-task/blob/main/app/controllers/slack_info_controller.rb"
        github_repo_url = "https://github.com/Muriithi-Gitonga/zuri-backend-task"
        status_code = 200
        
        response_data = {
          slack_name: slack_name,
          current_day: current_day,
          utc_time: utc_time,
          track: track,
          github_file_url: github_file_url,
          github_repo_url: github_repo_url,
          status_code: status_code
        }
    
        render json: response_data, status: :ok
    end
end
