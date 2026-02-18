Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBiRE7IS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F4095411F84
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1539D40511
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:47:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id DCF40402B1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 17:15:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=avf7wLd1;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771434901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VXUqFvDgr/GgZzXRZIRhwXqtA/ygCg24XF2XyoDsQa8=;
	b=avf7wLd12v+orlKzEG9kpaNixDaX0SD0XOpY39OvVRaC2G4ElReFEGS7QVoHCXpKg40QJx
	cBN/XBrr6tYHcj/GxmRyuxNIIlIle8TxFpyIucQs35zNhpUlEb9GVZMETmwXtlu9ZCW3gi
	KYkDibxtfdNol2Cn/P1TBjwo0rqbhGI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-47-ijyBmIfoOTK0zndL-Sa07A-1; Wed, 18 Feb 2026 12:15:00 -0500
X-MC-Unique: ijyBmIfoOTK0zndL-Sa07A-1
X-Mimecast-MFC-AGG-ID: ijyBmIfoOTK0zndL-Sa07A_1771434900
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cff1da5so11042485a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 09:15:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434900; x=1772039700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VXUqFvDgr/GgZzXRZIRhwXqtA/ygCg24XF2XyoDsQa8=;
        b=toJTHaNgeBlSZT9QDtD9XvuPpbLXo1mpEJ3LswvlKJoLtRxQEo3wPB7CylWEvIbBHN
         sToyUChA0/HpZuMT8PFJiuZGxLgJMUBaaGLIDJmgAcvfJY9wEET1VNf7fT+cPxAMx/np
         tiRjj1OtpOxz2odm3e0n2AiDTpSwqqLdQ++oUM+tq7ner5K+qbESe+nrDcdXhAB8nqoJ
         KgupFpND8KmPBmDMQHjOM2ypnqoCkjNG0J7Q1SGFBNWhct3F32nbe2ZvHLUG0DfW3sbv
         002bSt2O1x3AgWZf/qOtXqzSfzUeP5Xqi6l5Gb5J6s6Ve/nxRMsxZh7/pYX71T1X4tJd
         6W9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXhvp340CaffxwdMOvx6r6Xy4SH0qrkVEhT/a8wj7fxc8UQ/egmpjOHyPrup+FrfZy0u7ycoA9Mp90L+aNZ@lists.linaro.org
X-Gm-Message-State: AOJu0YwtfYQCsq5NLrC2dnwoagzcgAHMxSltRFww6UZLMb3m78jXPOUq
	zc1APIyPeQqEAbz1tvj28XcOIL072ElfxBbGmyTqs6csemg0zxV+RD2Rm3HCGr0rSl71frJFzNA
	HI9IXpcwpT7tsoN+gcuCf1SN07owVNub1rXZVmRO5nP1u6W1nAETdt85c1NJh6xw778Ct
X-Gm-Gg: AZuq6aKLLRcTF6XzM0ZFTVeLfxp/8MEK6c6HKz0O8sqhkuWC8tiUHC1sSsWfjDcAQ6+
	Apm0K7DELTvmNENhEvxc940iUK1RsSagyEGBxmMyssHNbIdfP3r2VkOdRwCnicxSuqBycO5CIHT
	6urlclBG23mZUQrgjWt0/wK6LqmDFVbhO1Rib1UsjNDEduGCeH/OaA2bZd7X6LHaXVXMf4fj365
	obBWNvNBm09VgAuSXFQ8mAQ6BLNPy/FoYWIp5Gv1Vyk0mWS6n3eJhPgzMfVA9FunYXmMycZc6Bw
	dlUqtiEBuzlbS6ZfU2cjtV9LBAzioSxhaT6oRLeTV3kOaIoo2kAg3Bmx1Xz+0fyWZabRL8zzMok
	X/z846NSf+ds0lqySkD1+gTsZUCBBvaANoz5bEViuD7pFXsU7tJHVIfFTnY6r1o4=
