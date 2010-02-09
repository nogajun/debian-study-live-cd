======================================================================

Debian Live DVD (Sid) / Debian Live Installer (Sid)
オープンソースカンファレンス 2010 February/March

のがたじゅん <nogajun@debian.or.jp>
Debian JP Project

======================================================================


始めに／追加情報など
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

　・Debian GNU/Linux Sid/Unstable (2010/02/09)
　・live-helper/live-initramfs Snapshot (2.0~a6+20100131.132048)
　・Debian Live Installer
　・Live Installer Launcher

手軽にDebianの最新環境を試せるように、Debian Unstable(Sid)ベースで作ら
れています。

インストーラにはDebian Live Installerを使用しているので、Debian Live環
境をそのままハードディスクにインストールできます。

今回実験的にDebian Live上からDebian Installerを起動してハードディスクに
Debianをインストールできる、Live Installer Laucherを収録しました。

2009年秋に配布したDebian Live収録のOpenStreetMapアプリ、TeX環境、仮想化
環境は外しています。

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
す。(live-rwは/(ルート)ディレクトリ全体を、home-rwはhomeディレクトリを
保存します。)

ここではUSBメモリにDVDの差分を保存するための方法を説明します。

用意するもの:
　・Debian Live DVD
　・USBメモリ

1. DVDを起動しUSBメモリをセットする。

USBメモリなどリムーバブルデバイスをセットすると自動的にマウントされてし
まうので、アンマウントしておきます。

アンマウントの方法は、マウントされたデバイスアイコン上のコンテキストメ
ニュー(マウス右クリックメニュー)から、「アンマウント」を選びます。

2. 保存パーティションの作成

「live-rw」もしくは「home-rw」というラベル名で、ext3パーティションを作
成します。作成方法はGUIでもターミナル、どちらでも構いません。

2.a. GUI(gparted)からパーティション作成

GNOMEメニューの[設定]>[システム管理]>[GParted] からGPartedを起動します。

右上のプルダウンメニューからUSBメモリを選び、パーティションを削除(もし
くはリサイズ)します。USBメモリをWindowsと共用にする場合は、FAT領域を適
当なサイズに縮小し、後半に保存領域を作成します。

空いた領域に「live-rw」もしくは「home-rw」というラベル名でext3パーティ
ションを作成をします。

2.b. ターミナルからパーティション作成

ターミナルから作業をおこなう場合はroot権限が必要になるので、通常の端末
ではsudo -sでrootになるか、GNOMEメニューの[アプリケーション]>[アクセサ
リ]>[システムターミナル・スーパーユーザー]を利用します。

/dev/sdXnはUSBメモリのデバイスファイル名です(Xはアルファベット、nはパー
ティション番号)。dmesgの内容を確認した上で自分の環境に合わせて適宜読み
替えてください。

 パーティションを確認する。

 # fdisk -l

　cfdisk(またはfdisk)でパーティションを作成します。

 # cfdisk /dev/sdX

　「live-rw」というラベル名でext3でフォーマットします。

 # mkfs.ext3 -L live-rw /dev/sdXn

　tune2fsでfsckをしないようにしておくといいでしょう。
　ジャーナリングのための予約領域を通常5%から減らしたい場合は-mオプショ
ンを使って指定します。-Lオプションはラベル名の指定です。

 # tune2fs -i0 -c0 -m 3 -L live-rw/dev/sdXn 

3. DVDを再起動して確認する
　USBメモリを差したままDVDを起動します。
　起動してUSBメモリのパーティションが/live/cowディレクトリにマウントさ
れていれば、差分保存ができます。　


よくある質問
----------------------------------------------------------------------

・ログイン画面に戻ってしまいました

10秒待つと自動的にログインします。
すぐにログインしたい場合の、ユーザー名とパスワードは以下です。

　ユーザー名: user
　パスワード: live

・root権限になるには、どうすればいいですか?

 $ sudo <コマンド> 

を使います。ほかには

 * Root Terminal を開く
 * sudo -s コマンドでrootになる 

が、あります。 


Debian Live Installer Launcher
----------------------------------------------------------------------

!! 注意 !!
**************************************************************
** Live Installer Laucher は実験的に収録しています!!        **
** Debian GNU/Linux Sid(不安定版)環境がインストールされます **
**************************************************************




Debian Live Installer
----------------------------------------------------------------------

!! 注意 !!
**************************************************************
** このインストーラは通常のDebian Installerではありません!! **
** Debian GNU/Linux Sid(不安定版)環境がインストールされます **
**************************************************************

Debian Live InstallerはDebian Live DVDの内容をそのままハードディスクに
インストールします。これを利用して、手軽にunstableの環境をハードディス
クにインストールすることができます。

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

直接 /etc/default/console-setup を変更してもかまいません。

　XKBMODEL="acpi"
　XKBLAYOUT="jp"

======================================================================
・aptitude/Synapticでソフトをインストールできない
======================================================================
初期設定ではリポジトリが無効になっています。
/etc/apt/sources.listに以下のリポジトリを追加してください。

deb http://cdn.debian.net/debian/ sid main contrib non-free
deb-src http://cdn.debian.net/debian/ sid main contrib non-free

注意)
・Sidは一日4回パッケージの更新があります。
・アップデートがあっても、アップデートに必要なパッケージがすべて揃っ
　て更新されるとは限りません。


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
