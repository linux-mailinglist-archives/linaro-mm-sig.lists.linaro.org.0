Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0E5F9428
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Oct 2022 01:53:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B2D83F56D
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Oct 2022 23:53:14 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 3CB333F55E
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Oct 2022 23:52:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CD47460DD8;
	Sun,  9 Oct 2022 23:52:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 858FDC4347C;
	Sun,  9 Oct 2022 23:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665359562;
	bh=yxGkSTZYL1lOGJSNqH0ReJY84nBjcJY52M5+93fYZ7c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rcleiAa8sz02A4ptTJnueYUay3sWYT0z3Eq1efAHM0h8QZTOW0VB0MCgE2GSYJcts
	 6IBTSBuMBxsVpA5toKlBUQtrAqB8wz1I+sW6fuxdhm1dhfcKnrLctPhnk34ucgDj/1
	 cAbsQdeLvD8s4grdyr1Mu+LXYXzlJncwfqNlqs8Sd8hUhJ6/OYbhB3dKF7RISI4/u5
	 64IcKLd/qpNj9nFq/awZXAoGdw5QphpbRu0bxH4/rzgILfaedB2LL28mEVG7+Sng7g
	 VbLOc/ntAbVsdZ6Z96XkbNpHVki/IZPbv4weg1gCycuOx4xBCPyF/0UoMlr2KnSfDc
	 +6rGayaqZCCgQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 19:51:54 -0400
Message-Id: <20221009235222.1230786-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009235222.1230786-1-sashal@kernel.org>
References: <20221009235222.1230786-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 3CB333F55E
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TAGGED_RCPT(0.00)[c80e9ef5d8bb45894db0];
	ARC_NA(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=rcleiAa8;
	spf=pass (lists.linaro.org: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Message-ID-Hash: PJ7V4VEY72CB3WP3XNV77SYUIHWLSCXU
X-Message-ID-Hash: PJ7V4VEY72CB3WP3XNV77SYUIHWLSCXU
X-MailFrom: sashal@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, syzbot+c80e9ef5d8bb45894db0@syzkaller.appspotmail.com, Gerd Hoffmann <kraxel@redhat.com>, Sasha Levin <sashal@kernel.org>, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.19 08/36] udmabuf: Set ubuf->sg = NULL if the creation of sg table fails
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PJ7V4VEY72CB3WP3XNV77SYUIHWLSCXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Vivek Kasireddy <vivek.kasireddy@intel.com>

[ Upstream commit d9c04a1b7a15b5e74b2977461d9511e497f05d8f ]

When userspace tries to map the dmabuf and if for some reason
(e.g. OOM) the creation of the sg table fails, ubuf->sg needs to be
set to NULL. Otherwise, when the userspace subsequently closes the
dmabuf fd, we'd try to erroneously free the invalid sg table from
release_udmabuf resulting in the following crash reported by syzbot:

general protection fault, probably for non-canonical address
0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 0 PID: 3609 Comm: syz-executor487 Not tainted
5.19.0-syzkaller-13930-g7ebfc85e2cd7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
Google 07/22/2022
RIP: 0010:dma_unmap_sgtable include/linux/dma-mapping.h:378 [inline]
RIP: 0010:put_sg_table drivers/dma-buf/udmabuf.c:89 [inline]
RIP: 0010:release_udmabuf+0xcb/0x4f0 drivers/dma-buf/udmabuf.c:114
Code: 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 2b 04 00 00 48 8d 7d 0c 4c
8b 63 30 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 14
02 48 89 f8 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 e2
RSP: 0018:ffffc900037efd30 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: ffffffff8cb67800 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff84ad27e0 RDI: 0000000000000000
RBP: fffffffffffffff4 R08: 0000000000000005 R09: 0000000000000000
R10: 0000000000000000 R11: 000000000008c07c R12: ffff88801fa05000
R13: ffff888073db07e8 R14: ffff888025c25440 R15: 0000000000000000
FS:  0000555555fc4300(0000) GS:ffff8880b9a00000(0000)
knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc1c0ce06e4 CR3: 00000000715e6000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 dma_buf_release+0x157/0x2d0 drivers/dma-buf/dma-buf.c:78
 __dentry_kill+0x42b/0x640 fs/dcache.c:612
 dentry_kill fs/dcache.c:733 [inline]
 dput+0x806/0xdb0 fs/dcache.c:913
 __fput+0x39c/0x9d0 fs/file_table.c:333
 task_work_run+0xdd/0x1a0 kernel/task_work.c:177
 ptrace_notify+0x114/0x140 kernel/signal.c:2353
 ptrace_report_syscall include/linux/ptrace.h:420 [inline]
 ptrace_report_syscall_exit include/linux/ptrace.h:482 [inline]
 syscall_exit_work kernel/entry/common.c:249 [inline]
 syscall_exit_to_user_mode_prepare+0x129/0x280 kernel/entry/common.c:276
 __syscall_exit_to_user_mode_work kernel/entry/common.c:281 [inline]
 syscall_exit_to_user_mode+0x9/0x50 kernel/entry/common.c:294
 do_syscall_64+0x42/0xb0 arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fc1c0c35b6b
Code: 0f 05 48 3d 00 f0 ff ff 77 45 c3 0f 1f 40 00 48 83 ec 18 89 7c 24
0c e8 63 fc ff ff 8b 7c 24 0c 41 89 c0 b8 03 00 00 00 0f 05 <48> 3d 00
f0 ff ff 77 35 44 89 c7 89 44 24 0c e8 a1 fc ff ff 8b 44
RSP: 002b:00007ffd78a06090 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
RAX: 0000000000000000 RBX: 0000000000000007 RCX: 00007fc1c0c35b6b
RDX: 0000000020000280 RSI: 0000000040086200 RDI: 0000000000000006
RBP: 0000000000000007 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000293 R12: 000000000000000c
R13: 0000000000000003 R14: 00007fc1c0cfe4a0 R15: 00007ffd78a06140
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dma_unmap_sgtable include/linux/dma-mapping.h:378 [inline]
RIP: 0010:put_sg_table drivers/dma-buf/udmabuf.c:89 [inline]
RIP: 0010:release_udmabuf+0xcb/0x4f0 drivers/dma-buf/udmabuf.c:114

Reported-by: syzbot+c80e9ef5d8bb45894db0@syzkaller.appspotmail.com
Cc: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Link: http://patchwork.freedesktop.org/patch/msgid/20220825063522.801264-1-vivek.kasireddy@intel.com
Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma-buf/udmabuf.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 38e8767ec371..bf11d32205f3 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -124,17 +124,20 @@ static int begin_cpu_udmabuf(struct dma_buf *buf,
 {
 	struct udmabuf *ubuf = buf->priv;
 	struct device *dev = ubuf->device->this_device;
+	int ret = 0;
 
 	if (!ubuf->sg) {
 		ubuf->sg = get_sg_table(dev, buf, direction);
-		if (IS_ERR(ubuf->sg))
-			return PTR_ERR(ubuf->sg);
+		if (IS_ERR(ubuf->sg)) {
+			ret = PTR_ERR(ubuf->sg);
+			ubuf->sg = NULL;
+		}
 	} else {
 		dma_sync_sg_for_cpu(dev, ubuf->sg->sgl, ubuf->sg->nents,
 				    direction);
 	}
 
-	return 0;
+	return ret;
 }
 
 static int end_cpu_udmabuf(struct dma_buf *buf,
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