X-Received: by 2002:a05:620a:7081:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cb408629c4mr2086848385a.34.1771434899694;
        Wed, 18 Feb 2026 09:14:59 -0800 (PST)
X-Received: by 2002:a05:620a:7081:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cb408629c4mr2086841985a.34.1771434899177;
        Wed, 18 Feb 2026 09:14:59 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89949b3d543sm57039066d6.16.2026.02.18.09.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:14:58 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Wed, 18 Feb 2026 12:14:10 -0500
MIME-Version: 1.0
Message-Id: <20260218-dmabuf-heap-cma-dmem-v2-1-b249886fb7b2@redhat.com>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lGU_f5RzgeZy6W4Q9Bb7HJwIqvxLnqu8mco0jXnEzAg_1771434900
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SCYHF4DCU4KQ7QJNEPQH5FMWXXMZQNB7
X-Message-ID-Hash: SCYHF4DCU4KQ7QJNEPQH5FMWXXMZQNB7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:31 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Eric Chanudet <echanude@redhat.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/3] cma: Register dmem region for each cma region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCYHF4DCU4KQ7QJNEPQH5FMWXXMZQNB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1367];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.887];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: F4095411F84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Maxime Ripard <mripard@kernel.org>

Now that the dmem cgroup has been merged, we need to create memory
regions for each allocator devices might allocate DMA memory from.

Since CMA is one of these allocators, we need to create such a region.
CMA can deal with multiple regions though, so we'll need to create a
dmem region per CMA region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
 mm/cma.c | 13 ++++++++++++-
 mm/cma.h |  3 +++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/mm/cma.c b/mm/cma.c
index 813e6dc7b0954864c9ef8cf7adc6a2293241de47..78016647d512868cd87bc2c1a52dd2295acaaf01 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -25,6 +25,7 @@
 #include <linux/string_choices.h>
 #include <linux/log2.h>
 #include <linux/cma.h>
+#include <linux/cgroup_dmem.h>
 #include <linux/highmem.h>
 #include <linux/io.h>
 #include <linux/kmemleak.h>
@@ -142,6 +143,15 @@ static void __init cma_activate_area(struct cma *cma)
 	int allocrange, r;
 	struct cma_memrange *cmr;
 	unsigned long bitmap_count, count;
+	struct dmem_cgroup_region *region;
+
+	region = dmem_cgroup_register_region(cma_get_size(cma), "cma/%s", cma->name);
+	if (IS_ERR(region))
+		goto out;
+
+#ifdef CONFIG_CGROUP_DMEM
+	cma->dmem_cgrp_region = region;
+#endif
 
 	for (allocrange = 0; allocrange < cma->nranges; allocrange++) {
 		cmr = &cma->ranges[allocrange];
@@ -183,7 +193,8 @@ static void __init cma_activate_area(struct cma *cma)
 cleanup:
 	for (r = 0; r < allocrange; r++)
 		bitmap_free(cma->ranges[r].bitmap);
-
+	dmem_cgroup_unregister_region(region);
+out:
 	/* Expose all pages to the buddy, they are useless for CMA. */
 	if (!test_bit(CMA_RESERVE_PAGES_ON_ERROR, &cma->flags)) {
 		for (r = 0; r < allocrange; r++) {
diff --git a/mm/cma.h b/mm/cma.h
index c70180c36559c295d837725e26596cf546cd8b7e..e91bedcb17be8c9e0d31aea1b67c0db36315536d 100644
--- a/mm/cma.h
+++ b/mm/cma.h
@@ -62,6 +62,9 @@ struct cma {
 	unsigned long flags;
 	/* NUMA node (NUMA_NO_NODE if unspecified) */
 	int nid;
+#ifdef CONFIG_CGROUP_DMEM
+	struct dmem_cgroup_region *dmem_cgrp_region;
+#endif
 };
 
 enum cma_flags {

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
