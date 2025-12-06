Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFzXOH8D4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DCD4111F7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EC9F44BA8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:42:54 +0000 (UTC)
Received: from mail-ot1-f79.google.com (mail-ot1-f79.google.com [209.85.210.79])
	by lists.linaro.org (Postfix) with ESMTPS id CA2FE3F91C
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 Dec 2025 01:19:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3n4QzaQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.210.79 as permitted sender) smtp.mailfrom=3n4QzaQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-ot1-f79.google.com with SMTP id 46e09a7af769-7c6cb7bf71bso3104327a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Dec 2025 17:19:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764983967; x=1765588767;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iamnrkElp7j3TjhockSVR4ojhUOK2ChBJfnCvlBuTjI=;
        b=rz2qplQ+jVHmV9yKt76pqfmMPVGXkg0KT9+AdNwJ6YVFGRGoA7B/ogt0Lu6OsdP77Y
         zffS22RRzz8UYy0rdNxbgJjmJ5YsWn+DYpcKjKGFdV3S7Qlwb2OlpTsp4fUNR9Ygm8GE
         tgDGiH37te1SLdqdNLD7f0Yad36/+G63P/hhSVImANUFPgmS0ef1wm15PScTwSqvHi7L
         iGR7ueBoSOF4iSr+kuhgRHNqYYzZ9ujx5KJSJZDcXoPhHOok8XFdQfoS18QJo9DhPB9a
         uCK9SDXufGKYV57gYQjzsr6C/YG2mBdLdeW/jPbeuj06eAoNP5ze2YNZfbw6Vria77dp
         jDJA==
X-Forwarded-Encrypted: i=1; AJvYcCU2FSs4ncx+5XU10CJZcEQMUfv37dvA4fkWW63Nu02kG8DemomeIZwN3kZgUR4qOrv2twWBJ3zsaapeIdLc@lists.linaro.org
X-Gm-Message-State: AOJu0YwaXaPVzaYoFd7ViCaVFSHWSRDb2KggaxzG02HQbqPCAkEMlRb5
	ExZ520JAIWUOyHed6XTIN6lmtOvQdEv00rRULPFV4q7HnKABhm+xGZpvMyH21ZBum2rEQhdMUC/
	3nPALUf0ffDoFo8MwM+l+cMy0DfFgFjEu7nBqAXCKVJ6neIvz8B1SlssqSYY=
X-Google-Smtp-Source: AGHT+IFTXBAiajNCFxz6p22lgnqCsewrHy8l5CrMbwVzmSF0kEp1CYnit5k/Ep3FZ7GrUryFn1zjUnrbHOfW4JgI/VmPkCkDcaZq
MIME-Version: 1.0
X-Received: by 2002:a05:6820:f03:b0:659:9a49:8fcd with SMTP id
 006d021491bc7-6599a9774f2mr508232eaf.70.1764983967246; Fri, 05 Dec 2025
 17:19:27 -0800 (PST)
Date: Fri, 05 Dec 2025 17:19:27 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6933849f.a70a0220.243dc6.0026.GAE@google.com>
From: syzbot <syzbot+4317d7108e14e5d56308@syzkaller.appspotmail.com>
To: christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-Spamd-Bar: --
X-MailFrom: 3n4QzaQkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VNCTR45H3JETKZ6EQRBT5IRNR7DXVNZ5
X-Message-ID-Hash: VNCTR45H3JETKZ6EQRBT5IRNR7DXVNZ5
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:37 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [media?] [dri?] WARNING in dma_buf_vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VNCTR45H3JETKZ6EQRBT5IRNR7DXVNZ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=a1db0fea040c2a9f];
	DATE_IN_PAST(1.00)[3158];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,4317d7108e14e5d56308];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	REDIRECTOR_URL(0.00)[goo.gl];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,storage.googleapis.com:url,googlegroups.com:email,goo.gl:url]
X-Rspamd-Queue-Id: 54DCD4111F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

syzbot found the following issue on:

