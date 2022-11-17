Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6CC62D275
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 06:00:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDB263F57C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 05:00:28 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6DCF33F2E5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 05:00:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=JY4NfYAI;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id t25-20020a1c7719000000b003cfa34ea516so3841852wmi.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Nov 2022 21:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a0T3rjzlpFW1dw7fmW7g8x4Gy61zgYU1JKH4cxrgdu0=;
        b=JY4NfYAIbFCUofUSLplovnKa/5072s2jFLYAMFlFQTFUbXFj+lybMXgGHevupGBX7p
         QaVDIl/1Y2+6v9KgYyGo6gU/j0kak1gX8EHWtw8/22y1EJlPQ84PglSV4mSujDZPqPfE
         bp3FcH5y1InMVpXhOZp7npliwhHmefhHL9noUixdN5Sxh1zcfHcs4Ndrddj8P1q1gfC+
         SZn3/z4rgmLG2ve4UMuQKtujwgYniEUEo4KGPjXNrROT68k7dYpw7KdSh8Blzxu9QjMn
         OkZWoM17fmFmuMiE1wkw+1FKoBbY4E9MJROa6sEbJkaC9L+ADXsgWz84KfEITl3HmSqP
         iojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a0T3rjzlpFW1dw7fmW7g8x4Gy61zgYU1JKH4cxrgdu0=;
        b=zCS4FUWcB4vAo18TGi/yRx5CDTbIcmZHDgVCVCmkSOFURFaQdmn7WZBixrnW9LoA2c
         WwQc6dYjbPAFm8dk1fAvdXmxrjK643PX90dOc+ix7TYFO4WOYvfiIWQPyXBaKuMU4db7
         wAXS8eYUV3dXnniDnWv1sAkB/UDum62uBaLOs3A2MkE5eTBkqThWHF7eGLTWp7ogIt/O
         2w7975z9l7E02SmAvNvqx6Htzk3lfSq4OrGz8Tx7WYCsyOHRC8kvE94hmLxpN2TNu/gn
         4u5ng9R2DU6IFO1UesiJ/kCtpD+b6+tmywWll0b28I11b8U55UF+pvDb+BeJrr06IIuG
         ym1w==
X-Gm-Message-State: ANoB5placcPiZt1boxHjk4zauQ7XkuOsuSyEnRpVXRCMk+oFiP4+FrGU
	j1yu/VfbMiaVnGuCUxm5TRc=
X-Google-Smtp-Source: AA0mqf7zt8lCXlLCEU+O4UjtV2JiwlMTevqkPDwcLnqmw94gQJiXUrNyAhJ3EkaPswdWgtv9ry3OPw==
X-Received: by 2002:a05:600c:5010:b0:3cf:b067:416c with SMTP id n16-20020a05600c501000b003cfb067416cmr4064198wmr.134.1668661209301;
        Wed, 16 Nov 2022 21:00:09 -0800 (PST)
Received: from localhost.localdomain (user-5-173-65-115.play-internet.pl. [5.173.65.115])
        by smtp.googlemail.com with ESMTPSA id q10-20020adff94a000000b0022cc6b8df5esm16512143wrr.7.2022.11.16.21.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 21:00:08 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Date: Thu, 17 Nov 2022 05:58:41 +0100
Message-Id: <20221117045842.27161-1-lukasz.wiecaszek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 6DCF33F2E5
X-Spamd-Result: default: False [-5.50 / 15.00];
	DWL_DNSWL_HI(-3.50)[googlemail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.966];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: HDQH44CDL76WCGGDIICZBWIOZ6544CPC
X-Message-ID-Hash: HDQH44CDL76WCGGDIICZBWIOZ6544CPC
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDQH44CDL76WCGGDIICZBWIOZ6544CPC/>
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
---
v1: https://lore.kernel.org/linux-media/202211120352.G7WPASoP-lkp@intel.com/T/#t
v2: https://lore.kernel.org/linux-media/20221114052944.GA7264@thinkpad-p72/T/#t
v3: https://lore.kernel.org/linux-media/4f92e95f-a0dc-4eac-4c08-0df85de78ae7@collabora.com/T/#t

v3 -> v4: Removed line/info 'reported by kernel test robot'
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
