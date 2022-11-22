Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2F633F58
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 15:51:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D7F63ED11
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 14:51:27 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 26D533E9D6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 14:51:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Kpk19b2G;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.47) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f47.google.com with SMTP id s5so7876497wru.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 06:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BvxfKUBEbZtm/9q2PXpeTYs+sX6KUk9fkZeJnGMjw9w=;
        b=Kpk19b2GUmYhNh3v56qB0t7QkAgI8q0rTt8RSQvpWwpYb7JQmeuyh2EvbDjSGFjSdL
         sGgHsmN+j3Pp+opqB/x5/xejEg0XZiAgyx8+nXMm49lyYbJjQLqaxdaPRUhjFedxh8r/
         OOY7q7ShSLkPHxt23hrkaRf8JNS1rOEYFFQ38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvxfKUBEbZtm/9q2PXpeTYs+sX6KUk9fkZeJnGMjw9w=;
        b=Sr6nicCIhd+Vh/f/g1f8T/0A86HYPyjWwvNdu8sWSiD0R3lMDhdhBNIjOhqu6Iz1RO
         L7Piad1lTh01xXOkcaKkO7HPuVnDIFRZmLI8a5Kkzp83aQ9BDrjggvw+UUX7N/PcP+k4
         V1wryduTG9nOhkCICrXZ6br71WH1ukzunSqQda+yv7NLbCHnMTJKZ56oXLWkFilVeFma
         OMH8vLBp0XMNcdJxAulmBEkdpJQl5EUd8fyU4TV5YFEOolBMvAzzfFgD+j9qQ9/GmyMw
         dczLyZAtjpI8TpCY6HWU8Db+5TJF2vxPD+vZqFaUddqtZNlX4FQzWdEdBrl1pTlyhzzK
         EXaA==
X-Gm-Message-State: ANoB5plCqiRUMB72dxsfy34v4k2LyPvwLF/Hbzu30rDu3yaK09vQXs+s
	OR/rfpLyD6obZ1kgp2Ws2tqHGg==
X-Google-Smtp-Source: AA0mqf5vH7ZJ1XkzTC/CSVVQJm4aSKBNGCyrRsjp98SHsh8Sm737KIa/Vbj8njUNZ4F/ML+KAl+5yw==
X-Received: by 2002:a5d:6b46:0:b0:236:56a6:823e with SMTP id x6-20020a5d6b46000000b0023656a6823emr14295283wrw.495.1669128677199;
        Tue, 22 Nov 2022 06:51:17 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id s2-20020adff802000000b00241c712916fsm12896669wrp.0.2022.11.22.06.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 06:51:16 -0800 (PST)
Date: Tue, 22 Nov 2022 15:51:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: syzbot <syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com>
Message-ID: <Y3zh4naNB+nZ0YTd@phenom.ffwll.local>
Mail-Followup-To: syzbot <syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com>,
	christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	gustavo@padovan.org, linaro-mm-sig-bounces@lists.linaro.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
