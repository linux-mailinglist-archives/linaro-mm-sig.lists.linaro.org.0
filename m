Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6F5634FC0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 06:44:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 506713ED34
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 05:44:49 +0000 (UTC)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by lists.linaro.org (Postfix) with ESMTPS id 15A583F43F
	for <linaro-mm-sig@lists.linaro.org>; Sat, 19 Nov 2022 02:46:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3jkN4YwkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3jkN4YwkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-io1-f72.google.com with SMTP id q197-20020a6b8ece000000b006de79f67604so3522843iod.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 18:46:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NEglivtmZkQ8kNQdPzvnGUR3So8064Odv8mpQAZ+cnw=;
        b=xbs08BVaCJ9LD7xL2gNTB73u32O8VBnvuUXYJDcFfdFYHYa8Y0FMiZtCyGg68BMIkY
         YkNns8ZPiFZvEJMBbvVXS+4srdsUm8Ufk0EiBZuqWbT9dNLPb/ICjs8y2UkO3PhjU84u
         l1Ui2U08suh2RguvzP0EnjoTK9b3f1fLrfo5UE2Nu8kM170MfDIneRQ+HqxClUmCk6nm
         ybBKpoKWGU5X+SIBsFczOGR5kOxtBLNrdR7OTNU6hA9PPO9qKNS94avDaAcAh/8yTAf2
         OWncHWcvmDB+L+xNPPfSBO2OQqKayJMqB4YIkXTjygD+e0G/DsbOZ7j2V8pvKQZNOruJ
         S46A==
X-Gm-Message-State: ANoB5pmb2gzX35EtM0gtnlLj1S9PWS78zOKu+2aI3x5ctbeJ1Hmh4uz/
	YoAuyLBZcsM8HK/HOvRsmdtElKXretsTq9eKM1rRFTfQ2HcL
X-Google-Smtp-Source: AA0mqf5UnF6WUtSm56dJKCfeSg3siICYMuqBo7nduQSaQZyL6u74Vo+1i5Wpj0SyyUvTDEh4kKJVD2nHhAs6HqqccKkOaDj+ORyA
MIME-Version: 1.0
X-Received: by 2002:a02:3501:0:b0:363:accc:d7e5 with SMTP id
 k1-20020a023501000000b00363acccd7e5mr4445827jaa.34.1668825998530; Fri, 18 Nov
 2022 18:46:38 -0800 (PST)
Date: Fri, 18 Nov 2022 18:46:38 -0800
In-Reply-To: <00000000000021719805d692e035@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d5b3af05edc9d445@google.com>
From: syzbot <syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com>
To: christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	gustavo@padovan.org, linaro-mm-sig-bounces@lists.linaro.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 15A583F43F
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3jkN4YwkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.72:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[007bfe0f3330f6e1e7d1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.166.72:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.696];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3jkN4YwkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: 3jkN4YwkbABkHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JUITO22QUTKFBKHFT4SS5SMTCFV7UHPE
X-Message-ID-Hash: JUITO22QUTKFBKHFT4SS5SMTCFV7UHPE
X-Mailman-Approved-At: Wed, 23 Nov 2022 05:44:24 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] inconsistent lock state in sync_info_debugfs_show
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JUITO22QUTKFBKHFT4SS5SMTCFV7UHPE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot has found a reproducer for the following issue on:

HEAD commit:    84368d882b96 Merge tag 'soc-fixes-6.1-3' of git://git.kern..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1670fb65880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248
dashboard link: https://syzkaller.appspot.com/bug?extid=007bfe0f3330f6e1e7d1
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=164376f9880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16cf0965880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/031b6e68785d/disk-84368d88.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/cff5e66b90e8/vmlinux-84368d88.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e75525784a66/bzImage-84368d88.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com

