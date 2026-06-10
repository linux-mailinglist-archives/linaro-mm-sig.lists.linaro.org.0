Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4D39H+9dPWrh1wgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:57:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1607B6C79A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:57:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=kvOQYP94;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A98A40A9F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:57:18 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 9528040499
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 15:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781106254;
	bh=4zVxq3uovh2J8FD1q/PCkdVziJUrgTY6Mn1aPtE5kW4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kvOQYP94595kYCWbedWJmGb9cE7ZfxOtLO7SYqqdDYJfLM79dykwCfzdWU/MTShu9
	 /OTWScSG1ktPNKbTYp1ZcOKrukONd/qJtkSJ2bhr8wffB3uznILf+r5xXXydWm6VPO
	 dvWwjr68rIGiOzDGpY64f56gEko9LNV/Zpu1BZnSDdF1ZixxORzzkgAzB7UF7ZVTz8
	 GEYsn7Mltq8GtOyvIS3IzYk2OP10x6OuBB/ie79KvuSbRBLlVJJH79vmERy+jIf55N
	 txKp3LrOUeURmKFOYjkdPgAT28/Nw6Tk8ZCx3DI3+LxqQRBnykwa3AkAeltPdKYrR8
	 pDtrXrpYQPi2w==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gb97L0D44z4wLv;
	Thu, 11 Jun 2026 01:44:13 +1000 (AEST)
From: Matt Evans <matt@ozlabs.org>
To: Alex Williamson <alex@shazbot.org>,
	Leon Romanovsky <leon@kernel.org>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Alex Mastro <amastro@fb.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 10 Jun 2026 16:43:15 +0100
Message-ID: <20260610154327.37758-2-matt@ozlabs.org>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260610154327.37758-1-matt@ozlabs.org>
References: <20260610154327.37758-1-matt@ozlabs.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MKIROCMRA7WDQA2EPDAWMAZKI74FS6B2
X-Message-ID-Hash: MKIROCMRA7WDQA2EPDAWMAZKI74FS6B2
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:56:59 +0000
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MKIROCMRA7WDQA2EPDAWMAZKI74FS6B2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[361];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1607B6C79A5

The P2PDMA code currently provides two features under the same
CONFIG_PCI_P2PDMA option:

 1.  Locate providers via pcim_p2pdma_provider()
 2.  Manage actual P2P DMA

Some drivers (such as vfio-pci) depend on 1, without having a hard
dependency on 2.

A future commit expands the use of DMABUF in vfio-pci for non-P2P
scenarios, relying on pcim_p2pdma_provider() always being present.  If
that depended on CONFIG_PCI_P2PDMA, it would make vfio-pci only
available if CONFIG_ZONE_DEVICE is present (e.g. 64-bit systems), even
when P2P is not needed.

To resolve this, introduce CONFIG_PCI_P2PDMA_CORE and refactor the
basic provider functionality into a new p2pdma_core.c file.  This is
available even if the CONFIG_PCI_P2PDMA feature is disabled (or
unavailable due to !CONFIG_ZONE_DEVICE).  Then, drivers can enable any
additional P2P features with the original CONFIG_PCI_P2PDMA (available
when CONFIG_ZONE_DEVICE is set).

Signed-off-by: Matt Evans <matt@ozlabs.org>
---
 MAINTAINERS                |   2 +-
 drivers/pci/Kconfig        |  10 ++--
 drivers/pci/Makefile       |   1 +
 drivers/pci/p2pdma.c       | 109 ++--------------------------------
 drivers/pci/p2pdma.h       |  29 +++++++++
 drivers/pci/p2pdma_core.c  | 118 +++++++++++++++++++++++++++++++++++++
 include/linux/pci-p2pdma.h |  24 ++++----
 include/linux/pci.h        |   2 +-
 8 files changed, 174 insertions(+), 121 deletions(-)
 create mode 100644 drivers/pci/p2pdma.h
 create mode 100644 drivers/pci/p2pdma_core.c

