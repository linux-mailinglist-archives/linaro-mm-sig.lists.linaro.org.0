Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CB26369EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 20:35:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C587B3EE73
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 19:35:37 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 21BFF3ED8F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 19:35:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=StbBjyKl;
	spf=pass (lists.linaro.org: domain of 3AHZ-YwkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com designates 209.85.219.202 as permitted sender) smtp.mailfrom=3AHZ-YwkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f202.google.com with SMTP id t5-20020a5b07c5000000b006dfa2102debso16860933ybq.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 11:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jLDp8vw7aMAjJeFpfKO4YBrTiEXBAR482/YtAEl8kLM=;
        b=StbBjyKlYV+4Fmi48HCaiw3/kUn+TaFFIfxysSI2GTDPFB4sGjwArYVCQo4RB9c5TX
         7fs1A+RanhrUPWfJYtvyGHz1PosxUfw5Bx6zKDtbdIooKvA4GatIoDKYGmAdREAts4is
         Ai+ArGpnq8dNBk5B3PKZJoXLMXHu9rO8mt+b0c9dGeXqUwiJEzg1l8mdwr/nPbLottoe
         +1tn1HtMzl/3eyxWwr4KK4A31t9E1O97eOi+FnVrqQIKXiahGZkWdk70j/WrGx1NpEOQ
         v/WC0RC37QYEW69ewihq+gQ+3swcSlaKxOmdT91SarBzzAHFtUsJ5CMrLBmvNZtASpkK
         OIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jLDp8vw7aMAjJeFpfKO4YBrTiEXBAR482/YtAEl8kLM=;
        b=Bh/ndVdTwpy+oKFp66wEDtK6j8ALJJUaYMGi+VcFhQZ6VSnralBk8xqktE0bWSToF2
         bFh6NbQopK4fvVM6X4OEApmcA+WZAe5nzeRpxcM0SCBV6R2jmaxBRHfzGLbJsxE2JFrE
         H3g6UPxYGU9VeVQXvwAf2/qKoJf6UnyXT4L25EiiyKDF6tliZwiPZORLSryTIu3ZnxXC
         9XIhj2kWcYNy0DEwO+TEXgBWWMG44tD0ysHRw9wV/4tUGscPOvxN0DdXFUhT+CEHSSLc
         41zv/OgAMfEdCzls6e4MEC8m8pgavW2XYQ6xP8LjMa/pCcCVsXTKWfQpR/7J90yDEX3L
         qZHw==
X-Gm-Message-State: ANoB5pnLp+Cf0KHOS5YrEy5Clnlu935T1he/SGfHsh9KrY7HMD3YfM6G
	nwgreT2PwfBcJvFgbJivvMGa9PR0tkJ9bP4=
X-Google-Smtp-Source: AA0mqf64/dZv6PYFgAQdc0HNOMo02CenM0lc/zGSzC7KJc/CKlNcE6pHRhd1zosA1sq0HjB/UDmS16gNfYq+Cl0=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a25:8249:0:b0:6dd:b521:a8f2 with SMTP id
 d9-20020a258249000000b006ddb521a8f2mr8883552ybn.380.1669232128681; Wed, 23
 Nov 2022 11:35:28 -0800 (PST)
Date: Wed, 23 Nov 2022 19:35:18 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
Message-ID: <20221123193519.3948105-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 21BFF3ED8F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3AHZ-YwkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3AHZ-YwkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.202:from];
	NEURAL_HAM(-0.00)[-0.937];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DQWNH7YJ5UCJPKLINHMEWEPFM2YHB3RW
X-Message-ID-Hash: DQWNH7YJ5UCJPKLINHMEWEPFM2YHB3RW
X-MailFrom: 3AHZ-YwkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQWNH7YJ5UCJPKLINHMEWEPFM2YHB3RW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been collecting these typo fixes for a while and it feels like
time to send them in.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/dma-buf.c | 14 +++++++-------
 include/linux/dma-buf.h   |  6 +++---
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index dd0f83ee505b..614ccd208af4 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1141,7 +1141,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_unmap_attachment, DMA_BUF);
  *
  * @dmabuf:	[in]	buffer which is moving
  *
