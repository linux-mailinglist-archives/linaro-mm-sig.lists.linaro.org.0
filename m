Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BD81E3BDC57
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 19:31:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4C0A66948
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 17:31:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 68A1266958; Tue,  6 Jul 2021 17:31:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9A0F63575;
	Tue,  6 Jul 2021 17:31:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C3FE63113
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:31:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 79D3563575; Tue,  6 Jul 2021 17:31:43 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 5685B63113
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:31:41 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 80C3868BEB; Tue,  6 Jul 2021 19:31:37 +0200 (CEST)
Date: Tue, 6 Jul 2021 19:31:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20210706173137.GA7840@lst.de>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
 <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
 <20210706152542.GP4604@ziepe.ca>
 <CAKMK7uH7Ar6+uAOU_Sj-mf89V9WCru+66CV5bO9h-WAAv7Mgdg@mail.gmail.com>
 <CAKMK7uGvO0h7iZ3vKGe8GouESkr79y1gP1JXbfV82sRiaT-d1A@mail.gmail.com>
 <20210706172828.GR4604@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706172828.GR4604@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
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
Cc: Gal Pressman <galpress@amazon.com>, sleybo@amazon.com,
 linux-rdma <linux-rdma@vger.kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 02:28:28PM -0300, Jason Gunthorpe wrote:
> > Also on your claim that drivers/gpu is a non-upstream disaster: I've
> > also learned that that for drivers/rdma there's the upstream driver,
> > and then there's the out-of-tree hackjob the vendor actually
> > supports.
> 
> In the enterprise world everyone has their out of tree backport
> drivers. It varies on the vendor how much deviation there is from the
> upstream driver and what commercial support relationship the vendor
> has with the enterprise distros.

I think he means the Mellanox OFED stack, which is a complete and utter
mess and which gets force fed by Mellanox/Nvidia on unsuspecting
customers.  I know many big HPC sites that ignore it, but a lot of
enterprise customers are dumb enought to deploy it.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