diff --git a/MAINTAINERS b/MAINTAINERS
index c2c6d79275c6..b21523b3bd8b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20617,7 +20617,7 @@ B:	https://bugzilla.kernel.org
 C:	irc://irc.oftc.net/linux-pci
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git
 F:	Documentation/driver-api/pci/p2pdma.rst
-F:	drivers/pci/p2pdma.c
+F:	drivers/pci/p2pdma*
 F:	include/linux/pci-p2pdma.h
 
 PCI POWER CONTROL
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 33c88432b728..59d70bc84cc9 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -206,11 +206,7 @@ config PCIE_TPH
 config PCI_P2PDMA
 	bool "PCI peer-to-peer transfer support"
 	depends on ZONE_DEVICE
-	#
-	# The need for the scatterlist DMA bus address flag means PCI P2PDMA
-	# requires 64bit
-	#
-	depends on 64BIT
+	select PCI_P2PDMA_CORE
 	select GENERIC_ALLOCATOR
 	select NEED_SG_DMA_FLAGS
 	help
@@ -226,6 +222,10 @@ config PCI_P2PDMA
 
 	  If unsure, say N.
 
+config PCI_P2PDMA_CORE
+	default n
+	bool
+
 config PCI_LABEL
 	def_bool y if (DMI || ACPI)
 	select NLS
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 41ebc3b9a518..0b32572d57a1 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_PCI_SYSCALL)	+= syscall.o
 obj-$(CONFIG_PCI_STUB)		+= pci-stub.o
 obj-$(CONFIG_PCI_PF_STUB)	+= pci-pf-stub.o
 obj-$(CONFIG_PCI_ECAM)		+= ecam.o
+obj-$(CONFIG_PCI_P2PDMA_CORE)	+= p2pdma_core.o
 obj-$(CONFIG_PCI_P2PDMA)	+= p2pdma.o
 obj-$(CONFIG_XEN_PCIDEV_FRONTEND) += xen-pcifront.o
 obj-$(CONFIG_VGA_ARB)		+= vgaarb.o
diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index 7c898542af8d..50b1a7daf55c 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -21,12 +21,7 @@
 #include <linux/seq_buf.h>
 #include <linux/xarray.h>
 
