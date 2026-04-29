Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNEQMnRdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B87A53204D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63F8A401DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:16:03 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id C9E1D405CF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:27:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MehfU+C6;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43d73422431so11812578f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476420; x=1778081220; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Okho95RNKRmNJtlBZrtRfvb3jbBLTZKlsmbr0Q4pBPI=;
        b=MehfU+C6i/msKxw0DaHa6ITv6oBAlLfHwSrWAtW82kwTJ2+T6B+Xcp63v2ROqKTpC4
         hHufz7fhN73wPiRA8uMEniSMmhGF0/c2mxJPUCsNr55sf+KZaTm4wuCpMWn1hX/b/UPB
         Ltr9br34eqcRZ+8Cb4c/aUIkSOLb6mRLRjn/MJeUWEWidyhMEj97+KhS63fL2uBvba/T
         G1EpzCNl1WdjyWPyuP8fGzjR+iv9U91uhdVMA0u3iNlhJ32WJjapvizqB5rqQve5GisD
         eOR1CzYzZdYcK+coumqhWP+8FXpEWsiNOlG18InY2K2W+WMQHBggYoYgmIMpCw/biBrB
         /rOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476420; x=1778081220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Okho95RNKRmNJtlBZrtRfvb3jbBLTZKlsmbr0Q4pBPI=;
        b=DI08T9HyajsEIjkLgMnFXO3NkWE3Jz46PiWgTXNI+KPFB8Wefl5Zbr6uEwkCBG3WGf
         EkGsciEY2wX4UYpcLPDqj4BPYzM/mHkDsPBJfFHN6TKBZN+spsGIStlAQWXlPXvjw/HY
         A5a7tT2xnkyKRed18aIuM17CfQbuQZWBRwO8i0fsggubLw9Eu9iBT7nhcWb2orddrz46
         cAtImD6rLhLmfdgQUudbJBSgP25jzbAQiIMwdGga5K0GCN4B9dltqrZnXZyu0tSyL1HI
         wqM9mSuePT0mtPnEms1YrVkxfrE+o2sDuKIuxs1LBkeU+3QAu/4hY/wpfZAywsvJ50mR
         QvIw==
X-Forwarded-Encrypted: i=1; AFNElJ+CBtXRLVPGg3ReL+oQQfzy6Qy1QBYoh47XGP0qcx1rUj+RX4yrwLxXfaSqBni3I5H7w7hqU5Y1h6dyM541@lists.linaro.org
X-Gm-Message-State: AOJu0YxATYVucHcqO8bAdpExiGLo0thhhLIkTFJY4fL5cY05pVJ831lt
	GYuTPoI+2z6nRskrfM7VEeRMwtBE6k6ANeLbz9GUenPIWmxCsglMAdMp
X-Gm-Gg: AeBDietdRfj3GV5yGzbY65G+7iF3ayLN5rd5Gf8lPneB8rrsbgz9je0EldkA6z6CpnX
	XHO+sA6WIZtstbXoZjRT1vr800VOMSrNqU4ui8oxF++nSXfbUs7BtM2xK/flqEZmxzLk3Ito+/d
	rSviYYHEVRlEEtTMDNkXidQWptq9jYInpqRtFC2Vc+nvOjB7nytDsdqEZYEoBW1fym/8p5LrXiJ
	6Q16gtq+jP9Iaoc0x5jVBaQAco6YcRGlI0I2Yd/NBAfXeO6xD2J4z07bINGO+djzs+3dI+9/ms+
	YFWXh1p4Thero3j0n9nfNp96H39PlfM1K99nGAIKGugkW8IBg87V0+mvzUcCpYs+/BxB2KgPM+b
	6W5wYz+uV5zt4yC8MVm7cVqjkZEH+m/cFOyGHeziKPK1sds8c16hhJz9OPqA9w8zwrk/5f69z33
	/chz7CLne6JKPfcn2jfgGwo03JQcQiI/HB99DMSTkKRlx+vs2QImSopUgr1o1juWHL/mmww7gN8
	YZ87mr+McYwgMk64T0gXJxDMAwP0vUD4S0q22WoQ7gD
X-Received: by 2002:a05:6000:1a89:b0:43d:7d6f:f529 with SMTP id ffacd0b85a97d-44790a325e5mr7826316f8f.31.1777476419464;
        Wed, 29 Apr 2026 08:26:59 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:58 -0700 (PDT)
From: Pavel Begunkov <asml.silence@gmail.com>
To: Jens Axboe <axboe@kernel.dk>,
	Keith Busch <kbusch@kernel.org>,
	Christoph Hellwig <hch@lst.de>,
	Sagi Grimberg <sagi@grimberg.me>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-fsdevel@vger.kernel.org,
	io-uring@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 29 Apr 2026 16:25:54 +0100
Message-ID: <881422d8d613a8370ed98b158d2b57b46bb37230.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GC2LUHBNPDRLDW6SCUAKKA37K2VJJ52Q
X-Message-ID-Hash: GC2LUHBNPDRLDW6SCUAKKA37K2VJJ52Q
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:55 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 08/10] io_uring/rsrc: introduce buf registration structure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GC2LUHBNPDRLDW6SCUAKKA37K2VJJ52Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4B87A53204D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[331];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,samsung.com,intel.com,nvidia.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.904];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

In preparation to following changes, instead of passing an iovec for
buffer registration introduce a new structure. It'll be moved to uapi
later, but for now it's initialised early from a user provided iovec.

Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
---
 io_uring/rsrc.c | 50 +++++++++++++++++++++++++++++++++----------------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/io_uring/rsrc.c b/io_uring/rsrc.c