HEAD commit:    1d18101a644e Merge tag 'kernel-6.19-rc1.cred' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13fba192580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a1db0fea040c2a9f
dashboard link: https://syzkaller.appspot.com/bug?extid=4317d7108e14e5d56308
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1055e2b4580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16ddf484580000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/d900f083ada3/non_bootable_disk-1d18101a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/98f78b52cccd/vmlinux-1d18101a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7a8898061bfb/bzImage-1d18101a.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4317d7108e14e5d56308@syzkaller.appspotmail.com

Total swap = 124996kB
393083 pages RAM
0 pages HighMem/MovableOnly
184478 pages reserved
0 pages cma reserved
------------[ cut here ]------------
WARNING: CPU: 0 PID: 5488 at drivers/dma-buf/dma-buf.c:1536 dma_buf_vmap+0x306/0x3b0 drivers/dma-buf/dma-buf.c:1536
Modules linked in:
CPU: 0 UID: 0 PID: 5488 Comm: syz.0.17 Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
RIP: 0010:dma_buf_vmap+0x306/0x3b0 drivers/dma-buf/dma-buf.c:1536
Code: 64 05 cc e8 0c 99 d7 fb 90 0f 0b 90 b8 ea ff ff ff eb bc e8 fc 98 d7 fb 90 0f 0b 90 e9 0d fe ff ff e8 ee 98 d7 fb 44 89 f0 90 <0f> 0b 90 49 bd 00 00 00 00 00 fc ff df eb 91 e8 c6 9c 61 05 48 c7
RSP: 0018:ffffc90002bbf3a0 EFLAGS: 00010293
RAX: 00000000fffffff4 RBX: ffff888000e02428 RCX: ffff888000eb4900
RDX: 0000000000000000 RSI: 00000000fffffff4 RDI: 0000000000000000
RBP: ffffc90002bbf450 R08: ffffc90002bbf227 R09: 1ffff92000577e44
R10: dffffc0000000000 R11: fffff52000577e45 R12: ffffffff85ea4500
R13: ffff888000e02430 R14: 00000000fffffff4 R15: 1ffff110001c0485
FS:  0000555591ecc500(0000) GS:ffff88808d722000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055859af10a08 CR3: 00000000589bb000 CR4: 0000000000352ef0
Call Trace:
 <TASK>
 drm_gem_shmem_vmap_locked+0x14c/0x790 drivers/gpu/drm/drm_gem_shmem_helper.c:354
 drm_gem_vmap_locked drivers/gpu/drm/drm_gem.c:1279 [inline]
 drm_gem_vmap+0x10a/0x1d0 drivers/gpu/drm/drm_gem.c:1321
 drm_gem_fb_vmap+0xaa/0x8d0 drivers/gpu/drm/drm_gem_framebuffer_helper.c:368
 drm_atomic_helper_prepare_planes+0x2d6/0xb60 drivers/gpu/drm/drm_atomic_helper.c:2760
 drm_atomic_helper_commit+0x19a/0xb10 drivers/gpu/drm/drm_atomic_helper.c:2189
 drm_atomic_commit+0x262/0x2c0 drivers/gpu/drm/drm_atomic.c:1577
 drm_atomic_helper_update_plane+0x248/0x3b0 drivers/gpu/drm/drm_atomic_helper.c:3348
 drm_mode_cursor_universal drivers/gpu/drm/drm_plane.c:1256 [inline]
 drm_mode_cursor_common+0xb7e/0x12d0 drivers/gpu/drm/drm_plane.c:1315
 drm_mode_cursor_ioctl+0xbf/0x110 drivers/gpu/drm/drm_plane.c:1365
 drm_ioctl_kernel+0x2cf/0x390 drivers/gpu/drm/drm_ioctl.c:797
 drm_ioctl+0x67f/0xb10 drivers/gpu/drm/drm_ioctl.c:894
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:597 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:583
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xfa/0xfa0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fcd9898f7c9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 a8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe37777948 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fcd98be5fa0 RCX: 00007fcd9898f7c9
RDX: 0000200000000280 RSI: 00000000c01c64a3 RDI: 0000000000000003
RBP: 00007ffe377779a0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000002
R13: 00007fcd98be5fa0 R14: 00007fcd98be5fa0 R15: 0000000000000003
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
