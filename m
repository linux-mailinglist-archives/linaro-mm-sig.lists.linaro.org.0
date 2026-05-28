Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMhDEg1nHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D86287A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 055CA40996
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:15:56 +0000 (UTC)
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by lists.linaro.org (Postfix) with ESMTPS id 8FDDB401C5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 13:31:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b="Vc/fRPeq";
	spf=pass (lists.linaro.org: domain of w15303746062@163.com designates 117.135.210.3 as permitted sender) smtp.mailfrom=w15303746062@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=8J
	+dUm9W37rXxgShjP2ChFk+3+g0TSrBqH/jssS5uR4=; b=Vc/fRPeqtFFv+FdT8R
	3yPCC3GKPUmoFXvYFbHkWnrzYLOSpRuEGoZZV3tRq/td2BTpk6ayTJxFsnYPTM53
	L0/6IcnNJLKyzF82Kf6Ob/gErvzvqCAZIIlgS/aRAKuZGJsC/d5xQn77L3ZVYJ3+
	PSjfvzRQQMrZyYuc7ddOWsB2I=
Received: from 163.com (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgD3v0M_QxhqpAnRFQ--.101S2;
	Thu, 28 May 2026 21:29:39 +0800 (CST)
From: w15303746062@163.com
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Thu, 28 May 2026 21:29:32 +0800
Message-Id: <20260528132932.1078483-1-w15303746062@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
References: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
MIME-Version: 1.0
X-CM-TRANSID: PygvCgD3v0M_QxhqpAnRFQ--.101S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZFyUWw1DCw43KFyDuFWDXFb_yoW5XFy3pr
	W3Wryqyr4vyF1Fga42y3WxXF93ua1fJFW7JFW7K39av34Yvr1fCryIyayIkrWUGr93XF4Y
	qF18JryYyF1j93DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j5EfOUUUUU=
X-Originating-IP: [113.200.174.100]
X-CM-SenderInfo: jzrvjiatxuliiws6il2tof0z/xtbC5AOBZWoYQ0MN5gAA3a
X-Spamd-Bar: --
X-MailFrom: w15303746062@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5MEKEZ6I6M6VRNC6OJMFLKSFHNJVOQDD
X-Message-ID-Hash: 5MEKEZ6I6M6VRNC6OJMFLKSFHNJVOQDD
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:15:29 +0000
CC: jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/prime: fix dangling dmabuf entries after handle release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5MEKEZ6I6M6VRNC6OJMFLKSFHNJVOQDD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[111];
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
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[163.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w15303746062@163.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[163.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E20D86287A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Mingyu Wang <25181214217@stu.xidian.edu.cn>

When a GEM handle already exists in the drm_prime_file_private, repeated
calls to DRM_IOCTL_PRIME_HANDLE_TO_FD can cause drm_prime_add_buf_handle()
to insert multiple entries with the same handle into the handles rb_tree.
Because the insertion walk moves left on equality, duplicate keys are
structurally accepted by the tree.

Later, when the handle is released via drm_gem_release() ->
drm_gem_object_release_handle() -> drm_prime_remove_buf_handle(), the
latter iterates the handles tree, removes the first matching node, and
breaks out of the loop. Any remaining duplicate nodes that share the
same handle are left orphaned in the dmabufs tree - they are no longer
reachable through the handles tree and are never freed.

When the drm file is finally closed, drm_prime_destroy_file_private()
triggers:

	WARN_ON(!RB_EMPTY_ROOT(&prime_fpriv->dmabufs));

because the dmabufs tree is still non-empty. With CONFIG_PANIC_ON_WARN
this becomes a kernel panic:

	------------[ cut here ]------------
	WARNING: CPU: 0 PID: 19739 at drivers/gpu/drm/drm_prime.c:223 drm_prime_destroy_file_private+0x43/0x60
	...
	Kernel panic - not syncing: kernel: panic_on_warn set ...

Fix this by restarting the lookup from the root of the handles tree
after each successful removal, so that all duplicate nodes for the given
handle are erased. The caller (drm_gem_object_release_handle) already
holds prime_fpriv->lock, so this does not change the locking strategy.

Signed-off-by: Mingyu Wang <25181214217@stu.xidian.edu.cn>
---
Changes in v2:
 - Drop the unnecessary mutex_lock addition, as the caller (drm_gem_object_release_handle) already holds the lock.
 - Rewrite the commit message to accurately reflect the root cause (duplicate handle insertions) rather than an assumed lack of synchronization.
 - Restart the rb_tree lookup from the root instead of breaking the loop to ensure all orphaned duplicate nodes are thoroughly removed.

 drivers/gpu/drm/drm_prime.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 9b44c78cd77f..dc28df1c6698 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -202,7 +202,10 @@ void drm_prime_remove_buf_handle(struct drm_prime_file_private *prime_fpriv,
 
 			dma_buf_put(member->dma_buf);
 			kfree(member);
-			break;
+			/* Duplicate handles may exist; restart search from root
+			 * to guarantee removal of all matching entries.
+			 */
+			rb = prime_fpriv->handles.rb_node;
 		} else if (member->handle < handle) {
 			rb = rb->rb_right;
 		} else {
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
