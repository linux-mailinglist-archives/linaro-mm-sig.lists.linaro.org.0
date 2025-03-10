Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B5EA5939D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:08:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3983444740
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:08:56 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 0FB8944740
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=c4uygRPz;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7F3D6A458B2;
	Mon, 10 Mar 2025 12:01:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3DF7C4CEED;
	Mon, 10 Mar 2025 12:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608403;
	bh=bMCIvn+7jf6RMiYjEqkNRC/cCXSSxQerkW6ogfdek4M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c4uygRPz6bHzOv7JaNd0BKTZdiJEeNNcAfN7JlO1sp451josGYGwOPeVSWBgd+N12
	 QOw5/LBuUY8o2XXn8mk3aPWeFcHLDfF4dARIrSn4peA4LCdlIglwRYGe80L9TOm5Nh
	 fvWbAvaafZU7hsRYue9WrYK6wXtSF1uVl//tLeDIrXiOtET1ST1idAgk0sOcpN66Qo
	 XMSEACHHxWrEhXDsq2mFwDakCRpfhdwUZuF+V9Ym0SbSNxk+GszSTQGzQutE5uF9Dj
	 6rEwFHnGHfJlI3b/8CaV0AU7g2mk6SMB2CX3lBmI1fBYXzaIJa5H7iLWESsMAH0nBP
	 iQ7NEvKYLtyYw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:15 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-9-2984c1bc9312@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
In-Reply-To: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1990; i=mripard@kernel.org;
 h=from:subject:message-id; bh=bMCIvn+7jf6RMiYjEqkNRC/cCXSSxQerkW6ogfdek4M=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm5t/yVnmCnbdWIBb4tvabPfyl9udfO64jiO/quN4
 GNJyz/dUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgInsOsLIcPDV65S2uVZWc348
 +bw4wjdK8HDKtbceyZUZ2688natTF8zI8LhqgYHRIbd71bsl7t4JEb5RWWed883UeuOfx6vX9BW
 8ZwUA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0FB8944740
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: YBZZGNAPNJBWQBITVSIYOINARL7XCKJE
X-Message-ID-Hash: YBZZGNAPNJBWQBITVSIYOINARL7XCKJE
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 09/12] dma-buf: Clear cgroup accounting on release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YBZZGNAPNJBWQBITVSIYOINARL7XCKJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to clean thing up when dma-heaps will allocate and register
buffers in the dev cgroup, let's uncharge a released buffer for any
(optional) cgroup controller.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/dma-buf.c | 7 +++++++
 include/linux/dma-buf.h   | 5 +++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 5baa83b855156516a0a766bee0789b122473efb3..a95eef17f193454b018dc8177ddfd434d7b64473 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -11,10 +11,11 @@
  * refining of this idea.
  */
 
 #include <linux/fs.h>
 #include <linux/slab.h>
+#include <linux/cgroup_dmem.h>
 #include <linux/dma-buf.h>
 #include <linux/dma-fence.h>
 #include <linux/dma-fence-unwrap.h>
 #include <linux/anon_inodes.h>
 #include <linux/export.h>
@@ -97,10 +98,16 @@ static void dma_buf_release(struct dentry *dentry)
 	 * * dmabuf->cb_in/out.active are non-0 despite no pending fence callback
 	 */
 	BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
 
 	dma_buf_stats_teardown(dmabuf);
+
+#ifdef CONFIG_CGROUP_DMEM
+	if (dmabuf->cgroup_pool)
+		dmem_cgroup_uncharge(dmabuf->cgroup_pool, dmabuf->size);
+#endif
+
 	dmabuf->ops->release(dmabuf);
 
 	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
 		dma_resv_fini(dmabuf->resv);
 
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 36216d28d8bdc01a9c9c47e27c392413f7f6c5fb..111ca5a738ae0a816ba1551313dfb0a958720b6c 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -437,10 +437,15 @@ struct dma_buf {
 		struct dma_fence_cb cb;
 		wait_queue_head_t *poll;
 
 		__poll_t active;
 	} cb_in, cb_out;
+
+#ifdef CONFIG_CGROUP_DMEM
+	struct dmem_cgroup_pool_state *cgroup_pool;
+#endif
+
 #ifdef CONFIG_DMABUF_SYSFS_STATS
 	/**
 	 * @sysfs_entry:
 	 *
 	 * For exposing information about this buffer in sysfs. See also

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
