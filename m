Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENkpEPtmHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B9C628795
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD6014098E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:15:37 +0000 (UTC)
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by lists.linaro.org (Postfix) with ESMTPS id 3BEA83F743
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 08:30:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b=bHgBkqpW;
	spf=pass (lists.linaro.org: domain of w15303746062@163.com designates 117.135.210.3 as permitted sender) smtp.mailfrom=w15303746062@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=n0
	3eoOtM3eHsClG29ijMHpetVoDW9xstf0etlqEH/3I=; b=bHgBkqpWxzkBp7BEs9
	fVdDHTiMq4OCJFhh4wQoWgS5Z+Xs2qAbwmfADZYtwwu/7l3T4JBVxH3PcE4SXJQK
	AbU3mTpIHauqMtbOs3pMwdubdKpP0WfJJMTeo91MCJpK6lbbLyUtGj/OnBojhtdG
	deIOR5YM5130/xGIEFJOYPQtk=
Received: from 163.com (unknown [])
	by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id _____wDnv_3a_BdqOMI7AA--.8856S2;
	Thu, 28 May 2026 16:29:18 +0800 (CST)
From: w15303746062@163.com
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Thu, 28 May 2026 16:29:12 +0800
Message-Id: <20260528082912.1051262-1-w15303746062@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDnv_3a_BdqOMI7AA--.8856S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxuF1xWF48Kw1xXw1xXw18Xwb_yoW5KFyfpF
	W3tryYkr48JF42gayIy3W7Zas3Aa1fWF4xWa92qr93Z3s0yr1xurWayFyj9rW5Gr97GryY
	qFyUJw15KFyjkrDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j5EfOUUUUU=
X-Originating-IP: [113.200.174.100]
X-CM-SenderInfo: jzrvjiatxuliiws6il2tof0z/xtbDAB7WumoX-N6FmwAA3z
X-Spamd-Bar: --
X-MailFrom: w15303746062@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A6PWHSBVLC5NAIGAZCNLBPOMVW5EP77G
X-Message-ID-Hash: A6PWHSBVLC5NAIGAZCNLBPOMVW5EP77G
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:15:28 +0000
CC: jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/prime: Fix unsupervised rb_tree corruption in drm_prime_remove_buf_handle
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A6PWHSBVLC5NAIGAZCNLBPOMVW5EP77G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[116];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[163.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w15303746062@163.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[163.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C6B9C628795
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Mingyu Wang <25181214217@stu.xidian.edu.cn>

Syzkaller fuzzer triggered a kernel panic via a WARNING in
drm_prime_destroy_file_private() due to a non-empty prime rb_tree.

The root cause is a complete lack of synchronization in the teardown
path. While the import path (drm_gem_prime_fd_to_handle) holds the
&file_priv->prime.lock during lookup and insertion, the deletion path
(drm_prime_remove_buf_handle) traverses and mutates both the 'handles'
and 'dmabufs' rb_trees without acquiring any mutex.

When multiple threads concurrently close GEM handles or interleave import
and close operations, the pointers and balance states of the rb_tree
nodes get corrupted. As a result, certain members are erased from one
tree but remain orphaned in the other. Upon process exit, the final
sanity check triggers the WARNING.

[    448.919314][T19739] ------------[ cut here ]------------
[    448.945387][T19739] WARNING: CPU: 0 PID: 19739 at drivers/gpu/drm/drm_prime.c:223 drm_prime_destroy_file_private+0x43/0x60
...
[    449.056535][T19739] Call Trace:
[    449.056544][T19739]  <TASK>
[    449.056553][T19739]  drm_file_free.part.0+0x805/0xcf0
[    449.056652][T19739]  drm_close_helper.isra.0+0x183/0x1f0
[    449.056677][T19739]  drm_release+0x1ab/0x360
[    449.056719][T19739]  __fput+0x402/0xb50
[    449.056783][T19739]  task_work_run+0x16b/0x260
[    449.056883][T19739]  exit_to_user_mode_loop+0xf9/0x130
[    449.056931][T19739]  do_syscall_64+0x424/0xfa0
[    449.056977][T19739]  entry_SYSCALL_64_after_hwframe+0x77/0x7f
[    449.057268][T19739]  </TASK>
[    449.057295][T19739] Kernel panic - not syncing: kernel: panic_on_warn set ...

Fix this by acquiring the prime_fpriv->lock mutex around the rb_tree
lookup and erasure logic. To respect the locking rules and avoid potential
deadlocks with driver-specific memory cleanups, assign the target node to
a temporary pointer and defer the dma_buf_put() and kfree() operations
until after the mutex is safely dropped.

Fixes: ea2aa97ca37a ("drm/gem: Fix GEM handle release errors")
Cc: stable@vger.kernel.org
Signed-off-by: Mingyu Wang <25181214217@stu.xidian.edu.cn>
---
 drivers/gpu/drm/drm_prime.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 9b44c78cd77f..26319c638e0f 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -190,6 +190,9 @@ void drm_prime_remove_buf_handle(struct drm_prime_file_private *prime_fpriv,
 				 uint32_t handle)
 {
 	struct rb_node *rb;
+	struct drm_prime_member *found = NULL;
+
+	mutex_lock(&prime_fpriv->lock);
 
 	rb = prime_fpriv->handles.rb_node;
 	while (rb) {
@@ -200,8 +203,7 @@ void drm_prime_remove_buf_handle(struct drm_prime_file_private *prime_fpriv,
 			rb_erase(&member->handle_rb, &prime_fpriv->handles);
 			rb_erase(&member->dmabuf_rb, &prime_fpriv->dmabufs);
 
-			dma_buf_put(member->dma_buf);
-			kfree(member);
+			found = member;
 			break;
 		} else if (member->handle < handle) {
 			rb = rb->rb_right;
@@ -209,6 +211,13 @@ void drm_prime_remove_buf_handle(struct drm_prime_file_private *prime_fpriv,
 			rb = rb->rb_left;
 		}
 	}
+	mutex_unlock(&prime_fpriv->lock);
+
+	/* Defer resource release outside the mutex to prevent deadlocks */
+	if (found) {
+		dma_buf_put(found->dma_buf);
+		kfree(found);
+	}
 }
 
 void drm_prime_init_file_private(struct drm_prime_file_private *prime_fpriv)
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
