Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /oz3NGBf5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D471430DD8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA1E1404E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:27 +0000 (UTC)
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by lists.linaro.org (Postfix) with ESMTPS id 426D640149
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 03:17:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3wt6waQkbAJcJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.161.71 as permitted sender) smtp.mailfrom=3wt6waQkbAJcJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-67bb2273d42so40422218eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 20:17:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773199042; x=1773803842;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b0VLz+ENyrwhKDwhHyruLUJV2koaLUU/pOa9eR1vG6k=;
        b=YBXA+v56vmTQuzWPG+b1aMC+JLxOsU/CzMzbmBSiJLm8b8I+Ev5sJgJiAS3t2mgwvS
         vqux+Sz/QkNcznuo9jb63DbQKDVuZLoxsise3iw8QbUEox+WNuYO6urZmsT+di0L/7HO
         QINAptD/if3Z0mnDHsI9dupstRuUZXg9ya1AbVakqAkbrN5+7dAv4aqUIk3MzTl5EgJO
         7EahSithfoVgiWchfOUvUXm4JJ4CmD5jzoA87z+srntfRBiJ5g5yeAX1RY/MQT977gMF
         FW1Jjy0icLNSO7c1dbgPcnzKR5+PTRB6cefxYZkX9DuqgZe/y1Y8kUV725y8j0HLvPlU
         CyKA==
X-Forwarded-Encrypted: i=1; AJvYcCWbOWi09gjGFWB1CoLwNtC8Za8WcyQBmBOnQHaq9R8uZlEMjmTDmUC9SF+E9v6zUSJjcfxXbpd6zeMtL5mD@lists.linaro.org
X-Gm-Message-State: AOJu0Yzp+rcuG27qrV7+Zxzw55cMHEqHL5ict54fJQ/NgPayFKUh9RCS
	MuEEr8R3XWeMXImiKnJiB59ivUM7HxANa+rLg8aCOEyWsNqzRQaDXAubPbNWg6psWnw/whClWDA
	cIR07h7cCx1mLL/NncrHlC0iaY9KWneFbQJhMEOAB3YoX8M41nc+eT6qrVUI=
MIME-Version: 1.0
X-Received: by 2002:a05:6820:4812:b0:67b:bd89:90e7 with SMTP id
 006d021491bc7-67bc8a83bcbmr570582eaf.62.1773199042693; Tue, 10 Mar 2026
 20:17:22 -0700 (PDT)
Date: Tue, 10 Mar 2026 20:17:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69b0dec2.050a0220.381736.0009.GAE@google.com>
From: syzbot <syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com>
To: christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-Spamd-Bar: --
X-MailFrom: 3wt6waQkbAJcJPQB1CC5I1GG94.7FF7C5LJ5I3FEK5EK.3FD@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TG4OFKSXDQMPBR5BPVOQDLOHQAHGSDRE
X-Message-ID-Hash: TG4OFKSXDQMPBR5BPVOQDLOHQAHGSDRE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:34 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [media?] [dri?] KASAN: slab-use-after-free Read in dma_buf_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TG4OFKSXDQMPBR5BPVOQDLOHQAHGSDRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=2a019678b1a3a692];
	DATE_IN_PAST(1.00)[973];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,7f4987d0afb97dd090cb];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	REDIRECTOR_URL(0.00)[goo.gl];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[storage.googleapis.com:url,appspotmail.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,goo.gl:url,syzkaller.appspot.com:url,linaro.org:email,googlegroups.com:email]
X-Rspamd-Queue-Id: 4D471430DD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

syzbot found the following issue on:

HEAD commit:    5ee8dbf54602 Merge tag 'fsverity-for-linus' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=143e4a02580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=2a019678b1a3a692
dashboard link: https://syzkaller.appspot.com/bug?extid=7f4987d0afb97dd090cb
compiler:       Debian clang version 21.1.8 (++20251221033036+2078da43e25a-1~exp1~20251221153213.50), Debian LLD 21.1.8

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8f3ca4731c70/disk-5ee8dbf5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9e6d67fcdf59/vmlinux-5ee8dbf5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/dd6699ad586c/bzImage-5ee8dbf5.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: slab-use-after-free in __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:132 [inline]
BUG: KASAN: slab-use-after-free in _raw_spin_lock_irqsave+0x40/0x60 kernel/locking/spinlock.c:162
Read of size 1 at addr ffff888034d9c068 by task syz.6.794/10028

