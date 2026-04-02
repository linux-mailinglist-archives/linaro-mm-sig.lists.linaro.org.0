Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDHcCwVk5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E73431904
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D607840690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:36:03 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 978A13F90B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 14:11:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=M4bOMWai;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.41) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-486fc4725f0so9690335e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 07:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1775139064; x=1775743864; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x+ekjncP59XWcpI8woAJDAw1Fg3HF0fV5kIcIgDAtdU=;
        b=M4bOMWaibXZ2+1+ryAFlQ4hDCsxBQNBuj9+rDaCMDrBVWCbpp1VGpn/NwrdNVb8Wvq
         zDSHNqIjqaBNpgHZzgYL5pUku20rIQq+SDFa3TdocYoZmfrTsBNRFcI14QdoNaYUBwgd
         Cwmc2lWzvQ7ED0qByi4Ucv6EfJFCyloAyh+0c58DYnC3hJnlEGltJbbpmkIzBx1bPH1w
         5jEZ6mIjd0l6sfANUi+UI1PES1LZ/3KHmwieuwkxS9IGnasLoeANFgIRi1a92hQ5u358
         xTqYQ2HDUFei0OYo43RUWRxnpamQhriTCNuvaIwxKZR6hMhes2hZuKjWq5bY7LdJdXN0
         iX0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775139064; x=1775743864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+ekjncP59XWcpI8woAJDAw1Fg3HF0fV5kIcIgDAtdU=;
        b=XVzkFYdGP53lCbPJpkTCdrY4WkuaEeiXS5g+3jvddHfawNwMEmQFYM3hlb+LqB4Wtu
         nDVjUMCJCAb1LYXJrQxUgk/5Wn4KR320cZSBufFmkxRMIwB/FHIYqQgJdq0Gib0Smbdi
         af2WqEaWzdPmEhf+R92bOJzbFRw9eheCsNmgAHIjJRPXfWbXtBG3m1hMUQNhlKR6KXPS
         wBDfq1J5x45M+/jnGCua7I+Nvk6AP7OqexTk5JfNsyfm4YIRn/gEOklirecUCmKISzg3
         CQ6xvgIYGbr871vnlu5XTpqTq4dSAP/iorU19CP9h279GMf1RjSR/H7ihXwy3hkpW/PJ
         4dew==
X-Forwarded-Encrypted: i=1; AJvYcCUHjAKMpdn4PnCuCrX6SeMiEy1YSQ/1XS24g12V8jIa1YnMiqb7XR8ZBSAoGyrGtFRn1iYJSOsprwLI9k/K@lists.linaro.org
X-Gm-Message-State: AOJu0Yy+d17OdDIllg1hZaolsDOQUBg/0BHa5N+2YN4Siiq92hE/Jpyx
	MvgPzK2/eBU/X+l4DLCUzZATuLDfIZtVAGveGsZJznayvfrVy77hvw4EN0D4DOLGAvQ=
X-Gm-Gg: ATEYQzwx8/dg2BQrp7Q5+AamkvzWEBjABgDIichz2XKM9224CtnNKZP6bLglIcV7UE0
	WtZSDea/fo4mKzVxIVPATG7vGMm3fHaN0PP0wztGIZnbHkJMkbuODN5JHLkbnkgM/pK2YVQ6fY8
	9ABQ/RHhKnb/2R2iymrqxVDm/re29M5zV5dpn2pwKYwJLm7dpufRx5gyBXZsGVVQD5YpyeJeeJu
	16D/wSh2hgjSUIv+q8JDSkyBI55PIAYMVqdN/3GatU0NQgz8MhxybmuScqjHqt+C6ORRa2RjFeD
	gU4EmGvbSoyY8KX4/zmOvC9iWRLlgJGPILmzXdpU71VBTRYVdjobfPZZPuIpUdv15d3UCGX6bDi
	SIr1zk+MNQQk/Zlix3GHZhroaFqDuXhkw7LuSThde+YmVEYMy3h0r1ZQe/Pt8LLePtwFyxlvj96
	p7MfittP3rwB6Yww==
X-Received: by 2002:a05:600c:8708:b0:486:fe83:861c with SMTP id 5b1f17b1804b1-4888e064a89mr45823005e9.7.1775139064484;
        Thu, 02 Apr 2026 07:11:04 -0700 (PDT)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48891d5437fsm20447355e9.5.2026.04.02.07.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 07:11:04 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Thu,  2 Apr 2026 16:11:03 +0200
Message-ID: <20260402141103.598495-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3DOKT6IFUUEE2ENXGCZ67AMGPJRQ3CRA
X-Message-ID-Hash: 3DOKT6IFUUEE2ENXGCZ67AMGPJRQ3CRA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:45 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3DOKT6IFUUEE2ENXGCZ67AMGPJRQ3CRA/>
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
	DATE_IN_PAST(1.00)[435];
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
	NEURAL_SPAM(0.00)[0.528];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D2E73431904
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Document the system_cc_shared dma-buf heap that was introduced
recently. Describe its purpose, availability conditions and
relation to confidential computing VMs.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
 Documentation/userspace-api/dma-buf-heaps.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
index 05445c83b79a..591732393e7d 100644
--- a/Documentation/userspace-api/dma-buf-heaps.rst
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -16,6 +16,14 @@ following heaps:
 
  - The ``system`` heap allocates virtually contiguous, cacheable, buffers.
 
+ - The ``system_cc_shared`` heap allocates virtually contiguous, cacheable,
+   buffers using shared (decrypted) memory. It is only present on
+   confidential computing (CoCo) VMs where memory encryption is active
+   (e.g., AMD SEV, Intel TDX). The allocated pages have the encryption
+   bit cleared, making them accessible for device DMA without TDISP
+   support. On non-CoCo VMs configurations, this heap is
+   not registered.
+
  - The ``default_cma_region`` heap allocates physically contiguous,
    cacheable, buffers. Only present if a CMA region is present. Such a
    region is usually created either through the kernel commandline
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
