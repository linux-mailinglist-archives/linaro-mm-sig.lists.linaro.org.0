Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7BF3BDC48
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 19:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C101566942
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 17:28:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4B3A666945; Tue,  6 Jul 2021 17:28:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42FB763575;
	Tue,  6 Jul 2021 17:28:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1881263113
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:28:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0DCE363575; Tue,  6 Jul 2021 17:28:32 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by lists.linaro.org (Postfix) with ESMTPS id F3B6D63113
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:28:29 +0000 (UTC)
Received: by mail-qv1-f45.google.com with SMTP id cz7so6555626qvb.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 10:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=px11FX2o2NfOVHHhqnYnIhPQRFcjzs1+EmS0dsyOJPw=;
 b=NF9XyW3fJY3iSvOKRIQQV+C9O8LDLzSL5nLvOmxEd2aIXF2R2INnN2ppJQUbhi6DTV
 bkLZ9RPPT44Eqt9TFVlwTbLNxtdPmHz8R3OsArM3R4sQi8ODLHQSjGR3OgBwMKyXtHNF
 K9ejcbRJRLCLTPyFEbwQzuBzfEgTPnMj6hMROdxPpkzmYY6xp0eWqzR8mSjb/sLAqfbB
 lSEkuCODAJl2x64EYiUVYfnC8YDK58ifVoE9B2fQ6/omp+mfhARrfLpa+fypn8XD9z9S
 kyOUZYLc41KEvRUUGGnMouFoGD5+qIuQ+IqsTll4iXp+lukaxhYtEoRakxbU44SzNWt/
 gwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=px11FX2o2NfOVHHhqnYnIhPQRFcjzs1+EmS0dsyOJPw=;
 b=af4azwxdk8muMR82IwKAhjHYRTpy6sz1xfHs0Kv1Q1+HEQ21RRCJGV0umSCHzJw2yp
 69OU10RccY8zWYnyRWTiMRxEWq6T/r1IZKiRmBHDpFPSs1yi+bx/7npjIlRUrGJmzXGX
 C4GbjrsiZyrPkrjOWIrdyNhtVt3rp/m6QWdbj55gV+JCWK1GuP5qH9Qx5Z6Z29HJ35QL
 DBceeofyN41SaEoYiHyxCWSMhGPGVM4MSHjbPuKwUWykK4ZgBj2GDYAVTSV9cugaKfNn
 HSJfP1/K+ePPmQcDynHjgkoRKpAhKzlUQmJ/+BmaZXH5f5Tj1PytU29CPXvpBlIA6bwN
 BVMA==
X-Gm-Message-State: AOAM5318M9Epi5F2LS90UU8qDO27w4qSqZYtTnuRWi7ldMCwFd16K2y6
 WEAaRVg095S1CJRKWJfloKc6Ew==
X-Google-Smtp-Source: ABdhPJy+jZYEROJ3qIspffgyVpxmDj4ZiVgCcQDd9MnAGWHJKAq+GyoBJWW0gIXqY5aoWofm1iZXqA==
X-Received: by 2002:a0c:eb8f:: with SMTP id x15mr19333838qvo.42.1625592509542; 
 Tue, 06 Jul 2021 10:28:29 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id g13sm5694745qtx.96.2021.07.06.10.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 10:28:29 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0os0-004V5Z-2n; Tue, 06 Jul 2021 14:28:28 -0300
Date: Tue, 6 Jul 2021 14:28:28 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210706172828.GR4604@ziepe.ca>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
 <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
 <20210706152542.GP4604@ziepe.ca>
 <CAKMK7uH7Ar6+uAOU_Sj-mf89V9WCru+66CV5bO9h-WAAv7Mgdg@mail.gmail.com>
 <CAKMK7uGvO0h7iZ3vKGe8GouESkr79y1gP1JXbfV82sRiaT-d1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uGvO0h7iZ3vKGe8GouESkr79y1gP1JXbfV82sRiaT-d1A@mail.gmail.com>
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
 linux-rdma <linux-rdma@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 06:07:17PM +0200, Daniel Vetter wrote:

> Also on your claim that drivers/gpu is a non-upstream disaster: I've
> also learned that that for drivers/rdma there's the upstream driver,
> and then there's the out-of-tree hackjob the vendor actually
> supports.

In the enterprise world everyone has their out of tree backport
drivers. It varies on the vendor how much deviation there is from the
upstream driver and what commercial support relationship the vendor
has with the enterprise distros.

> So seems to be about the same level of screwed up, if you ask the
> vendor they tell you the upstream driver isn't a thing they care about
> and it's just done for a bit of goodwill. 

Sounds like you should get a new RDMA supplier :)

To be fair Intel is getting better, they got their new RDMA HW support
merged into v5.14 after about 2 years in the out of tree world. Though
it is still incomplete compared to their out of tree driver, the gap
is much smaller now.

> amounts of volume, then suddenly it's an option ... Minus the fw issue
> for nvidia, upstream does support all the gpus you can buy right now
> and that can run on linux with some vendor driver (aka excluding apple
> M1 and ofc upcoming products from most vendors).

I would look at how many actual commercial systems are running the
upstream/inbox stack. I personally know of quite a few sites with big
HPC RDMA deployments running pure inbox kernels, no add on kernel
modules, with full commercial support.

If you can say that kind of arrangment is also common place in the GPU
world then I will happily be wrong.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
