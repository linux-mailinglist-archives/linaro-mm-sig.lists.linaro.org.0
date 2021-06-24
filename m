Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C548F3B26E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 07:40:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E322363524
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 05:40:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DE501634FB; Thu, 24 Jun 2021 05:40:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4728D613B2;
	Thu, 24 Jun 2021 05:40:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6F7D60759
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 05:40:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A4944613B2; Thu, 24 Jun 2021 05:40:10 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 8468560759
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 05:40:08 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5BF4867373; Thu, 24 Jun 2021 07:40:04 +0200 (CEST)
Date: Thu, 24 Jun 2021 07:40:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210624054003.GB25165@lst.de>
References: <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
 <20210622160538.GT1096940@ziepe.ca>
 <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
 <20210623182435.GX1096940@ziepe.ca>
 <CAFCwf111O0_YB_tixzEUmaKpGAHMNvMaOes2AfMD4x68Am4Yyg@mail.gmail.com>
 <20210623185045.GY1096940@ziepe.ca>
 <CAFCwf12tW_WawFfAfrC8bgVhTRnDA7DuM+0V8w3JsUZpA2j84w@mail.gmail.com>
 <20210623193456.GZ1096940@ziepe.ca>
 <CAFCwf13vM2T-eJUu42ht5jdXpRCF3UZh0Ow=vwN9QqZ=KNUBsQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf13vM2T-eJUu42ht5jdXpRCF3UZh0Ow=vwN9QqZ=KNUBsQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-rdma <linux-rdma@vger.kernel.org>, sleybo@amazon.com,
 Oded Gabbay <ogabbay@kernel.org>, Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 Tomer Tayar <ttayar@habana.ai>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jun 23, 2021 at 10:39:48PM +0300, Oded Gabbay wrote:
> hmm, I thought using dma_map_resource will solve the IOMMU issues, no ?
> We talked about it yesterday, and you said that it will "work"
> (although I noticed a tone of reluctance when you said that).
> 
> If I use dma_map_resource to set the addresses inside the SGL before I
> export the dma-buf, and guarantee no one will use the SGL in the
> dma-buf for any other purpose than device p2p, what else is needed ?

dma_map_resource works in the sense of that helps with mapping an
arbitrary phys_addr_t for DMA.  It does not take various pitfalls of
PCI P2P into account, such as the offset between the CPU physical
address and the PCIe bus address, or the whole support of mapping between
two devices behding a switch and not going through the limited root
port support.

Comparing dma_direct_map_resource/iommu_dma_map_resource with
with pci_p2pdma_map_sg_attrs/__pci_p2pdma_map_sg should make that
very clear.

So if you want a non-page based mapping you need a "resource"-level
version of pci_p2pdma_map_sg_attrs.  Which totall doable, and in fact
mostly trivial.  But no one has even looked into providing one and just
keeps arguing.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