-struct pci_p2pdma {
-	struct gen_pool *pool;
-	bool p2pmem_published;
-	struct xarray map_types;
-	struct p2pdma_provider mem[PCI_STD_NUM_BARS];
-};
+#include "p2pdma.h"
 
 struct pci_p2pdma_pagemap {
 	struct dev_pagemap pgmap;
@@ -226,110 +221,16 @@ static const struct dev_pagemap_ops p2pdma_pgmap_ops = {
 	.folio_free = p2pdma_folio_free,
 };
 
-static void pci_p2pdma_release(void *data)
+void pci_p2pdma_release_pool(struct pci_dev *pdev, struct pci_p2pdma *p2pdma)
 {
-	struct pci_dev *pdev = data;
-	struct pci_p2pdma *p2pdma;
-
-	p2pdma = rcu_dereference_protected(pdev->p2pdma, 1);
-	if (!p2pdma)
-		return;
-
-	/* Flush and disable pci_alloc_p2p_mem() */
-	pdev->p2pdma = NULL;
-	if (p2pdma->pool)
-		synchronize_rcu();
-	xa_destroy(&p2pdma->map_types);
-
 	if (!p2pdma->pool)
 		return;
 
+	synchronize_rcu();
 	gen_pool_destroy(p2pdma->pool);
 	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
 }
 
-/**
- * pcim_p2pdma_init - Initialise peer-to-peer DMA providers
- * @pdev: The PCI device to enable P2PDMA for
- *
- * This function initializes the peer-to-peer DMA infrastructure
- * for a PCI device. It allocates and sets up the necessary data
- * structures to support P2PDMA operations, including mapping type
- * tracking.
- */
-int pcim_p2pdma_init(struct pci_dev *pdev)
-{
-	struct pci_p2pdma *p2p;
-	int i, ret;
-
-	p2p = rcu_dereference_protected(pdev->p2pdma, 1);
-	if (p2p)
-		return 0;
-
-	p2p = devm_kzalloc(&pdev->dev, sizeof(*p2p), GFP_KERNEL);
-	if (!p2p)
-		return -ENOMEM;
-
-	xa_init(&p2p->map_types);
-	/*
-	 * Iterate over all standard PCI BARs and record only those that
-	 * correspond to MMIO regions. Skip non-memory resources (e.g. I/O
-	 * port BARs) since they cannot be used for peer-to-peer (P2P)
-	 * transactions.
-	 */
-	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
-		if (!(pci_resource_flags(pdev, i) & IORESOURCE_MEM))
-			continue;
-
-		p2p->mem[i].owner = &pdev->dev;
-		p2p->mem[i].bus_offset =
-			pci_bus_address(pdev, i) - pci_resource_start(pdev, i);
-	}
-
-	ret = devm_add_action_or_reset(&pdev->dev, pci_p2pdma_release, pdev);
-	if (ret)
-		goto out_p2p;
-
-	rcu_assign_pointer(pdev->p2pdma, p2p);
-	return 0;
-
-out_p2p:
-	devm_kfree(&pdev->dev, p2p);
-	return ret;
-}
-EXPORT_SYMBOL_GPL(pcim_p2pdma_init);
-
-/**
- * pcim_p2pdma_provider - Get peer-to-peer DMA provider
- * @pdev: The PCI device to enable P2PDMA for
- * @bar: BAR index to get provider
- *
- * This function gets peer-to-peer DMA provider for a PCI device. The lifetime
- * of the provider (and of course the MMIO) is bound to the lifetime of the
- * driver. A driver calling this function must ensure that all references to the
- * provider, and any DMA mappings created for any MMIO, are all cleaned up
- * before the driver remove() completes.
- *
- * Since P2P is almost always shared with a second driver this means some system
- * to notify, invalidate and revoke the MMIO's DMA must be in place to use this
- * function. For example a revoke can be built using DMABUF.
- */
-struct p2pdma_provider *pcim_p2pdma_provider(struct pci_dev *pdev, int bar)
-{
-	struct pci_p2pdma *p2p;
-
-	if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
-		return NULL;
-
-	p2p = rcu_dereference_protected(pdev->p2pdma, 1);
-	if (WARN_ON(!p2p))
-		/* Someone forgot to call to pcim_p2pdma_init() before */
-		return NULL;
-
-	return &p2p->mem[bar];
-}
-EXPORT_SYMBOL_GPL(pcim_p2pdma_provider);
-
 static int pci_p2pdma_setup_pool(struct pci_dev *pdev)
 {
 	struct pci_p2pdma *p2pdma;
@@ -932,8 +833,8 @@ void *pci_alloc_p2pmem(struct pci_dev *pdev, size_t size)
 	struct pci_p2pdma *p2pdma;
 
 	/*
-	 * Pairs with synchronize_rcu() in pci_p2pdma_release() to
-	 * ensure pdev->p2pdma is non-NULL for the duration of the
+	 * Pairs with synchronize_rcu() in pci_p2pdma_release_pool()
+	 * to ensure pdev->p2pdma is non-NULL for the duration of the
 	 * read-lock.
 	 */
 	rcu_read_lock();
diff --git a/drivers/pci/p2pdma.h b/drivers/pci/p2pdma.h
new file mode 100644
index 000000000000..453f4aa7ade8
--- /dev/null
+++ b/drivers/pci/p2pdma.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * PCI Peer 2 Peer DMA support.
+ */
+
+#ifndef _PCI_P2PDMA_H
+#define _PCI_P2PDMA_H
+
+#include <linux/genalloc.h>
+#include <linux/pci-p2pdma.h>
+#include <linux/xarray.h>
+
+struct pci_p2pdma {
+	struct gen_pool *pool;
+	bool p2pmem_published;
+	struct xarray map_types;
+	struct p2pdma_provider mem[PCI_STD_NUM_BARS];
+};
+
+#ifdef CONFIG_PCI_P2PDMA
+void pci_p2pdma_release_pool(struct pci_dev *pdev, struct pci_p2pdma *p2pdma);
+#else
+static inline void pci_p2pdma_release_pool(struct pci_dev *pdev, struct pci_p2pdma *p2pdma)
+{
+}
+#endif
+
+#endif
+
diff --git a/drivers/pci/p2pdma_core.c b/drivers/pci/p2pdma_core.c
new file mode 100644
index 000000000000..1fda15d40196
--- /dev/null
+++ b/drivers/pci/p2pdma_core.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCI Peer 2 Peer DMA support core, providing a bare-bones
+ * pcim_p2pdma_provider() interface to drivers even if full P2PDMA
+ * isn't present.  The full P2PDMA feature is in p2pdma.c (see
+ * CONFIG_PCI_P2PDMA).
+ *
+ * Copyright (c) 2016-2018, Logan Gunthorpe
+ * Copyright (c) 2016-2017, Microsemi Corporation
+ * Copyright (c) 2017, Christoph Hellwig
+ * Copyright (c) 2018, Eideticom Inc.
+ */
+
+#define pr_fmt(fmt) "pci-p2pdma: " fmt
+#include <linux/ctype.h>
+#include <linux/genalloc.h>
+#include <linux/memremap.h>
+#include <linux/pci-p2pdma.h>
+#include <linux/xarray.h>
+
+#include "p2pdma.h"
+
+static void pci_p2pdma_release(void *data)
+{
+	struct pci_dev *pdev = data;
+	struct pci_p2pdma *p2pdma;
+
+	p2pdma = rcu_dereference_protected(pdev->p2pdma, 1);
+	if (!p2pdma)
+		return;
+
+	/* Flush and disable pci_alloc_p2p_mem() */
+	pdev->p2pdma = NULL;
+	pci_p2pdma_release_pool(pdev, p2pdma);
+	xa_destroy(&p2pdma->map_types);
+}
+
+/**
+ * pcim_p2pdma_init - Initialise peer-to-peer DMA providers
+ * @pdev: The PCI device to enable P2PDMA for
+ *
+ * This function initializes the peer-to-peer DMA infrastructure
+ * for a PCI device. It allocates and sets up the necessary data
+ * structures to support P2PDMA operations, including mapping type
+ * tracking.
+ */
+int pcim_p2pdma_init(struct pci_dev *pdev)
+{
+	struct pci_p2pdma *p2p;
+	int i, ret;
+
+	p2p = rcu_dereference_protected(pdev->p2pdma, 1);
+	if (p2p)
+		return 0;
+
+	p2p = devm_kzalloc(&pdev->dev, sizeof(*p2p), GFP_KERNEL);
+	if (!p2p)
+		return -ENOMEM;
+
+	xa_init(&p2p->map_types);
+	/*
+	 * Iterate over all standard PCI BARs and record only those that
+	 * correspond to MMIO regions. Skip non-memory resources (e.g. I/O
+	 * port BARs) since they cannot be used for peer-to-peer (P2P)
+	 * transactions.
+	 */
+	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
+		if (!(pci_resource_flags(pdev, i) & IORESOURCE_MEM))
+			continue;
+
+		p2p->mem[i].owner = &pdev->dev;
+		p2p->mem[i].bus_offset =
+			pci_bus_address(pdev, i) - pci_resource_start(pdev, i);
+	}
+
+	ret = devm_add_action_or_reset(&pdev->dev, pci_p2pdma_release, pdev);
+	if (ret)
+		goto out_p2p;
+
+	rcu_assign_pointer(pdev->p2pdma, p2p);
+	return 0;
+
+out_p2p:
+	devm_kfree(&pdev->dev, p2p);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pcim_p2pdma_init);
+
+/**
+ * pcim_p2pdma_provider - Get peer-to-peer DMA provider
+ * @pdev: The PCI device to enable P2PDMA for
+ * @bar: BAR index to get provider
+ *
+ * This function gets peer-to-peer DMA provider for a PCI device. The lifetime
+ * of the provider (and of course the MMIO) is bound to the lifetime of the
+ * driver. A driver calling this function must ensure that all references to the
+ * provider, and any DMA mappings created for any MMIO, are all cleaned up
+ * before the driver remove() completes.
+ *
+ * Since P2P is almost always shared with a second driver this means some system
+ * to notify, invalidate and revoke the MMIO's DMA must be in place to use this
+ * function. For example a revoke can be built using DMABUF.
+ */
+struct p2pdma_provider *pcim_p2pdma_provider(struct pci_dev *pdev, int bar)
+{
+	struct pci_p2pdma *p2p;
+
+	if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
+		return NULL;
+
+	p2p = rcu_dereference_protected(pdev->p2pdma, 1);
+	if (WARN_ON(!p2p))
+		/* Someone forgot to call to pcim_p2pdma_init() before */
+		return NULL;
+
+	return &p2p->mem[bar];
+}
+EXPORT_SYMBOL_GPL(pcim_p2pdma_provider);
diff --git a/include/linux/pci-p2pdma.h b/include/linux/pci-p2pdma.h
index 873de20a2247..4c42a7b2ee85 100644
--- a/include/linux/pci-p2pdma.h
+++ b/include/linux/pci-p2pdma.h
@@ -67,9 +67,22 @@ enum pci_p2pdma_map_type {
 	PCI_P2PDMA_MAP_THRU_HOST_BRIDGE,
 };
 
