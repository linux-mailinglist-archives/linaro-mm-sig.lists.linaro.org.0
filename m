Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEF6734BEA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 08:54:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9A8C3F356
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jun 2023 06:54:38 +0000 (UTC)
Received: from mail-io1-f79.google.com (mail-io1-f79.google.com [209.85.166.79])
	by lists.linaro.org (Postfix) with ESMTPS id 356093E923
	for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Jun 2023 18:42:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3pv6NZAkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.79 as permitted sender) smtp.mailfrom=3pv6NZAkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-io1-f79.google.com with SMTP id ca18e2360f4ac-7778eb7966eso179064039f.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Jun 2023 11:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687027366; x=1689619366;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DBaDf6IaqpzK1ZRigtHt9P4RoGRnNk1rRIyUUGVymcY=;
        b=LJwC4EhTZI3AD1AoJGX33K2Ady04WWaihSZ64LyYSjs4roOyrz+JzRN+R0Qxz4k1VT
         7/4wDuazZEIky7BmvavQJCtI5E7ZdwoRWaVxXWYb+jdUlGOZ8UeLukjTJR0mvDNxevyJ
         GYM96bLe6JRNMCHpuKuWlr3GEtiOUjYJazxT0etR4xPRbtSoreb8zFLyHvrzLyYkJPht
         eJDW8FY+hNqWZiwzQJUwOiBfr2rBqH6RLSJ+7uW4Grvz2hlIy0SShQdx+cHgw9ps9WmS
         b28hRJ1e9C0kkUEUHVHbNVKPWV8JorCC5IyjN/NkKhSssm8mxYGnafKVZjTKj93wD+mF
         595A==
X-Gm-Message-State: AC+VfDwoM8kon+1rFwW1hdMOyB5Q3PeFc9+Iw+YadfVIBWnpDsUQNSum
	8/n9V8k6kme/ETFdsvcJujt6sGWHZFPpVB1Whbu8DTrGQSwK
X-Google-Smtp-Source: ACHHUZ7CYafZSONe2OvDQu1FzU/g//AWiU+h+oZNfT7C8pKY2i6K0k+u8Q1dvFGQcIC5sN+Dv8KKCW7XpvJDLw7jCAqjoAFcGZXK
MIME-Version: 1.0
X-Received: by 2002:a92:d204:0:b0:338:bdd7:d439 with SMTP id
 y4-20020a92d204000000b00338bdd7d439mr1512731ily.6.1687027366660; Sat, 17 Jun
 2023 11:42:46 -0700 (PDT)
Date: Sat, 17 Jun 2023 11:42:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ea931b05fe57aa62@google.com>
From: syzbot <syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com>
To: airlied@gmail.com, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, glider@google.com,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com,
	tzimmermann@suse.de
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=753079601b2300f9];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3pv6NZAkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[4fad2e57beb6397ab2fc];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,ffwll.ch,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.79:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	REDIRECTOR_URL(0.00)[goo.gl];
	SUBJECT_HAS_QUESTION(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[googlegroups.com:email,goo.gl:url];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_SPAM(0.00)[0.975];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3pv6NZAkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 356093E923
X-Spamd-Bar: -
X-MailFrom: 3pv6NZAkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JL4WNYF2FETOOHA7FXOOCUW7WJLKD4NE
X-Message-ID-Hash: JL4WNYF2FETOOHA7FXOOCUW7WJLKD4NE
X-Mailman-Approved-At: Mon, 19 Jun 2023 06:54:24 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [dri?] KMSAN: uninit-value in drm_mode_setcrtc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JL4WNYF2FETOOHA7FXOOCUW7WJLKD4NE/>
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

HEAD commit:    2741f1b02117 string: use __builtin_memcpy() in strlcpy/str..
git tree:       https://github.com/google/kmsan.git master
console+strace: https://syzkaller.appspot.com/x/log.txt?x=17bb33d1280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=753079601b2300f9
dashboard link: https://syzkaller.appspot.com/bug?extid=4fad2e57beb6397ab2fc
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16d669a5280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14d8f095280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ebd05512d8d7/disk-2741f1b0.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/aa555b09582c/vmlinux-2741f1b0.xz
kernel image: https://storage.googleapis.com/syzbot-assets/5ea0934e02cc/bzImage-2741f1b0.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in drm_mode_setcrtc+0x1ad3/0x24a0 drivers/gpu/drm/drm_crtc.c:896
 drm_mode_setcrtc+0x1ad3/0x24a0 drivers/gpu/drm/drm_crtc.c:896
 drm_ioctl_kernel+0x5ae/0x730 drivers/gpu/drm/drm_ioctl.c:788
 drm_ioctl+0xd12/0x1590 drivers/gpu/drm/drm_ioctl.c:891
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]
 __se_sys_ioctl+0x222/0x400 fs/ioctl.c:856
 __x64_sys_ioctl+0x96/0xe0 fs/ioctl.c:856
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Uninit was created at:
 slab_post_alloc_hook+0x12d/0xb60 mm/slab.h:716
 slab_alloc_node mm/slub.c:3451 [inline]
 __kmem_cache_alloc_node+0x4ff/0x8b0 mm/slub.c:3490
 __do_kmalloc_node mm/slab_common.c:965 [inline]
 __kmalloc+0x121/0x3c0 mm/slab_common.c:979
 kmalloc_array include/linux/slab.h:596 [inline]
 drm_mode_setcrtc+0x1dba/0x24a0 drivers/gpu/drm/drm_crtc.c:846
 drm_ioctl_kernel+0x5ae/0x730 drivers/gpu/drm/drm_ioctl.c:788
 drm_ioctl+0xd12/0x1590 drivers/gpu/drm/drm_ioctl.c:891
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]
 __se_sys_ioctl+0x222/0x400 fs/ioctl.c:856
 __x64_sys_ioctl+0x96/0xe0 fs/ioctl.c:856
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

CPU: 1 PID: 4955 Comm: syz-executor275 Not tainted 6.4.0-rc4-syzkaller-g2741f1b02117 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
=====================================================


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

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
