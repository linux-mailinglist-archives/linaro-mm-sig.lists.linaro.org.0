Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D04D73BDC93
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 19:59:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 231E06693E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 17:59:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19EC36693D; Tue,  6 Jul 2021 17:59:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ED4C63586;
	Tue,  6 Jul 2021 17:59:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 38AE860FFA
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:59:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2E30263586; Tue,  6 Jul 2021 17:59:39 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by lists.linaro.org (Postfix) with ESMTPS id 28BC560FFA
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:59:37 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id j13so21024354qka.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 10:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QafN6h6Co6NuKaJg6KsXY/qvYmait2ZxGzl1LH+hKGc=;
 b=o+6yrnhyDXWJv8oLffV4OzrBks140sBzkKRa/BHDPAgco6gkcsk/KfM0urmbG1ZpZp
 aNfP9t5Y248cSGYMNP5udtisN7IexW8dI/evhDcabpX78aqPc3z4PUkjqOFT88k3q2UU
 VMDnrscsVmrIJXOn1Tl4GknyaQqnihC5TNeBzt7oxN9cnepeiC33KAZ1WQv24bEg5Ptl
 wh50zYlI3opLL0jj7l3ICvX3darwow+ATpP8HNytVg4jpuzFtVevfPbuvYAuE+UIH3oi
 0+6FwhgS8LlAzXLg8Hrg7kDb7r475k6OOP9fsruyXhd5J6BvIkWbmMJ01HjVqF1+s9dG
 KB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QafN6h6Co6NuKaJg6KsXY/qvYmait2ZxGzl1LH+hKGc=;
 b=NHgIFfwHroMGyWbIbwIZYcc95FzpxN7H1M00JoZCMomDp4EkKF77bToEBI2sw28+om
 ROSaD1bANjf6/AdTkkGgHePkq7vebUe9W7twPT4L5akWd0wIpTF+xG/yfi2zpPeWHscq
 pwaSGfkVdXI15EH2mdBCw1hWGnPHKVu0VB2OIbE5g8A1areuzLkNSz4H87r1NetAm46M
 WX2d7j8Hr5LdDfK19qKgQDrb0Ga3nFfBYFh0d2I/7n60sVmVerhMbvWOkNul29bl5HTh
 +EiydX+Vsbj1VtbK7PZbscLZZ6giCobEhLQUd1fnNLahtaIH5LS6O2UYfsNb4qYz0oqi
 OjMA==
X-Gm-Message-State: AOAM531A8k4h6xHFaUpL9oZv49sbNyu4dFTHTFy/hlcip+OFp0nYhRB4
 CbrspELpIJm0tyzDekIQaJJteg==
X-Google-Smtp-Source: ABdhPJyVxfP24yiWMaxghSmvMQwbby4otQnbgBhcVo8qVKROchOHAE6ChpAWAzTpF2fYkJyDXgbw1w==
X-Received: by 2002:a37:c448:: with SMTP id h8mr10568428qkm.191.1625594376601; 
 Tue, 06 Jul 2021 10:59:36 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id 16sm5697170qty.15.2021.07.06.10.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 10:59:36 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0pM7-004W2s-6g; Tue, 06 Jul 2021 14:59:35 -0300
Date: Tue, 6 Jul 2021 14:59:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20210706175935.GS4604@ziepe.ca>
References: <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
 <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
 <20210706152542.GP4604@ziepe.ca>
 <CAKMK7uH7Ar6+uAOU_Sj-mf89V9WCru+66CV5bO9h-WAAv7Mgdg@mail.gmail.com>
 <CAKMK7uGvO0h7iZ3vKGe8GouESkr79y1gP1JXbfV82sRiaT-d1A@mail.gmail.com>
 <20210706172828.GR4604@ziepe.ca> <20210706173137.GA7840@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706173137.GA7840@lst.de>
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
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 07:31:37PM +0200, Christoph Hellwig wrote:
> On Tue, Jul 06, 2021 at 02:28:28PM -0300, Jason Gunthorpe wrote:
> > > Also on your claim that drivers/gpu is a non-upstream disaster: I've
> > > also learned that that for drivers/rdma there's the upstream driver,
> > > and then there's the out-of-tree hackjob the vendor actually
> > > supports.
> > 
> > In the enterprise world everyone has their out of tree backport
> > drivers. It varies on the vendor how much deviation there is from the
> > upstream driver and what commercial support relationship the vendor
> > has with the enterprise distros.
> 
> I think he means the Mellanox OFED stack, which is a complete and utter
> mess and which gets force fed by Mellanox/Nvidia on unsuspecting
> customers.  I know many big HPC sites that ignore it, but a lot of
> enterprise customers are dumb enought to deploy it.

No, I don't think so. While MOFED is indeed a giant mess, the mlx5
upstream driver is not some token effort to generate good will and
Mellanox certainly does provide full commercial support for the mlx5
drivers shipped inside various enterprise distros.

MOFED also doesn't have a big functional divergance from RDMA
upstream, and it is not mandatory just to use the hardware.

I can not say the same about other company's RDMA driver
distributions, Daniel's description of "minimal effort to get
goodwill" would match others much better.

You are right that there are a lot of enterprise customers who deploy
the MOFED. I can't agree with their choices, but they are not forced
into using it anymore.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