CPU: 1 UID: 0 PID: 10028 Comm: syz.6.794 Not tainted syzkaller #0 PREEMPT_{RT,(full)} 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/12/2026
Call Trace:
 <TASK>
 dump_stack_lvl+0xe8/0x150 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0xba/0x230 mm/kasan/report.c:482
 kasan_report+0x117/0x150 mm/kasan/report.c:595
 __kasan_check_byte+0x2a/0x40 mm/kasan/common.c:574
 kasan_check_byte include/linux/kasan.h:402 [inline]
 lock_acquire+0x79/0x2e0 kernel/locking/lockdep.c:5842
 __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:132 [inline]
 _raw_spin_lock_irqsave+0x40/0x60 kernel/locking/spinlock.c:162
 rt_mutex_slowunlock+0xbf/0x8b0 kernel/locking/rtmutex.c:1417
 spin_unlock include/linux/spinlock_rt.h:109 [inline]
 class_spinlock_destructor include/linux/spinlock.h:586 [inline]
 dma_buf_fd+0x189/0x370 drivers/dma-buf/dma-buf.c:796
 vb2_core_expbuf+0x37e/0x620 drivers/media/common/videobuf2/videobuf2-core.c:2471
 __video_do_ioctl+0x88c/0xc50 drivers/media/v4l2-core/v4l2-ioctl.c:3132
 video_usercopy+0x876/0x14b0 drivers/media/v4l2-core/v4l2-ioctl.c:3474
 v4l2_ioctl+0x190/0x1e0 drivers/media/v4l2-core/v4l2-dev.c:366
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:597 [inline]
 __se_sys_ioctl+0xff/0x170 fs/ioctl.c:583
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fa4633cc799
Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 e8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fa46161e028 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fa463645fa0 RCX: 00007fa4633cc799
RDX: 0000200000000040 RSI: 00000000c0405610 RDI: 0000000000000004
RBP: 00007fa463462bd9 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007fa463646038 R14: 00007fa463645fa0 R15: 00007ffe4429d3d8
 </TASK>

Allocated by task 10028:
 kasan_save_stack mm/kasan/common.c:57 [inline]
 kasan_save_track+0x3e/0x80 mm/kasan/common.c:78
 poison_kmalloc_redzone mm/kasan/common.c:398 [inline]
 __kasan_kmalloc+0x93/0xb0 mm/kasan/common.c:415
 kasan_kmalloc include/linux/kasan.h:263 [inline]
 __do_kmalloc_node mm/slub.c:5238 [inline]
 __kmalloc_noprof+0x3e7/0x7b0 mm/slub.c:5250
 kmalloc_noprof include/linux/slab.h:954 [inline]
 kzalloc_noprof include/linux/slab.h:1188 [inline]
 dma_buf_export+0x3ba/0xb10 drivers/dma-buf/dma-buf.c:739
 vb2_vmalloc_get_dmabuf+0x10e/0x210 drivers/media/common/videobuf2/videobuf2-vmalloc.c:352
 vb2_core_expbuf+0x314/0x620 drivers/media/common/videobuf2/videobuf2-core.c:2461
 __video_do_ioctl+0x88c/0xc50 drivers/media/v4l2-core/v4l2-ioctl.c:3132
 video_usercopy+0x876/0x14b0 drivers/media/v4l2-core/v4l2-ioctl.c:3474
 v4l2_ioctl+0x190/0x1e0 drivers/media/v4l2-core/v4l2-dev.c:366
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:597 [inline]
 __se_sys_ioctl+0xff/0x170 fs/ioctl.c:583
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Freed by task 10031:
 kasan_save_stack mm/kasan/common.c:57 [inline]
 kasan_save_track+0x3e/0x80 mm/kasan/common.c:78
 kasan_save_free_info+0x46/0x50 mm/kasan/generic.c:584
 poison_slab_object mm/kasan/common.c:253 [inline]
 __kasan_slab_free+0x5c/0x80 mm/kasan/common.c:285
 kasan_slab_free include/linux/kasan.h:235 [inline]
 slab_free_hook mm/slub.c:2692 [inline]
 slab_free mm/slub.c:6143 [inline]
 kfree+0x1c1/0x6c0 mm/slub.c:6461
 __dentry_kill+0x211/0x5e0 fs/dcache.c:675
 finish_dput+0xc9/0x480 fs/dcache.c:879
 __fput+0x6a3/0xa90 fs/file_table.c:477
 task_work_run+0x1d9/0x270 kernel/task_work.c:233
 resume_user_mode_work include/linux/resume_user_mode.h:50 [inline]
 __exit_to_user_mode_loop kernel/entry/common.c:67 [inline]
 exit_to_user_mode_loop+0xed/0x480 kernel/entry/common.c:98
 __exit_to_user_mode_prepare include/linux/irq-entry-common.h:226 [inline]
 syscall_exit_to_user_mode_prepare include/linux/irq-entry-common.h:256 [inline]
 syscall_exit_to_user_mode include/linux/entry-common.h:325 [inline]
 do_syscall_64+0x32d/0xf80 arch/x86/entry/syscall_64.c:100
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

The buggy address belongs to the object at ffff888034d9c000
 which belongs to the cache kmalloc-1k of size 1024