References: <00000000000021719805d692e035@google.com>
 <000000000000d5b3af05edc9d445@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000d5b3af05edc9d445@google.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Rspamd-Queue-Id: 26D533E9D6
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-wr1-f47.google.com:rdns,mail-wr1-f47.google.com:helo];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[212.51.149.33:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[007bfe0f3330f6e1e7d1];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.47:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5SWDKSRJUHNIQSEXO4FN3QLL5NLEG4RW
X-Message-ID-Hash: 5SWDKSRJUHNIQSEXO4FN3QLL5NLEG4RW
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, dri-devel@lists.freedesktop.org, gustavo@padovan.org, linaro-mm-sig-bounces@lists.linaro.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] inconsistent lock state in sync_info_debugfs_show
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5SWDKSRJUHNIQSEXO4FN3QLL5NLEG4RW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 18, 2022 at 06:46:38PM -0800, syzbot wrote:
> syzbot has found a reproducer for the following issue on:
> 
> HEAD commit:    84368d882b96 Merge tag 'soc-fixes-6.1-3' of git://git.kern..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=1670fb65880000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248
> dashboard link: https://syzkaller.appspot.com/bug?extid=007bfe0f3330f6e1e7d1
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=164376f9880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16cf0965880000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/031b6e68785d/disk-84368d88.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/cff5e66b90e8/vmlinux-84368d88.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/e75525784a66/bzImage-84368d88.xz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com
> 
> ================================
> WARNING: inconsistent lock state
> 6.1.0-rc5-syzkaller-00144-g84368d882b96 #0 Not tainted
> --------------------------------
> inconsistent {IN-HARDIRQ-W} -> {HARDIRQ-ON-W} usage.
> syz-executor333/3645 [HC0[0]:SC0[0]:HE0:SE1] takes:
> ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: spin_lock_irq include/linux/spinlock.h:375 [inline]
> ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: sync_info_debugfs_show+0x31/0x200 drivers/dma-buf/sync_debug.c:147
> {IN-HARDIRQ-W} state was registered at:
>   lock_acquire kernel/locking/lockdep.c:5668 [inline]
>   lock_acquire+0x1e3/0x630 kernel/locking/lockdep.c:5633
>   __raw_spin_lock_irqsave include/linux/spinlock_api_smp.h:110 [inline]
>   _raw_spin_lock_irqsave+0x3d/0x60 kernel/locking/spinlock.c:162
>   sync_timeline_debug_remove+0x29/0x1a0 drivers/dma-buf/sync_debug.c:31
>   sync_timeline_free drivers/dma-buf/sw_sync.c:104 [inline]
>   kref_put include/linux/kref.h:65 [inline]
>   sync_timeline_put drivers/dma-buf/sw_sync.c:116 [inline]
>   timeline_fence_release+0x267/0x340 drivers/dma-buf/sw_sync.c:144
>   dma_fence_release+0x14b/0x690 drivers/dma-buf/dma-fence.c:559

Do we need to just generally push all dma_fence_release finalization to an
irq work to untangle this mess once and for all? Or is this not just plain
old recursion? Christian, any good ideas?
-Daniel

