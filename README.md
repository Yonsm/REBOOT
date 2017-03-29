# REBOOT
Rescue Environment Boot Disk

欢迎使用功能强大的 REBOOT （Rescue Environment Boot Disk） 系统应急启动盘！


# 一、简介

REBOOT 包含 RWIN 和 RDOS 两部分，分别是基于 Windows XP SP2 和 MS-DOS 7.1 而制作的。

RWIN 是基于 Windows XP SP2 的定制独立启动环境，能在绝大部分电脑中不依赖任何硬盘文件而引导进入 Windows XP 操作界面。

    ◎ 不依赖任何硬盘文件，独立启动。
    ◎ 支持绝大部分类型的硬盘和 USB 存储设备。
    ◎ 内置网络功能，并带有 PPPoE 宽带连接支持。
    ◎ 内置绿色系统维护工具，功能强大，定制方便。
    ◎ 支持安装到各种启动媒介，包括各种硬盘、光盘和优盘。
    ◎ 基于 Windows XP Professional SP2 制作，支持 Windows Vista 安装。
    ◎ 内置常用系统工具，且整理的井井有条。可直接运行，无须自解压到临时文件夹。
    ◎ 启动速度飞快，登录后非常快速就能进入桌面（且启动画面的显示方式很漂漂哦）。
    ◎ 内置大多数网卡驱动 CAB 包（包括最新的 Realtek 8111 和 Intel Pro1000 等），且启动时智能释放所需的驱动，然后自动删除 CAB 包，提供更多的可写空间。

    ◎ 2012.03.10 新增 Windows 7 PE 可以支持更多 SATA 硬盘，基于 uepon 通用 Windows 7 PE 构建。


RDOS 是基于 MS-DOS 7.1 的超强启动盘，支持以下几种启动选择：

    ◎ 干净引导：不加载任驱动和程序程序
    ◎ 正常引导：加载常规驱动和应用程序
    ◎ 光驱支持：加载光驱设备驱动程序
    ◎ 优盘支持：加载优盘设备驱动程序
    ◎ 网络支持：加载 GHOST 网络驱动程序
    ◎ 网络客户：加载 MICROSOFT 网络客户端程序
    ◎ 备份系统：备份第一个分区到第三个分区的 GHOST\SYSTEM.GHO
    ◎ 恢复系统：恢复第三个分区的 \GHOST\SYSTEM.GHO 到第一个分区

下面是可用的命令列表

    ATTRIB    添加或删除文件属性
    CHOICE    批处理选择命令
    COMMAND   命令行解释程序
    DEBUG     调试实用程序
    DELTREE   删除目录和文件
    DEVICE    设备驱动程序加载工具
    DISKGEN   中文磁盘分区管理工具
    DOSKEY    键盘输入宏工具
    DOSLFN    长文件名支持
    EDIT      文本编辑器
    FDISK     磁盘分区工具
    FORMAT    磁盘格式化工具
    GHOST     磁盘备份和恢复工具
    MEM       内存信息查看
    MEMTEST   内存测试工具，必须使用干净引导模式，否则无法正常检测
    MORE      分屏显示
    MOUSE     鼠标驱动
    NTFSDOS   完全读写 NTFS 分区的工具
    NTPASS    支持 FAT/NTFS 分区的密码重置工具
    PQMAGIC   磁盘无损分区工具
    RESTART   重新启动
    SHSUCDHD  虚拟光驱
    SHSUCDX   小巧实用的光驱扩展驱动程序
    SMARTDRV  磁盘高速缓冲程序
    SYS       传输系统文件，将磁盘制成启动盘
    TWAY      天汇汉字系统
    TWKEY     天汇拼音输入法
    UNZIP     解压工具，支持长文件名
    XCOPY     文件和目录复制工具
    XMSDSK    虚拟内存盘工具


# 二、安装

## 安装到软盘

