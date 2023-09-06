Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A9379A952
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:02:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8241D3F505
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:02:55 +0000 (UTC)
Received: from mail-pl1-f205.google.com (mail-pl1-f205.google.com [209.85.214.205])
	by lists.linaro.org (Postfix) with ESMTPS id E98ED3F009
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Sep 2023 11:42:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3lGX4ZAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.214.205 as permitted sender) smtp.mailfrom=3lGX4ZAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-pl1-f205.google.com with SMTP id d9443c01a7336-1bf703dd21fso38423185ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Sep 2023 04:42:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694000532; x=1694605332;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgm4FvWa3BKSRlLi2OGqzTICf6l825wM16V78xPPAuI=;
        b=Dz4+lDnCNtYT7EZXyesldXatFR2i/23dgHMVTCH7EHoQ7STguYUiqaiS4WcjAg+Odr
         lQ8d/ACdmT/hm01nsW43M4PMZUDr8gSFAGjECXOBLPIE8PKmZDbyPBEbbf9cdcgfzUwY
         xLfpsFX5HMTj23STSFm35eEPHQjtg9Cvd6c78EDpLb0x+bluuN9ZR0dJeE3qXBUfMaw4
         IaJZcxTh2kb9imH8upHqphe6Xz7DVlXurSuymQPN9ink6vKLwZwHpbQWUGQiWRn9lo9B
         oer10tdbwWBNMcQa5fzlOzyGA4EDH0yjp8repN7DCRhZaHhkrh+nvmFwgc+OJFK0MZtH
         A7SQ==
X-Gm-Message-State: AOJu0Yyz/BEa505g5ob8Jw3rVdwK+PLJLITeXjnuf7E08DKgpT7KqsUD
	au0EYaiRnGJ6QJiqUS1lotTJm/s8/hb6ljJscK0n+IhsrDab
X-Google-Smtp-Source: AGHT+IHQYLZtz6vLjN0KeGAyveKhAq6Q0dCa+xbTebR1FxdE03KP0paQKULbcKxiqtdNz+wFxUM88ytkroo+z7iduvzlXH6UaEqx
MIME-Version: 1.0
X-Received: by 2002:a17:902:d48e:b0:1bc:1189:16d with SMTP id
 c14-20020a170902d48e00b001bc1189016dmr5569688plg.3.1694000532076; Wed, 06 Sep
 2023 04:42:12 -0700 (PDT)
Date: Wed, 06 Sep 2023 04:42:11 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f6bf6d0604af3b95@google.com>
From: syzbot <syzbot+95416f957d84e858b377@syzkaller.appspotmail.com>
To: airlied@gmail.com, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Rspamd-Queue-Id: E98ED3F009
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=39744401c57166fc];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3lGX4ZAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.205:from];
	REDIRECTOR_URL(0.00)[goo.gl];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[209.85.214.205:query timed out];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[95416f957d84e858b377];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3lGX4ZAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.990];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: 3lGX4ZAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OOXHIYYT2RIQIFMY7NHRZ3TGRJYEAECO
X-Message-ID-Hash: OOXHIYYT2RIQIFMY7NHRZ3TGRJYEAECO
X-Mailman-Approved-At: Mon, 11 Sep 2023 15:02:52 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [dri?] WARNING in drm_syncobj_array_find
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOXHIYYT2RIQIFMY7NHRZ3TGRJYEAECO/>
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

HEAD commit:    0468be89b3fa Merge tag 'iommu-updates-v6.6' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13571367a80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=39744401c57166fc
dashboard link: https://syzkaller.appspot.com/bug?extid=95416f957d84e858b377
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=111c39a8680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1267d83fa80000

Downloadable assets:
disk image (non-bootable): https://storage.googleapis.com/syzbot-assets/7bc7510fe41f/non_bootable_disk-0468be89.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/7feba36779de/vmlinux-0468be89.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b1cdc0506491/bzImage-0468be89.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+95416f957d84e858b377@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 2 PID: 5141 at mm/page_alloc.c:4415 __alloc_pages+0x3ab/0x4a0 mm/page_alloc.c:4415
Modules linked in:
CPU: 2 PID: 5141 Comm: syz-executor127 Not tainted 6.5.0-syzkaller-10885-g0468be89b3fa #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.2-debian-1.16.2-1 04/01/2014
RIP: 0010:__alloc_pages+0x3ab/0x4a0 mm/page_alloc.c:4415
Code: ff ff 00 0f 84 2f fe ff ff 80 ce 01 e9 27 fe ff ff 83 fe 0a 0f 86 3a fd ff ff 80 3d c9 37 e6 0c 00 75 09 c6 05 c0 37 e6 0c 01 <0f> 0b 45 31 f6 e9 97 fe ff ff e8 b6 10 9e ff 84 c0 0f 85 8a fe ff
RSP: 0018:ffffc900030b7a18 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000040cc0 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000016 RDI: 0000000000040cc0
RBP: 1ffff92000616f44 R08: 0000000000000005 R09: 0000000000000000
R10: 00000000ffffff1f R11: 0000000000000000 R12: 0000000000000016
R13: 0000000000000000 R14: ffffffff84b4e215 R15: ffff888013722000
FS:  00005555555a4380(0000) GS:ffff88806b800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000200001c0 CR3: 000000002accd000 CR4: 0000000000350ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __alloc_pages_node include/linux/gfp.h:237 [inline]
 alloc_pages_node include/linux/gfp.h:260 [inline]
 __kmalloc_large_node+0x87/0x1c0 mm/slab_common.c:1164
 __do_kmalloc_node mm/slab_common.c:1011 [inline]
 __kmalloc.cold+0xb/0xe0 mm/slab_common.c:1036
 kmalloc_array include/linux/slab.h:636 [inline]
 drm_syncobj_array_find+0x35/0x3c0 drivers/gpu/drm/drm_syncobj.c:1246
 drm_syncobj_timeline_signal_ioctl+0x21f/0x860 drivers/gpu/drm/drm_syncobj.c:1533
 drm_ioctl_kernel+0x280/0x4c0 drivers/gpu/drm/drm_ioctl.c:789
 drm_ioctl+0x5cb/0xbf0 drivers/gpu/drm/drm_ioctl.c:892
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:871 [inline]
 __se_sys_ioctl fs/ioctl.c:857 [inline]
 __x64_sys_ioctl+0x18f/0x210 fs/ioctl.c:857
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7ff62d53f129
Code: 48 83 c4 28 c3 e8 37 17 00 00 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe7c669ea8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffe7c66a078 RCX: 00007ff62d53f129
RDX: 0000000020000500 RSI: 00000000c01864cd RDI: 0000000000000003
RBP: 00007ff62d5b2610 R08: 0023647261632f69 R09: 00007ffe7c66a078
R10: 000000000000001f R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffe7c66a068 R14: 0000000000000001 R15: 0000000000000001
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
