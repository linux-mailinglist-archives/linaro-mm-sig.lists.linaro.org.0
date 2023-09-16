Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C067CF755
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:46:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB42D40C33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:46:30 +0000 (UTC)
Received: from mail-ot1-f79.google.com (mail-ot1-f79.google.com [209.85.210.79])
	by lists.linaro.org (Postfix) with ESMTPS id A713E3EABF
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 Sep 2023 01:22:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3QAMFZQkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.210.79 as permitted sender) smtp.mailfrom=3QAMFZQkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-ot1-f79.google.com with SMTP id 46e09a7af769-6bc7afd0498so3508126a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Sep 2023 18:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694827328; x=1695432128;
        h=to:from:subject:message-id:date:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M/Or17Flbww0J850VcncFpV3Fsrp6uiNhx9j7RzszSc=;
        b=JG6cvw5BhbsI5pC28H+si86pHaNiZdfnYMo8h8XHx7OQgdHqWIt9MQWPGC+M8FjpBC
         w9QHH8Jbay+9DnQOCx4suezEzGFHUgm66eVprZNRdUbTVPfkONK3aj0y87kL8PICJhZn
         XhwsxLS5+CPR0n0CTb3BGV6o6suG3kxfnBjKTVzY2EkUzWfwuT0xsMWWD3L+c3PrMUnu
         e8VgALtO//3reRjuMv3xgRuHOH+VjYXfs5Q9UlEItr7yPYoI2FvmAQ3lod/+x+0TZDg1
         X4VswuXV17OIz6HlRTo5uky14FWL6jYirv6mkgqd9L9RmtWRYHiHbHh3FZ3sd7snnj3d
         YiGg==
X-Gm-Message-State: AOJu0YzXepkGUpkaAAzJY5RXoJelHiflA1no5fGb0D2eWJAlNUnhuz08
	TTgG9WbQmKkRWkL74xwPKp67Uo97GT1K0oWyC6IiFJluGpMk
X-Google-Smtp-Source: AGHT+IF7058y1jehsUMZxBzb298llpz98s99IIVfGF8a2JYv7XWxrtU97dgqMTRab9leMlgD/BstJmGv7wgxjNXLcFiMriSt0/Xg
MIME-Version: 1.0
X-Received: by 2002:a9d:6d92:0:b0:6c0:a3e0:f9e3 with SMTP id
 x18-20020a9d6d92000000b006c0a3e0f9e3mr895784otp.5.1694827328228; Fri, 15 Sep
 2023 18:22:08 -0700 (PDT)
Date: Fri, 15 Sep 2023 18:22:08 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dad29506056fbc93@google.com>
From: syzbot <syzbot+ef3256a360c02207a4cb@syzkaller.appspotmail.com>
To: airlied@gmail.com, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Rspamd-Queue-Id: A713E3EABF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=f4894cf58531f];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3QAMFZQkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.79:from];
	REDIRECTOR_URL(0.00)[goo.gl];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[googlegroups.com:email,goo.gl:url,mail-ot1-f79.google.com:helo,mail-ot1-f79.google.com:rdns];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3QAMFZQkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[ef3256a360c02207a4cb];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: 3QAMFZQkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BPKQCFIPJRA5DI5CMVQQGBXVRHLYQ2S2
X-Message-ID-Hash: BPKQCFIPJRA5DI5CMVQQGBXVRHLYQ2S2
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:45:26 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [syzbot] [dri?] WARNING in drm_gem_object_handle_put_unlocked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPKQCFIPJRA5DI5CMVQQGBXVRHLYQ2S2/>
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

HEAD commit:    0bb80ecc33a8 Linux 6.6-rc1
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1002530c680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f4894cf58531f
dashboard link: https://syzkaller.appspot.com/bug?extid=ef3256a360c02207a4cb
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a79ca0680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16900402680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/eeb0cac260c7/disk-0bb80ecc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/a3c360110254/vmlinux-0bb80ecc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/22b81065ba5f/bzImage-0bb80ecc.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ef3256a360c02207a4cb@syzkaller.appspotmail.com

R10: 0000000000000000 R11: 0000000000000246 R12: 00007fda971e917c
R13: 00007fda97153210 R14: 0023647261632f69 R15: 6972642f7665642f
 </TASK>
------------[ cut here ]------------
WARNING: CPU: 1 PID: 5043 at drivers/gpu/drm/drm_gem.c:225 drm_gem_object_handle_put_unlocked+0x299/0x390 drivers/gpu/drm/drm_gem.c:225
Modules linked in:
CPU: 1 PID: 5043 Comm: syz-executor141 Not tainted 6.6.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
RIP: 0010:drm_gem_object_handle_put_unlocked+0x299/0x390 drivers/gpu/drm/drm_gem.c:225
Code: ea 03 0f b6 04 02 84 c0 74 0c 3c 03 7f 08 4c 89 f7 e8 2b 06 2a fd c7 83 20 01 00 00 00 00 00 00 e9 98 fe ff ff e8 57 44 d4 fc <0f> 0b 5b 5d 41 5c 41 5d 41 5e e9 48 44 d4 fc e8 43 44 d4 fc 48 8d
RSP: 0018:ffffc90003d5fbb8 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffff888027b61000 RCX: 0000000000000000
RDX: ffff888014fcbb80 RSI: ffffffff84b38a29 RDI: 0000000000000005
RBP: ffff888027b61004 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000001 R12: ffff88801d140000
R13: ffff888027b61008 R14: 0000000000000000 R15: ffff888027b61018
FS:  00007fda971536c0(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fda971fe794 CR3: 0000000072975000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 drm_gem_handle_create_tail+0x32f/0x540 drivers/gpu/drm/drm_gem.c:407
 drm_gem_shmem_create_with_handle drivers/gpu/drm/drm_gem_shmem_helper.c:417 [inline]
 drm_gem_shmem_dumb_create+0x21a/0x310 drivers/gpu/drm/drm_gem_shmem_helper.c:505
 drm_mode_create_dumb drivers/gpu/drm/drm_dumb_buffers.c:96 [inline]
 drm_mode_create_dumb_ioctl+0x268/0x2f0 drivers/gpu/drm/drm_dumb_buffers.c:102
 drm_ioctl_kernel+0x280/0x4c0 drivers/gpu/drm/drm_ioctl.c:789
 drm_ioctl+0x5cb/0xbf0 drivers/gpu/drm/drm_ioctl.c:892
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:871 [inline]
 __se_sys_ioctl fs/ioctl.c:857 [inline]
 __x64_sys_ioctl+0x18f/0x210 fs/ioctl.c:857
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fda971954e9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 18 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fda971531f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fda9721c3e8 RCX: 00007fda971954e9
RDX: 0000000020000080 RSI: 00000000c02064b2 RDI: 0000000000000003
RBP: 00007fda9721c3e0 R08: 00007fda97152f96 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fda971e917c
R13: 00007fda97153210 R14: 0023647261632f69 R15: 6972642f7665642f
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
