Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DD13AF2D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 19:55:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E325D66787
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 17:55:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 152B4667B9; Mon, 21 Jun 2021 17:55:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF4596339C;
	Mon, 21 Jun 2021 17:55:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 778546338F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 17:55:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6C11463399; Mon, 21 Jun 2021 17:55:15 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by lists.linaro.org (Postfix) with ESMTPS id 44FD36338F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 17:55:13 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id i68so32727810qke.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 10:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nBnKqoan/yrGPxWBtod3It942s1tDX9/KE30/nusiX8=;
 b=WI6BslfMAmPAqlkgxzowSTflY7NQA3y+CUwTBvzVDCcyYTXaN/gVqCKCtZW3jBhDN/
 0UzGYA3yDHe8J6UKE756wt/UmywXplBJNkqd/etU27xo1mO2WcN+0DrSqjZoZ+QPjDhS
 gtInLkqOGVngBO5q/TzqPGZVWNWqmcspxboYPMyc17oi9+q8RPluz/FOJMrDD5spXkMZ
 iB3ThgOIG9nqb9dMH7zmbRl6/U4PWyQ3U7jviIiuXx5UY++auipiO/9dA1mjIvhEVDLu
 +ivFKrO9f2updS9rAE06d5iBXYJjqkZkzVL8gtnViXv9FIeNh163yuySS3rCWa1ZKLjN
 1K9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nBnKqoan/yrGPxWBtod3It942s1tDX9/KE30/nusiX8=;
 b=hVy0Ql7REgIr4i24KdciZa3hr9Bm5qSmfvZQhlDih+0u74gXeN+MVfuzwFyKNSgfGP
 dVneb3UVnuX1vnU2pPDr9iX08PrrngyvLrWcWv5x1tlYE7wP6+Tqu7aw9R5T+lHIFUs2
 JW7BDFR7G1kHSFDImDfNc2xI3Db/uuWo/XdKJUqc97EjQEWM/QWeL06jQTrOlTekMAgW
 8vIsv4Yl8zl+2CZToy3QC7YirHy1FAbfFpLVg1UV1MxoyLdNxWAdKyYbbzzpCyQnXy86
 JinRE8+6HsE3b8o59ZZ/UNluoeY7mOoBfW6nKG+sxYM+izfFsEktXrS040Qzp++reum6
 SEFg==
X-Gm-Message-State: AOAM5316RMrNSngAeRJs5uL7psNqppKSu26Rg4D5e4dky6cF2gm2gE79
 nR+F1yaApiQQZOMkWb3zJ0/htQ==
X-Google-Smtp-Source: ABdhPJwrj+wsvI3VpgV3YyLo+IiwAhCuCLTr6OeqWh9+LVOcQqnKD9F9Tz10eaB52w7tWL0Ya535tw==
X-Received: by 2002:a05:620a:440f:: with SMTP id
 v15mr15727716qkp.199.1624298112852; 
 Mon, 21 Jun 2021 10:55:12 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id d20sm4960737qtw.92.2021.06.21.10.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 10:55:12 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvO8d-009kwS-Ip; Mon, 21 Jun 2021 14:55:11 -0300
Date: Mon, 21 Jun 2021 14:55:11 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210621175511.GI1096940@ziepe.ca>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com> <20210621141217.GE1096940@ziepe.ca>
 <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
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
 linux-rdma <linux-rdma@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>, Christoph Hellwig <hch@lst.de>,
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

On Mon, Jun 21, 2021 at 07:26:14PM +0300, Oded Gabbay wrote:
> On Mon, Jun 21, 2021 at 5:12 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Mon, Jun 21, 2021 at 03:02:10PM +0200, Greg KH wrote:
> > > On Mon, Jun 21, 2021 at 02:28:48PM +0200, Daniel Vetter wrote:
> >
> > > > Also I'm wondering which is the other driver that we share buffers
> > > > with. The gaudi stuff doesn't have real struct pages as backing
> > > > storage, it only fills out the dma_addr_t. That tends to blow up with
> > > > other drivers, and the only place where this is guaranteed to work is
> > > > if you have a dynamic importer which sets the allow_peer2peer flag.
> > > > Adding maintainers from other subsystems who might want to chime in
> > > > here. So even aside of the big question as-is this is broken.
> > >
> > > From what I can tell this driver is sending the buffers to other
> > > instances of the same hardware,
> >
> > A dmabuf is consumed by something else in the kernel calling
> > dma_buf_map_attachment() on the FD.
> >
> > What is the other side of this? I don't see any
> > dma_buf_map_attachment() calls in drivers/misc, or added in this patch
> > set.
> 
> This patch-set is only to enable the support for the exporter side.
> The "other side" is any generic RDMA networking device that will want
> to perform p2p communication over PCIe with our GAUDI accelerator.
> An example is indeed the mlnx5 card which has already integrated
> support for being an "importer".

It raises the question of how you are testing this if you aren't using
it with the only intree driver: mlx5.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
