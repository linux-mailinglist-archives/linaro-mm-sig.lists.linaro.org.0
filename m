Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 861B88FC9C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 13:09:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9902640D42
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 11:09:41 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 33F0B453BE
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jun 2024 11:09:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=duOEvwmL;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1717585739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A+bpo9IhXlSNnyxVxTZI9wza03doX2paj+5rtqcioR4=;
	b=duOEvwmLl9bd8EXe/ieWKxDYIPVHIJVs32vqQ7hYjjmYfzNxBznCUE+9V8uZc71TGgu4Pg
	C8LTXVDnrE1tyki4Wf0IC1mRKHVwafp94PNFRK6SHnTinxWx+IM+xPSClfUHJCohKHIt+w
	XpMPyzrHCKx5/6AhZYsBzzyvtZ7db5Y=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed,  5 Jun 2024 13:08:40 +0200
Message-ID: <20240605110845.86740-2-paul@crapouillou.net>
In-Reply-To: <20240605110845.86740-1-paul@crapouillou.net>
References: <20240605110845.86740-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 33F0B453BE
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+a:c];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: PCVMA6T5CNF4SZEKQYC374VG5XKKKS74
X-Message-ID-Hash: PCVMA6T5CNF4SZEKQYC374VG5XKKKS74
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 1/6] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PCVMA6T5CNF4SZEKQYC374VG5XKKKS74/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This function can be used to initiate a scatter-gather DMA transfer,
where the address and size of each segment is located in one entry of
the dma_vec array.

The major difference with dmaengine_prep_slave_sg() is that it supports
specifying the lengths of each DMA transfer; as trying to override the
length of the transfer with dmaengine_prep_slave_sg() is a very tedious
process. The introduction of a new API function is also justified by the
fact that scatterlists are on their way out.

Note that dmaengine_prep_interleaved_dma() is not helpful either in that
case, as it assumes that the address of each segment will be higher than
the one of the previous segment, which we just cannot guarantee in case
of a scatter-gather transfer.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Signed-off-by: Nuno Sa <nuno.sa@analog.com>

---
v3: New patch

v5: Replace with function dmaengine_prep_slave_dma_vec(), and struct
    'dma_vec'.
    Note that at some point we will need to support cyclic transfers
    using dmaengine_prep_slave_dma_vec(). Maybe with a new "flags"
    parameter to the function?

v7:
  - Renamed *device_prep_slave_dma_vec() -> device_prep_peripheral_dma_vec();
  - Added a new flag parameter to the function as agreed between Paul
    and Vinod. I renamed the first parameter to prep_flags as it's supposed to
    be used (I think) with enum dma_ctrl_flags. I'm not really sure how that API
    can grow but I was thinking in just having a bool cyclic parameter (as the
    first intention of the flags is to support cyclic transfers) but ended up
    "respecting" the previously agreed approach.

v10:
  - Add kernel doc to dmaengine_prep_peripheral_dma_vec()
  - Remove extra flags parameter
---
 include/linux/dmaengine.h | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 752dbde4cec1..9fc03068cabc 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -160,6 +160,16 @@ struct dma_interleaved_template {
 	struct data_chunk sgl[];
 };
 
+/**
+ * struct dma_vec - DMA vector
+ * @addr: Bus address of the start of the vector
+ * @len: Length in bytes of the DMA vector
+ */
+struct dma_vec {
+	dma_addr_t addr;
+	size_t len;
+};
+
 /**
  * enum dma_ctrl_flags - DMA flags to augment operation preparation,
  *  control completion, and communicate status.
@@ -910,6 +920,10 @@ struct dma_device {
 	struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(
 		struct dma_chan *chan, unsigned long flags);
 
+	struct dma_async_tx_descriptor *(*device_prep_peripheral_dma_vec)(
+		struct dma_chan *chan, const struct dma_vec *vecs,
+		size_t nents, enum dma_transfer_direction direction,
+		unsigned long flags);
 	struct dma_async_tx_descriptor *(*device_prep_slave_sg)(
 		struct dma_chan *chan, struct scatterlist *sgl,
 		unsigned int sg_len, enum dma_transfer_direction direction,
@@ -973,6 +987,25 @@ static inline struct dma_async_tx_descriptor *dmaengine_prep_slave_single(
 						  dir, flags, NULL);
 }
 
+/**
+ * dmaengine_prep_peripheral_dma_vec() - Prepare a DMA scatter-gather descriptor
+ * @chan: The channel to be used for this descriptor
+ * @vecs: The array of DMA vectors that should be transferred
+ * @nents: The number of DMA vectors in the array
+ * @dir: Specifies the direction of the data transfer
+ * @flags: DMA engine flags
+ */
+static inline struct dma_async_tx_descriptor *dmaengine_prep_peripheral_dma_vec(
+	struct dma_chan *chan, const struct dma_vec *vecs, size_t nents,
+	enum dma_transfer_direction dir, unsigned long flags)
+{
+	if (!chan || !chan->device || !chan->device->device_prep_peripheral_dma_vec)
+		return NULL;
+
+	return chan->device->device_prep_peripheral_dma_vec(chan, vecs, nents,
+							    dir, flags);
+}
+
 static inline struct dma_async_tx_descriptor *dmaengine_prep_slave_sg(
 	struct dma_chan *chan, struct scatterlist *sgl,	unsigned int sg_len,
 	enum dma_transfer_direction dir, unsigned long flags)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
