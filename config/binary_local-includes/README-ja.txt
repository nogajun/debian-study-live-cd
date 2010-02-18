======================================================================

Debian Live DVD (Sid) / Debian Live Installer (Sid)
オープンソースカンファレンス 2010 February/March

のがたじゅん <nogajun@debian.or.jp>
Debian JP Project

======================================================================


はじめに／追加情報など
----------------------------------------------------------------------
Debian Live DVD制作後の追加情報や訂正は以下のURIにてアナウンスされます。
この文書とあわせてお読みください。
http://wiki.debian.org/KansaiDebianMeeting20100313


目次
----------------------------------------------------------------------
+ Debian Liveについて
  1. Live DVD
  2. DVDの差分をUSBメモリに保存する 
  3. よくある質問
  4. Debian Live Installer
+ Debian Liveのカスタマイズ
+ Debian勉強会のお知らせ


Debian Liveについて
----------------------------------------------------------------------
このDVDは、Debian Live Projectのlive-helper Snapshotを用いて制作された
Debian LiveとDebian Live InstallerのハイブリッドDVDです。

Debian Unstable(Sid)ベースで作られ、手軽にDebianの最新環境を試せるよう
になっています。

　・Debian GNU/Linux Sid/Unstable
　・live-helper/live-initramfs
　・Debian Live Installer
　・Live Installer Launcher

インストーラにはDebian Live Installerを使用し、Debian LiveのSid
(Unstable)環境をそのままハードディスクにインストールできます。

今回、実験的にDebian Live上からDebian Installerを起動してDebianをハード
ディスクにインストールする、Live Installer Laucherを収録しました。

Live Installer Laucherは開発が始まったばかりで、実用的ではありませんが、
興味のある方は試してみてください。

2009年秋以前に配布したDebian Live収録のOpenStreetMapアプリ、TeX環境、仮
想化環境は今回は収録していません。ご了承ください。

収録パッケージの詳細についてはDVD内のlive/packages.txtをご覧ください。


Live DVDとして使う
----------------------------------------------------------------------
Debian Liveを起動するにはメニューの「Live」を選択します。
それぞれのメニューは以下のようになっています。

・Live
　通常起動モードです。

・Live (fail-safe mode)
　すべてのオプションを無効にして起動するモードです。
　うまく起動できない場合に試してみてください。

起動時のパラメータを追加するには、メニューの上でTABキーを押して追加します。
パラメータの詳細については、DVDのlive/parameters.txtをご覧ください。


DVDの差分をUSBメモリに保存する
----------------------------------------------------------------------
Debian Liveは、起動時に「live-rw」もしくは「home-rw」というラベル名の
ext2/3パーティションをみつけると自動的にマウントし、DVDの差分を保存しま
す。

live-rwは/(ルート)ディレクトリ全体を、home-rwはhomeディレクトリを保存し
ます。


よくある質問
----------------------------------------------------------------------
・ログイン画面に戻ってしまいました
　10秒待つと自動的にログインします。
　すぐにログインする場合のユーザー名とパスワードは以下のとおりです。

　ユーザー名: user
　パスワード: live

・root権限になるには、どうすればいいですか?

 $ sudo <コマンド> 

　を使います。ほかには
　 * 「システムターミナル・スーパーユーザーモード」を開く
　 * コマンド「sudo -s」を使ってrootになる 
　が、あります。 


Debian Live Installer Launcher
----------------------------------------------------------------------
!! 注意 !!
・Live Installer Laucher は実験的に収録しています
　まだ不具合があると思うので自己責任でご利用ください。

現在判明している不具合
・GUIインストーラは、まだサポートされていません。
　現時点ではGUIインストーラはサポートされていないので、Debian
Installer ModeではText InstallかText Expertを選択してください。

・インストーラで日本語が表示されない/日本語でインストールができない
　よく調べていませんが、現在のところ英語しか使えません。

簡易インストールマニュアル
 * 「Select Language」は C
 * 「Select your location」は Asia - Japan
 * 「Select a keyboard layout」は日本語キーボードの場合 Japanese 
Load installer components from CDの「Continue the install without loading kernel module?」はYes
 * 「Configure the network」はネットワークの設定
 * 「Partition disks」ではパーティションの設定
 * 「Set up users and passwords」ではrootとuserの設定。
 * 「Install the GRUB boot loader」では「Installation step failed」と出ますがContinueして、「Install the GRUB boot loader on a hard disk」を選択します。
 * 「Configuring grub-pc」の「Install the GRUB boot loader to the master boot record?」はマスターブートレコード(MBR)にGRUBをインストールするかと尋ねています。
 * 「Finish the installation」はContinueののち、Debian Installer main menu で、「Exit installer」を選択して終了

