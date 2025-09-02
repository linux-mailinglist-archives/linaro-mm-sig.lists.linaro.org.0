Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14366B4098E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:47:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F06245E7B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:47:38 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 28C2845E6F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:46:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=igQBoWcD;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.221.41 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3d3fa21a77fso1634829f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828013; x=1757432813; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/5Ql6ePEZB3sncY9PXrRkrrrgHDmfb5EstPCmtwQL4=;
        b=igQBoWcDC7eFTQOHKQxpMLFtyh1ueKz5Ca7JPWa09LKJzqAWdOWPKlnikAVLBtsTrG
         Ha/T5B2rVwFQXZ59+7Bs8WQFLmq+jHgw6yloygkREjNq8pxSXo5aAXJQSGqsb8hBP6Hc
         +FSqbceitzNgyqU/zIqDjXwe6bzUVyEZFoDLh/UO40ANqHs/nVLLctarXZf8cC1mADHu
         mGzQBFTpQ72WiLiZJGfEfO7Vq9NlQ901cHqy2P7LTvFu8mJwKwh4dn0H0cELp4erZGcz
         RUGj4jhcQv/FOAGRo6Dljn84h46sg4KxQgEvHQfMFGjNo/41w1wfJK7JCXOrUvvbGSfz
         FtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828013; x=1757432813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n/5Ql6ePEZB3sncY9PXrRkrrrgHDmfb5EstPCmtwQL4=;
        b=GfeTTYDJVm7sFA5USfAfKbTHK6fKvLZBiiocXDWcdQ4ZhXb13l4WZA1ysocc86ylPZ
         4ou7CMrVA+tavs3rZD6YcUH7ABIPlh/5F1J0bVbOM6W864pX2KC03V9dWHAo9I6/k7d/
         5p1hjf/+utv2rmaIUVt1MLv9AIj9MntEOmfTPVpWckOxW7mrvbKBg5yxyRpK3gDYmXKY
         ciOdSI/HN/mG4Mt8Kq88nEGV6dNTP+Tjunz5sJidni4ORI+GfdKd54uI+j+zL1AhDD0h
         cpNsOg8SAvDfZ7YS6xYpNLrzTBDoL0Ys7TU98k5uC2tfrqTKrYhu/l2aWJhPWqDcHQNr
         ARXw==
X-Forwarded-Encrypted: i=1; AJvYcCUOHdVNmIwPXsjk7jY1UK1hyP0iFK+qhwmK3igBqo/Qv5ocFsvdkb+nklS9Dr3Z5r2sll7V1rSP/UiNW6XP@lists.linaro.org
X-Gm-Message-State: AOJu0YxGfpug+qMSJ9P7kja2065vg+siGiJ05DQzrfCeR75W8wnvjIr+
	CKXKJoKVDWJLeotOXB/BWNDQfBcnCcYRKV1rviEYLvMOogebDvFhFhtg
X-Gm-Gg: ASbGncs8C/7QdWK/aqh9FB4mASqxdp+nxfOOqPeAnkQDoUzVMejX25ehyrE5gDdXwOm
	srKT5nf8IbLG3kbbZA2Ms01OJkbAAuRf50WeLObBsVULttZP5O14wUopg+CHmZTB7fVpfcsKMPY
	4Xo3imqEPsMLAredZSeUhN/7fkoHGclNH0YQK1afLbBalfJff89WKC3UHwXEOf4ApvbQ7JBftYt
	eJNe2GTKF4ZJzXj56CmHU5tIxOVSQ60la7ojUqx2OxZDgcbNjc4eagTlErCu5P1cKwN/yah77te
	MFsvqMOWlRzQ9O7c85YiaOAKmXnexT2EFj4DiIFNSa1A64vEjkeEvg18vLsFOeGv2vq/19uN4d/
	BjXAos2ArGEs2UXrOz96kGxWTQGJlYK5+PYBGbDYftq5Ewy9MIa8CNAY3Fah62sqct5pxMZvNKQ
	LA1gsZ3vy56p1bWcHl2+usrFlq
X-Google-Smtp-Source: AGHT+IHq43AbE5VkmkapAR0tzhsq3zXTXrsk3nysd56WKEVtoZpJPwZ7v6YnW4KfZ38+U9nLscJHkg==
X-Received: by 2002:a05:6000:25c6:b0:3ce:f0a5:d598 with SMTP id ffacd0b85a97d-3d1dca7bfdbmr10337054f8f.10.1756828012868;
        Tue, 02 Sep 2025 08:46:52 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45c447244c4sm4765415e9.6.2025.09.02.08.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:46:48 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:23 +0200
Message-ID: <20250902154630.4032984-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 28C2845E6F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.41:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: ODFXVZ4Q3VCR4FXFPGQ5C6VOSUVPEFOR
X-Message-ID-Hash: ODFXVZ4Q3VCR4FXFPGQ5C6VOSUVPEFOR
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODFXVZ4Q3VCR4FXFPGQ5C6VOSUVPEFOR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

There is no technical reason why there should be a limited number of CMA
regions, so extract some code into helpers and use them to create extra
functions (cma_create() and cma_free()) that allow creating and freeing,
respectively, CMA regions dynamically at runtime.

Note that these dynamically created CMA areas are treated specially and
do not contribute to the number of total CMA pages so that this count
still only applies to the fixed number of CMA areas.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 include/linux/cma.h | 16 ++++++++
 mm/cma.c            | 89 ++++++++++++++++++++++++++++++++++-----------
 2 files changed, 83 insertions(+), 22 deletions(-)

