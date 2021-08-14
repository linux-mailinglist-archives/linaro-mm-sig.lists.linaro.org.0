Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AC43EC12B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 14 Aug 2021 09:30:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAD0D62EA0
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 14 Aug 2021 07:30:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 517C3634D5; Sat, 14 Aug 2021 07:30:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF8B3612A3;
	Sat, 14 Aug 2021 07:30:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 478A460FFB
 for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Aug 2021 07:30:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 453D6612A3; Sat, 14 Aug 2021 07:30:26 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 29CC660FFB
 for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Aug 2021 07:30:24 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id DBFA567373; Sat, 14 Aug 2021 09:30:19 +0200 (CEST)
Date: Sat, 14 Aug 2021 09:30:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20210814073019.GC21175@lst.de>
References: <2H0SXQ.2KIK2PBVRFWH2@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2H0SXQ.2KIK2PBVRFWH2@crapouillou.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] IIO, dmabuf, io_uring
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
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>,
 io-uring@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Aug 13, 2021 at 01:41:26PM +0200, Paul Cercueil wrote:
> Hi,
>
> A few months ago we (ADI) tried to upstream the interface we use with our 
> high-speed ADCs and DACs. It is a system with custom ioctls on the iio 
> device node to dequeue and enqueue buffers (allocated with 
> dma_alloc_coherent), that can then be mmap'd by userspace applications. 
> Anyway, it was ultimately denied entry [1]; this API was okay in ~2014 when 
> it was designed but it feels like re-inventing the wheel in 2021.
>
> Back to the drawing table, and we'd like to design something that we can 
> actually upstream. This high-speed interface looks awfully similar to 
> DMABUF, so we may try to implement a DMABUF interface for IIO, unless 
> someone has a better idea.

To me this does sound a lot like a dma buf use case.  The interesting
question to me is how to signal arrival of new data, or readyness to
consume more data.  I suspect that people that are actually using
dmabuf heavily at the moment (dri/media folks) might be able to chime
in a little more on that.

> Our first usecase is, we want userspace applications to be able to dequeue 
> buffers of samples (from ADCs), and/or enqueue buffers of samples (for 
> DACs), and to be able to manipulate them (mmapped buffers). With a DMABUF 
> interface, I guess the userspace application would dequeue a dma buffer 
> from the driver, mmap it, read/write the data, unmap it, then enqueue it to 
> the IIO driver again so that it can be disposed of. Does that sound sane?
>
> Our second usecase is - and that's where things get tricky - to be able to 
> stream the samples to another computer for processing, over Ethernet or 
> USB. Our typical setup is a high-speed ADC/DAC on a dev board with a FPGA 
> and a weak soft-core or low-power CPU; processing the data in-situ is not 
> an option. Copying the data from one buffer to another is not an option 
> either (way too slow), so we absolutely want zero-copy.
>
> Usual userspace zero-copy techniques (vmsplice+splice, MSG_ZEROCOPY etc) 
> don't really work with mmapped kernel buffers allocated for DMA [2] and/or 
> have a huge overhead, so the way I see it, we would also need DMABUF 
> support in both the Ethernet stack and USB (functionfs) stack. However, as 
> far as I understood, DMABUF is mostly a DRM/V4L2 thing, so I am really not 
> sure we have the right idea here.
>
> And finally, there is the new kid in town, io_uring. I am not very literate 
> about the topic, but it does not seem to be able to handle DMA buffers 
> (yet?). The idea that we could dequeue a buffer of samples from the IIO 
> device and send it over the network in one single syscall is appealing, 
> though.

Think of io_uring really just as an async syscall layer.  It doesn't
replace DMA buffers, but can be used as a different and for some
workloads more efficient way to dispatch syscalls.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
