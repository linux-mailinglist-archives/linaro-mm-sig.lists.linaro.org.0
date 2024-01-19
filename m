Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 434A2832B24
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 15:15:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 528403EF1D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:15:14 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id BCF5243C40
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 14:14:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b="VDmw/5dm";
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705673652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9iIxPbs0dWlzjgcaYm0qZReABojDho1rbr0/l/s8ieo=;
	b=VDmw/5dmFB8a7DjV5sQY6708zGHT8cN9da4xSjKPmDqd5JoGUoAWZFLA4iBJzYVtLoeMc0
	534O4/q85cvb0JyL4RkqR4fcFW36IeUqTLCBrV3EPttmKkeaTxQBZIvVT+hfm/hQr1U2rC
	b1Gx/QWvHOF3f7bFVi1IGm2UPpG4KrU=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 19 Jan 2024 15:13:58 +0100
Message-ID: <20240119141402.44262-3-paul@crapouillou.net>
In-Reply-To: <20240119141402.44262-1-paul@crapouillou.net>
References: <20240119141402.44262-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.00 / 15.00];
	SPAM_FLAG(5.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.589];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BCF5243C40
X-Spamd-Bar: /
Message-ID-Hash: 4KZBLM4FPOTUP2HOQEEDEJIUQUOYB2EY
X-Message-ID-Hash: 4KZBLM4FPOTUP2HOQEEDEJIUQUOYB2EY
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/6] dma-buf: udmabuf: Implement .{begin,end}_access
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KZBLM4FPOTUP2HOQEEDEJIUQUOYB2EY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Implement .begin_access() and .end_access() callbacks.

For now these functions will simply sync/flush the CPU cache when
needed.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>

---
v5: New patch
---
 drivers/dma-buf/udmabuf.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index c40645999648..a87d89b58816 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -179,6 +179,31 @@ static int end_cpu_udmabuf(struct dma_buf *buf,
 	return 0;
 }
 
+static int begin_udmabuf(struct dma_buf_attachment *attach,
+			 struct sg_table *sgt,
+			 enum dma_data_direction dir)
+{
+	struct dma_buf *buf = attach->dmabuf;
+	struct udmabuf *ubuf = buf->priv;
+	struct device *dev = ubuf->device->this_device;
+
+	dma_sync_sg_for_device(dev, sgt->sgl, sg_nents(sgt->sgl), dir);
+	return 0;
+}
+
+static int end_udmabuf(struct dma_buf_attachment *attach,
+		       struct sg_table *sgt,
+		       enum dma_data_direction dir)
+{
+	struct dma_buf *buf = attach->dmabuf;
+	struct udmabuf *ubuf = buf->priv;
+	struct device *dev = ubuf->device->this_device;
+
+	if (dir != DMA_TO_DEVICE)
+		dma_sync_sg_for_cpu(dev, sgt->sgl, sg_nents(sgt->sgl), dir);
+	return 0;
+}
+
 static const struct dma_buf_ops udmabuf_ops = {
 	.cache_sgt_mapping = true,
 	.map_dma_buf	   = map_udmabuf,
@@ -189,6 +214,8 @@ static const struct dma_buf_ops udmabuf_ops = {
 	.vunmap		   = vunmap_udmabuf,
 	.begin_cpu_access  = begin_cpu_udmabuf,
 	.end_cpu_access    = end_cpu_udmabuf,
+	.begin_access      = begin_udmabuf,
+	.end_access        = end_udmabuf,
 };
 
 #define SEALS_WANTED (F_SEAL_SHRINK)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