diff --git a/include/linux/cma.h b/include/linux/cma.h
index 62d9c1cf6326..f1e20642198a 100644
--- a/include/linux/cma.h
+++ b/include/linux/cma.h
@@ -61,6 +61,10 @@ extern void cma_reserve_pages_on_error(struct cma *cma);
 struct folio *cma_alloc_folio(struct cma *cma, int order, gfp_t gfp);
 bool cma_free_folio(struct cma *cma, const struct folio *folio);
 bool cma_validate_zones(struct cma *cma);
+
+struct cma *cma_create(phys_addr_t base, phys_addr_t size,
+		       unsigned int order_per_bit, const char *name);
+void cma_free(struct cma *cma);
 #else
 static inline struct folio *cma_alloc_folio(struct cma *cma, int order, gfp_t gfp)
 {
@@ -71,10 +75,22 @@ static inline bool cma_free_folio(struct cma *cma, const struct folio *folio)
 {
 	return false;
 }
+
 static inline bool cma_validate_zones(struct cma *cma)
 {
 	return false;
 }
+
+static inline struct cma *cma_create(phys_addr_t base, phys_addr_t size,
+				     unsigned int order_per_bit,
+				     const char *name)
+{
+	return NULL;
+}
+
+static inline void cma_free(struct cma *cma)
+{
+}
 #endif
 
 #endif
diff --git a/mm/cma.c b/mm/cma.c
index e56ec64d0567..8149227d319f 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -214,6 +214,18 @@ void __init cma_reserve_pages_on_error(struct cma *cma)
 	set_bit(CMA_RESERVE_PAGES_ON_ERROR, &cma->flags);
 }
 
+static void __init cma_init_area(struct cma *cma, const char *name,
+				 phys_addr_t size, unsigned int order_per_bit)
+{
+	if (name)
+		snprintf(cma->name, CMA_MAX_NAME, "%s", name);
+	else
+		snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_count);
+
+	cma->available_count = cma->count = size >> PAGE_SHIFT;
+	cma->order_per_bit = order_per_bit;
+}
+
 static int __init cma_new_area(const char *name, phys_addr_t size,
 			       unsigned int order_per_bit,
 			       struct cma **res_cma)
@@ -232,13 +244,8 @@ static int __init cma_new_area(const char *name, phys_addr_t size,
 	cma = &cma_areas[cma_area_count];
 	cma_area_count++;
 
-	if (name)
-		snprintf(cma->name, CMA_MAX_NAME, "%s", name);
-	else
-		snprintf(cma->name, CMA_MAX_NAME,  "cma%d\n", cma_area_count);
+	cma_init_area(cma, name, size, order_per_bit);
 
-	cma->available_count = cma->count = size >> PAGE_SHIFT;
-	cma->order_per_bit = order_per_bit;
 	*res_cma = cma;
 	totalcma_pages += cma->count;
 
@@ -251,6 +258,27 @@ static void __init cma_drop_area(struct cma *cma)
 	cma_area_count--;
 }
 
+static int __init cma_check_memory(phys_addr_t base, phys_addr_t size)
+{
+	if (!size || !memblock_is_region_reserved(base, size))
+		return -EINVAL;
+
+	/*
+	 * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement which
+	 * needs pageblock_order to be initialized. Let's enforce it.
+	 */
+	if (!pageblock_order) {
+		pr_err("pageblock_order not yet initialized. Called during early boot?\n");
+		return -EINVAL;
+	}
+
+	/* ensure minimal alignment required by mm core */
+	if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
+		return -EINVAL;
+
+	return 0;
+}
+
 /**
  * cma_init_reserved_mem() - create custom contiguous area from reserved memory
  * @base: Base address of the reserved area
@@ -271,22 +299,9 @@ int __init cma_init_reserved_mem(phys_addr_t base, phys_addr_t size,
 	struct cma *cma;
 	int ret;
 
-	/* Sanity checks */
-	if (!size || !memblock_is_region_reserved(base, size))
-		return -EINVAL;
-
-	/*
-	 * CMA uses CMA_MIN_ALIGNMENT_BYTES as alignment requirement which
-	 * needs pageblock_order to be initialized. Let's enforce it.
-	 */
-	if (!pageblock_order) {
-		pr_err("pageblock_order not yet initialized. Called during early boot?\n");
-		return -EINVAL;
-	}
-
-	/* ensure minimal alignment required by mm core */
-	if (!IS_ALIGNED(base | size, CMA_MIN_ALIGNMENT_BYTES))
-		return -EINVAL;
+	ret = cma_check_memory(base, size);
+	if (ret < 0)
+		return ret;
 
 	ret = cma_new_area(name, size, order_per_bit, &cma);
 	if (ret != 0)
@@ -1112,3 +1127,33 @@ void __init *cma_reserve_early(struct cma *cma, unsigned long size)
 
 	return ret;
 }
+
+struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
+			      unsigned int order_per_bit, const char *name)
+{
+	struct cma *cma;
+	int ret;
+
+	ret = cma_check_memory(base, size);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
+	cma = kzalloc(sizeof(*cma), GFP_KERNEL);
+	if (!cma)
+		return ERR_PTR(-ENOMEM);
+
+	cma_init_area(cma, name, size, order_per_bit);
+	cma->ranges[0].base_pfn = PFN_DOWN(base);
+	cma->ranges[0].early_pfn = PFN_DOWN(base);
+	cma->ranges[0].count = cma->count;
+	cma->nranges = 1;
+
+	cma_activate_area(cma);
+
+	return cma;
+}
+
+void cma_free(struct cma *cma)
+{
+	kfree(cma);
+}
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
