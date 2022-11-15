Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED7D62A278
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Nov 2022 21:06:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B9803F60B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Nov 2022 20:06:06 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 1C0C23EE5B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Nov 2022 20:05:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=SHSAvtom;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.208.179 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id u2so19029449ljl.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Nov 2022 12:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3n9eTzyovuImpyqmAEmozCytKhOiLUTsASX6dM4moQ=;
        b=SHSAvtomDRH42ON709sBLl59XSWVsQy34EfQhfVbSa08rIXrY84R4COytoYvMmr1D1
         e81p11b2gX1IxLp1Wk3EkpuupEzk/0g0oEX+s/Xo9NDE8m7Y/DrAO/I7u/1IQNqQ7brM
         z7GcVDKVktm0xwphBqywkq2JL0Sl/h/v9YrR/zfFOmyKDg1rGnrI3hYQTexcbuj67QiH
         2d7TPxNf1woM7AXMXa0qxMhpJl+sDCjl1+WpbKEPOB22Dkw3yERFVMZsq6xKyyzmvog9
         xMGJv7WgIGWmBi+2AlBz4d4c6vWTcA7c+xO9LI2oe1m94jw589WP/uY5i7EHwlS6RkEv
         Fr0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3n9eTzyovuImpyqmAEmozCytKhOiLUTsASX6dM4moQ=;
        b=adD+KN+fgKjeHdP7Yy1ZrYZ/jEaVN+qWGb1wtxib9F4P8VUoE4ArksL1P6UYalhe/P
         jgRfbSbgXRpXpE5a4nolXv/RK6nZh+mrPLqnPrczVqDF2A3ZlM3B3DboNGOiRVUhhvsi
         9Xb8uhAaG4w6EixAH3j8T/blpqmGIm8BOjnNTUw+qwrykhXkFLV+gxTc5UVX5iV+oZc9
         LwvhH3o3kc1iNgTloWDoubwFR9Vsf5UYpHXZXuYcpyltGoMaqu87+81weRIB9qediEZq
         3Ktz/D5gsRNbPVuBAOQiyuI5yzKQXINy0JcRptGNH37NtIU9beY/uR0lpjUemjzIKsx3
         Qeaw==
X-Gm-Message-State: ANoB5pk/fphfZDxPO96n+YVRRu+4c9xUs3Q9GbIba5QEk3Up6DPbWOuM
	C//61bkOSEr1IGqV8/IAfdSzrsvnsvmtNA==
X-Google-Smtp-Source: AA0mqf5jt+shThPbnx0wtDVLw2x666FkmDvA0ANREZf/u2AiwQmmMNKF+SrjKK9g7V3hpCfvUArtew==
X-Received: by 2002:a2e:940a:0:b0:278:ecbe:ebba with SMTP id i10-20020a2e940a000000b00278ecbeebbamr6252965ljh.450.1668542745717;
        Tue, 15 Nov 2022 12:05:45 -0800 (PST)
Received: from localhost.localdomain ([78.133.163.249])
        by smtp.googlemail.com with ESMTPSA id h8-20020ac24da8000000b004ad5f5c2b28sm2308586lfe.119.2022.11.15.12.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 12:05:45 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Tue, 15 Nov 2022 21:04:26 +0100
Message-Id: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 1C0C23EE5B
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.179:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.179:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,intel.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 2OACGJWWJTYYUGHBWWWYURZMKRDKFURP
X-Message-ID-Hash: 2OACGJWWJTYYUGHBWWWYURZMKRDKFURP
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2OACGJWWJTYYUGHBWWWYURZMKRDKFURP/>
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

videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) each
videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plane 0
videobuf2_common: __buf_prepare: buffer preparation failed: -14

The patch itself seems to be strighforward.
It adds implementation of .vmap and .vunmap methods
to 'struct dma_buf_ops udmabuf_ops'.
.vmap method itself uses vm_map_ram() to map pages linearly
into the kernel virtual address space.
.vunmap removes mapping created earlier by .vmap.
All locking and 'vmapping counting' is done in dma_buf.c
so it seems to be redundant/unnecessary in .vmap/.vunmap.

Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
---
v1: https://lore.kernel.org/linux-media/202211120352.G7WPASoP-lkp@intel.com/T/#t
v2: https://lore.kernel.org/linux-media/20221114052944.GA7264@thinkpad-p72/T/#t

v2 -> v3: Added .vunmap to 'struct dma_buf_ops udmabuf_ops'
v1 -> v2: Patch prepared and tested against 6.1.0-rc2+

 drivers/dma-buf/udmabuf.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 283816fbd72f..740d6e426ee9 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -13,6 +13,8 @@
 #include <linux/slab.h>
 #include <linux/udmabuf.h>
 #include <linux/hugetlb.h>
+#include <linux/vmalloc.h>
+#include <linux/iosys-map.h>
 
 static int list_limit = 1024;
 module_param(list_limit, int, 0644);
@@ -60,6 +62,30 @@ static int mmap_udmabuf(struct dma_buf *buf, struct vm_area_struct *vma)
 	return 0;
 }
 
+static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
+{
+	struct udmabuf *ubuf = buf->priv;
+	void *vaddr;
+
+	dma_resv_assert_held(buf->resv);
+
+	vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
+	if (!vaddr)
+		return -EINVAL;
+
+	iosys_map_set_vaddr(map, vaddr);
+	return 0;
+}
+
+static void vunmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
+{
+	struct udmabuf *ubuf = buf->priv;
+
+	dma_resv_assert_held(buf->resv);
+
+	vm_unmap_ram(map->vaddr, ubuf->pagecount);
+}
+
 static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 				     enum dma_data_direction direction)
 {
@@ -162,6 +188,8 @@ static const struct dma_buf_ops udmabuf_ops = {
 	.unmap_dma_buf	   = unmap_udmabuf,
 	.release	   = release_udmabuf,
 	.mmap		   = mmap_udmabuf,
+	.vmap		   = vmap_udmabuf,
+	.vunmap		   = vunmap_udmabuf,
 	.begin_cpu_access  = begin_cpu_udmabuf,
 	.end_cpu_access    = end_cpu_udmabuf,
 };
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
