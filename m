Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E9E3AF951
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 01:29:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02412634E6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 23:29:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED248634E2; Mon, 21 Jun 2021 23:29:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B6C9634D9;
	Mon, 21 Jun 2021 23:29:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5EB4F634D7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 23:29:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 43749634D9; Mon, 21 Jun 2021 23:29:16 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by lists.linaro.org (Postfix) with ESMTPS id 3326B634D7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 23:29:14 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id y11so6108955qvv.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 16:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WGIQy0LtKLkIE/rK0/0LmxIf0Yhw3y7s+bpYX0ZTb4E=;
 b=XkURmaeBNxY2KNIu+e3I7r7c8Mw2wNE/2QAVf2JLvg6H3Ao6a1CHuNZ3vZ9RBTFdKx
 H3HDY9NRafLjynlaVkG4PxqZXZk/v2PZSf4FNAtjAaDZ+6ONvHcsFIGONwVDeOf17HrF
 h4Z5tocnUYIAKpC3IQtgBEC1vGg2T8esb9cF9sxkRyXpR+nn2OjKipQdc2qiNBCYtMp5
 8yt3ntQEIkDMB6fEEsB9d5jku+rDz/qbvQ2tZqk6+/0aRqBqq05Onc+pKKb0R8HJo8Ai
 55y54osBIrECu/xwViWlwG2EaBg82LCP+kuA9VXzH9FS9l7AMz909JQzyaOkpt0gKptG
 0naA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WGIQy0LtKLkIE/rK0/0LmxIf0Yhw3y7s+bpYX0ZTb4E=;
 b=kkLtyzBYEzngt/w9KBWM49o+C+mNye06W0/WcA59C5/Qd/7uXK0nycY7TUDAOAZSfM
 sEj8RvvLFBtE+9R+YPpimEONeiSjhPFOgVN8+gBUD6nM0C+fyCvFwwQ3N04OwUAbxS5P
 wu9p0lAr6wFCqcqTRBFYmRDvHFMR3YmVdClkEqoibnafvpMMts7JWvuW7Zzl++ELIM7X
 C4S2MYFrsIR3ppC3M/vBw5cMVEAHLdAQ+jarMXt/XT9gpZ5lt35uCYEpDijNhp2ktDOo
 Z9rHnJdisXEViJV4r1eaPQSpdCQKhtmGTUQPluZdnf3PEVP5XOoOBedtsZ3mL6PlUjDD
 3BHw==
X-Gm-Message-State: AOAM531wbO/Ro/Np0qEVNw8P265O1q4tFbppEvqKCebnUPKbJP1DE/jI
 XO2taXQf5sq6a8evu8mKMWFtxw==
X-Google-Smtp-Source: ABdhPJzRTPsxAjXcsN31fYToN1kshtwgii2JxLBC8O2dnJ4kI8UL0Km8hvy0yekYsKCtQzKfourLAQ==
X-Received: by 2002:a0c:fd44:: with SMTP id j4mr22797061qvs.12.1624318153681; 
 Mon, 21 Jun 2021 16:29:13 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id t30sm10969084qkm.11.2021.06.21.16.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 16:29:13 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvTLs-009tun-DJ; Mon, 21 Jun 2021 20:29:12 -0300
Date: Mon, 21 Jun 2021 20:29:12 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210621232912.GK1096940@ziepe.ca>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com> <20210621141217.GE1096940@ziepe.ca>
 <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
 <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
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
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jun 21, 2021 at 10:24:16PM +0300, Oded Gabbay wrote:

> Another thing I want to emphasize is that we are doing p2p only
> through the export/import of the FD. We do *not* allow the user to
> mmap the dma-buf as we do not support direct IO. So there is no access
> to these pages through the userspace.

Arguably mmaping the memory is a better choice, and is the direction
that Logan's series goes in. Here the use of DMABUF was specifically
designed to allow hitless revokation of the memory, which this isn't
even using.

So you are taking the hit of very limited hardware support and reduced
performance just to squeeze into DMABUF..

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