The buggy address is located 104 bytes inside of
 freed 1024-byte region [ffff888034d9c000, ffff888034d9c400)

The buggy address belongs to the physical page:
page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x34d98
head: order:3 mapcount:0 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0x80000000000040(head|node=0|zone=1)
page_type: f5(slab)
raw: 0080000000000040 ffff88813fe1cdc0 dead000000000100 dead000000000122
raw: 0000000000000000 0000000800100010 00000000f5000000 0000000000000000
head: 0080000000000040 ffff88813fe1cdc0 dead000000000100 dead000000000122
head: 0000000000000000 0000000800100010 00000000f5000000 0000000000000000
head: 0080000000000003 ffffea0000d36601 00000000ffffffff 00000000ffffffff
head: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000008
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 6221, tgid 6216 (syz.3.71), ts 173025510293, free_ts 172769017733
 set_page_owner include/linux/page_owner.h:32 [inline]
 post_alloc_hook+0x231/0x280 mm/page_alloc.c:1889
 prep_new_page mm/page_alloc.c:1897 [inline]
 get_page_from_freelist+0x28bb/0x2950 mm/page_alloc.c:3962
 __alloc_frozen_pages_noprof+0x18d/0x380 mm/page_alloc.c:5250
 alloc_slab_page mm/slub.c:3269 [inline]
 allocate_slab+0x77/0x660 mm/slub.c:3458
 new_slab mm/slub.c:3516 [inline]
 refill_objects+0x334/0x3c0 mm/slub.c:7153
 refill_sheaf mm/slub.c:2818 [inline]
 __pcs_replace_empty_main+0x328/0x5f0 mm/slub.c:4592
 alloc_from_pcs mm/slub.c:4695 [inline]
 slab_alloc_node mm/slub.c:4829 [inline]
 __kmalloc_cache_noprof+0x44e/0x690 mm/slub.c:5353
 kmalloc_noprof include/linux/slab.h:950 [inline]
 kzalloc_noprof include/linux/slab.h:1188 [inline]
 snd_seq_oss_open+0x125/0xfc0 sound/core/seq/oss/seq_oss_init.c:171
 odev_open+0x67/0xd0 sound/core/seq/oss/seq_oss.c:128
 chrdev_open+0x4d0/0x5f0 fs/char_dev.c:411
 do_dentry_open+0x83d/0x13e0 fs/open.c:949
 vfs_open+0x3b/0x350 fs/open.c:1081
 do_open fs/namei.c:4671 [inline]
 path_openat+0x2e43/0x38a0 fs/namei.c:4830
 do_file_open+0x23e/0x4a0 fs/namei.c:4859
 do_sys_openat2+0x113/0x200 fs/open.c:1366
 do_sys_open fs/open.c:1372 [inline]
 __do_sys_openat fs/open.c:1388 [inline]
 __se_sys_openat fs/open.c:1383 [inline]
 __x64_sys_openat+0x138/0x170 fs/open.c:1383
page last free pid 6219 tgid 6219 stack trace:
 reset_page_owner include/linux/page_owner.h:25 [inline]
 __free_pages_prepare mm/page_alloc.c:1433 [inline]
 __free_frozen_pages+0xfe3/0x1170 mm/page_alloc.c:2978
 __slab_free+0x24f/0x2a0 mm/slub.c:5551
 qlink_free mm/kasan/quarantine.c:163 [inline]
 qlist_free_all+0x97/0x100 mm/kasan/quarantine.c:179
 kasan_quarantine_reduce+0x148/0x160 mm/kasan/quarantine.c:286
 __kasan_slab_alloc+0x22/0x80 mm/kasan/common.c:350
 kasan_slab_alloc include/linux/kasan.h:253 [inline]
 slab_post_alloc_hook mm/slub.c:4515 [inline]
 slab_alloc_node mm/slub.c:4844 [inline]
 kmem_cache_alloc_noprof+0x33b/0x680 mm/slub.c:4851
 vm_area_dup+0x2b/0x670 mm/vma_init.c:123
 __split_vma+0x1e4/0xa30 mm/vma.c:513
 split_vma mm/vma.c:596 [inline]
 vma_modify+0x94b/0x1f00 mm/vma.c:1672
 vma_modify_flags+0x24b/0x330 mm/vma.c:1700
 mprotect_fixup+0x47a/0xa80 mm/mprotect.c:756
 do_mprotect_pkey+0x8ab/0xcd0 mm/mprotect.c:930
 __do_sys_mprotect mm/mprotect.c:951 [inline]
 __se_sys_mprotect mm/mprotect.c:948 [inline]
 __x64_sys_mprotect+0x80/0x90 mm/mprotect.c:948
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0x14d/0xf80 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Memory state around the buggy address:
 ffff888034d9bf00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff888034d9bf80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff888034d9c000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                          ^
 ffff888034d9c080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888034d9c100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
