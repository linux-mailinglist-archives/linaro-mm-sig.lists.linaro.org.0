Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9B73B2A16
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 10:12:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 365C863503
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Jun 2021 08:12:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 296E161A3A; Thu, 24 Jun 2021 08:12:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78D77634F3;
	Thu, 24 Jun 2021 08:12:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 49A676197A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 08:12:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 475B9634F3; Thu, 24 Jun 2021 08:12:44 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 2C5E26197A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Jun 2021 08:12:42 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 01CD167373; Thu, 24 Jun 2021 10:12:38 +0200 (CEST)
Date: Thu, 24 Jun 2021 10:12:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20210624081237.GA30289@lst.de>
References: <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
 <20210622160538.GT1096940@ziepe.ca>
 <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
 <20210623182435.GX1096940@ziepe.ca>
 <CAFCwf111O0_YB_tixzEUmaKpGAHMNvMaOes2AfMD4x68Am4Yyg@mail.gmail.com>
 <20210623185045.GY1096940@ziepe.ca>
 <CAFCwf12tW_WawFfAfrC8bgVhTRnDA7DuM+0V8w3JsUZpA2j84w@mail.gmail.com>
 <20210624053421.GA25165@lst.de>
 <9571ac7c-3a58-b013-b849-e26c3727e9b2@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9571ac7c-3a58-b013-b849-e26c3727e9b2@amd.com>
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

On Thu, Jun 24, 2021 at 10:07:14AM +0200, Christian K=F6nig wrote:
> The key point is that accessing the underlying pages even when DMA-bufs a=
re =

> backed by system memory is illegal. Daniel even created a patch which =

> mangles the page pointers in sg_tables used by DMA-buf to make sure that =

> people don't try to use them.

Which is another goddamn layering violation of a subsystem that has no
business at all poking into the scatterlist structure, yes.

> So the conclusion is that using sg_table in the DMA-buf framework was jus=
t =

> the wrong data structure and we should have invented a new one.

I think so.

> But then people would have complained that we have a duplicated =

> infrastructure (which is essentially true).

I doubt it.  At least if you had actually talked to the relevant people.
Which seems to be a major issue with what is going on GPU land.

> My best plan to get out of this mess is that we change the DMA-buf =

> interface to use an array of dma_addresses instead of the sg_table object =

> and I have already been working on this actively the last few month.

Awesome!  I have a bit of related work on the DMA mapping subsystems, so
let's sync up as soon as you have some first sketches.

Btw, one thing I noticed when looking over the dma-buf instances is that
there is a lot of duplicated code for creating a sg_table from pages,
and then mapping it.  It would be good if we could move toward common
helpers instead of duplicating that all over again.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