================================
WARNING: inconsistent lock state
6.1.0-rc5-syzkaller-00144-g84368d882b96 #0 Not tainted
--------------------------------
inconsistent {IN-HARDIRQ-W} -> {HARDIRQ-ON-W} usage.
syz-executor333/3645 [HC0[0]:SC0[0]:HE0:SE1] takes:
ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: spin_lock_irq include/linux/spinlock.h:375 [inline]
ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: sync_info_debugfs_show+0x31/0x200 drivers/dma-buf/sync_debug.c:147
{IN-HARDIRQ-W} state was registered at:
  lock_acquire kernel/locking/lockdep.c:5668 [inline]
  lock_acquire+0x1e3/0x630 kernel/locking/lockdep.c:5633
  __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
  _raw_spin_lock_irqsave+0x3d/0x60 kernel/locking/spinlock.c:162
  sync_timeline_debug_remove+0x29/0x1a0 drivers/dma-buf/sync_debug.c:31
  sync_timeline_free drivers/dma-buf/sw_sync.c:104 [inline]
  kref_put include/linux/kref.h:65 [inline]
  sync_timeline_put drivers/dma-buf/sw_sync.c:116 [inline]
  timeline_fence_release+0x267/0x340 drivers/dma-buf/sw_sync.c:144
  dma_fence_release+0x14b/0x690 drivers/dma-buf/dma-fence.c:559
  kref_put include/linux/kref.h:65 [inline]
  dma_fence_put include/linux/dma-fence.h:276 [inline]
  dma_fence_array_release+0x1fa/0x2d0 drivers/dma-buf/dma-fence-array.c:120
  dma_fence_release+0x14b/0x690 drivers/dma-buf/dma-fence.c:559
  kref_put include/linux/kref.h:65 [inline]
  dma_fence_put include/linux/dma-fence.h:276 [inline]
  irq_dma_fence_array_work+0xa9/0xd0 drivers/dma-buf/dma-fence-array.c:52
  irq_work_single+0x124/0x260 kernel/irq_work.c:211
  irq_work_run_list kernel/irq_work.c:242 [inline]
  irq_work_run_list+0x91/0xc0 kernel/irq_work.c:225
  irq_work_run+0x58/0xd0 kernel/irq_work.c:251
  __sysvec_irq_work+0xce/0x4e0 arch/x86/kernel/irq_work.c:22
  sysvec_irq_work+0x92/0xc0 arch/x86/kernel/irq_work.c:17
  asm_sysvec_irq_work+0x1a/0x20 arch/x86/include/asm/idtentry.h:675
  __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:160 [inline]
  _raw_spin_unlock_irq+0x29/0x50 kernel/locking/spinlock.c:202
  spin_unlock_irq include/linux/spinlock.h:400 [inline]
  sw_sync_debugfs_release+0x162/0x240 drivers/dma-buf/sw_sync.c:321
  __fput+0x27c/0xa90 fs/file_table.c:320
  task_work_run+0x16f/0x270 kernel/task_work.c:179
  ptrace_notify+0x118/0x140 kernel/signal.c:2354
  ptrace_report_syscall include/linux/ptrace.h:420 [inline]
  ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
  syscall_exit_work kernel/entry/common.c:251 [inline]
  syscall_exit_to_user_mode_prepare+0x129/0x280 kernel/entry/common.c:278
  __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
  syscall_exit_to_user_mode+0xd/0x50 kernel/entry/common.c:296
  do_syscall_64+0x46/0xb0 arch/x86/entry/common.c:86
  entry_SYSCALL_64_after_hwframe+0x63/0xcd
irq event stamp: 638
hardirqs last  enabled at (637): [<ffffffff81cc6530>] ___slab_alloc+0xca0/0x1400 mm/slub.c:3132
hardirqs last disabled at (638): [<ffffffff89f47e95>] __raw_spin_lock_irq include/linux/spinlock_api_smp.h:117 [inline]
hardirqs last disabled at (638): [<ffffffff89f47e95>] _raw_spin_lock_irq+0x45/0x50 kernel/locking/spinlock.c:170
softirqs last  enabled at (538): [<ffffffff814c1d03>] invoke_softirq kernel/softirq.c:445 [inline]
softirqs last  enabled at (538): [<ffffffff814c1d03>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
softirqs last disabled at (505): [<ffffffff814c1d03>] invoke_softirq kernel/softirq.c:445 [inline]
softirqs last disabled at (505): [<ffffffff814c1d03>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(sync_timeline_list_lock);
  <Interrupt>
    lock(sync_timeline_list_lock);

 *** DEADLOCK ***

2 locks held by syz-executor333/3645:
 #0: ffff888021f8c8b8 (&p->lock){+.+.}-{3:3}, at: seq_read_iter+0xe3/0x1280 fs/seq_file.c:182
 #1: ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: spin_lock_irq include/linux/spinlock.h:375 [inline]
 #1: ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: sync_info_debugfs_show+0x31/0x200 drivers/dma-buf/sync_debug.c:147

stack backtrace:
CPU: 1 PID: 3645 Comm: syz-executor333 Not tainted 6.1.0-rc5-syzkaller-00144-g84368d882b96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_usage_bug kernel/locking/lockdep.c:3963 [inline]
 valid_state kernel/locking/lockdep.c:3975 [inline]
 mark_lock_irq kernel/locking/lockdep.c:4178 [inline]
 mark_lock.part.0.cold+0x18/0xd8 kernel/locking/lockdep.c:4634
 mark_lock kernel/locking/lockdep.c:4598 [inline]
 mark_held_locks+0x9f/0xe0 kernel/locking/lockdep.c:4236
 __trace_hardirqs_on_caller kernel/locking/lockdep.c:4254 [inline]
 lockdep_hardirqs_on_prepare kernel/locking/lockdep.c:4321 [inline]
 lockdep_hardirqs_on_prepare+0x139/0x410 kernel/locking/lockdep.c:4273
 trace_hardirqs_on+0x31/0x160 kernel/trace/trace_preemptirq.c:49
 __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:159 [inline]
 _raw_spin_unlock_irq+0x23/0x50 kernel/locking/spinlock.c:202
 spin_unlock_irq include/linux/spinlock.h:400 [inline]
 sync_print_obj drivers/dma-buf/sync_debug.c:118 [inline]
 sync_info_debugfs_show+0xef/0x200 drivers/dma-buf/sync_debug.c:153
 seq_read_iter+0x4f9/0x1280 fs/seq_file.c:230
 seq_read+0x171/0x210 fs/seq_file.c:162
 vfs_read+0x25b/0x930 fs/read_write.c:468
 ksys_read+0x12b/0x250 fs/read_write.c:613
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f7cb1bbb049
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd52951818 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
RAX: ffffffffffffffda RBX: 00000000000f4240 RCX: 00007f7cb1bbb049
RDX: 0000000000002020 RSI: 0000000020002200 RDI: 0000000000000003
RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
R10: 00007ffd52951290 R11: 0000000000000246 R12: 000000000000e32c
R13: 00007ffd5295182c R14: 00007ffd52951840 R15: 00007ffd52951830
 </TASK>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
