Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PkmEeYQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D9123411D35
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1FD444CF6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:04 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by lists.linaro.org (Postfix) with ESMTPS id DAAAF3F9D9
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 15:38:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=dsEmcNCF;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.66) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4801bc32725so24043595e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 07:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770651494; x=1771256294; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xCp//tMOTqGacLZXvOrrIiaVx7JZ5khmQmJbVkzQNLk=;
        b=dsEmcNCFIL7aKa/9AfXsGNi9HAxXEqukhzpSgvJxSSOwtI0P9tqiFmxJ/C0hTJXZAj
         4oDmP+dYQ+TxPECtSnjpd28KQ7Ho7+TFGvqs1/NOvlraQxIWdwGUQJd5LrJKR4HA4iHE
         xmErFVu9nimrMhLYnKK0Azi1mUdw/FiTFuaopZSJYv2x1+3iY6/Ujchtiv5fTEfR1WCt
         fKNUpaDjhzE/9Uit6zhaoEC8GfbUCTxMthe0RRP8FqfFhkU3sxtfAyqVzvjutMKksPUW
         2D65idJaHRVcXonblTbR3jHiwNkfcXuSUDb8F/H90m4oQXEtIuTNbhJ77pkobHFB9ppd
         svxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770651494; x=1771256294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xCp//tMOTqGacLZXvOrrIiaVx7JZ5khmQmJbVkzQNLk=;
        b=sj47827igJESzEtorrOHCvRrcF+jCoS/wpjHaJQ8SrZR3HCUDB2WMu4asLAl2LXbfv
         bpD6hwUuG2H/libJNJh3665V2tUFN26Pyf27MgAqU2mFshrBRkhahSrJ8gnqBMO0IqT6
         abW6WyFxmvrCcJSYWAf/aAb09NWDB7kQ0Cdj7G29BHOp6Lc4RRtQgJQTRJDDxW+AdW1I
         c+tRvdam45sPxk/Xbp3BLMrzd6C3DTJmjGr4TUwJUr2vrLZrZHjYMTMTKN2vAPsHNTWT
         smrbFcI+cHjTW7skS6GZZqg7urNL+I/3TbjCkqjSlgPr9184fiMoR6bfwHWpJeesSSl3
         lexg==
X-Forwarded-Encrypted: i=1; AJvYcCU3K1kRXZgzEgsNq4xOnOl6MhuLelXEY9Eo2j8Gg6t0duH+tGw/UDim/ODM7+qfoZR5sDzcx0dfzREq33AU@lists.linaro.org
X-Gm-Message-State: AOJu0YwUzShqXp7UpBxno1/ZB8cFq3FvdYEgxhLmkE1WpVXUFtNzSpIU
	dvltKXpmiRqFsuwwVuXjtuFtonqgQW2GL5BNrt2jIFW/EsZSGMJb1J9FN0k9rlRR8HQ=
X-Gm-Gg: AZuq6aLoCwjYfmogyo9+udn8OrzuW0zE1kkz/IggSJvCLzJs6IV6NuJnz8HbeUcygzh
	XxpcASyOwCxcsKqbR1wXrMNpM66hpnw+aLjlS9LHLrhWsnyqqvn6ez+ZvD8+rLnadQhA5Dl6uqP
	SAMBxvoHlu42oX/ZQQ8/G+5unLLA6s7kT9CC+4Zf+rEHphW+OZYvLicSOJ/oVwbVhdolszgCmEf
	78DIbCmfvP3dX4WNhh6QD/WfImID+f9SPk3CaViBiJKqmiHBLjOoqn26xS1K1Zp4dtNGeme/LDa
	OFFt1JYxeO4/0Gy9qYNP8H4PxrPIgNhHaXraPSFAUVBV3r/2j2rzJNLEMwxC1p2Glbbk+OmBw+h
	1ah2wCQ6XeSoJzNHWtn3PrA3cZj+q4WqVbnnaA5nnoNkYVEFavhBFUlZidcxCEqud//FlV1CYEO
	Dk8A==
X-Received: by 2002:a05:600c:c16a:b0:475:dcbb:7903 with SMTP id 5b1f17b1804b1-483201e1895mr157429035e9.9.1770651493820;
        Mon, 09 Feb 2026 07:38:13 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483206b8ebbsm382402735e9.1.2026.02.09.07.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:38:13 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon,  9 Feb 2026 16:38:07 +0100
Message-ID: <20260209153809.250835-4-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260209153809.250835-1-jiri@resnulli.us>
References: <20260209153809.250835-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U7KBOFZQTRFFEQVLOXQ5HJIIUTGJEKFB
X-Message-ID-Hash: U7KBOFZQTRFFEQVLOXQ5HJIIUTGJEKFB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:11 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/5] dma-buf: heaps: use designated initializer for exp_info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U7KBOFZQTRFFEQVLOXQ5HJIIUTGJEKFB/>
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
	NEURAL_HAM(-0.00)[-0.362];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:mid,nvidia.com:email,linaro.org:email,exp_info.name:url]
X-Rspamd-Queue-Id: D9123411D35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Use designated initializer for dma_heap_export_info instead of
separate field assignments and avoid the need to explicitly
zero fields in preparation to follow-up patch.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
 drivers/dma-buf/heaps/cma_heap.c    | 7 ++++---
 drivers/dma-buf/heaps/system_heap.c | 9 ++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 42f88193eab9..d12c98be7fa9 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -388,7 +388,10 @@ static const struct dma_heap_ops cma_heap_ops = {
 
 static int __init __add_cma_heap(struct cma *cma, const char *name)
 {
-	struct dma_heap_export_info exp_info;
+	struct dma_heap_export_info exp_info = {
+		.name = name,
+		.ops = &cma_heap_ops,
+	};
 	struct cma_heap *cma_heap;
 
 	cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);
@@ -396,8 +399,6 @@ static int __init __add_cma_heap(struct cma *cma, const char *name)
 		return -ENOMEM;
 	cma_heap->cma = cma;
 
-	exp_info.name = name;
-	exp_info.ops = &cma_heap_ops;
 	exp_info.priv = cma_heap;
 
 	cma_heap->heap = dma_heap_add(&exp_info);
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 4c782fe33fd4..124dca56e4d8 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -427,13 +427,12 @@ static const struct dma_heap_ops system_heap_ops = {
 
 static int __init system_heap_create(void)
 {
-	struct dma_heap_export_info exp_info;
+	struct dma_heap_export_info exp_info = {
+		.name = "system",
+		.ops = &system_heap_ops,
+	};
 	struct dma_heap *sys_heap;
 
-	exp_info.name = "system";
-	exp_info.ops = &system_heap_ops;
-	exp_info.priv = NULL;
-
 	sys_heap = dma_heap_add(&exp_info);
 	if (IS_ERR(sys_heap))
 		return PTR_ERR(sys_heap);
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
