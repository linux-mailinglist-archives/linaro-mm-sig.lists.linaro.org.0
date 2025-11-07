Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B6C40BAC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 07 Nov 2025 17:01:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AD0E3F7D4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Nov 2025 16:01:38 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 75E7D3F7D4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Nov 2025 16:01:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=G1OqoxtV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DBCC861913;
	Fri,  7 Nov 2025 16:01:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C30C3C4CEF8;
	Fri,  7 Nov 2025 16:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762531285;
	bh=SAXkSml11M5xQ5oAowfwGP1WfIbbhD9Zwsc1+gFtZVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G1OqoxtV7XlT2wwuQ5Uez60kwG8g2e3K4oXYvr5lCUmDLnRe2lDqJfqpdyozZ9Kfs
	 9cK/Pp4gs2exlM5ZaZgfE/mSts/OwwIwkCNUlopoOf55C/E/oCxFH4g1GkpuhBOQLc
	 GevH4WEkQ/xUCsGWGMcEuw40zHNAV2BFJUHAJFbr5fa5pHtu6BKUEsKKzGsJoGHBVK
	 LIruon02MTTCyGk7ziSVANwsf4TxGmKVozxHLsq3vvxJUR+H9wB9GZSvIotqrUV4ud
	 cVhLCCIpj3frChH2BVoHb8jxb4jO/OzKabXV1PHaTXuqZVIniF59yBQsetybD1Wq21
	 bF79hpL4xdXKw==
Date: Fri, 7 Nov 2025 18:01:20 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20251107160120.GD15456@unreal>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
 <20251106-dmabuf-vfio-v7-5-2503bf390699@nvidia.com>
 <135df7eb-9291-428b-9c86-d58c2e19e052@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <135df7eb-9291-428b-9c86-d58c2e19e052@infradead.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75E7D3F7D4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,tor.source.kernel.org:rdns,tor.source.kernel.org:helo];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: NZER3NTUMJN7JFDXW45JKLWHQ344N54W
X-Message-ID-Hash: NZER3NTUMJN7JFDXW45JKLWHQ344N54W
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
 , kvm@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 05/11] PCI/P2PDMA: Document DMABUF model
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NZER3NTUMJN7JFDXW45JKLWHQ344N54W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 06, 2025 at 10:15:07PM -0800, Randy Dunlap wrote:
> 
> 
> On 11/6/25 6:16 AM, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > Reflect latest changes in p2p implementation to support DMABUF lifecycle.
> > 
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > ---
> >  Documentation/driver-api/pci/p2pdma.rst | 95 +++++++++++++++++++++++++--------
> >  1 file changed, 72 insertions(+), 23 deletions(-)
> > 
> > diff --git a/Documentation/driver-api/pci/p2pdma.rst b/Documentation/driver-api/pci/p2pdma.rst
> > index d0b241628cf1..69adea45f73e 100644
> > --- a/Documentation/driver-api/pci/p2pdma.rst
> > +++ b/Documentation/driver-api/pci/p2pdma.rst
> > @@ -9,22 +9,47 @@ between two devices on the bus. This type of transaction is henceforth
> >  called Peer-to-Peer (or P2P). However, there are a number of issues that
> >  make P2P transactions tricky to do in a perfectly safe way.
> >  
> > -One of the biggest issues is that PCI doesn't require forwarding
> > -transactions between hierarchy domains, and in PCIe, each Root Port
> > -defines a separate hierarchy domain. To make things worse, there is no
> > -simple way to determine if a given Root Complex supports this or not.
> > -(See PCIe r4.0, sec 1.3.1). Therefore, as of this writing, the kernel
> > -only supports doing P2P when the endpoints involved are all behind the
> > -same PCI bridge, as such devices are all in the same PCI hierarchy
> > -domain, and the spec guarantees that all transactions within the
> > -hierarchy will be routable, but it does not require routing
> > -between hierarchies.
> > -
> > -The second issue is that to make use of existing interfaces in Linux,
> > -memory that is used for P2P transactions needs to be backed by struct
> > -pages. However, PCI BARs are not typically cache coherent so there are
> > -a few corner case gotchas with these pages so developers need to
> > -be careful about what they do with them.
> > +For PCIe the routing of TLPs is well defined up until they reach a host bridge
> 
> Define what TLP means?

In PCIe "world", TLP is very well-known and well-defined acronym, which
means Transaction Layer Packet.

>                                    well-defined

Thanks

diff --git a/Documentation/driver-api/pci/p2pdma.rst b/Documentation/driver-api/pci/p2pdma.rst
index 69adea45f73e..7530296a5dea 100644
--- a/Documentation/driver-api/pci/p2pdma.rst
+++ b/Documentation/driver-api/pci/p2pdma.rst
@@ -9,17 +9,17 @@ between two devices on the bus. This type of transaction is henceforth
 called Peer-to-Peer (or P2P). However, there are a number of issues that
 make P2P transactions tricky to do in a perfectly safe way.

-For PCIe the routing of TLPs is well defined up until they reach a host bridge
-or root port. If the path includes PCIe switches then based on the ACS settings
-the transaction can route entirely within the PCIe hierarchy and never reach the
-root port. The kernel will evaluate the PCIe topology and always permit P2P
-in these well defined cases.
+For PCIe the routing of Transaction Layer Packets (TLPs) is well-defined up
+until they reach a host bridge or root port. If the path includes PCIe switches
+then based on the ACS settings the transaction can route entirely within
+the PCIe hierarchy and never reach the root port. The kernel will evaluate
+the PCIe topology and always permit P2P in these well-defined cases.

 However, if the P2P transaction reaches the host bridge then it might have to
 hairpin back out the same root port, be routed inside the CPU SOC to another
 PCIe root port, or routed internally to the SOC.

-As this is not well defined or well supported in real HW the kernel defaults to
+As this is not well-defined or well supported in real HW the kernel defaults to
 blocking such routing. There is an allow list to allow detecting known-good HW,
 in which case P2P between any two PCIe devices will be permitted.

@@ -39,7 +39,7 @@ delegates lifecycle management to the providing driver. It is expected that
 drivers using this option will wrap their MMIO memory in DMABUF and use DMABUF
 to provide an invalidation shutdown. These MMIO pages have no struct page, and
 if used with mmap() must create special PTEs. As such there are very few
-kernel uAPIs that can accept pointers to them, in particular they cannot be used
+kernel uAPIs that can accept pointers to them; in particular they cannot be used
 with read()/write(), including O_DIRECT.

 Building on this, the subsystem offers a layer to wrap the MMIO in a ZONE_DEVICE
@@ -154,7 +154,7 @@ access happens.
 Usage With DMABUF
 =================

-DMABUF provides an alternative to the above struct page based
+DMABUF provides an alternative to the above struct page-based
 client/provider/orchestrator system. In this mode the exporting driver will wrap
 some of its MMIO in a DMABUF and give the DMABUF FD to userspace.

@@ -162,10 +162,10 @@ Userspace can then pass the FD to an importing driver which will ask the
 exporting driver to map it.

 In this case the initiator and target pci_devices are known and the P2P subsystem
-is used to determine the mapping type. The phys_addr_t based DMA API is used to
+is used to determine the mapping type. The phys_addr_t-based DMA API is used to
 establish the dma_addr_t.

-Lifecycle is controlled by DMABUF move_notify(), when the exporting driver wants
+Lifecycle is controlled by DMABUF move_notify(). When the exporting driver wants
 to remove() it must deliver an invalidation shutdown to all DMABUF importing
 drivers through move_notify() and synchronously DMA unmap all the MMIO.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
