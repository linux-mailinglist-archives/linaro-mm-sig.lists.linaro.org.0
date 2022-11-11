Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5754B628178
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 14:37:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 653533F5F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Nov 2022 13:37:47 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 93DBF3EF32
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 11:46:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=K5nlJPYQ;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.167.50 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id p8so7919489lfu.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Nov 2022 03:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8+TGbcI0QMZONMioawRdiUS9+5vmjoD8ChogAY21Oa0=;
        b=K5nlJPYQZx78+Mgn7RBBkCqYmu3Rn6ArgOwGOf2XXY7HAgZoJ9QjWVGhyg1cE6r9Rw
         kEQDEI+qTn83kiYVLHOOLrwoMQ5SCSru6awifHCwiI1tmWgqW7b1oa8ab36hG/fMWV2W
         ciFYrd6x3q5OcT7sYB9b0as4UqBgI9MAe5/vyuoHAKS+qPV89g6qVnLb3NKIrYMFZye3
         rxHA0LvaUTUFkaLK+k7im6nbFwPvI3Ek1hPhrTbUpu4WR+sZQoDcnxBXKugB0Le3HpUc
         TQgeC4cYZWc3HBPSa5vA3e3mgnb2b5GWUkLAmkF2qtIscMbhLPxFP3N2xXIiVGAV8bxm
         BE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8+TGbcI0QMZONMioawRdiUS9+5vmjoD8ChogAY21Oa0=;
        b=ffg99gb3g0lZO6p6h8MOx0U4wfufvwfByiS6OoKlsnHrlDm2S9Vos21bSqbXy3tNxU
         9X3qszcdL5XcZPqS5hSiSXv/G1B0duiuEJJpRlCzYfJrP5tE9d142bGaco7dLnU+gYcM
         7EDQxSMG4U2GMBpNNCaQDUccKLsY+gQrTUXn0ZI72pLFxsgL53eYxGvt0RHwNjCblIuU
         16F3OZs5hO/Jo/BtOYLpNQK7Wyqo5mBYSatDvKjQWqTqB+g0P6jSsCtivrJOVXFHyBtz
         9WAqKsyXsknIMHojZnveXWWkHpMvNXj5Bu4k3Ap3I72NXcuqCyVKG4a8kDQruTbez5gZ
         LDfg==
X-Gm-Message-State: ANoB5pmQcvesZ2j8G6nvE4pZXb5QUee5/b91MYVA50F+FinD6rEJB4L/
	hBux+6DIy48ridbk353wsaE=
X-Google-Smtp-Source: AA0mqf4wiSpCasQPxQc2XZal1V3LS9Za3jYalQQVWS8JERfMTmHASiNZacgz6jFLRAGzfiUbS2gPpA==
X-Received: by 2002:a19:e601:0:b0:4a8:e955:77e7 with SMTP id d1-20020a19e601000000b004a8e95577e7mr565011lfh.573.1668167192277;
        Fri, 11 Nov 2022 03:46:32 -0800 (PST)
Received: from localhost.localdomain ([78.133.163.249])
        by smtp.googlemail.com with ESMTPSA id 10-20020ac25f4a000000b004979ec19380sm281616lfz.285.2022.11.11.03.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 03:46:31 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
To: kraxel@redhat.com
Date: Fri, 11 Nov 2022 12:45:28 +0100
Message-Id: <20221111114528.608801-1-lukasz.wiecaszek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 93DBF3EF32
X-Spamd-Result: default: False [-7.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[googlemail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[78.133.163.249:received,209.85.167.50:from];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WCAEQ7PBSBUPYF4U7KFZRUPA6C22AVOT
X-Message-ID-Hash: WCAEQ7PBSBUPYF4U7KFZRUPA6C22AVOT
X-Mailman-Approved-At: Mon, 14 Nov 2022 13:37:19 +0000
CC: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] udmabuf: add vmap method to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WCAEQ7PBSBUPYF4U7KFZRUPA6C22AVOT/>
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
---
 drivers/dma-buf/udmabuf.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 2bcdb935a3ac..8649fcbd05c4 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/udmabuf.h>
 #include <linux/hugetlb.h>
+#include <linux/vmalloc.h>
 
 static int list_limit = 1024;
 module_param(list_limit, int, 0644);
@@ -26,6 +27,7 @@ struct udmabuf {
 	struct page **pages;
 	struct sg_table *sg;
 	struct miscdevice *device;
+	void *vaddr;
 };
 
 static vm_fault_t udmabuf_vm_fault(struct vm_fault *vmf)
@@ -57,6 +59,21 @@ static int mmap_udmabuf(struct dma_buf *buf, struct vm_area_struct *vma)
 	return 0;
 }
 
+static int vmap_udmabuf(struct dma_buf *buf, struct dma_buf_map *map)
+{
+	struct udmabuf *ubuf = buf->priv;
+
+	if (!ubuf->vaddr) {
+		ubuf->vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
+		if (!ubuf->vaddr)
+			return -EINVAL;
+	}
+
+	dma_buf_map_set_vaddr(map, ubuf->vaddr);
+
+	return 0;
+}
+
 static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 				     enum dma_data_direction direction)
 {
@@ -159,6 +176,7 @@ static const struct dma_buf_ops udmabuf_ops = {
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
