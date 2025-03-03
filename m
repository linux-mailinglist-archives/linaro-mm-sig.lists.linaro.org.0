Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B348EA4C5FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Mar 2025 17:03:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5EA7C44B3A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Mar 2025 16:03:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 9364E44544
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Mar 2025 16:02:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=P1C9o2ia;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1DEB15C5A1B;
	Mon,  3 Mar 2025 16:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44E5EC4CED6;
	Mon,  3 Mar 2025 16:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741017772;
	bh=VloWLNuJy+a+QMiYC5t2AH/V4T4fUJVth/jJq4Qzt9o=;
	h=From:To:Cc:Subject:Date:From;
	b=P1C9o2iawqT4rduu7fga8AP5SQKrG7Dm8sgPxPMbfCjQJK20NYWGKFD1Pk3wFPZSr
	 cAGlI2HmWKxlMF+JLUnRHsO3agzJXu9cAHGRdlJPGCeL4J6le57XcnQdOyoFj2d8Cv
	 Dk9sj78CCyTpBNcpSue988dENnggywPMpBacGvu9OjBkngYovq2QL9XbZkA70S6Sxe
	 CohGyL8n8jY4C+NaNr/O4yR9XWJJfzQPPMGqIhHo78wFqPJtasolzBOlFd+CdxGql1
	 dsOp0mRYny4LVhTFGr9a4sE3HWMT7Yt0ByodRxhp6FjaTa8zR6fqlPYv+f9buKHMWW
	 t+eyBjgi2wxFg==
From: Maxime Ripard <mripard@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon,  3 Mar 2025 17:02:49 +0100
Message-ID: <20250303160249.118549-1-mripard@kernel.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9364E44544
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_LOW(-1.00)[kernel.org:dkim];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from,100.75.92.58:received];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: MX3YBCUGNKJ2RZIU7VWJ25LPIDPNYXWZ
X-Message-ID-Hash: MX3YBCUGNKJ2RZIU7VWJ25LPIDPNYXWZ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MX3YBCUGNKJ2RZIU7VWJ25LPIDPNYXWZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Following a recent discussion at last Plumbers, John Stultz, Sumit
Sewal, TJ Mercier and I came to an agreement that we should document
what the dma-buf heaps names are expected to be, and what the buffers
attributes you'll get should be documented.

Let's create that doc to make sure those attributes and names are
guaranteed going forward.

Signed-off-by: Maxime Ripard <mripard@kernel.org>

---

Changes from v2:
  - Remove exhaustive list of names for platforms, and just mention the
    alternatives.
  - Add MAINTAINERS entry

Changes from v1:
  - Add the mention that the cma / reserved heap is optional.
---
 Documentation/userspace-api/dma-buf-heaps.rst | 25 +++++++++++++++++++
 Documentation/userspace-api/index.rst         |  1 +
 MAINTAINERS                                   |  1 +
 3 files changed, 27 insertions(+)
 create mode 100644 Documentation/userspace-api/dma-buf-heaps.rst

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
new file mode 100644
index 000000000000..5b92d69646f6
--- /dev/null
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -0,0 +1,25 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==============================
+Allocating dma-buf using heaps
+==============================
+
+Dma-buf Heaps are a way for userspace to allocate dma-buf objects. They are
+typically used to allocate buffers from a specific allocation pool, or to share
+buffers across frameworks.
+
+Heaps
+=====
+
+A heap represent a specific allocator. The Linux kernel currently supports the
+following heaps:
+
+ - The ``system`` heap allocates virtually contiguous, cacheable, buffers
+
+ - The ``cma`` heap allocates physically contiguous, cacheable,
+   buffers. Only present if a CMA region is present. Such a region is
+   usually created either through the kernel commandline through the
+   `cma` parameter, a memory region Device-Tree node with the
+   `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES` or
+   `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, it
+   might be called ``reserved``, ``linux,cma``, or ``default-pool``.
diff --git a/Documentation/userspace-api/index.rst b/Documentation/userspace-api/index.rst
index b1395d94b3fd..9cbe4390c872 100644
--- a/Documentation/userspace-api/index.rst
+++ b/Documentation/userspace-api/index.rst
@@ -42,10 +42,11 @@ Devices and I/O
 
 .. toctree::
    :maxdepth: 1
 
    accelerators/ocxl
+   dma-buf-heaps
    dma-buf-alloc-exchange
    gpio/index
    iommufd
    media/index
    dcdbas
diff --git a/MAINTAINERS b/MAINTAINERS
index 8e0736dc2ee0..ef0364e65aef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6911,10 +6911,11 @@ R:	T.J. Mercier <tjmercier@google.com>
 L:	linux-media@vger.kernel.org
 L:	dri-devel@lists.freedesktop.org
 L:	linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
 S:	Maintained
 T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/userspace-api/dma-buf-heaps.rst
 F:	drivers/dma-buf/dma-heap.c
 F:	drivers/dma-buf/heaps/*
 F:	include/linux/dma-heap.h
 F:	include/uapi/linux/dma-heap.h
 F:	tools/testing/selftests/dmabuf-heaps/
-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
