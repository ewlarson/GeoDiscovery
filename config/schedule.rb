# Use this file to easily define all of your cron jobs.
# Learn more: http://github.com/javan/whenever

# Build the sitemap
every :day, at: "12:30am", roles: [:app] do
  rake "sitemap:refresh"
end

# Cleans up anonymous user accounts created by search sessions
every :day, at: "1:30am", roles: [:app] do
  rake "devise_guests:delete_old_guest_users[2]"
end

# Cleans up recent anonymous search records
every :day, at: "2:30am", roles: [:app] do
  rake "blacklight:delete_old_searches[7]"
end