- * Informs all attachmenst that they need to destroy and recreated all their
+ * Informs all attachments that they need to destroy and recreate all their
  * mappings.
  */
 void dma_buf_move_notify(struct dma_buf *dmabuf)
@@ -1159,11 +1159,11 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_BUF);
 /**
  * DOC: cpu access
  *
- * There are mutliple reasons for supporting CPU access to a dma buffer object:
+ * There are multiple reasons for supporting CPU access to a dma buffer object:
  *
  * - Fallback operations in the kernel, for example when a device is connected
  *   over USB and the kernel needs to shuffle the data around first before
- *   sending it away. Cache coherency is handled by braketing any transactions
+ *   sending it away. Cache coherency is handled by bracketing any transactions
  *   with calls to dma_buf_begin_cpu_access() and dma_buf_end_cpu_access()
  *   access.
  *
@@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_BUF);
  *   replace ION buffers mmap support was needed.
  *
  *   There is no special interfaces, userspace simply calls mmap on the dma-buf
- *   fd. But like for CPU access there's a need to braket the actual access,
+ *   fd. But like for CPU access there's a need to bracket the actual access,
  *   which is handled by the ioctl (DMA_BUF_IOCTL_SYNC). Note that
  *   DMA_BUF_IOCTL_SYNC can fail with -EAGAIN or -EINTR, in which case it must
  *   be restarted.
@@ -1264,10 +1264,10 @@ static int __dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
  * preparations. Coherency is only guaranteed in the specified range for the
  * specified access direction.
  * @dmabuf:	[in]	buffer to prepare cpu access for.
- * @direction:	[in]	length of range for cpu access.
+ * @direction:	[in]	direction of access.
  *
  * After the cpu access is complete the caller should call
- * dma_buf_end_cpu_access(). Only when cpu access is braketed by both calls is
+ * dma_buf_end_cpu_access(). Only when cpu access is bracketed by both calls is
  * it guaranteed to be coherent with other DMA access.
  *
  * This function will also wait for any DMA transactions tracked through
@@ -1307,7 +1307,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_begin_cpu_access, DMA_BUF);
  * actions. Coherency is only guaranteed in the specified range for the
  * specified access direction.
  * @dmabuf:	[in]	buffer to complete cpu access for.
- * @direction:	[in]	length of range for cpu access.
+ * @direction:	[in]	direction of access.
  *
  * This terminates CPU access started with dma_buf_begin_cpu_access().
  *
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 71731796c8c3..1d61a4f6db35 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -330,7 +330,7 @@ struct dma_buf {
 	 * @lock:
 	 *
 	 * Used internally to serialize list manipulation, attach/detach and
-	 * vmap/unmap. Note that in many cases this is superseeded by
+	 * vmap/unmap. Note that in many cases this is superseded by
 	 * dma_resv_lock() on @resv.
 	 */
 	struct mutex lock;
@@ -365,7 +365,7 @@ struct dma_buf {
 	 */
 	const char *name;
 
-	/** @name_lock: Spinlock to protect name acces for read access. */
+	/** @name_lock: Spinlock to protect name access for read access. */
 	spinlock_t name_lock;
 
 	/**
@@ -402,7 +402,7 @@ struct dma_buf {
 	 *   anything the userspace API considers write access.
 	 *
 	 * - Drivers may just always add a write fence, since that only
-	 *   causes unecessarily synchronization, but no correctness issues.
+	 *   causes unnecessary synchronization, but no correctness issues.
 	 *
 	 * - Some drivers only expose a synchronous userspace API with no
 	 *   pipelining across drivers. These do not set any fences for their
-- 
2.38.1.584.g0f3c55d4c2-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
