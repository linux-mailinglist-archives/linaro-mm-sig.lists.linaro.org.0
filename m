Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFLuGSddBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDAF53202D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 578CE4043E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:46 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 60631404B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 15:26:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Eg6UnIkt;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.41 as permitted sender) smtp.mailfrom=asml.silence@gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43d0deb7ad5so10405004f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777476409; x=1778081209; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pdajlfqb0Mkqw7FfTkWcBSlkNtUxKMEiU4sOjeajLqA=;
        b=Eg6UnIktGo0OGkzyQKHQZ64zGcVeL97I/w4pSOgzRclUXxALscJCwwdj+LUXjGaZcq
         ijFkyGP+L3o8WhntvaPAau8Q+DW3AbuEtB5wPh1TKXksRVat80E+HqEJ1ZsbDqMPu4/f
         5CwleYhsslc618wvJNbjz8v+MbSdq0GqKqN0NrrPLIjCUbTYy2NINCnSj3z4/3xF88qa
         vWhIg9MmMwLR5D0V1VisXWgcUCKyfaNHIlOU4725eKfJQvCQr2v7nrQmemdEo8KfJLG0
         kSXCRY3LPzOhZvV5WXQL7QWb19wPrZTq+iS+1ooaD0VgK4DDsO49n3JqX7jYm5+joxkz
         eusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777476409; x=1778081209;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pdajlfqb0Mkqw7FfTkWcBSlkNtUxKMEiU4sOjeajLqA=;
        b=b1iG96A8/51Sb+GZpudg1oH1S2vFdvGnFEi+MTcJxiRgER5xqUuGoTR7T9LD4lYvBv
         W68/qZAxjQg32cIoAoX9GPaFyi/bDC8jvQJiHn4dX+kQtA5h/cXdkPZerNsZ+dU4mg/5
         S5KmsZFp+MlyE2O07pb891DRDGcOskjUZOChx6qS9U35TNNr1ApXkNj3LJHBHgw3xMJU
         GGdxHtPnQWx/gQeWJIzmEk9y2k4V5b0+2RrIEU3tq5+ynz77K0kmqPlkMoiinVcfpp/g
         JHNX/WukXTIQ9Fbun+821HQdiNtc4kXuR5qXCWuS9Eg5VsIZpfFeyc8yNls+R0AYxGWZ
         5+WQ==
X-Forwarded-Encrypted: i=1; AFNElJ99T/ocuUkwwJy+F3TSjD4FZZVjfd8s9by8KiLS2uX9FFLR05mK2Nkt0nmV+EANyZ51z+kkVKcqv+BGqEld@lists.linaro.org
X-Gm-Message-State: AOJu0YwE+pHh4sU2QpP+VgxEuxE3bF1sKEzZP6ozy8YDmbyJvYNfhE/z
	4LbEiVYB40lQYeCui/+I0z0CnyxFMvsmn1Q4KfKJOfgWgQd3WQM6nFTn
X-Gm-Gg: AeBDieuZbCI9D+3B5Jg8+xvRBLFuAZSOGm5jYdF2idpw0YcnTgXs9sDnQR43PcV3m0s
	YONyt7CCPsOXzD79chQ6xP2ht8a5/9NCINd2Cx/cPTEr4HeQJNg2tokjgcNXB2W3MZ2CXx1/km1
	nombWnFJRqmB4aFpZwBLueV2MhlGmcDmGoFCPOMk0iJHVUG7nmKzfkfkDbDBrdD6tUHlq3DtYto
	lTL1XNVkI7Z8GjvyGTm+XlSfC3TzPoXpIJJxlgd/6b+WEUMwph2yP8bJzb98HQcyWsC6RY8dJbo
	SaJyycGWVbbe/Dk3Wnbvcdw0EZbgZDscvFqO6nH/3s4fxJVbTQ9OJcJ/O8fW5pM9YZaqcFeIOl5
	5aHtxVe8Eur4v+xVvFz0jzMQxmteCm44PPLFjieqdnihg6vpUko2T1rDVGP10xrtFhWIMknCE9u
	bvFnX7BwaTlsILRShuMYx9HfkuCFxnIaebxrhoFrzARGwf2VSoIqZ2qrUGmTeJInHpvq57XJd2i
	4zYOrMWJhwJ8bryYhKlfOTQWAUnI4ncspU3Lq4g2TlV