index c4a7a77d1ee9..ba00238941ed 100644
--- a/io_uring/rsrc.c
+++ b/io_uring/rsrc.c
@@ -27,8 +27,14 @@ struct io_rsrc_update {
 	u32				offset;
 };
 
+struct io_uring_regbuf_desc {
+	__u64 uaddr;
+	__u64 size;
+};
+
 static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
-			struct iovec *iov, struct page **last_hpage);
+					struct io_uring_regbuf_desc *desc,
+					struct page **last_hpage);
 
 /* only define max */
 #define IORING_MAX_FIXED_FILES	(1U << 20)
@@ -36,6 +42,15 @@ static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
 
 #define IO_CACHED_BVECS_SEGS	32
 
+static void io_iov_to_regbuf_desc(const struct iovec *iov,
+				  struct io_uring_regbuf_desc *desc)
+{
+	*desc = (struct io_uring_regbuf_desc) {
+		.uaddr = (u64)iov->iov_base,
+		.size = iov->iov_len,
+	};
+}
+
 int __io_account_mem(struct user_struct *user, unsigned long nr_pages)
 {
 	unsigned long page_limit, cur_pages, new_pages;
@@ -291,6 +306,7 @@ static int __io_sqe_buffers_update(struct io_ring_ctx *ctx,
 		return -EINVAL;
 
 	for (done = 0; done < nr_args; done++) {
+		struct io_uring_regbuf_desc desc;
 		struct io_rsrc_node *node;
 		u64 tag = 0;
 
@@ -304,7 +320,9 @@ static int __io_sqe_buffers_update(struct io_ring_ctx *ctx,
 			err = -EFAULT;
 			break;
 		}
-		node = io_sqe_buffer_register(ctx, iov, &last_hpage);
+
+		io_iov_to_regbuf_desc(iov, &desc);
+		node = io_sqe_buffer_register(ctx, &desc, &last_hpage);
 		if (IS_ERR(node)) {
 			err = PTR_ERR(node);
 			break;
@@ -760,27 +778,27 @@ bool io_check_coalesce_buffer(struct page **page_array, int nr_pages,
 }
 
 static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
-						   struct iovec *iov,
-						   struct page **last_hpage)
+					struct io_uring_regbuf_desc *desc,
+					struct page **last_hpage)
 {
+	unsigned long uaddr = (unsigned long)desc->uaddr;
+	size_t size = desc->size;
 	struct io_mapped_ubuf *imu = NULL;
 	struct page **pages = NULL;
 	struct io_rsrc_node *node;
 	unsigned long off;
-	size_t size;
 	int ret, nr_pages, i;
 	struct io_imu_folio_data data;
 	bool coalesced = false;
 
-	if (!iov->iov_base) {
-		if (iov->iov_len)
+	if (!uaddr) {
+		if (size)
 			return ERR_PTR(-EFAULT);
 		/* remove the buffer without installing a new one */
 		return NULL;
 	}
 
-	ret = io_validate_user_buf_range((unsigned long)iov->iov_base,
-					 iov->iov_len);
+	ret = io_validate_user_buf_range(uaddr, size);
 	if (ret)
 		return ERR_PTR(ret);
 
@@ -789,8 +807,7 @@ static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
 		return ERR_PTR(-ENOMEM);
 
 	ret = -ENOMEM;
-	pages = io_pin_pages((unsigned long) iov->iov_base, iov->iov_len,
-				&nr_pages);
+	pages = io_pin_pages(uaddr, size, &nr_pages);
 	if (IS_ERR(pages)) {
 		ret = PTR_ERR(pages);
 		pages = NULL;
@@ -812,10 +829,9 @@ static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
 	if (ret)
 		goto done;
 
-	size = iov->iov_len;
 	/* store original address for later verification */
-	imu->ubuf = (unsigned long) iov->iov_base;
-	imu->len = iov->iov_len;
+	imu->ubuf = uaddr;
+	imu->len = size;
 	imu->folio_shift = PAGE_SHIFT;
 	imu->release = io_release_ubuf;
 	imu->priv = imu;
@@ -825,7 +841,7 @@ static struct io_rsrc_node *io_sqe_buffer_register(struct io_ring_ctx *ctx,
 		imu->folio_shift = data.folio_shift;
 	refcount_set(&imu->refs, 1);
 
-	off = (unsigned long)iov->iov_base & ~PAGE_MASK;
+	off = uaddr & ~PAGE_MASK;
 	if (coalesced)
 		off += data.first_folio_page_idx << PAGE_SHIFT;
 
@@ -878,6 +894,7 @@ int io_sqe_buffers_register(struct io_ring_ctx *ctx, void __user *arg,
 		memset(iov, 0, sizeof(*iov));
 
 	for (i = 0; i < nr_args; i++) {
+		struct io_uring_regbuf_desc desc;
 		struct io_rsrc_node *node;
 		u64 tag = 0;
 
@@ -901,7 +918,8 @@ int io_sqe_buffers_register(struct io_ring_ctx *ctx, void __user *arg,
 			}
 		}
 
-		node = io_sqe_buffer_register(ctx, iov, &last_hpage);
+		io_iov_to_regbuf_desc(iov, &desc);
+		node = io_sqe_buffer_register(ctx, &desc, &last_hpage);
 		if (IS_ERR(node)) {
 			ret = PTR_ERR(node);
 			break;
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