======================================================================
・日本語環境にするにはどうしたらいいですか?
======================================================================
 /etc/default/locale を LANG="ja_JP.UTF-8" に設定してください。


----------------------------------------------------------------------
Debian Live Installer
----------------------------------------------------------------------
!! 注意 !!
・このインストーラは通常のDebian Installerではありません!!
・Debian GNU/Linux Sid(不安定版)環境がインストールされます

Debian Live InstallerはDebian Live DVDの内容をそのままハードディスクに
インストールします。これを利用して、手軽にunstable環境をハードディスク
にインストールすることができます。

インストーラの起動は、DVDを起動してメニューから「Install Text」を選択し
ます。

インストール作業のおおまかな流れは、「言語とキーボードを指定」→「パー
ティションの作成」→「ルートパスワードとユーザーの作成」→「GRUBのイン
ストール」になります。

======================================================================
・インストール時「パッケージマネージャの設定」で「リポジトリにアクセス
  できません」というエラーが出る
======================================================================
SidのSecurity Fixは通常のリポジトリにアップロードされるので、　
security.debian.orgのリポジトリは用意されていません。
「続ける」を選択して、そのままインストールを続行してください。

======================================================================
・インストール直後、キーボードが英語キーボード配列になっている
======================================================================
手動で変更してください。

GUIからはGNOMEメニューの[システム]>[設定]>[キーボード]を開き、[レイア　
ウト]タブのキーボードの形式などを以下のように変更してください。

　キーボードの形式: ACPI Standard
　レイアウト: Japan / デフォルトにチェック

ターミナルから変更するには、dpkg-reconfigureを使って
keyboard-configurationの設定を変更します。
変更にはroot権限で以下のコマンドを実行します。

 # dpkg-reconfigure keyboard-configuration

キーボードモデルと配置の質問は以下のように答えます。その他の質問は
Enterキーで先に進めて構いません。

　キーボードモデル: ACPI Standard
　キーボードの配置: Japan

直接/etc/default/keyboard を変更してもかまいません。

　XKBMODEL="acpi"
　XKBLAYOUT="jp"

======================================================================
・aptitude/Synapticでソフトをインストールできない
======================================================================
Live Installerの初期設定ではリポジトリが無効になっています。
/etc/apt/sources.listに以下のリポジトリを追加してください。

deb http://cdn.debian.net/debian/ sid main contrib non-free
deb-src http://cdn.debian.net/debian/ sid main contrib non-free



Debian Liveのカスタマイズについて
----------------------------------------------------------------------
githubにあるlive-helperのレシピを利用してDebian Live DVDカスタマイズす
ることができます。

カスタマイズをおこなうにはLinux上で作業をする必要がありますが、Live
DVD上からもカスタマイズは可能ですので、興味のある方はチャレンジしてみた
ください。

カスタマイズには10GB程度の保存領域が必要になるので、USB接続HDDなどを用
意して保存領域を確保する必要があります。

ビルドの方法は、以下のコマンドによりビルドすることができます。

 $ git clone git://github.com/nogajun/debian-study-live-cd.git
 $ cd debian-study-live-cd
 $ make

live-helperの設定については、Debian Liveのサイトを見るのが一番ですが、
日本語の資料では、筆者が関西Debian勉強会にて発表した資料があるので、そ
れを参考にするとよいでしょう。


関西Debian勉強会　資料
KansaiDebianMeetingArchivesの添付ファイル:debianmeetingresume200906-kansai.pdf - Debian Wiki
http://tokyodebian.alioth.debian.org/pdf/debianmeetingresume200906-kansai.pdf

nogajun's debian-study-live-cd at master — GitHub
http://github.com/nogajun/debian-study-live-cd/

DebianLive - Debian Wiki (英語)
http://wiki.debian.org/DebianLive

Debian Live Manual (英語)
http://alioth.debian.org/~lamby-guest/live-manual/html/
  

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

東京エリアDebian勉強会
http://tokyodebian.alioth.debian.org/

関西Debian勉強会
http://wiki.debian.org/KansaiDebianMeeting

Debian JP Project
http://www.debian.or.jp/

Debian Project
http://www.debian.org/
----------------------------------------------------------------------
