Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCFFB0C2A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 13:18:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB9E2445CB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jul 2025 11:18:54 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id C5B6045D31
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jul 2025 11:17:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gUIi1Mjc;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 94163A52D3A;
	Mon, 21 Jul 2025 11:17:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECDBAC4CEF4;
	Mon, 21 Jul 2025 11:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096671;
	bh=ZzIQMj2Qi1QqJ5MVd3O/jzU3y2DI0Os/GobSPh/q4e0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gUIi1MjcCWbuCDNdOxoH5rN4rx4xBzEi4zWIucdoBrEq6oduafd5YMuf/TqV1JO6r
	 D0LYbKlJF0SqRJ9PcU+c8Tnffy7lGwUF6zThZlDK+DOAGMiBWDgrzWf7W7bARt8v/f
	 fJgtlsjhkpcQBM3ZKAfEKFSvs+UDaMWHpHigCAyh8eXdXC2OY3yzJT9dx5/dBGjfkH
	 ciMlAzwpFZhnQCbTgV1eFG6KBCliTEN3j0CqFaZeVO2bQuoSi9at45V5hqmapVRNQL
	 fVNOq2Nwvvf42gcINScoZirZDuMJVQxNa3dJrXUAcHe+CIuj9IJi1ubYFVhBqlRC4m
	 ZUMFffImy6Tyw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 21 Jul 2025 13:17:33 +0200
MIME-Version: 1.0
Message-Id: <20250721-dma-buf-ecc-heap-v7-4-031836e1a942@kernel.org>
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
In-Reply-To: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Jonathan Corbet <corbet@lwn.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401; i=mripard@kernel.org;
 h=from:subject:message-id; bh=ZzIQMj2Qi1QqJ5MVd3O/jzU3y2DI0Os/GobSPh/q4e0=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBl1iuelfs8VOPHLoe/KrNPHHM0Nm66V73jbeD5/01ejs
 6tvWIgf7JjKwiDMySArpsjyRCbs9PL2xVUO9it/wMxhZQIZwsDFKQATyUxlrBXXkMldt8Le7dq6
 TcnTZ27M++O6OmZDouq7jdf8zFcemXXWWljs0U3WN+dDc+RZpn6arc/Y8OZE+T+ODeFP9nZrRYk
 9V473CFUocf5X1rPE4Ful3/8/1h9c2k7a8HyqV+6+vCx5q58jAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Result: default: False [-5.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[147.75.193.91:from];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15830, ipnet:147.75.193.0/24, country:NL];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C5B6045D31
X-Spamd-Bar: -----
Message-ID-Hash: GLBJ5EMYQGJJNOLHRECVUMQWE2BCUWPH
X-Message-ID-Hash: GLBJ5EMYQGJJNOLHRECVUMQWE2BCUWPH
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 4/5] dma: contiguous: Reserve default CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLBJ5EMYQGJJNOLHRECVUMQWE2BCUWPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The CMA code, in addition to the reserved-memory regions in the device
tree, will also register a default CMA region if the device tree doesn't
provide any, with its size and position coming from either the kernel
command-line or configuration.

Let's register that one for use to create a heap for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index e81982c0ee8f5c0654731adb611df4bcc4637c7c..7aec2a559607b86e4d9df33ae2c004f7fb30fff1 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -237,17 +237,23 @@ void __init dma_contiguous_reserve(phys_addr_t limit)
 		selected_size = max(size_bytes, cma_early_percent_memory());
 #endif
 	}
 
 	if (selected_size && !dma_contiguous_default_area) {
+		int ret;
+
 		pr_debug("%s: reserving %ld MiB for global area\n", __func__,
 			 (unsigned long)selected_size / SZ_1M);
 
 		dma_contiguous_reserve_area(selected_size, selected_base,
 					    selected_limit,
 					    &dma_contiguous_default_area,
 					    fixed);
+
+		ret = dma_heap_cma_register_heap(dma_contiguous_default_area);
+		if (ret)
+			pr_warn("Couldn't register default CMA heap.");
 	}
 }
 
 void __weak
 dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)

-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