X-Received: by 2002:a05:6000:2002:b0:43f:e9ee:5610 with SMTP id ffacd0b85a97d-44790d12be0mr7198547f8f.43.1777476408973;
        Wed, 29 Apr 2026 08:26:48 -0700 (PDT)
Received: from 127.0.0.1localhost ([82.132.184.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b76e5c22sm6382951f8f.28.2026.04.29.08.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 08:26:48 -0700 (PDT)
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
Date: Wed, 29 Apr 2026 16:25:52 +0100
Message-ID: <559756c5e22dcfa183080a979de039910d1b896d.1777475843.git.asml.silence@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1777475843.git.asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RWTZUI2R7JDR4A4YJSFKX5I2MFIOV3I5
X-Message-ID-Hash: RWTZUI2R7JDR4A4YJSFKX5I2MFIOV3I5
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:56 +0000
CC: asml.silence@gmail.com, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 06/10] block: forward create_dmabuf_token to drivers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RWTZUI2R7JDR4A4YJSFKX5I2MFIOV3I5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3EDAF53202D
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
	NEURAL_SPAM(0.00)[0.888];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Add a trivial implementation of the create_dmabuf_token call for
block devices that forwards the call to a new blk-mq callback if it's
available.

Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
---
 block/fops.c           | 14 ++++++++++++++
 include/linux/blk-mq.h |  9 +++++++++
 2 files changed, 23 insertions(+)

diff --git a/block/fops.c b/block/fops.c
index 713a3ba3f457..3d8a48a7d645 100644
--- a/block/fops.c
+++ b/block/fops.c
@@ -951,6 +951,19 @@ static int blkdev_mmap_prepare(struct vm_area_desc *desc)
 	return generic_file_mmap_prepare(desc);
 }
 
+static int blkdev_create_dmabuf_token(struct file *file,
+				      struct io_dmabuf_token *token)
+{
+	struct request_queue *q = bdev_get_queue(file_bdev(file));
+
+	if (!(file->f_flags & O_DIRECT))
+		return -EINVAL;
+	if (!q->mq_ops || !q->mq_ops->create_dmabuf_token)
+		return -EINVAL;
+
+	return q->mq_ops->create_dmabuf_token(q, token);
+}
+
 const struct file_operations def_blk_fops = {
 	.open		= blkdev_open,
 	.release	= blkdev_release,
@@ -969,6 +982,7 @@ const struct file_operations def_blk_fops = {
 	.fallocate	= blkdev_fallocate,
 	.uring_cmd	= blkdev_uring_cmd,
 	.fop_flags	= FOP_BUFFER_RASYNC,
+	.create_dmabuf_token = blkdev_create_dmabuf_token,
 };
 
 static __init int blkdev_init(void)
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 18a2388ba581..ee31fb3ada10 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -15,6 +15,8 @@ struct blk_mq_tags;
 struct blk_flush_queue;
 struct io_comp_batch;
 
+struct io_dmabuf_token;
+
 #define BLKDEV_MIN_RQ	4
 #define BLKDEV_DEFAULT_RQ	128
 
@@ -684,6 +686,13 @@ struct blk_mq_ops {
 	 */
 	void (*show_rq)(struct seq_file *m, struct request *rq);
 #endif
+
+	/**
+	 * @create_dma_token: Create a dma token, which will be using to map
+	 * a dmabuf for IO requests.
+	 */
+	int (*create_dmabuf_token)(struct request_queue *,
+				   struct io_dmabuf_token *token);
 };
 
 /* Keep hctx_flag_name[] in sync with the definitions below */
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
