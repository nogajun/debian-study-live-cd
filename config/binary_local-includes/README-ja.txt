======================================================================

Debian Live DVD (Sid) / Debian Live Installer (Sid)
�֐��I�[�v���\�[�X2009 (2009/11/06-07)

Debian JP Project / �֐�Debian�׋���
�̂�������� <nogajun@debian.or.jp>

======================================================================


�n�߂Ɂ^�ǉ����Ȃ�
----------------------------------------------------------------------
Debian Live DVD�����̒ǉ���������͈ȉ���URI�ɂăA�i�E���X����܂��B
���̕����Ɖ�킹�Ă��ǂ݂��������B
http://wiki.debian.org/KansaiDebianMeetingKOF2009


�ڎ�
----------------------------------------------------------------------
+ Debian Live�ɂ���
  1. Live DVD
  2. DVD�̍�����USB�������ɕۑ����� 
  3. �悭���鎿��
  4. Debian Live Installer
+ Debian Live�̃J�X�^�}�C�Y
+ Debian�׋���̂��m�点


Debian Live�ɂ���
----------------------------------------------------------------------

����DVD�́ADebian Live Project��live-helper Snapshot��p���Đ��삳�ꂽ
Debian Live��Debian Live Installer�̃n�C�u���b�hDVD�ł��B

�@�EDebian GNU/Linux Sid/Unstable (2009/11/04)
�@�EDebian Live Project��Snapshot��(1.0.5+20091101.171300)
�@�@live-helper/live-initramfs���g�p�B
�@�EDebian Live Installer
�@�EOpen Street Map�Ŗ𗧂A�v���P�[�V���������^�B

�ȑO�z�z����Debian Live�Ƃ̈Ⴂ�́ADebian�̍ŐV������y�Ɏ�����悤�ɁA
Debian�̕s����łł���Sid���x�[�X�ɍ쐬���Ă��܂��B

�܂��C���X�g�[�����ʏ��Debian Installer�ł͂Ȃ��ALive�������̂܂܃C
���X�g�[������Debian Live Installer�����^���Ă���̂ŁA��Ԃ������邱��
�Ȃ��ŐV�����n�[�h�f�B�X�N�ɃC���X�g�[���ł��܂��B

���^���Ă���A�v���P�[�V�����ɂ��ẮAGNOME 2.28���͂���Debian�̍ŐV
�����͂��߁A�֐��I�[�v���\�[�X��FOSS4G�Ƃ̋��ÂƂ������ƂŁA�����
Open Street Map�Ŗ𗧂A�v�������^���Ă��܂��B

�ȑO�̃����[�X�Ŏ��^�����A�����G���A/�֐�Debian�׋���̎����쐬�A�Ǘ���
�K�v��emacs, git, TeX�̊���A����Debian Live���J�X�^�}�C�Y���邽�߂�
���A���X�L���[�c�[���A���z����Virtualbox OSE�Ȃǂ����^���Ă��܂��B

���^�p�b�P�[�W�̏ڍׂɂ��Ă�DVD����live/packages.txt���������������B


Live DVD�Ƃ��Ďg��
----------------------------------------------------------------------
Debian Live���N������ɂ̓��j���[�́uLive�v��I�����܂��B
���ꂼ��̃��j���[�͈ȉ��̂悤�ɂȂ��Ă��܂��B

�ELive
�@�ʏ�N�����[�h�ł��B

�ELive (fail-safe mode)
�@���ׂẴI�v�V�����𖳌��ɂ��ċN�����郂�[�h�ł��B
�@���܂��N���ł��Ȃ��ꍇ�Ɏ����Ă݂Ă��������B

�N�����̃p�����[�^��ǉ�����ɂ́A���j���[�̏��TAB�L�[�������Ēǉ����܂��B
�p�����[�^�̏ڍׂɂ��ẮADVD��live/parameters.txt���������������B


DVD�̍�����USB�������ɕۑ�����
----------------------------------------------------------------------
Debian Live�́A�N�����Ɂulive-rw�v�������́uhome-rw�v�Ƃ������x������
ext2/3�p�[�e�B�V�������݂���Ǝ����I�Ƀ}�E���g���ADVD�̍�����ۑ�����
���B(live-rw��/(���[�g)�f�B���N�g���S�̂��Ahome-rw��home�f�B���N�g����
�ۑ����܂��B)

�����ł�USB��������DVD�̍�����ۑ����邽�߂̕��@��������܂��B

�p�ӂ������:
�@�EDebian Live DVD
�@�EUSB������

1. DVD���N����USB���������Z�b�g����B

USB�������Ȃǃ����[�o�u���f�o�C�X���Z�b�g����Ǝ����I�Ƀ}�E���g����Ă�
�܂��̂ŁA�A���}�E���g���Ă����܂��B

�A���}�E���g�̕��@�́A�}�E���g���ꂽ�f�o�C�X�A�C�R����̃R���e�L�X�g��
�j���[(�}�E�X�E�N���b�N���j���[)����A�u�A���}�E���g�v��I�т܂��B

2. �ۑ��p�[�e�B�V�����̍쐬

�ulive-rw�v�������́uhome-rw�v�Ƃ������x�����ŁAext3�p�[�e�B�V��������
�����܂��B�쐬���@��GUI�ł��^�[�~�i���A�ǂ���ł��\���܂���B

2.a. GUI(gparted)����p�[�e�B�V�����쐬

GNOME���j���[��[�ݒ�]>[�V�X�e���Ǘ�]>[GParted] ����GParted���N�����܂��B

�E��̃v���_�E�����j���[����USB��������I�сA�p�[�e�B�V�������폜(����
���̓��T�C�Y)���܂��BUSB��������Windows�Ƌ��p�ɂ���ꍇ�́AFAT�̈��K
���ȃT�C�Y�ɏk�����A�㔼�ɕۑ��̈���쐬���܂��B

�󂢂��̈�Ɂulive-rw�v�������́uhome-rw�v�Ƃ������x������ext3�p�[�e�B
�V�������쐬�����܂��B

2.b. �^�[�~�i������p�[�e�B�V�����쐬

�^�[�~�i�������Ƃ������Ȃ��ꍇ��root�������K�v�ɂȂ�̂ŁA�ʏ�̒[��
�ł�sudo -s��root�ɂȂ邩�AGNOME���j���[��[�A�v���P�[�V����]>[�A�N�Z�T
��]>[�V�X�e���^�[�~�i���E�X�[�p�[���[�U�[]�𗘗p���܂��B

/dev/sdXn��USB�������̃f�o�C�X�t�@�C�����ł�(X�̓A���t�@�x�b�g�An�̓p�[
�e�B�V�����ԍ�)�Bdmesg�̓��e���m�F������Ŏ����̊��ɍ��킹�ēK�X�ǂ�
�ւ��Ă��������B

 �p�[�e�B�V�������m�F����B

 # fdisk -l

�@cfdisk(�܂���fdisk)�Ńp�[�e�B�V�������쐬���܂��B

 # cfdisk /dev/sdX

�@�ulive-rw�v�Ƃ������x������ext3�Ńt�H�[�}�b�g���܂��B

 # mkfs.ext3 -L live-rw /dev/sdXn

�@tune2fs��fsck�����Ȃ��悤�ɂ��Ă����Ƃ����ł��傤�B
�@�W���[�i�����O�̂��߂̗\��̈��ʏ�5%���猸�炵�����ꍇ��-m�I�v�V��
�����g���Ďw�肵�܂��B-L�I�v�V�����̓��x�����̎w��ł��B

 # tune2fs -i0 -c0 -m 3 -L live-rw/dev/sdXn 

3. DVD���ċN�����Ċm�F����
�@USB���������������܂�DVD���N�����܂��B
�@�N������USB�������̃p�[�e�B�V������/live/cow�f�B���N�g���Ƀ}�E���g��
��Ă���΁A�����ۑ����ł��܂��B�@


�悭���鎿��
----------------------------------------------------------------------

�E���O�C����ʂɖ߂��Ă��܂��܂���

10�b�҂Ǝ����I�Ƀ��O�C�����܂��B
10�b�҂����Ƀ��O�C���������ꍇ�́A���[�U�[���ƃp�X���[�h�͈ȉ��ł��B

�@���[�U�[��: user
�@�p�X���[�h: live

�Eroot�����ɂȂ�ɂ́A�ǂ�����΂����ł���?

 $ sudo <�R�}���h> 

���g���܂��B�ق��ɂ�

 * Root Terminal ���J��
 * sudo -s �R�}���h��root�ɂȂ� 

���A����܂��B 

�E�N�����ɏo�Ă���A�����Ƃ������E�B���h�E�͉��ł���?

Gnome Do�Ƃ����A�v���P�[�V���������`���[�ł��B
Super(Windows) Key�ƃX�y�[�X�L�[�������ƃ����`���[���N������̂ŁA�N��
�������A�v���P�[�V�����̖��O��2�A3�������͂��Ă��������B


Debian Live Installer
----------------------------------------------------------------------

!! ���� !!
**************************************************************
** ���̃C���X�g�[���͒ʏ��Debian Installer�ł͂���܂���!! **
** Debian GNU/Linux Sid(�s�����)�����C���X�g�[������܂� **
**************************************************************

Debian Live Installer��Debian Live DVD�̓��e�����̂܂܃n�[�h�f�B�X�N��
�C���X�g�[�����܂��B����𗘗p���āA��y��unstable�̊����n�[�h�f�B�X
�N�ɃC���X�g�[�����邱�Ƃ��ł��܂��B

�C���X�g�[���̋N���́ADVD���N�����ă��j���[����uInstall Text�v��I����
�܂��B

�C���X�g�[����Ƃ̂����܂��ȗ���́A�u����ƃL�[�{�[�h���w��v���u�p�[
�e�B�V�����̍쐬�v���u���[�g�p�X���[�h�ƃ��[�U�[�̍쐬�v���uGRUB�̃C��
�X�g�[���v�ɂȂ�܂��B


======================================================================
�E�C���X�g�[�����u�p�b�P�[�W�}�l�[�W���̐ݒ�v�Łu���|�W�g���ɃA�N�Z�X
  �ł��܂���v�Ƃ����G���[���o��
======================================================================
Sid��Security Fix�͒ʏ�̃��|�W�g���ɃA�b�v���[�h�����̂ŁA�@
security.debian.org�̃��|�W�g���͗p�ӂ���Ă��܂���B
�u������v��I�����āA���̂܂܃C���X�g�[���𑱍s���Ă��������B

======================================================================
�E�C���X�g�[������A�L�[�{�[�h���p��L�[�{�[�h�z��ɂȂ��Ă���
======================================================================
�蓮�ŕύX���Ă��������B

GUI�����GNOME���j���[��[�V�X�e��]>[�ݒ�]>[�L�[�{�[�h]���J���A[���C�A�@
�E�g]�^�u�̃L�[�{�[�h�̌`���Ȃǂ��ȉ��̂悤�ɕύX���Ă��������B

�@�L�[�{�[�h�̌`��: ACPI Standard
�@���C�A�E�g: Japan / �f�t�H���g�Ƀ`�F�b�N

�^�[�~�i������ύX����ɂ́Adpkg-reconfigure���g����console-setup�̐ݒ�
��ύX���܂��B�ύX�ɂ�root�����ňȉ��̃R�}���h�����s���܂��B

 # dpkg-reconfigure console-setup

�L�[�{�[�h���f���Ɣz�u�̎���͈ȉ��̂悤�ɓ����܂��B���̑��̎����
Enter�L�[�Ő�ɐi�߂č\���܂���B

�@�L�[�{�[�h���f��: ACPI Standard
�@�L�[�{�[�h�̔z�u: Japan

���� /etc/default/console-setup ��ύX���Ă����܂��܂���B

�@XKBMODEL="acpi"
�@XKBLAYOUT="jp"

======================================================================
�Eaptitude/Synaptic�Ń\�t�g���C���X�g�[���ł��Ȃ�
======================================================================
�����ݒ�ł̓��|�W�g���������ɂȂ��Ă��܂��B
/etc/apt/sources.list�Ɉȉ��̃��|�W�g����ǉ����Ă��������B

deb http://cdn.debian.net/debian/ sid main contrib non-free
deb-src http://cdn.debian.net/debian/ sid main contrib non-free

����)
�ESid�͈��4��p�b�P�[�W�̍X�V������܂��B
�E�A�b�v�f�[�g�������Ă��A�A�b�v�f�[�g�ɕK�v�ȃp�b�P�[�W�����ׂđ���
�@�čX�V�����Ƃ͌���܂���B


Debian Live�̃J�X�^�}�C�Y�ɂ���
----------------------------------------------------------------------
github�ɂ���live-helper�̃��V�s�𗘗p����Debian Live DVD�J�X�^�}�C�Y��
�邱�Ƃ��ł��܂��B

�J�X�^�}�C�Y�������Ȃ��ɂ�Linux��ō�Ƃ�����K�v������܂����ALive
DVD�ォ����J�X�^�}�C�Y�͉\�ł��̂ŁA�����̂�����̓`�������W���Ă݂�
���������B

�J�X�^�}�C�Y�ɂ�10GB���x�̕ۑ��̈悪�K�v�ɂȂ�̂ŁAUSB�ڑ�HDD�Ȃǂ�p
�ӂ��ĕۑ��̈���m�ۂ���K�v������܂��B

�r���h�̕��@�́A�ȉ��̃R�}���h�ɂ��r���h���邱�Ƃ��ł��܂��B

 $ git clone git://github.com/nogajun/debian-study-live-cd.git
 $ cd debian-study-live-cd
 $ make

live-helper�̐ݒ�ɂ��ẮADebian Live�̃T�C�g������̂���Ԃł����A
���{��̎����ł́A�M�҂��֐�Debian�׋���ɂĔ��\��������������̂ŁA��
����Q�l�ɂ���Ƃ悢�ł��傤�B

�֐�Debian�׋���@����
KansaiDebianMeetingArchives�̓Y�t�t�@�C��:debianmeetingresume200906-kansai.pdf - Debian Wiki
http://tokyodebian.alioth.debian.org/pdf/debianmeetingresume200906-kansai.pdf

nogajun's debian-study-live-cd at master �\ GitHub
http://github.com/nogajun/debian-study-live-cd/

DebianLive - Debian Wiki (�p��)
http://wiki.debian.org/DebianLive

Debian Live Manual (�p��)
http://alioth.debian.org/~lamby-guest/live-manual/html/
  

Debian�׋���̂��m�点
----------------------------------------------------------------------
Debian�׋���Ƃ́ADebian�̊J���҂ɂȂ�邱�Ƃ��Ђ����ɖ����郆�[�U����
�ƁA���鎞�ɂ͂����D�����菕�������A�܂����鎞�ɂ͌��������B���シ��
Debian�J���҂炪Face to Face��Debian GNU/Linux�̂��܂��܂ȃg�s�b�N�i�V
�����p�b�P�[�W�ADebian���L�̋@�\�̎d�g�ɂ��āADebian�E�G�ŋN�������o
�����Aetc�j�ɂ��Č�荇���C�x���g�ł��B

�����A�֓��A�֐��ŊJ����Ă���̂ŁADebian�̊J���ɋ����̂�����́A����
���Q�����������B

�J�Ó����ɂ��ẮADebian JP Project��Web�T�C�g�Adebian-users���[����
�O���X�g�Amixi��Debian�R�~���j�e�B�ȂǂŃA�i�E���X����܂��B

�����G���ADebian�׋���
http://tokyodebian.alioth.debian.org/

�֐�Debian�׋���
http://wiki.debian.org/KansaiDebianMeeting

Debian JP Project
http://www.debian.or.jp/

Debian Project
http://www.debian.org/
----------------------------------------------------------------------
