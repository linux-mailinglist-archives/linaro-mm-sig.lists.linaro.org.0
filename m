Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B262817C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 14:38:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 127B43F5F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 13:38:53 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id E85FA3EC44
	for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Nov 2022 15:07:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=e9lTnIly;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id j16so15384770lfe.12
        for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Nov 2022 07:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=umo/xdUlQSYAVDNNJIA7iJ7EdK6y2kGfWONuMRbs/TA=;
        b=e9lTnIlyKgsqjF+MrXGgxFYkfUbeoadmoDhRaLkeApmUoQyroEV1yTWy4iBDU1GumZ
         62VNSeshYUqjvZZbIHfhXRtyMracJ8xvEOAczV4BS+SEd1pi2iigs1dHU9Wxb7YtmCLx
         xjGJM9yQZtIv/IbvoNb5hKb2yBGm3fJMxDNLcE68BXXRZQr1yfj5gAME1iZDEz+89it6
         GrCDPrM3HbifmuqJMEfb3MKlY9t+1IJrgG+fqEJIVXBe424P41VyQoxGToyLhgwYCFNH
         Syk3lZzZGTXghlpw64V8xD+ing6+wBvllMX82FHDHhzDUF7YjizxP5TBsHt7LGylUMwG
         l97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umo/xdUlQSYAVDNNJIA7iJ7EdK6y2kGfWONuMRbs/TA=;
        b=2H4CTxLuSkQuOELFtXM6gBKI1NElbYFIgksx6R6s791XAY38u8CQ9vxxhki7RULKvq
         lBbGDU+bqlg6mParncZmPIELvcz8jmj+9jYFUDbhNC4ilgzPwa9gb7VKNlQUEOlXG4kd
         0XhUEOo45PrWgwn4Lx/jzCLl299Tx6Pd86QChf+fdtWcpl2SVhRr2JK5oXTeIWohkdGg
         fgTQPbH8r6Q+HoVpi+6m04HLSKK9n3PV01S5Z3ezZTp2N5w5l/w45DuIqqgK3WsyvT/k
         pWUZRCZ7zVd2WDTdwubC3tVMJPLgJ9awTAkrY/heCyyVINjTPw7/ECGbCbGdKkXpNZPv
         P7ag==
X-Gm-Message-State: ANoB5pmJWdPc5mlBj9jeErgyFwOXe8of84fyM/j79UiuRoCpEIyAuw4+
	mkyul5J3lod2fdQyxQ3moQY=
X-Google-Smtp-Source: AA0mqf4TUvlSQjy+LPxsa8mUnyhfgrZ2+hMCJe8GBO7bMH6joUroCaeCl6wu7cYoNIms96wVInnnWw==
X-Received: by 2002:a05:6512:2305:b0:4b1:8698:9f3e with SMTP id o5-20020a056512230500b004b186989f3emr2911401lfu.421.1668352045590;
        Sun, 13 Nov 2022 07:07:25 -0800 (PST)
Received: from localhost.localdomain (185-48-128-212.net.cybernetwmw.com. [185.48.128.212])
        by smtp.googlemail.com with ESMTPSA id j26-20020ac2455a000000b004979ec19387sm1397753lfm.305.2022.11.13.07.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 07:07:25 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Sun, 13 Nov 2022 16:05:11 +0100
Message-Id: <20221113150511.8878-1-lukasz.wiecaszek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: E85FA3EC44
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[185.48.128.212:received];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.41:from];
	NEURAL_HAM(-0.00)[-0.986];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,intel.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.41:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.167.41:from]
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KJIQLQAZ2YJKSWBFRRC547IQKH56DAX
X-Message-ID-Hash: 4KJIQLQAZ2YJKSWBFRRC547IQKH56DAX
X-Mailman-Approved-At: Mon, 14 Nov 2022 13:38:23 +0000
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KJIQLQAZ2YJKSWBFRRC547IQKH56DAX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The reason behind that patch is associated with videobuf2 subsystem
(or more genrally with v4l2 framework) and user created
dma buffers (udmabuf). In some circumstances
when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
wants to use dma_buf_vmap() method on the attached dma buffer.
As udmabuf does not have .vmap operation implemented,
such dma_buf_vmap() natually fails.

videobuf2_common: [cap-000000003473b2f1] __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) each
videobuf2_common: [cap-000000003473b2f1] __prepare_dmabuf: buffer for plane 0 changed
videobuf2_common: [cap-000000003473b2f1] __prepare_dmabuf: failed to map dmabuf for plane 0
videobuf2_common: [cap-000000003473b2f1] __buf_prepare: buffer preparation failed: -14

The patch itself seems to be strighforward.
It adds implementation of .vmap method to 'struct dma_buf_ops udmabuf_ops'.
.vmap method itself uses vm_map_ram() to map pages linearly
into the kernel virtual address space (only if such mapping
hasn't been created yet).

Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
---
v1: https://lore.kernel.org/linux-media/202211120352.G7WPASoP-lkp@intel.com/T/#t

v1 -> v2: Patch prepared and tested against 6.1.0-rc2+

 drivers/dma-buf/udmabuf.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 2bcdb935a3ac..2ca0e3639360 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -12,6 +12,8 @@
 #include <linux/slab.h>
 #include <linux/udmabuf.h>
 #include <linux/hugetlb.h>
+#include <linux/vmalloc.h>
+#include <linux/iosys-map.h>
 
 static int list_limit = 1024;
 module_param(list_limit, int, 0644);
@@ -26,6 +28,7 @@ struct udmabuf {
 	struct page **pages;
 	struct sg_table *sg;
 	struct miscdevice *device;
+	void *vaddr;
 };
 
 static vm_fault_t udmabuf_vm_fault(struct vm_fault *vmf)
@@ -57,6 +60,21 @@ static int mmap_udmabuf(struct dma_buf *buf, struct vm_area_struct *vma)
 	return 0;
 }
 
+static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
+{
+	struct udmabuf *ubuf = buf->priv;
+
+	if (!ubuf->vaddr) {
+		ubuf->vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
+		if (!ubuf->vaddr)
+			return -EINVAL;
+	}
+
+	iosys_map_set_vaddr(map, ubuf->vaddr);
+
+	return 0;
+}
+
 static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 				     enum dma_data_direction direction)
 {
@@ -159,6 +177,7 @@ static const struct dma_buf_ops udmabuf_ops = {
 	.unmap_dma_buf	   = unmap_udmabuf,
 	.release	   = release_udmabuf,
 	.mmap		   = mmap_udmabuf,
+	.vmap		   = vmap_udmabuf,
 	.begin_cpu_access  = begin_cpu_udmabuf,
 	.end_cpu_access    = end_cpu_udmabuf,
 };
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
