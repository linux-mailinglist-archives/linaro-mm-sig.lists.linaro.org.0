Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 281853B2FE9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 15:22:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FA6760B38
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 13:22:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 85FFE63576; Thu, 24 Jun 2021 13:22:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 778D061156;
	Thu, 24 Jun 2021 13:22:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9DC5260752
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 13:22:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9349061156; Thu, 24 Jun 2021 13:22:28 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 7312B60752
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 13:22:26 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6FB1567373; Thu, 24 Jun 2021 15:22:23 +0200 (CEST)
Date: Thu, 24 Jun 2021 15:22:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20210624132223.GA22258@lst.de>
References: <20210622160538.GT1096940@ziepe.ca>
 <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
 <20210623182435.GX1096940@ziepe.ca>
 <CAFCwf111O0_YB_tixzEUmaKpGAHMNvMaOes2AfMD4x68Am4Yyg@mail.gmail.com>
 <20210623185045.GY1096940@ziepe.ca>
 <CAFCwf12tW_WawFfAfrC8bgVhTRnDA7DuM+0V8w3JsUZpA2j84w@mail.gmail.com>
 <20210624053421.GA25165@lst.de>
 <9571ac7c-3a58-b013-b849-e26c3727e9b2@amd.com>
 <20210624081237.GA30289@lst.de>
 <899fe0ce-b6d7-c138-04b6-4b12405f8d93@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <899fe0ce-b6d7-c138-04b6-4b12405f8d93@amd.com>
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 Tomer Tayar <ttayar@habana.ai>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jun 24, 2021 at 11:52:47AM +0200, Christian K=F6nig wrote:
> I've already converted a bunch of the GPU drivers, but there are at least=
 6 =

> GPU still needing to be fixed and on top of that comes VA-API and a few =

> others.
>
> What are your plans for the DMA mapping subsystem?

Building a new API that allows batched DMA mapping without the scatterlist.
The main input for my use case would be bio_vecs, but I plan to make it
a little flexible, and the output would be a list of [dma_addr,len]
tuples, with the API being flexible enough to just return a single
[dma_addr,len] for the common IOMMU coalescing case.

>
>> Btw, one thing I noticed when looking over the dma-buf instances is that
>> there is a lot of duplicated code for creating a sg_table from pages,
>> and then mapping it.  It would be good if we could move toward common
>> helpers instead of duplicating that all over again.
>
> Can you give an example?

Take a look at the get_sg_table and put_sg_table helpers in udmabuf.
Those would also be useful in armda, i915, tegra, gntdev-dmabuf, mbochs
in one form or another.

Similar for variants that use a contigous regions.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
