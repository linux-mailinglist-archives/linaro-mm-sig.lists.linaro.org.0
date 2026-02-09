Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGt0MO0Q4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CECE411D3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BB4F44D04
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:12 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 2BA2C3F7F8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 15:38:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=ztSBL6gc;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.54) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48327b8350dso25944685e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 07:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770651495; x=1771256295; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RHwHnR/AkgDNwuGXRgvil2Ov0DASjUJHIHivMAy5Dsg=;
        b=ztSBL6gceLtEUPUHzadRjRXEBk1OQISvkXT5a/unNqI3DW+5RT1ukrtNvMw0RW6xX+
         11srgjeMQiRKJo/lVL+6KbSEKJ7OwCHjX2a04ul77pzZQgf4UYYrRJ9VS8La3ABevTwQ
         Qa9dz9PPew/HeMWNriRBvSLdSxHgneZdpiT9Vo4XPdFIU3XEz8rXHifs0GckrZSVFGkd
         DA/SVxxAH4p6EdibJr9pMLnxJ/npdDmUjvDHzjkxG0K+YVyLi2pG06AtWOKbbTYNBTM4
         6kPN/+N5uylvqng8Wi89FUG3gu9SgZvHDMmJzR2nccq80nfrMAP46PmKvJZkBH27vIMN
         0SqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770651495; x=1771256295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RHwHnR/AkgDNwuGXRgvil2Ov0DASjUJHIHivMAy5Dsg=;
        b=qmjpaE4ys39jVcYsQOrVcD7IARvtgxeVLIAZZ0iEczmONkclVsDhRn6bAQdyseorRD
         S504m5WXqmLKpxQbAySstbH7I7eRxXTnHdbmjV/G5M1wXtSi1lt4pRBTsU7VFx9mA+dF
         vTNyW28BRsM31MfCq5ysx2EZZJoKIFFOG8f8XpFHmD9+mJlAWvGOL6j63m+BWHodEJse
         GLQSXA7lGzXHTVP70Dv+9qZ4JtXUWrUDv+BqS9pVbg/CPniTpDKP+7eK0XRSHDTkHiYH
         nCEOPEn32E6iI0a0f03YaWpW5Z6i93TxeHqQcnlFa7KTh2GuNMPCxwVek7Fv/kJ9RjgI
         Oe3g==
X-Forwarded-Encrypted: i=1; AJvYcCWl6rqzfQUxpB3rfYtXJxUzuq1Y8jtv5dWIViZi9PqwWvzQeZFM9y1NxEQSgEriUjSJWKZ+O4O2E5C5M8uF@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1nGSaVOzJrTtVzLcoMDU6vH6KcP7FWv935R4DbW9vU0Y+DMZU
	IAyGoElL3W3xipoueufS7OAYIB8AGbiw7c70H5jc77l5aMXjvZoS9sQYaQuwD26MPP0=
X-Gm-Gg: AZuq6aJsIQqxj11QcHb4NyBQYwBNHMs6wLTP1yh9slf7XhQzqnpblN/J7KSDNSxl2M8
	jck8TRpoA/JOpSlE2R3rqMHyaoOmfXeVxeR2RE/ejf/tzLteDvXAB1KaWNF6dc8jwcfuJ95RxIC
	uMoNRh6ZHfQ2/fSJQm3cqzDYfePUHpJSNEOmanktDpa5aHghmqRcekr4NFdsB1pVyUfEOS/6Yfg
	WFpCR2NtRld4jh69IMves6YoEsdAUoev0HCrOFeOLszBsvVmB1AG3Qc1DTU/5xd/PDVCPUoqVq6
	v91YQBZKTrgj+UedXgZPwe4GeZXQ3EYg+Dpffgm30+9uYYCaqvAtObw33KqUjbAsgSIhOiAOUxm
	NZDBAHPj+WPi6UtHtYtLeqeejfC30D0ZqJQgLVQLw71YoOZTeMrkmVCUd0jScQbTAY57AjE63tr
	M1CQ==
X-Received: by 2002:a5d:5f91:0:b0:432:852d:5662 with SMTP id ffacd0b85a97d-4362938f401mr17980642f8f.63.1770651495066;
        Mon, 09 Feb 2026 07:38:15 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b25casm28647578f8f.4.2026.02.09.07.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:38:14 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon,  9 Feb 2026 16:38:08 +0100
Message-ID: <20260209153809.250835-5-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260209153809.250835-1-jiri@resnulli.us>
References: <20260209153809.250835-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W64SQUJHNDNPIBI6FX6FVY2TGLAMEZWF
X-Message-ID-Hash: W64SQUJHNDNPIBI6FX6FVY2TGLAMEZWF
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:11 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W64SQUJHNDNPIBI6FX6FVY2TGLAMEZWF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[1585];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.751];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,resnulli.us:mid]
X-Rspamd-Queue-Id: 5CECE411D3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Currently the flags, which are unused, are validated for all heaps.
Since the follow-up patch introduces a flag valid for only one of the
heaps, allow to specify the valid flags per-heap.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
 drivers/dma-buf/dma-heap.c | 5 ++++-
 include/linux/dma-heap.h   | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 8ab49924f8b7..4751bcef4b19 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -28,6 +28,7 @@
  * @name:		used for debugging/device-node name
  * @ops:		ops struct for this heap
  * @priv:		private data for this heap
+ * @valid_heap_flags:	valid heap flags for this heap
  * @heap_devt:		heap device node
  * @list:		list head connecting to list of heaps
  * @heap_cdev:		heap char device
@@ -38,6 +39,7 @@ struct dma_heap {
 	const char *name;
 	const struct dma_heap_ops *ops;
 	void *priv;
+	u64 valid_heap_flags;
 	dev_t heap_devt;
 	struct list_head list;
 	struct cdev heap_cdev;
@@ -105,7 +107,7 @@ static long dma_heap_ioctl_allocate(struct file *file, void *data)
 	if (heap_allocation->fd_flags & ~DMA_HEAP_VALID_FD_FLAGS)
 		return -EINVAL;
 
-	if (heap_allocation->heap_flags & ~DMA_HEAP_VALID_HEAP_FLAGS)
+	if (heap_allocation->heap_flags & ~heap->valid_heap_flags)
 		return -EINVAL;
 
 	fd = dma_heap_buffer_alloc(heap, heap_allocation->len,
@@ -246,6 +248,7 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 	heap->name = exp_info->name;
 	heap->ops = exp_info->ops;
 	heap->priv = exp_info->priv;
+	heap->valid_heap_flags = exp_info->valid_heap_flags;
 
 	/* Find unused minor number */
 	ret = xa_alloc(&dma_heap_minors, &minor, heap,
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 27d15f60950a..7cfb531a9281 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -31,6 +31,7 @@ struct dma_heap_ops {
  * @name:	used for debugging/device-node name
  * @ops:	ops struct for this heap
  * @priv:	heap exporter private data
+ * @valid_heap_flags:	valid heap flags for this heap
  *
  * Information needed to export a new dmabuf heap.
  */
@@ -38,6 +39,7 @@ struct dma_heap_export_info {
 	const char *name;
 	const struct dma_heap_ops *ops;
 	void *priv;
+	u64 valid_heap_flags;
 };
 
 void *dma_heap_get_drvdata(struct dma_heap *heap);
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
