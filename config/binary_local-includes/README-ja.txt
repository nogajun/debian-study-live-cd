Debian Live DVD / Debian Live Installer
======================================================================

のがたじゅん <nogajun@debian.or.jp>


はじめに／追加情報など
----------------------------------------------------------------------
Debian Live DVD制作後の追加情報や訂正は以下のURIにてアナウンスされます。
この文書とあわせてお読みください。

http://wiki.debian.org/KansaiDebianMeeting


目次
----------------------------------------------------------------------
1. Debian Liveについて
2. Live DVDとして使う
3. Live DVDのよくある質問
4. Debianをインストール
5. インストール後のよくある質問
6. Debian Liveのカスタマイズ
7. Debian勉強会のお知らせ


Debian Liveについて
----------------------------------------------------------------------
このDebian Live DVDは、Debian Live Projectのlive-buildを用いて制作され
ました。

収録パッケージの詳細についてはDVD内のlive/packages.txtをご覧ください。


Live DVDとして使う
----------------------------------------------------------------------
Debian Liveを起動するにはメニューの「Live」を選択します。
それぞれのメニューは以下のようになっています。

Live
:   通常起動モードです。

Live (fail-safe mode)
:   すべてのオプションを無効にして起動するモードです。うまく起動できない
    場合に試してみてください。

起動時にパラメータを追加するには、メニューの上でTABキーを押して追加します。
パラメータの詳細については、DVD内のlive/parameters.txtをご覧ください。


Live DVDのよくある質問
----------------------------------------------------------------------

### ログイン画面に戻ってしまいました ###

10秒待つと自動的にログインします。すぐにログインする場合は、以下のよう
にユーザー名とパスワードを入力します。

* ユーザー名: user
* パスワード: live

### root権限を使用するにはどうすればいいですか? ###

メニューの「システムターミナル・スーパーユーザーモード」を開く、もしく
はコマンド「sudo -s」を使います。

### DVDの差分をUSBメモリに保存する ###

Debian Liveは、起動時に「live-rw」もしくは「home-rw」というラベル名の
ext2/3/4パーティションをみつけると自動的にマウントし、DVDの差分を保存します。

live-rwは/(ルート)ディレクトリ全体を、home-rwはhomeディレクトリを保存します。


Debianをインストール
----------------------------------------------------------------------

このライブDVDには、Debianインストーラも含まれているので、Debianをインス
トールできます。

### Boot Menuからインストール ###

1. DVDを起動して「Text Install」もしくは「GUI Install」を選びます。

### Live上からインストール ###

1. デスクトップ上にある「Debian Installer」をクリックします。
2. インストーラが起動するので指示にしたがい選択し、進めます。
3. 「パッケージマネージャの設定」が終わるとDebianインストーラメインメニューが表示されるので、「ハードディスクへのGRUBブートローダーのインストール」を選択します。


インストール後のよくある質問
----------------------------------------------------------------------

#### aptitude/Synapticでソフトをインストールできない ####

Live Installerの初期設定ではリポジトリが無効になっています。

GNOMEメニューの[システム]→[システム管理]→[ソフトウェアの配布元]を開き、
リポジトリを追加するか、/etc/apt/sources.listに以下のリポジトリを追加し
てください。

    deb http://ftp.jp.debian.org/debian/ squeeze main contrib non-free
    deb-src http://ftp.jp.debian.org/debian/ squeeze main contrib non-free

#### デスクトップにあるREADME-ja.txtは削除しても大丈夫ですか? ####

問題ありません。
DVDメディア内にあるドキュメントへのシンボリックリンクですので、削除して
ください。

#### live-boot/live-config パッケージはなんですか? ####

ライブシステムが起動する際に使われるパッケージです。
HDDからの起動では無視されるので、そのままでも問題ありませんが、気になる
のであれば削除してください。


Debian Liveのカスタマイズについて
----------------------------------------------------------------------

このライブDVDの設定はgithubで公開しています。
githubで公開されている設定と、ライブシステム作成スクリプトlive-buildを
使って、カスタマイズしたライブDVDを作成できます。

ライブシステム作成スクリプトのlive-buildについてですが、live-buildには、
現在、squeezeで使われている2.x系と、sid/wheezyで使われている3.x系(アル
ファ版)の2種類があります。

この配布DVDは2.x系を利用しているので、sid/wheezyをお使いの方は、
http://live.debian.net/archive/packages/live-build/2.0.12-2/ にある、
live-buildを利用してください。

ビルドの方法は、以下のコマンドによりビルドすることができます。

    $ git clone git://github.com/nogajun/debian-study-live-cd.git
    $ cd debian-study-live-cd
    $ make

live-buildの設定については、Debian Liveのサイトを見るのが一番ですが、日
本語の資料では、筆者が関西Debian勉強会にて発表した資料があるので、それ
を参考にするとよいでしょう。


* 関西Debian勉強会資料
  KansaiDebianMeetingArchivesの添付ファイル:debianmeetingresume200906-kansai.pdf - Debian Wiki: http://tokyodebian.alioth.debian.org/pdf/debianmeetingresume200906-kansai.pdf
* nogajun's debian-study-live-cd at master — GitHub: http://github.com/nogajun/debian-study-live-cd/
* DebianLive - Debian Wiki (英語): http://wiki.debian.org/DebianLive
* Debian Live Manual (英語): http://alioth.debian.org/~lamby-guest/live-manual/html/


Debian勉強会のお知らせ
----------------------------------------------------------------------

Debian勉強会とは、Debianの開発者になれることをひそかに夢見るユーザたち
と、ある時にはそれを優しく手助けをし、またある時には厳しく叱咤激励する
Debian開発者らがFace to FaceでDebian GNU/Linuxのさまざまなトピック（新
しいパッケージ、Debian特有の機能の仕組について、Debian界隈で起こった出
来事、etc）について語り合うイベントです。

毎月、関東、関西で開かれているので、Debianの開発に興味のある方は、ぜひ
ご参加ください。

開催日時については、Debian JP ProjectのWebサイト、debian-usersメーリン
グリスト、mixiのDebianコミュニティなどでアナウンスされます。

* 東京エリアDebian勉強会: http://tokyodebian.alioth.debian.org/
* 関西Debian勉強会: http://wiki.debian.org/KansaiDebianMeeting
* Debian JP Project: http://www.debian.or.jp/
* Debian JP Project (twitter) : http://twitter.com/#!/debianjp
* Debian Project: http://www.debian.org/
