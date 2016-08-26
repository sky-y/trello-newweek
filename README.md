# trello-newweek.rb

![Trello Weekly Review](ss-trello-weekly.png)

Trelloで週次レビューしたい人用。

指定の日時で（デフォルトは今日から1週間）、指定のリストIDに空のリストを追加します。

## Install

Bundlerをインストールしておいてください。（rbenvを推奨）

    git clone https://github.com/sky-y/trello-newweek.git
    cd trello-newweek
    bundle install

スクリプト`trello-newweek.rb` の下記を、自分のものに書き換えてください：

* PUT_YOUR_DEVELOPER_PUBLIC_KEY
* PUT_YOUR_TOKEN
* PUT_YOUR_BOARD_ID

## Usage

    ruby trello-newweek.rb  # 今日から一週間後までのリストを作成
    ruby trello-newweek.rb 2016-08-30  # 今日から2016/8/30までのリストを作成
    ruby trello-newweek.rb 2016-08-26 2016-08-26 # 2016/8/26から2016/8/30までのリストを作成

## License

MIT License

## Author

sky-y (Twitter [@sky_y](https://twitter.com/sky_y))