-#ifdef CONFIG_PCI_P2PDMA
+#ifdef CONFIG_PCI_P2PDMA_CORE
 int pcim_p2pdma_init(struct pci_dev *pdev);
 struct p2pdma_provider *pcim_p2pdma_provider(struct pci_dev *pdev, int bar);
+#else
+static inline int pcim_p2pdma_init(struct pci_dev *pdev)
+{
+	return -EOPNOTSUPP;
+}
+static inline struct p2pdma_provider *pcim_p2pdma_provider(struct pci_dev *pdev,
+							   int bar)
+{
+	return NULL;
+}
+#endif
+
+#ifdef CONFIG_PCI_P2PDMA
 int pci_p2pdma_add_resource(struct pci_dev *pdev, int bar, size_t size,
 		u64 offset);
 int pci_p2pdma_distance_many(struct pci_dev *provider, struct device **clients,
@@ -89,15 +102,6 @@ ssize_t pci_p2pdma_enable_show(char *page, struct pci_dev *p2p_dev,
 enum pci_p2pdma_map_type pci_p2pdma_map_type(struct p2pdma_provider *provider,
 					     struct device *dev);
 #else /* CONFIG_PCI_P2PDMA */
-static inline int pcim_p2pdma_init(struct pci_dev *pdev)
-{
-	return -EOPNOTSUPP;
-}
-static inline struct p2pdma_provider *pcim_p2pdma_provider(struct pci_dev *pdev,
-							   int bar)
-{
-	return NULL;
-}
 static inline int pci_p2pdma_add_resource(struct pci_dev *pdev, int bar,
 		size_t size, u64 offset)
 {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 2c4454583c11..531aec355686 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -557,7 +557,7 @@ struct pci_dev {
 	u16		pasid_cap;	/* PASID Capability offset */
 	u16		pasid_features;
 #endif
-#ifdef CONFIG_PCI_P2PDMA
+#ifdef CONFIG_PCI_P2PDMA_CORE
 	struct pci_p2pdma __rcu *p2pdma;
 #endif
 #ifdef CONFIG_PCI_DOE
-- 
2.50.1 (Apple Git-155)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
