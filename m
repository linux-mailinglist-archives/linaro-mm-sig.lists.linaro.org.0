Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AD496E69A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 02:03:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D4044645
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 00:03:35 +0000 (UTC)
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	by lists.linaro.org (Postfix) with ESMTPS id 9E66743FEB
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 00:03:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="UoF1+gM/";
	spf=pass (lists.linaro.org: domain of 31EbaZgkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com designates 209.85.215.202 as permitted sender) smtp.mailfrom=31EbaZgkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-7d5a54dcaefso539741a12.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Sep 2024 17:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725581013; x=1726185813; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lb94RnSDbmLGLcyEx39Gw1x8H5QxDPdWSPxan+FyvB0=;
        b=UoF1+gM/IBNrWfhUW9OrTivprzjEUgskb2b2KXgZJy+g5xhWNDCALHDqcuLOtACtc9
         +ks6C8QOCWfNYlRUA5NfEFKoLQpiJ19ou7bPJ3GW9uElxUrPT6R4EjhBLZ3PLLrLO1Uh
         YxIF2YAH+YGpsR2yks0iOya3c1XJBk7kArgzMhUIrFRhMIChIiBrPX2mxbkBxihX8Yzp
         aOVWY2eOMfPO1BEXYnkQNuEL8sHTTyPjLUqughpyj+Z/5dlN5ebIipc/3VAfZn2riy3o
         YPv9XiLsjq1qJxCsmtEFL66+lfrFq/rNbNKII+D4LN158LdAXBEiYuj+lWx/S56YitWe
         H9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725581013; x=1726185813;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lb94RnSDbmLGLcyEx39Gw1x8H5QxDPdWSPxan+FyvB0=;
        b=DfgUbwSVC2HJnW1mLNzMwe1l6Jfe8NogvtyElejlQtIWTM+JOJY+x9RjUTD6nqZIvm
         uRxJWmLZzCtg+jPyCXpXy/O6Q44n91JDBjhcTPAXyrvL6d0zqeozvljuLO1ab4TYMf1z
         pSRaZEBUODozXeuQx9leU18gueuXyBZQ9m5vn5UUrvcY+nHOq1wxDHuwLPymJjgpc52S
         63DMGAqAIids57TzMWqb6UAktMQPoTJ9hpVVCBEMWCagJuGdCLPOhbYSCaIlJKEwOThI
         DhMVG2rGawGhMM7bgwSJan8+xr3ZzFwp76+ANyLUStgG9xEQEfNJnZjv4ZIyHPlcPcjZ
         6L9w==
X-Forwarded-Encrypted: i=1; AJvYcCVPvjz6/yAwFyrGbEdQy23UnJojGnmWxsMWh/ZQnQ0dU/MvzJbfDZsRiYR6LXxg8BA07seBfYDHxQJ0tv7U@lists.linaro.org
X-Gm-Message-State: AOJu0YzA4u/PQRy4rZ4W+rHnl5nPPTGLPwQ20LltHE1XeRHU81u4AyYR
	9gcmMqWbtTM4B0h68Eko7r97M5JTJ/7u5qNqBUvoyzddohaR4q2EwmOJ+6w+LyZUVfs5KiiEUGK
	hzLaoEgoJ4Bv4dg==
X-Google-Smtp-Source: AGHT+IGRECBEERbLSskRzYgPKP8c+xQVePlIpPB7xS8H6FIHSZLW2hXff4BteDxNIf99GTAFfJ41K18bV+IfaxY=
X-Received: from tj-virt.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5683])
 (user=tjmercier job=sendgmr) by 2002:a17:902:d2ce:b0:205:799f:125e with SMTP
 id d9443c01a7336-206f0622e71mr203235ad.10.1725581012511; Thu, 05 Sep 2024
 17:03:32 -0700 (PDT)
Date: Fri,  6 Sep 2024 00:03:12 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
Message-ID: <20240906000314.2368749-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E66743FEB
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,31EbaZgkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.202:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,31EbaZgkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: ZS5H36PKV2JLQNRPBWX3Q5XJSLINSS3F
X-Message-ID-Hash: ZS5H36PKV2JLQNRPBWX3Q5XJSLINSS3F
X-MailFrom: 31EbaZgkKDQk2svn0lrn0pxxpun.lxvurwj0x-vv-1rpur121.urwj0x.x0p@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Add __init to CMA and system heap module_init functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZS5H36PKV2JLQNRPBWX3Q5XJSLINSS3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Shrink the kernel .text a bit after successful initialization of the
heaps.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/heaps/cma_heap.c    | 4 ++--
 drivers/dma-buf/heaps/system_heap.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index c384004b918e..39c1e533a2f2 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -366,7 +366,7 @@ static const struct dma_heap_ops cma_heap_ops = {
 	.allocate = cma_heap_allocate,
 };
 
-static int __add_cma_heap(struct cma *cma, void *data)
+static int __init __add_cma_heap(struct cma *cma, void *data)
 {
 	struct cma_heap *cma_heap;
 	struct dma_heap_export_info exp_info;
@@ -391,7 +391,7 @@ static int __add_cma_heap(struct cma *cma, void *data)
 	return 0;
 }
 
-static int add_default_cma_heap(void)
+static int __init add_default_cma_heap(void)
 {
 	struct cma *default_cma = dev_get_cma_area(NULL);
 	int ret = 0;
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index d78cdb9d01e5..26d5dc89ea16 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -421,7 +421,7 @@ static const struct dma_heap_ops system_heap_ops = {
 	.allocate = system_heap_allocate,
 };
 
-static int system_heap_create(void)
+static int __init system_heap_create(void)
 {
 	struct dma_heap_export_info exp_info;
 
-- 
2.46.0.598.g6f2099f65c-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
