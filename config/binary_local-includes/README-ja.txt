============================================================

�@Debian Live DVD (Lenny) / Debian Installer (Lenny)
 �I�[�v���\�[�X�J���t�@�����X2009 Kansai (2009.07.10-11)

============================================================

�ڎ�
------------------------------------------------------------
+ Debian Live�ɂ���
  1. Live DVD�Ƃ��Ďg��
  2. Debian Installer�Ƃ��Ďg��
+ �����쐬�n���Y�I���̏���
  1. USB��������DVD�̍�����ۑ�����
  2. non-free�Z�N�V�����̃p�b�P�[�W���C���X�g�[��
  3. �������|�W�g���̕����ƃR���p�C���̊m�F
+ Debian Live�̃J�X�^�}�C�Y
+ Debian�׋���̂��m�点
+ �ǉ����Ȃ�


Debian Live�ɂ���
------------------------------------------------------------
�@����DVD�́ADebian Live Project��live-helper��p���Đ��삳��
��Debian Live��Debian Installer�̃n�C�u���b�hDVD�ł��B

�@�ȑO�z�z����Debian Live�Ƃ̈Ⴂ�́A�ȑO�̓��e�ɉ����ȉ��̂�
���ȈႢ������܂��B

�EDebian GNU/Linux 5.0.2�x�[�X
�Ebackports.org���ȉ��̃p�b�P�[�W��ǉ��B
�@Kernel 2.6.30
�@OpenOffice.org 3.1.0
�@Pidgin
�Elive-initramfs��Debian Live Project�̃X�i�b�v�V���b�g�ł�
 �g�p�B
�E�f�X�N�g�b�v�ɃA�C�R�����쐬�����ɂ����B
�E�N���I�v�V�����ɂ��A�l�b�g���[�N����NVIDIA�AATI�̃v���v���C�G�^���h
 ���C�o���C���X�g�[�����邱�Ƃ��\�B

�@���̑��A�����G���A�E�֐�Debian�׋���̎����쐬�A�Ǘ��ɕK�v
��emacs, git, TeX�̊���A����Debian Live���J�X�^�}�C�Y����
���߂̊��A���X�L���[�c�[���ȂǓ����Ă��܂��B

Live DVD�Ƃ��Ďg��
------------------------------------------------------------
�@DVD���N�����ă��j���[����uDebian Live�v��I�����܂��B

�@�uDebian Live(noswap/nopersistent)�v�́A�ʏ�̓X���b�v�p�[
�e�B�V������DVD�̍����ۑ��p�[�e�B�V������T���Ď����I�}�E���g
���܂����A���̃��j���[�ł͂����̃p�[�e�B�V�����͎����I�Ƀ}
�E���g���܂���B
�@���܂��N���ł��Ȃ��ꍇ�́A�uDebian Live(fail-safe mode)�v��
�����Ă݂Ă��������B

Debian Installer�Ƃ��Ďg��
------------------------------------------------------------
�@�N�����̃��j���[����uDebian Installer�v��I�����Ă��������B
Debian GNU/Linux 5.0(Lenny)��HDD�ɃC���X�g�[�����邱�Ƃ��ł�
�܂��B�@
�@�C���X�g�[�����@�ɂ��Ă͉��L��URI���Q�l�ɂ��Ă��������B

Debian JP Project - Debian GNU/Linux �N�C�b�N�C���X�g�[����� (Etch/Lenny ��)
http://www.debian.or.jp/using/quick-etch/

Debian GNU/Linux 5.0�FITpro
http://itpro.nikkeibp.co.jp/article/COLUMN/20090326/327243/?ST=lin-os&P=1




1. USB��������DVD�̍�����ۑ�����B
------------------------------------------------------------
�@Debian Live�͋N������live-rw�ƃ��x���̂���ext2/ext3�p�[�e�B
�V�������݂���Ǝ����I�Ƀ}�E���g��DVD�̍�����ۑ����܂��B
�@�����ł�USB��������DVD�̍�����ۑ����邽�߂̕��@��������܂��B

�p�ӂ������:
�@�EDebian Live DVD
�@�EUSB������

1. DVD���N����USB���������Z�b�g����B
�@���̎�USB�������������I�Ƀ}�E���g����Ă��܂��̂ŁA�}�E���g
���ꂽ�f�o�C�X�A�C�R����̃R���e�L�X�g���j���[(�}�E�X�E�N���b
�N���j���[)����u�A���}�E���g�v��I��ŃA���}�E���g���Ă����܂��B

2. �ۑ��p�[�e�B�V�����̍쐬
�@�ulive-rw�v�Ƃ������x������ext3�p�[�e�B�V�������쐬���܂��B
�쐬���@��GUI�ł��^�[�~�i���A�ǂ���ł��\���܂���B

2.a gparted����p�[�e�B�V�����쐬
�@GNOME���j���[�́u�V�X�e���v���u�V�X�e���Ǘ��v���uPartition
Editor�v��I�����Agparted���N�����܂��B
�@�E��̃v���_�E�����j���[����USB�������̃f�o�C�X��I�сA�p�[
�e�B�V������K���ȃT�C�Y�Ƀ��T�C�Y(�������͍폜)���A�󂢂���
���ext3�p�[�e�B�V�������쐬���܂��B
�@���̎��A���x�������ulive-rw�v�Ɩ��Â��邱�Ƃ�Y��Ȃ��ł���
�����B

2.b �^�[�~�i������p�[�e�B�V�����쐬
�@GNOME���j���[�́u�A�v���P�[�V�����v���u�A�N�Z�T���v���uRoot�@
Terminal�v��I������Ƃ����܂��B
�@/dev/sdXn��USB�������̃f�o�C�X�t�@�C�����ł�(X�̓A���t�@�x�b
�g�An�̓p�[�e�B�V�����ԍ�)�Bdmesg�̓��e���m�F������Ŏ����̊�
���ɍ��킹�ēK�X�ǂݑւ��Ă��������B

 �p�[�e�B�V�������m�F����B

 # fdisk -l

�@cfdisk(�܂���fdisk)�Ńp�[�e�B�V�������쐬���܂��B

 # cfdisk /dev/sdX

�@�ulive-rw�v�Ƃ������x������ext3�Ńt�H�[�}�b�g���܂��B

 # mkfs.ext3 -l live-rw /dev/sdXn

�@tune2fs��fsck�����Ȃ��悤�ɂ��Ă����̂�������������܂���B

 # tune2fs -i 0 -c 0 -L live-rw /dev/sdXn 

�@�����ォ�烉�x����������Ƃ���tune2fs�ŕύX���܂��B

 # tune2fs -L live-rw /dev/sdXn

3. DVD���ċN�����Ċm�F����
�@USB���������������܂�DVD���N�����܂��B
�@�N������USB�������̃p�[�e�B�V������/live/cow�f�B���N�g����
�}�E���g����Ă���΁A�����ۑ����ł��܂��B�@


2. non-free�Z�N�V�����̃p�b�P�[�W�C���X�g�[��
------------------------------------------------------------
�@�����r���[�A��evince���g����PDF��ǂނ��߂ɂ�poppler-data�p�b
�P�[�W���K�v�ł����A���C�Z���X�̓s���ɂ��DVD�ɔ[�߂邱�Ƃ���
���܂���ł����B
�@�ȉ�Lenny�����[�X�m�[�g�����p�B

==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--
������^���{��^�؍�����܂� PDF �t�@�C���̉{���ɂ���
-------------------------------------------------------
����̃����[�X���Aevince �𗘗p���Ē�����^���{��^�؍����
�܂� PDF �t�@�C�����J���ہA�قƂ�ǂ̏ꍇ�͑Ή����钆����^��
�{��^�؍���t�H���g�����ł͂Ȃ� non-free �R���|�[�l���g�Ɋ�
�܂�� poppler-data ���K�v�ƂȂ�܂��B���� poppler-data �Ɋ�
�܂�� Adobe CMAP �f�[�^�𗘗p����ƁA����܂Ő���ɕ\������
���Ȃ�����������^���{��^�؍���̕����\�����\�ƂȂ�܂��B

�Ȃ��A�c�O�Ȃ��� poppler-data �p�b�P�[�W�͉��ύĔz�z���F�߂�
��Ă��Ȃ� non-free �R���|�[�l���g�̂��߁A�f�t�H���g�́u�f�X
�N�g�b�v���v�ł̓C���X�g�[������܂���Bevince �ɂĒ�����^
���{��^�؍�����܂� PDF �t�@�C���𐳏�ɕ\���ł��Ȃ��Ƃ�����
���� /etc/apt/sources.list ���A���邢��
/etc/apt/sources.list.d �f�B���N�g���ȉ��� apt line ��ҏW��
�� non-free �R���|�[�l���g�𗘗p����悤�ɕύX���Ă���
apt/aptitude �̃f�[�^�x�[�X�� update �����{���Apoppler-data
�p�b�P�[�W���C���X�g�[�����Ă��������B

�ȑO�̃����[�X����̃A�b�v�O���[�h���s�������ւ̒��ӁF
evince �ł́A����̃����[�X���� Adobe CMAP ���Q�Ƃ���v���O��
���̎������ς�������߁A����ȓ�����s���ɂ́A�����
poppler-data �p�b�P�[�W�̃C���X�g�[�����K�v�ƂȂ�_�ɂ��Ă�
���ӊ肢�܂��B
==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--

�@poppler-data�ȊO�ɂ��A�����쐬�n���Y�I���ɂ�
gs-cjk-resource��xpdf-japanese�p�b�P�[�W���K�v�ɂȂ�܂����A
���ꂼ��Adobe CMAP�f�[�^�Ɉˑ����Ă��邽�߁A���l�ɂ���DVD�ɂ�
�܂܂�Ă��܂���B
�@�����̃p�b�P�[�W�͎����ŃC���X�g�[������K�v������܂��B

a. Synaptic����C���X�g�[��
�@Synaptic���N�����āu�ݒ�v���u���|�W�g���v���J���Ĉȉ��̌�
�Ƀ`�F�b�N�����܂��B

�@�E��t���[�Ȉˑ��֌W�̂���DFSG�K���\�t�g�E�F�A(contrib)
�@�EDFSG�ɓK�����Ȃ��\�t�g�E�F�A(non-free)

�@�u�ēǍ��v�{�^���������āApoppler-data, gs-cjk-resource,
xpdf-japanese�p�b�P�[�W���C���X�g�[�����܂��B�@

b. �^�[�~�i������C���X�g�[��
 # sed -i 's#ftp.jp.debian.org/debian/ lenny main$#& contrib non-free#g' /etc/apt/sources.list
 # aptitude update
 # aptitude install poppler-data gs-cjk-resource xpdf-japanese



3. �������|�W�g���̕����ƃR���p�C���̊m�F�B
------------------------------------------------------------
�@git���g����debian�׋�������|�W�g�����z�[���f�B���N�g����
�������ATeX �������R���p�C���ł��邱�Ƃ��m�F���܂��B
�@�z�[���f�B���N�g���ňȉ��̃R�}���h�����s���܂��B
(�����G���ADebian�׋���2008�N11��������蔲��)

$ git clone git://git.debian.org/git/tokyodebian/monthly-report.git
$ cd monthly-report
$ cp -p git-pre-commit.sh .git/hooks/pre-commit
$ make -j4
$ ls *.pdf # 110���炢��PDF�t�@�C������������Ă��邱�Ƃ��m�F

�@�R���p�C����Ƃ͂��ׂĂ̕׋�������R���p�C������̂ŁA��
�͂ȃ}�V���ł́A���Ȃ莞�Ԃ�������܂��B

�@�ȏ�Ŏ����쐬�n���Y�I���̂��߂̊��������܂����B



Debian Live�̃J�X�^�}�C�Y�ɂ���
------------------------------------------------------------
�@����Debian Live DVD�́A�����쐬�n���Y�I�������́uUSB������
��DVD�̍�����ۑ�����B�v���Q�l��USB HDD��ɍ����ۑ��p�[�e�B
�V������p�ӂ���ƁALiveDVD��ŃJ�X�^�}�C�Y���邱�Ƃ��ł��܂��B
�@�J�X�^�}�C�Y�ɂ�10GB�قǗe�ʂ��K�v�ɂȂ�܂�

�@�������̂��r���h����ɂ́A�ȉ��̃R�}���h�Ńr���h���邱�Ƃ��ł��܂��B

$ git clone git://github.com/nogajun/debian-study-live-cd.git
$ cd debian-study-live-cd
$ make

�@live-helper�̐ݒ��ύX���鎖�ɂ��A���܂��܂ȃJ�X�^�}�C�Y
�����邱�Ƃ��\�ł��̂ŁA���Ѓ`�������W���Ă݂Ă��������B

DebianLive - Debian Wiki
http://wiki.debian.org/DebianLive

Debian Live Manual
http://alioth.debian.org/~lamby-guest/live-manual/html/

nogajun's debian-study-live-cd at master �\ GitHub
http://github.com/nogajun/debian-study-live-cd/



Debian�׋���̂��m�点
------------------------------------------------------------
�@Debian�׋���Ƃ́ADebian�̊J���҂ɂȂ�邱�Ƃ��Ђ����ɖ���
�郆�[�U�����ƁA���鎞�ɂ͂����D�����菕�������A�܂����鎞
�ɂ͌��������B���シ�� Debian�J���҂炪Face to Face��Debian
GNU/Linux�̂��܂��܂ȃg�s�b�N�i�V�����p�b�P�[�W�ADebian���L��
�@�\�̎d�g�ɂ��āADebian�E�G�ŋN�������o�����Aetc�j�ɂ���
��荇���C�x���g�ł��B

�@�����A�֓��A�֐��ŊJ����Ă���̂ŁADebian�̊J���ɋ����̂�
����́A���Ђ��Q�����������B

�@�J�Ó����ɂ��ẮADebian JP Project��Web�T�C�g�A
debian-users���[�����O���X�g�Amixi��Debian�R�~���j�e�B�Ȃǂ�
�A�i�E���X����܂��B

�����G���ADebian�׋���
http://tokyodebian.alioth.debian.org/

�֐�Debian�׋���
http://wiki.debian.org/KansaiDebianMeeting

Debian Project
http://www.debian.org/

Debian JP Project
http://www.debian.or.jp/



�ǉ����Ȃ�
------------------------------------------------------------

�@Debian Live DVD�����̒ǉ���������͈ȉ���URI�ɂăA�i�E
���X�����\��ł��B
�@http://wiki.debian.org/KansaiDebianMeetingOSC2009

------------------------------------------------------------

�֐�Debian�׋���
�̂�������� <nogajun@debian.or.jp>
