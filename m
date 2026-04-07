Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H+AEb9k5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33ECE431AD5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21C51406B0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:09 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3A5663F96E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 09:26:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20251104.gappssmtp.com header.s=20251104 header.b=k70lIqd9;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.53) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43ba1f3fa7eso5036088f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2026 02:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1775553979; x=1776158779; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4JppuW+8jHhiWrz5kQ42R8XjkKGXIqfSYDySDPjjqyw=;
        b=k70lIqd9AmCUH4e1aLgilRPfK/za/FaWkMcDM8lVMvGOn+fkE7iV8XK305av0jq9p8
         gME6AW/UQKMiWOZOCSQSA1Q0vGw+/KbMTaugHrxsDbPzk54AELEXrQFAlNx37AVfE0N2
         7RhNSzSXREHIKtpxWHmyyz2K4UKAzTRxxOs9lAaIUYWvcQi2gsvc0xIs37r9yNxZygA/
         tKjMJU92W0N74IHXBq6y7fIfkxa+cQjUNmU1tOEDHsab2etIt8mK46LG+jPgsY+tQPCW
         k0Z0LwBgI/JKaFx02R87DijrjUvYnwvM3MvKKdrFgD/Blkz3jnFS5Qu5tn111/eW435e
         gGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775553979; x=1776158779;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4JppuW+8jHhiWrz5kQ42R8XjkKGXIqfSYDySDPjjqyw=;
        b=KaaDAqC+QF8ksvvEexbz5FEcmjyE/fdZN9yEjxIrV2heEdOpGnOUwWqkJFg4EzmFHS
         QSlfnNPtyj59SJZag5j8gU9QAQ7mogwah2rbGzQQ+0MjJ8anZpNnLauRd1QiIUb1hUAv
         yygrxjeeqLvXmZVvoFmVUwNe1RevosBeW6HgqVvSNP2WKuVG/h+Wx0UIZL7nZYDSKIht
         XOhR3qBxQYHEU88WabdhvpiVgkgFuU71TcmNiMRtUe2doBUxkccGJt7fqqdrcDp7UfXh
         XoarxorjCaNuUJuNqJlFjqw+iK3jaMRDZrd5arnvv+ZTdVbpadM8jAmVOKNc/ALFaagA
         gymg==
X-Forwarded-Encrypted: i=1; AJvYcCU22kSrkqEmID9duP8THfeOuSgorTWjvnHSfGWk6xsHf9W2Te+irKbeQUxqFj/l4GTZnv6fyzStw+mXOmQr@lists.linaro.org
X-Gm-Message-State: AOJu0YyU+0G8opcVIdJUi6vVPPVrNFYeUfGFyXbX8K60zmKFEBoLCunt
	RwLDh8p1Rnvd6XNzx/7whPL55yv5c6lPRqH7JR8H4MNXpR/m1yeGD1X6SUZLubMWd6A=
X-Gm-Gg: AeBDiev3p9hsp40NRkKCTcrYIKHhQ62MSsAHimmDDdfbNLMK8xIN0TLPQRVji6jqq2H
	GCGKqv0oenPzNcCqI8pailHKAqLVWC8mtTJMAYT3XpTzGikSbrwUse7huewuZIUazgqe7au3UWQ
	aUWvwpieaz0lUAQIIvcrYa2+JkQOUjRR3C/GfR4A/4xu3gpbYyoCKQkdztEdD86iorEx4nF7ddz
	jlROULhbQX61TM4MwhSvjcgzL9/xpNkXFKhisxlK7hf48+eBU8fQkwv0XShFNbqFIg6+yebEPBi
	ubhCNEz44hGGIdmx1xCslTUfeWdzxe+Zp9r3nDnMdn70m00TOw3W/EKjh+NhOYBXwZBRv1bPyp7
	ffKMJpBGal/SMyq0C8xkecKTbIBeVqLy7ly9YrhuaM1PcpMrekJmu2iJKSfV81H1GQqiW0AMDd9
	i0ajsY7TgZA+rBng==
X-Received: by 2002:a05:600c:6098:b0:488:9fb7:376d with SMTP id 5b1f17b1804b1-4889fb73b1amr196429615e9.28.1775553978818;
        Tue, 07 Apr 2026 02:26:18 -0700 (PDT)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488a91686f9sm268832955e9.10.2026.04.07.02.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 02:26:18 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Tue,  7 Apr 2026 11:26:17 +0200
Message-ID: <20260407092617.635223-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 37BAZ3XJKZ7MSWKESL2DHCBD6AAXZFVK
X-Message-ID-Hash: 37BAZ3XJKZ7MSWKESL2DHCBD6AAXZFVK
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:53 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/37BAZ3XJKZ7MSWKESL2DHCBD6AAXZFVK/>
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
	DATE_IN_PAST(1.00)[320];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.525];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,resnulli.us:mid]
X-Rspamd-Queue-Id: 33ECE431AD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Document the system_cc_shared dma-buf heap that was introduced
recently. Describe its purpose, availability conditions and
relation to confidential computing VMs.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: T.J.Mercier <tjmercier@google.com>
---
 Documentation/userspace-api/dma-buf-heaps.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
index 05445c83b79a..f56b743cdb36 100644
--- a/Documentation/userspace-api/dma-buf-heaps.rst
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -16,6 +16,13 @@ following heaps:
 
  - The ``system`` heap allocates virtually contiguous, cacheable, buffers.
 
+ - The ``system_cc_shared`` heap allocates virtually contiguous, cacheable,
+   buffers using shared (decrypted) memory. It is only present on
+   confidential computing (CoCo) VMs where memory encryption is active
+   (e.g., AMD SEV, Intel TDX). The allocated pages have the encryption
+   bit cleared, making them accessible for device DMA without TDISP
+   support. On non-CoCo VM configurations, this heap is not registered.
+
  - The ``default_cma_region`` heap allocates physically contiguous,
    cacheable, buffers. Only present if a CMA region is present. Such a
    region is usually created either through the kernel commandline
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
