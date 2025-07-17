Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0ECB087A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jul 2025 10:10:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8BB945D1C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jul 2025 08:10:49 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 4BFE7441C4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jul 2025 08:10:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LCd8B6UO;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 08E5DA53C0A;
	Thu, 17 Jul 2025 08:10:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 328D8C4CEE3;
	Thu, 17 Jul 2025 08:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752739837;
	bh=8pASZhtZ3qwCBE2BfGrchW2HH5fvQFVtEKNbivlGeOc=;
	h=From:Date:Subject:To:Cc:From;
	b=LCd8B6UOWhRnn9sqomulKaLC7A2aduun/R6o725gOLIY6r2Yww+39J8wFs//msTo1
	 eijWfhK3VO6tiHMKL7t0bi2v0OffNr0w7W9gp1ONougjpY4JCR4qS/dxeoLep0r5Up
	 +1E+OWe8ifHpexsKZ3m1Sjh2aOULqYuUaK8nc3KfoSjWyenYPWrPO2Et6SdYpf7LEB
	 cEusR8DDl62Zx12qnz9MUZU3h5eVs7N7BUpi/El2cv0CzJ9xnt4epYAwsChvuTRcfM
	 wmhqq57ajrr+S1L2hxL2Q8VGoRWz8RLP2QFI6BygrUgxQvnI9z73PlKGXlChUmc7og
	 rigHAgjsIzTaQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 17 Jul 2025 10:10:14 +0200
MIME-Version: 1.0
Message-Id: <20250717-dma-buf-heap-names-doc-v3-1-d2dbb4b95ef6@kernel.org>
X-B4-Tracking: v=1; b=H4sIAOWveGgC/4XNyw7CIBCF4VdpWDuGS2+68j2MCwpDS7TQgBJN0
 3eXdmNcGJf/SeabmUQMFiM5FjMJmGy03uUQu4KoQboewerchFNe0YpT0KOE7mFgQDmBkyNG0F6
 BYLxmUlJlsCb5eApo7HODz5fcg413H17bn8TW9S+ZGDCQnWCmKVt6QDxdMTi87X3oyWom/nFqV
 v90eHZaiaVgTal0Z76cZVnemc5LnQUBAAA=
X-Change-ID: 20250520-dma-buf-heap-names-doc-31261aa0cfe6
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3304; i=mripard@kernel.org;
 h=from:subject:message-id; bh=8pASZhtZ3qwCBE2BfGrchW2HH5fvQFVtEKNbivlGeOc=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBkV6389ePzkyB+HKI9ilhcBig9Zmg7Z+vx/o3DhsIXXY
 q93Dt8fdUxlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJsE1jrC/bd2jy+TOuljxT
 3Tl3us39kifBf/1L/32vmklsvPczA0+p3faZ/tQgeF6SzYazf1zlpRnrdH4wn+3raJ7jx/fLaxb
 b9qpljDqRZr8bJJ46KHI93TBPueGc35fuxrBve1gdkhq753UAAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4BFE7441C4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[147.75.193.91:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15830, ipnet:147.75.193.0/24, country:NL];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,redhat.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	URIBL_BLOCKED(0.00)[42000000-cacheable-contiguous:email,2.128.222.128:email,nyc.source.kernel.org:rdns,nyc.source.kernel.org:helo];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: KD3L5XEQLTAERKQGB7N6EHCUALIPRSCY
X-Message-ID-Hash: KD3L5XEQLTAERKQGB7N6EHCUALIPRSCY
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KD3L5XEQLTAERKQGB7N6EHCUALIPRSCY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We've discussed a number of times of how some heap names are bad, but
not really what makes a good heap name.

Let's document what we expect the heap names to look like.

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Changes in v3:
- Grammar, spelling fixes
- Remove the cacheable / uncacheable name suggestion
- Link to v2: https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc-v2-1-8ae43174cdbf@kernel.org

Changes in v2:
- Added justifications for each requirement / suggestions
- Added a mention and example of buffer attributes
- Link to v1: https://lore.kernel.org/r/20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org
---
 Documentation/userspace-api/dma-buf-heaps.rst | 35 +++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
index 535f49047ce6450796bf4380c989e109355efc05..3ee4e7961fe390ba356a2125d53b060546c3e4a6 100644
--- a/Documentation/userspace-api/dma-buf-heaps.rst
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -21,5 +21,40 @@ following heaps:
    usually created either through the kernel commandline through the
    `cma` parameter, a memory region Device-Tree node with the
    `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES` or
    `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, it
    might be called ``reserved``, ``linux,cma``, or ``default-pool``.
+
+Naming Convention
+=================
+
+``dma-buf`` heaps name should meet a number of constraints:
+
+- The name must be stable, and must not change from one version to the other.
+  Userspace identifies heaps by their name, so if the names ever change, we
+  would be likely to introduce regressions.
+
+- The name must describe the memory region the heap will allocate from, and
+  must uniquely identify it in a given platform. Since userspace applications
+  use the heap name as the discriminant, it must be able to tell which heap it
+  wants to use reliably if there's multiple heaps.
+
+- The name must not mention implementation details, such as the allocator. The
+  heap driver will change over time, and implementation details when it was
+  introduced might not be relevant in the future.
+
+- The name should describe properties of the buffers that would be allocated.
+  Doing so will make heap identification easier for userspace. Such properties
+  are:
+
+  - ``contiguous`` for physically contiguous buffers;
+
+  - ``protected`` for encrypted buffers not accessible the OS;
+
+- The name may describe intended usage. Doing so will make heap identification
+  easier for userspace applications and users.
+
+For example, assuming a platform with a reserved memory region located at the
+RAM address 0x42000000, intended to allocate video framebuffers, physically
+contiguous, and backed by the CMA kernel allocator, good names would be
+``memory@42000000-cacheable-contiguous`` or ``video@42000000``, but
+``cma-video`` wouldn't.

---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250520-dma-buf-heap-names-doc-31261aa0cfe6

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
