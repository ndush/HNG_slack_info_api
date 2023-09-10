class SlackInfoController < ApplicationController
  def info
    slack_name = params[:slack_name] 
    current_day = Time.now.strftime('%A')
    track = params[:track] 
    
    github_file_url = 'https://github.com/ndush/slack_info_api/blob/main/app/controllers/slack_info_controller.rb'
    github_repo_url = 'https://github.com/ndush/slack_info_api'

    utc_time = Time.now.utc 

    time_diff = (utc_time - Time.now).to_i
    is_valid_utc_time = time_diff.abs <= 120 

    if is_valid_utc_time
      utc_time_str = utc_time.strftime('%Y-%m-%dT%H:%M:%SZ')
    else
      utc_time_str = 'Invalid UTC Time'
    end

    response_data = {
      slack_name: slack_name,
      current_day: current_day,
      utc_time: utc_time_str,
      track: track,
      github_file_url: github_file_url,
      github_repo_url: github_repo_url,
      status_code: 200
    }

    render json: response_data
  end
end
