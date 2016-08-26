require 'trello'
require 'date'

## Utility methods
def jweek(d)
  %w(日 月 火 水 木 金 土)[d.wday]
end

def fday(d)
  d.strftime("%-m/%-d (#{jweek(d)})")
end

## Set dates as ARGV gives
if ARGV.size == 0
  day = Date.today
  day2 = day + 7
elsif ARGV.size == 1
  day = Date.today
  day2 = Date.parse(ARGV[0])
elsif ARGV.size == 2
  day = Date.parse(ARGV[0])
  day2 = Date.parse(ARGV[1])
else
  STDERR.puts 'Usage: ' + $0 + ' (day_from (day_to))'
  exit 1
end

## Trello Auth
Trello.configure do |config|
  config.developer_public_key = 'PUT_YOUR_DEVELOPER_PUBLIC_KEY' 
  config.member_token = 'PUT_YOUR_TOKEN'
end

## My board ID
board_id = 'PUT_YOUR_BOARD_ID'

# Make lists for these days
(day..day2).each do |d|
  s = fday(d)
  puts s
  Trello::List.create(name: s, board_id: board_id, pos: 'bottom')
end
