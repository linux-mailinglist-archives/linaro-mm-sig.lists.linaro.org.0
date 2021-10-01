Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7E041F003
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 16:52:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE18E631AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 14:52:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5F5B6263B; Fri,  1 Oct 2021 14:52:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F09FB6242F;
	Fri,  1 Oct 2021 14:52:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD7F862421
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 14:52:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CAE5D6242F; Fri,  1 Oct 2021 14:52:12 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by lists.linaro.org (Postfix) with ESMTPS id BB17062421
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 14:52:10 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id q81so9385562qke.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 07:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RI3Un3whqlEWtr4aJFgQHeUC54CuvGWs6w3DnHGUv/4=;
 b=K55qbiVvd5XkUgYdEETZqf6R/YzC/428DzaLW2tQ1ko0WgHk0e5GqeISXC4mTcYwqh
 UFd6C9JUxe2nybzAsP25tvptN+Y6RaQ+NCnffnNO49sqE1hLj3z5Uw6w0YQFAd4nbEea
 oDOyJIqrPZDj/AC1nGV8aCIYfqOCBF3JErO6HP47SyFJ//VI1Q0Yoi9wz8NCz/yiN6Be
 spTum4L76krjx74lLmNv4MalFbk7YAYa1C9jH8DSsl59JyqT0d0nhZ9R8+D2ubHV7LUG
 7FtkXFWhqpEw2sHwMKMtp3v2vxCejLHIGS9AO5iY+0yD9mrJkQIINWWsLKd+4B7HFvWX
 xDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RI3Un3whqlEWtr4aJFgQHeUC54CuvGWs6w3DnHGUv/4=;
 b=qMCpwkoPwaRQTG9JN9qIpaxgEajXLwoI5MApIhqLjTkv6mLf/8mLsL2XkNiLXV2uJW
 X5BzMHpZ9EPhQTQimAQa3uKQL2bFpQhSynZqG3AdWQrX8pDmeFhXrmUIoY0Bf91Pcles
 kfAHKJM9PJtBuoxpn8TGpit9PgwTfCGCVVZoBhky9wu3pur7Oxerxul+bVCerZARdAlw
 AyubXv7RD+jQ4439kMVMvLzcXb03Z7qItg0ItHg0XFdJAAq5CcozcHh9prUVpUOUejoD
 heR2vaUYGelknxqhFQ6dhLkQh1dN1g/b9W5f5DmReB4xmxXb9r0Rp7SeO0HqT5Jn7eY6
 iLmQ==
X-Gm-Message-State: AOAM533a1GFoeVqQdvL3WIG9XLOnwhw2yn64gutOMNkbiSk2Sm8iIhSn
 sCey1vOhE9Y9FRFfkcgcm4nRkw==
X-Google-Smtp-Source: ABdhPJzm/G5kJIBn6QfIwm7CMo9R8IxodH1fBoPXgsTIw67OxVDlKvoB7FSYpgEZCvPs9m2+kSO18w==
X-Received: by 2002:a37:a391:: with SMTP id m139mr9826820qke.186.1633099930416; 
 Fri, 01 Oct 2021 07:52:10 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.129])
 by smtp.gmail.com with ESMTPSA id q14sm3633839qtw.82.2021.10.01.07.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 07:52:10 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1mWJtR-008cux-FC; Fri, 01 Oct 2021 11:52:09 -0300
Date: Fri, 1 Oct 2021 11:52:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <20211001145209.GP3544071@ziepe.ca>
References: <20210912165309.98695-1-ogabbay@kernel.org>
 <20210912165309.98695-3-ogabbay@kernel.org>
 <20210928173621.GG3544071@ziepe.ca>
 <CAFCwf10z-baRm8c-UD_=jcZYD0VAGrMiNo7Q5Fm-2txYmVWGcQ@mail.gmail.com>
 <CAFCwf110SPfqpjKO7e2W-MSs6iSdecCwS6CwKx4cL-DjqriT2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf110SPfqpjKO7e2W-MSs6iSdecCwS6CwKx4cL-DjqriT2Q@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v6 2/2] habanalabs: add support for
 dma-buf exporter
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Yossi Leybovich <sleybo@amazon.com>, Gal Pressman <galpress@amazon.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tomer Tayar <ttayar@habana.ai>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Sep 30, 2021 at 03:46:35PM +0300, Oded Gabbay wrote:

> After reading the kernel iommu code, I think this is not relevant
> here, and I'll add a comment appropriately but I'll also write it
> here, and please correct me if my understanding is wrong.
> 
> The memory behind this specific dma-buf has *always* resided on the
> device itself, i.e. it lives only in the 'device' domain (after all,
> it maps a PCI bar address which points to the device memory).
> Therefore, it was never in the 'CPU' domain and hence, there is no
> need to perform a sync of the memory to the CPU's cache, as it was
> never inside that cache to begin with.
> 
> This is not the same case as with regular memory which is dma-mapped
> and then copied into the device using a dma engine. In that case,
> the memory started in the 'CPU' domain and moved to the 'device'
> domain. When it is unmapped it will indeed be recycled to be used
> for another purpose and therefore we need to sync the CPU cache.
> 
> Is my understanding correct ?

It makes sense to me

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