由于软盘空间有限，仅支持将 RDOS 的部分功能安装到软盘：用 WinImage 将 RDOS.IMG 中的 GHOSTE、PQMAGIC 和 NET 功能剔除，更该磁盘格式为 1.44M 或 2.88M 软盘，再写入到软盘中即可。


## 安装到光盘

REBOOT 就是以光盘 ISO 形式提供的，只要直接把 REBOOT.ISO 刻录到光盘既可。

特别注意，不能使用 UltraISO 编辑 REBOOT.ISO。如果要在关盘中加入其它文件，请把 REBOOT.ISO 解压缩到 REBOOT 目录中，然后添加或删除该目录中的文件或目录，最后双击 RESIO.BAT，会自动重新生成 REBOOT.ISO。


## 安装到 Windows 系统磁盘

如果是安装到 Windows XP 的硬盘中，有两种方式：

  ▲ RAMDISK 方式：把 RWIN.IMG、RWIN.LDR、RWIN.COM、RWIN.SIF、RDOS.IMG、GRLDR 六个文件复制到根目录；在 BOOT.INI 中添加一行“C:\GRLDR="Rescue Environment Boot"”即可。

  △ 常规启动方式：把 RWIN.LDR、RWIN.COM、RDOS.IMG、GRLDR 四个文件复制到根目录（不用 RWIN.SIF 文件）；用 WinRAR 把 RWIN.IMG 解压缩到 C:\，然后在 BOOT.INI 中添加一行“C:\GRLDR="Rescue Environment Boot"”即可。。

如果是安装到 Windows Vista 或者 Windows 7 中，直接运行 GRUB4BCD.BAT 即可。


## 安装到优盘或移动硬盘

  ▲ 把所有文件拷贝到目标磁盘根目录，然后使用 BOOTICE 或 FBINST，请自行尝试。优盘启动能否成功依赖于主板 BIOS。只要有耐心一般都能搞定。优盘启动速度差异较大，在不同的电脑中有不同的表现，大致在 2-5 分钟不等。

  △ 使用量产工具实现优盘 USB-CDROM 和 USB-HDD 格式双启动：

    最近无忧启动论坛在讨论使用优盘主控芯片官方提供的量产工具把特定优盘格式化成 USB-CDROM 和 USB-HDD 格式双启动，此方法适应性最好，但一两句难以描述清楚。如有兴趣，请参考：http://bbs.wuyou.com/forumdisplay.php?fid=45 和 http://bbs.wuyou.com/viewthread.php?tid=106231


# 三、备注

1. 启动后通过删除不使用的文件和驱动程序 X: 盘有足够的空间。且内置的工具均可直接运行，不需要解压缩到临时文件夹。

2. RWIN 中如果使用桌面上的宽带连接，将会删除一些 RAMDISK 上的部分系统工具，以提供更多的空间。如果要使用这些工具，请在此之前操作。如果其它情况下出现空间不足的情况，也请酌情删除掉部分工具。

3. 这里提供的 GRUB Loader 启动时只有 5 秒钟等待，默认进入 RWIN。如果需要修默认项，可以用 WinHEX 编辑 GRLDR，在文件尾部找到“default 5”，改为“default 1”即可。

4. 这里提供的软件和工具版权归原作者所有，本人提供此打包程序仅供研究测试之用。对于这些明介绍以及制作测试及批处理文件，本人不保留版权，欢迎继续修改。

5. RWIN 和 RDOS 的定位是系统应急启动盘，制作此启动盘只是用我自己的选择原则，不一定能符合您的需求。


# 四、致谢

1. 感谢 老九、老毛桃、neo4026、uepon，RWIN 启动盘是在这几位网友的启动盘基础上制作的。

2. 感谢 GRUB4DOS、BOOTICE、FBINST 和其它相关工具的作者。

3. 感谢 小马 提供的网卡硬件驱动包。

要获取更多信息，请访问 WWW.YONSM.NET

Yonsm

Yonsm@msn.com

WWW.Yonsm.NET

2012.03.13 杭州

FOR MY DREAM, FOR MY JANE