>   kref_put include/linux/kref.h:65 [inline]
>   dma_fence_put include/linux/dma-fence.h:276 [inline]
>   dma_fence_array_release+0x1fa/0x2d0 drivers/dma-buf/dma-fence-array.c:120
>   dma_fence_release+0x14b/0x690 drivers/dma-buf/dma-fence.c:559
>   kref_put include/linux/kref.h:65 [inline]
>   dma_fence_put include/linux/dma-fence.h:276 [inline]
>   irq_dma_fence_array_work+0xa9/0xd0 drivers/dma-buf/dma-fence-array.c:52
>   irq_work_single+0x124/0x260 kernel/irq_work.c:211
>   irq_work_run_list kernel/irq_work.c:242 [inline]
>   irq_work_run_list+0x91/0xc0 kernel/irq_work.c:225
>   irq_work_run+0x58/0xd0 kernel/irq_work.c:251
>   __sysvec_irq_work+0xce/0x4e0 arch/x86/kernel/irq_work.c:22
>   sysvec_irq_work+0x92/0xc0 arch/x86/kernel/irq_work.c:17
>   asm_sysvec_irq_work+0x1a/0x20 arch/x86/include/asm/idtentry.h:675
>   __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:160 [inline]
>   _raw_spin_unlock_irq+0x29/0x50 kernel/locking/spinlock.c:202
>   spin_unlock_irq include/linux/spinlock.h:400 [inline]
>   sw_sync_debugfs_release+0x162/0x240 drivers/dma-buf/sw_sync.c:321
>   __fput+0x27c/0xa90 fs/file_table.c:320
>   task_work_run+0x16f/0x270 kernel/task_work.c:179
>   ptrace_notify+0x118/0x140 kernel/signal.c:2354
>   ptrace_report_syscall include/linux/ptrace.h:420 [inline]
>   ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
>   syscall_exit_work kernel/entry/common.c:251 [inline]
>   syscall_exit_to_user_mode_prepare+0x129/0x280 kernel/entry/common.c:278
>   __syscall_exit_to_user_mode_work kernel/entry/common.c:283 [inline]
>   syscall_exit_to_user_mode+0xd/0x50 kernel/entry/common.c:296
>   do_syscall_64+0x46/0xb0 arch/x86/entry/common.c:86
>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
> irq event stamp: 638
> hardirqs last  enabled at (637): [<ffffffff81cc6530>] ___slab_alloc+0xca0/0x1400 mm/slub.c:3132
> hardirqs last disabled at (638): [<ffffffff89f47e95>] __raw_spin_lock_irq include/linux/spinlock_api_smp.h:117 [inline]
> hardirqs last disabled at (638): [<ffffffff89f47e95>] _raw_spin_lock_irq+0x45/0x50 kernel/locking/spinlock.c:170
> softirqs last  enabled at (538): [<ffffffff814c1d03>] invoke_softirq kernel/softirq.c:445 [inline]
> softirqs last  enabled at (538): [<ffffffff814c1d03>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
> softirqs last disabled at (505): [<ffffffff814c1d03>] invoke_softirq kernel/softirq.c:445 [inline]
> softirqs last disabled at (505): [<ffffffff814c1d03>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
> 
> other info that might help us debug this:
>  Possible unsafe locking scenario:
> 
>        CPU0
>        ----
>   lock(sync_timeline_list_lock);
>   <Interrupt>
>     lock(sync_timeline_list_lock);
> 
>  *** DEADLOCK ***
> 
> 2 locks held by syz-executor333/3645:
>  #0: ffff888021f8c8b8 (&p->lock){+.+.}-{3:3}, at: seq_read_iter+0xe3/0x1280 fs/seq_file.c:182
>  #1: ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: spin_lock_irq include/linux/spinlock.h:375 [inline]
>  #1: ffffffff8d295c38 (sync_timeline_list_lock){?...}-{2:2}, at: sync_info_debugfs_show+0x31/0x200 drivers/dma-buf/sync_debug.c:147
> 
> stack backtrace:
> CPU: 1 PID: 3645 Comm: syz-executor333 Not tainted 6.1.0-rc5-syzkaller-00144-g84368d882b96 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
>  print_usage_bug kernel/locking/lockdep.c:3963 [inline]
>  valid_state kernel/locking/lockdep.c:3975 [inline]
>  mark_lock_irq kernel/locking/lockdep.c:4178 [inline]
>  mark_lock.part.0.cold+0x18/0xd8 kernel/locking/lockdep.c:4634
>  mark_lock kernel/locking/lockdep.c:4598 [inline]
>  mark_held_locks+0x9f/0xe0 kernel/locking/lockdep.c:4236
>  __trace_hardirqs_on_caller kernel/locking/lockdep.c:4254 [inline]
>  lockdep_hardirqs_on_prepare kernel/locking/lockdep.c:4321 [inline]
>  lockdep_hardirqs_on_prepare+0x139/0x410 kernel/locking/lockdep.c:4273
>  trace_hardirqs_on+0x31/0x160 kernel/trace/trace_preemptirq.c:49
>  __raw_spin_unlock_irq include/linux/spinlock_api_smp.h:159 [inline]
>  _raw_spin_unlock_irq+0x23/0x50 kernel/locking/spinlock.c:202
>  spin_unlock_irq include/linux/spinlock.h:400 [inline]
>  sync_print_obj drivers/dma-buf/sync_debug.c:118 [inline]
>  sync_info_debugfs_show+0xef/0x200 drivers/dma-buf/sync_debug.c:153
>  seq_read_iter+0x4f9/0x1280 fs/seq_file.c:230
>  seq_read+0x171/0x210 fs/seq_file.c:162
>  vfs_read+0x25b/0x930 fs/read_write.c:468
>  ksys_read+0x12b/0x250 fs/read_write.c:613
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7f7cb1bbb049
> Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffd52951818 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> RAX: ffffffffffffffda RBX: 00000000000f4240 RCX: 00007f7cb1bbb049
> RDX: 0000000000002020 RSI: 0000000020002200 RDI: 0000000000000003
> RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
> R10: 00007ffd52951290 R11: 0000000000000246 R12: 000000000000e32c
> R13: 00007ffd5295182c R14: 00007ffd52951840 R15: 00007ffd52951830
>  </TASK>
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
