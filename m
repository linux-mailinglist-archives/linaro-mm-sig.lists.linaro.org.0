Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D492A4EAEB0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 15:46:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14F383EC05
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:46:21 +0000 (UTC)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by lists.linaro.org (Postfix) with ESMTPS id 8A7CD3EE0E
	for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Mar 2022 08:04:19 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id f11-20020a056602070b00b00645d08010fcso8030421iox.15
        for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Mar 2022 00:04:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=5zOjHs3cDSO0d/sc2bYpHYPQ7grv3p5Pd+1pHqicW7k=;
        b=Kk6tZVSsoBaCFy+LJkT0N2yDXEhOQVtr1uBZAXQNZukxwXqA0G0OLpii34v1KssGHU
         iYLpXScaZC1FfDUKFXOdm6xIyqpzRHwzUG+pDyeQTiBetsCaFidKqCA81o2tYJA0J5AM
         wG3MF8nvGQqtkoVoVHXctuCmBJBHo7RDG7agfb9GYsLU/g0xcOiDpmhv/MgGjj5VtDT9
         UdYBJP9boHNm0cMc7ssI0astF20LM4AJpU4IoESc6N7cz91+AkC0U1O75E5mY0bOdtah
         O6PNGq8Uf5EhO4II9ZFeDmZW3gzZyhn+Wf9OMpb+e1zlHYchH+g0f1mZy0TbxzA8dDPa
         4SLQ==
X-Gm-Message-State: AOAM5338X7/KDtrRvgPfjiPJ6k1h+NXE97Rw8P3Z9RBsLxcvbmKX47MF
	tiZTzsCziPj2m/pD8Ps1qz69Zz3BNet/pcup6FBARbPYKaz9
X-Google-Smtp-Source: ABdhPJxGVWggqKaOvI8uV4fq9PifdIw3pZTopnX1If/fbvee7OSbGfz804S8ZmkgGbIQXfz3JTErP+2vjS9eGsZ5VnPSAVA2rWQs
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d89:b0:2c6:5a4f:5bb5 with SMTP id
 h9-20020a056e021d8900b002c65a4f5bb5mr11670304ila.210.1647072259089; Sat, 12
 Mar 2022 00:04:19 -0800 (PST)
Date: Sat, 12 Mar 2022 00:04:19 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ec2a8205da00e46f@google.com>
From: syzbot <syzbot+2448673875b4e20db46a@syzkaller.appspotmail.com>
To: airlied@linux.ie, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-MailFrom: 3A1QsYgkbAHQkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YCGDN3P7IQDOW5UHQOFB6GALEVVWJEAX
X-Message-ID-Hash: YCGDN3P7IQDOW5UHQOFB6GALEVVWJEAX
X-Mailman-Approved-At: Tue, 29 Mar 2022 13:46:17 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] WARNING in drm_prime_destroy_file_private
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YCGDN3P7IQDOW5UHQOFB6GALEVVWJEAX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

syzbot found the following issue on:

HEAD commit:    ea4424be1688 Merge tag 'mtd/fixes-for-5.17-rc8' of git://g..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14095f9e700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aba0ab2928a512c2
dashboard link: https://syzkaller.appspot.com/bug?extid=2448673875b4e20db46a
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+2448673875b4e20db46a@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 16791 at drivers/gpu/drm/drm_prime.c:228 drm_prime_destroy_file_private+0x3e/0x50 drivers/gpu/drm/drm_prime.c:228
Modules linked in:
CPU: 1 PID: 16791 Comm: syz-executor.5 Not tainted 5.17.0-rc7-syzkaller-00020-gea4424be1688 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:drm_prime_destroy_file_private+0x3e/0x50 drivers/gpu/drm/drm_prime.c:228
Code: 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 75 1f 48 8b 83 90 00 00 00 48 85 c0 75 06 5b e9 e7 6c 1d fd e8 e2 6c 1d fd <0f> 0b 5b e9 da 6c 1d fd e8 05 5a 64 fd eb da 0f 1f 00 41 55 49 89
RSP: 0018:ffffc90002af79e0 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffff888025e72370 RCX: 0000000000000000
RDX: ffff8880727aa1c0 RSI: ffffffff845a788e RDI: ffff888025e72400
RBP: ffff8881471d4068 R08: 0000000000000001 R09: 0000000000000001
R10: ffffffff817e23e8 R11: 0000000000088078 R12: ffff888025e72000
R13: ffff888025e722b8 R14: ffff8881471d4098 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffea39ef0d8 CR3: 00000000791d8000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 drm_file_free.part.0+0x6e5/0xb80 drivers/gpu/drm/drm_file.c:291
 drm_file_free drivers/gpu/drm/drm_file.c:248 [inline]
 drm_close_helper.isra.0+0x17d/0x1f0 drivers/gpu/drm/drm_file.c:308
 drm_release+0x1e6/0x530 drivers/gpu/drm/drm_file.c:495
 __fput+0x286/0x9f0 fs/file_table.c:317
 task_work_run+0xdd/0x1a0 kernel/task_work.c:164
 exit_task_work include/linux/task_work.h:32 [inline]
 do_exit+0xb29/0x2a30 kernel/exit.c:806
 do_group_exit+0xd2/0x2f0 kernel/exit.c:935
 get_signal+0x45a/0x2490 kernel/signal.c:2863
 arch_do_signal_or_restart+0x2a9/0x1c40 arch/x86/kernel/signal.c:868
 handle_signal_work kernel/entry/common.c:148 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:172 [inline]
 exit_to_user_mode_prepare+0x17d/0x290 kernel/entry/common.c:207
 __syscall_exit_to_user_mode_work kernel/entry/common.c:289 [inline]
 syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:300
 ret_from_fork+0x15/0x30 arch/x86/entry/entry_64.S:288
RIP: 0033:0x7f836c6a0471
Code: Unable to access opcode bytes at RIP 0x7f836c6a0447.
RSP: 002b:00007f836afd22f0 EFLAGS: 00000206 ORIG_RAX: 0000000000000038
RAX: 0000000000000000 RBX: 00007f836afd2700 RCX: 00007f836c6a0471
RDX: 00007f836afd29d0 RSI: 00007f836afd22f0 RDI: 00000000003d0f00
RBP: 00007ffed5e285a0 R08: 00007f836afd2700 R09: 00007f836afd2700
R10: 00007f836afd29d0 R11: 0000000000000206 R12: 00007ffed5e2840e
R13: 00007ffed5e2840f R14: 00007f836afd2300 R15: 0000000000022000
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
