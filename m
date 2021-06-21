Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4568D3AEADD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 16:12:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3C2C60FFB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 14:12:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C09D63295; Mon, 21 Jun 2021 14:12:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E3F5610E8;
	Mon, 21 Jun 2021 14:12:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8EDC360FFB
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:12:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8A84E6328F; Mon, 21 Jun 2021 14:12:21 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by lists.linaro.org (Postfix) with ESMTPS id 7988C610D0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:12:19 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id e3so13553537qte.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 07:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8oJQZs0I5J7jBEQyNRVEZxX4UpsM7b71jbLdhb7hAG8=;
 b=FvMNMxA3fW7M2xLUZMwKYbvWPDaZY4pFbcNZf8cAZEsq+AvHkkjdBFOY2pviHteDwO
 C4Wu0SMltMsKCjOubP50lFxgNeNMSaZYEKEX7+OBgiaxrMgCwsV2iK7lgX8/+KZlk4J4
 aF5ixG7g2CBXbZTlvfOQubAF3wyQTRyw74T4Hf0/YCR0yoYa7w3a6op9w4hFlDeDVvyE
 l/inPVDU6NWf0eU0BOoi/ztftjOhg9DHQyzvWKPkZf5nnfR7X6d4ilITeIR/5CPUHzeR
 Y5yxMVmbjISlSpxOsRA2pU1pIKL7Nm9mg1e4mEqnBLS+F4tdRuCspUjlf0CxKRwGVOjA
 H0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8oJQZs0I5J7jBEQyNRVEZxX4UpsM7b71jbLdhb7hAG8=;
 b=mi1G5vu7lMrh7/moLEJj8NDvPgCfL2YukPRdSa74GUH4GKOerlgsehrfPx54UH1+Dl
 z7ZBYB+ruOYB/iued0OvXo4j2JzLtmSZNUO4RQQoiwRZaU3otsh5awqs1S23juGi0lO/
 biJy4mXolLVwKJBA/n5qIPdjp0fFNlIHLoSxUDAC5CDLYU1q1eI4uTjaK2rkbJBO1LC5
 thTmaMzdsxWno1Zot57cIQlhn8ASkueWk7PGhu9LyiNDScpthVrsSINk+G8JPQnW6RG3
 Ur5EpIKPG8omQsCCHckgl7Xy9hgesFPu8zoKotFMxagA4YqxwXH844eFIHUmXoHI/O4Y
 EdBw==
X-Gm-Message-State: AOAM532dBidTC/FGh6rjZzDPvCyiHF39CXKIQgdEHBYv4GprPeHRivqf
 pVNg4cBaFN24TfgbrmzjU7EJuQ==
X-Google-Smtp-Source: ABdhPJxB8jGNP0gwOLDPKvz+lnw80kFEjkxZj8vO8hWTPyGaIbP4EFePcOB/Ss3vtT0IcT6gYom4xg==
X-Received: by 2002:ac8:5508:: with SMTP id j8mr10071894qtq.134.1624284738855; 
 Mon, 21 Jun 2021 07:12:18 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id r22sm10570497qtm.82.2021.06.21.07.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 07:12:18 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvKev-009WcM-8s; Mon, 21 Jun 2021 11:12:17 -0300
Date: Mon, 21 Jun 2021 11:12:17 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20210621141217.GE1096940@ziepe.ca>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNCN0ulL6DQiRJaB@kroah.com>
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
Cc: Gal Pressman <galpress@amazon.com>, sleybo@amazon.com,
 linux-rdma <linux-rdma@vger.kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jun 21, 2021 at 03:02:10PM +0200, Greg KH wrote:
> On Mon, Jun 21, 2021 at 02:28:48PM +0200, Daniel Vetter wrote:

> > Also I'm wondering which is the other driver that we share buffers
> > with. The gaudi stuff doesn't have real struct pages as backing
> > storage, it only fills out the dma_addr_t. That tends to blow up with
> > other drivers, and the only place where this is guaranteed to work is
> > if you have a dynamic importer which sets the allow_peer2peer flag.
> > Adding maintainers from other subsystems who might want to chime in
> > here. So even aside of the big question as-is this is broken.
> 
> From what I can tell this driver is sending the buffers to other
> instances of the same hardware,

A dmabuf is consumed by something else in the kernel calling
dma_buf_map_attachment() on the FD.

What is the other side of this? I don't see any
dma_buf_map_attachment() calls in drivers/misc, or added in this patch
set.

AFAIK the only viable in-tree other side is in mlx5 (look in
umem_dmabuf.c)

Though as we already talked habana has their own networking (out of
tree, presumably) so I suspect this is really to support some out of
tree stuff??

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
