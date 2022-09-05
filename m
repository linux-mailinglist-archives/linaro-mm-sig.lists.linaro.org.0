Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 229C8604318
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:25:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE5CE3F5BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:25:16 +0000 (UTC)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by lists.linaro.org (Postfix) with ESMTPS id 611953F5DC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 09:42:38 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id k12-20020a92c24c000000b002f18edda397so930507ilo.13
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Sep 2022 02:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=X3yk1eG/DV5Le3kCaxu0Ha0WlwBmmsjzDesiw7cpZEM=;
        b=dXfc2vi5it/+0MPiGbyVM22GNs/nPtPn/tuXcRJKy2wgEfGEzf0lLJKiu6RqfjeiI8
         xU9/ivPwCJ2n/hO2WcYOBl/SIBOvPAwaNLpNPmV9sCYboJi4Ntu7iw1p/NEyZ5+cFAaz
         N9H3lKaeCeWjqQp1kMJ6XHV/6faOx0RfmanAnih99B1Ioy+u4ZWLeHnPfT9JU8zW/35/
         gyBBxXy703Vwoh2GEc8no5xprqNCaPZfdBsbw8e14W7BJ88MElyMCrFQfOV7No/TNHm9
         ZZhDlupJrS7nSxVmNiZBLPx6rt17J7oUP7TSNWAU1Qfq2PWSOz6nny0/zu4f1Y3+FAcK
         YAUg==
X-Gm-Message-State: ACgBeo3yce58T92or7w0dfr9q36KOZQSoWc5WfjVeBH+4PL59fWf2RO+
	jlrNJac6cbgWzJbtOltjqM1dCyy2DMkx1jBCLCyKUvIj4xKK
X-Google-Smtp-Source: AA6agR681pLVYWY+KeBgzKX9+rikNjuvJjzOHnLjjwGbsfRlpFuTOZTpFMkAnpkeOJPO2pxVhl1tiE5zgmk1B1bKRzs0I0FHvOSO
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c2c:b0:2ee:5b19:fbf4 with SMTP id
 m12-20020a056e021c2c00b002ee5b19fbf4mr8438540ilh.131.1662370957895; Mon, 05
 Sep 2022 02:42:37 -0700 (PDT)
Date: Mon, 05 Sep 2022 02:42:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006e2d4305e7eae644@google.com>
From: syzbot <syzbot+c512687fff9d22327436@syzkaller.appspotmail.com>
To: airlied@linux.ie, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-MailFrom: 3jcQVYwkbAIw8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H3KDX3YSVZPHIWX3WR2W7NCF6U76MWGB
X-Message-ID-Hash: H3KDX3YSVZPHIWX3WR2W7NCF6U76MWGB
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:25:00 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] WARNING: refcount bug in drm_gem_object_handle_put_unlocked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3KDX3YSVZPHIWX3WR2W7NCF6U76MWGB/>
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

HEAD commit:    a41a877bc12d Merge branch 'for-next/fixes' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=17ae17bd080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5cea15779c42821c
dashboard link: https://syzkaller.appspot.com/bug?extid=c512687fff9d22327436
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10e8fee5080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16b6bf13080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c512687fff9d22327436@syzkaller.appspotmail.com

------------[ cut here ]------------
refcount_t: underflow; use-after-free.
WARNING: CPU: 0 PID: 3029 at lib/refcount.c:28 refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
Modules linked in:
CPU: 0 PID: 3029 Comm: syz-executor717 Not tainted 6.0.0-rc2-syzkaller-16455-ga41a877bc12d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/22/2022
pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
lr : refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
sp : ffff80001200baa0
x29: ffff80001200baa0 x28: 00000000000a201d x27: 0000000000002000
x26: dead000000000100 x25: 0000000000000000 x24: 0000000000000001
x23: 0000000000000001 x22: 0000000000000000 x21: 0000000000000000
x20: 0000000000000003 x19: ffff80000d937000 x18: 00000000000000c0
x17: ffff80000dd7a698 x16: ffff80000dbb8658 x15: ffff0000c10a4f80
x14: 0000000000000000 x13: 00000000ffffffff x12: ffff0000c10a4f80
x11: ff808000081c39dc x10: 0000000000000000 x9 : 9016e5cf66052a00
x8 : 9016e5cf66052a00 x7 : ffff800008197c8c x6 : 0000000000000000
x5 : 0000000000000080 x4 : 0000000000000001 x3 : 0000000000000000
x2 : 0000000000000000 x1 : 0000000100000000 x0 : 0000000000000026
Call trace:
 refcount_warn_saturate+0x1a0/0x1c8 lib/refcount.c:28
 __refcount_sub_and_test include/linux/refcount.h:283 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 kref_put include/linux/kref.h:64 [inline]
 __drm_gem_object_put include/drm/drm_gem.h:381 [inline]
 drm_gem_object_put include/drm/drm_gem.h:394 [inline]
 drm_gem_object_handle_put_unlocked+0x178/0x190 drivers/gpu/drm/drm_gem.c:240
 drm_gem_object_release_handle+0x90/0xa8 drivers/gpu/drm/drm_gem.c:259
 idr_for_each+0xf0/0x174 lib/idr.c:208
 drm_gem_release+0x30/0x48 drivers/gpu/drm/drm_gem.c:932
 drm_file_free+0x220/0x2cc drivers/gpu/drm/drm_file.c:281
 drm_close_helper drivers/gpu/drm/drm_file.c:308 [inline]
 drm_release+0x108/0x22c drivers/gpu/drm/drm_file.c:495
 __fput+0x198/0x3bc fs/file_table.c:320
 ____fput+0x20/0x30 fs/file_table.c:353
 task_work_run+0xc4/0x208 kernel/task_work.c:177
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x26c/0xbb8 kernel/exit.c:795
 do_group_exit+0x60/0xe8 kernel/exit.c:925
 __do_sys_exit_group kernel/exit.c:936 [inline]
 __se_sys_exit_group kernel/exit.c:934 [inline]
 __wake_up_parent+0x0/0x40 kernel/exit.c:934
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x154 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:624
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:642
 el0t_64_sync+0x18c/0x190
irq event stamp: 12698
hardirqs last  enabled at (12697): [<ffff8000081c1c48>] __up_console_sem+0xb0/0xfc kernel/printk/printk.c:264
hardirqs last disabled at (12698): [<ffff80000bffe9cc>] el1_dbg+0x24/0x5c arch/arm64/kernel/entry-common.c:395
softirqs last  enabled at (12442): [<ffff8000080102e4>] _stext+0x2e4/0x37c
softirqs last disabled at (12417): [<ffff800008104658>] do_softirq_own_stack include/asm-generic/softirq_stack.h:10 [inline]
softirqs last disabled at (12417): [<ffff800008104658>] invoke_softirq+0x70/0xbc kernel/softirq.c:452
---[ end trace 0000000000000000 ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
