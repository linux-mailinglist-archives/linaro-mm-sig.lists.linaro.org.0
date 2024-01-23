Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ECD839BE6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 23:12:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 287B943F00
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 22:12:46 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lists.linaro.org (Postfix) with ESMTPS id 2ABF940B2F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 22:12:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b="vmty/q4l";
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=afd@ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40NMCTA0037452;
	Tue, 23 Jan 2024 16:12:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1706047949;
	bh=O9hVuXwF6nE6rUWyrB9U3f/wPgQjIzOpQGzpiCphLH8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=vmty/q4lJum4ChM0nmBfE+luuoEk2v+xFJ/dc2MuxnlqJrr13o/nP8dypXgK4YJ0Q
	 Sl0BdC2J0Jpps1MxHqBt2QosGfOM0iA/vzGTKRUvNUEvrkoLTqf/a3vdUC5nQa/uK1
	 UwapsJ4hae9RC3mM+ATs9H7p5bYqqzdLK1RTo0DI=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40NMCTK9024752
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 23 Jan 2024 16:12:29 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 23
 Jan 2024 16:12:29 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 23 Jan 2024 16:12:29 -0600
Received: from lelvsmtp6.itg.ti.com ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40NMCSuT068795;
	Tue, 23 Jan 2024 16:12:29 -0600
From: Andrew Davis <afd@ti.com>
To: Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
        Paul Cercueil
	<paul@crapouillou.net>
Date: Tue, 23 Jan 2024 16:12:26 -0600
Message-ID: <20240123221227.868341-2-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240123221227.868341-1-afd@ti.com>
References: <20240123221227.868341-1-afd@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2ABF940B2F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.19.0/24];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.19.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
Message-ID-Hash: 62ZPTD5JNSDE3N5NTRCVBWKBQDVUWRX6
X-Message-ID-Hash: 62ZPTD5JNSDE3N5NTRCVBWKBQDVUWRX6
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] udmabuf: Sync buffer mappings for attached devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/62ZPTD5JNSDE3N5NTRCVBWKBQDVUWRX6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Currently this driver creates a SGT table using the CPU as the
target device, then performs the dma_sync operations against
that SGT. This is backwards to how DMA-BUFs are supposed to behave.
This may have worked for the case where these buffers were given
only back to the same CPU that produced them as in the QEMU case.
And only then because the original author had the dma_sync
operations also backwards, syncing for the "device" on begin_cpu.
This was noticed and "fixed" in this patch[0].

That then meant we were sync'ing from the CPU to the CPU using
a pseudo-device "miscdevice". Which then caused another issue
due to the miscdevice not having a proper DMA mask (and why should
it, the CPU is not a DMA device). The fix for that was an even
more egregious hack[1] that declares the CPU is coherent with
itself and can access its own memory space..

Unwind all this and perform the correct action by doing the dma_sync
operations for each device currently attached to the backing buffer.

[0] commit 1ffe09590121 ("udmabuf: fix dma-buf cpu access")
[1] commit 9e9fa6a9198b ("udmabuf: Set the DMA mask for the udmabuf device (v2)")

Signed-off-by: Andrew Davis <afd@ti.com>
---
 drivers/dma-buf/udmabuf.c | 41 +++++++++++++++------------------------
 1 file changed, 16 insertions(+), 25 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 3a23f0a7d112a..ab6764322523c 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -26,8 +26,6 @@ MODULE_PARM_DESC(size_limit_mb, "Max size of a dmabuf, in megabytes. Default is
 struct udmabuf {
 	pgoff_t pagecount;
 	struct page **pages;
-	struct sg_table *sg;
-	struct miscdevice *device;
 	struct list_head attachments;
 	struct mutex lock;
 };
@@ -169,12 +167,8 @@ static void unmap_udmabuf(struct dma_buf_attachment *at,
 static void release_udmabuf(struct dma_buf *buf)
 {
 	struct udmabuf *ubuf = buf->priv;
-	struct device *dev = ubuf->device->this_device;
 	pgoff_t pg;
 
-	if (ubuf->sg)
-		put_sg_table(dev, ubuf->sg, DMA_BIDIRECTIONAL);
-
 	for (pg = 0; pg < ubuf->pagecount; pg++)
 		put_page(ubuf->pages[pg]);
 	kfree(ubuf->pages);
@@ -185,33 +179,31 @@ static int begin_cpu_udmabuf(struct dma_buf *buf,
 			     enum dma_data_direction direction)
 {
 	struct udmabuf *ubuf = buf->priv;
-	struct device *dev = ubuf->device->this_device;
-	int ret = 0;
-
-	if (!ubuf->sg) {
-		ubuf->sg = get_sg_table(dev, buf, direction);
-		if (IS_ERR(ubuf->sg)) {
-			ret = PTR_ERR(ubuf->sg);
-			ubuf->sg = NULL;
-		}
-	} else {
-		dma_sync_sg_for_cpu(dev, ubuf->sg->sgl, ubuf->sg->nents,
-				    direction);
-	}
+	struct udmabuf_attachment *a;
 
-	return ret;
+	mutex_lock(&ubuf->lock);
+
+	list_for_each_entry(a, &ubuf->attachments, list)
+		dma_sync_sgtable_for_cpu(a->dev, a->table, direction);
+
+	mutex_unlock(&ubuf->lock);
+
+	return 0;
 }
 
 static int end_cpu_udmabuf(struct dma_buf *buf,
 			   enum dma_data_direction direction)
 {
 	struct udmabuf *ubuf = buf->priv;
-	struct device *dev = ubuf->device->this_device;
+	struct udmabuf_attachment *a;
 
-	if (!ubuf->sg)
-		return -EINVAL;
+	mutex_lock(&ubuf->lock);
+
+	list_for_each_entry(a, &ubuf->attachments, list)
+		dma_sync_sgtable_for_device(a->dev, a->table, direction);
+
+	mutex_unlock(&ubuf->lock);
 
-	dma_sync_sg_for_device(dev, ubuf->sg->sgl, ubuf->sg->nents, direction);
 	return 0;
 }
 
@@ -307,7 +299,6 @@ static long udmabuf_create(struct miscdevice *device,
 	exp_info.priv = ubuf;
 	exp_info.flags = O_RDWR;
 
-	ubuf->device = device;
 	buf = dma_buf_export(&exp_info);
 	if (IS_ERR(buf)) {
 		ret = PTR_ERR(buf);
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
