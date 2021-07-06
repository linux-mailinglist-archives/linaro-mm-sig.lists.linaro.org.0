Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A8D3BD87E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 16:39:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76E056694C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 14:39:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 36C5266945; Tue,  6 Jul 2021 14:39:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AFF461459;
	Tue,  6 Jul 2021 14:39:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 619A860B82
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 14:39:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 56D0561459; Tue,  6 Jul 2021 14:39:33 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by lists.linaro.org (Postfix) with ESMTPS id 4DD6160B82
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 14:39:31 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 x22-20020a9d6d960000b0290474a76f8bd4so20151901otp.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zm0DaryDqZq3vejGZ3jPeBiO1tR+wTWZk5xnShXCnO4=;
 b=G30UzRcjxEx6Xt1b6aM3vMaunEynpsORVhKQH6x0woz09DwXifJzfkCwSyC/RCtJF6
 0dlH0FE/N9kBHKK6ACyKzCL9AAOx7O6sYOnj6Loko6p9DlXanIsMowNmzYBNl9TxrrVf
 GOw2Y2m6AMmOya+oUGFCdCcJKjukWk6zcmTM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zm0DaryDqZq3vejGZ3jPeBiO1tR+wTWZk5xnShXCnO4=;
 b=IgAnqFTwPs5fQmdmdchMPmbNV99D5IJdivIAYp/2YwZuQ/Yl9QK3SxfuVI+hqkbVrn
 CcRYDYcpsZcahVtFxoDNgp7D1RBhZ7U0qcI5Tu9NCUrVXFjEuPYIHMzabNFPDo57j8NZ
 Sthlm8FPKakdcAaCG3QTlBBba19mYe0Nu0Y6BnsT5YnzMmCxV1IOxzPJIQhZ+xbfQI1A
 hvDT9NBbxjET1+cQJifPbDGb9l2tlOVHfCUB4tfxxnouu36wGg+p48fAAwR+KHQ6XSkb
 cHXUXCw+R/43RAjPf3mYOgxKUGxOMhui2jxsAjf5irfyQ2neRzxgLOKpoyy3AcEMch3J
 s81A==
X-Gm-Message-State: AOAM530q/dhwb6aBD9grLC+iiCmif7CevaRpE1m1Ezn5kFr4bxRvZ2Al
 2fwV8w1vGcnb5fAMiHRC8eGIFcLitNAYBHoPDPr/pg==
X-Google-Smtp-Source: ABdhPJzgkWaB0S4HP/SYLFWoigqz0+uVa0qbfzt618JpPtslruMLA86ntCgmp9G7+R8uc+hgYBv5HiSGfZAE493M7OE=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr15519363otb.281.1625582370636; 
 Tue, 06 Jul 2021 07:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
In-Reply-To: <20210706142357.GN4604@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Jul 2021 16:39:19 +0200
Message-ID: <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 6, 2021 at 4:23 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Jul 06, 2021 at 12:36:51PM +0200, Daniel Vetter wrote:
>
> > If that means AI companies don't want to open our their hw specs
> > enough to allow that, so be it - all you get in that case is
> > offloading the kernel side  of the stack for convenience, with zero
> > long term prospects to ever make this into a cross vendor subsystem
> > stack that does something useful.
>
> I don't think this is true at all - nouveau is probably the best
> example.
>
> nouveau reverse engineered a userspace stack for one of these devices.
>
> How much further ahead would they have been by now if they had a
> vendor supported, fully featured, open kernel driver to build the
> userspace upon?

There is actually tons of example here, most of the arm socs have
fully open kernel drivers, supported by the vendor (out of tree).

The hard part is the userspace driver and all the things you're
submitting to it. We've had open kernel drivers for mail/qualcomm/...
years before any believable open implementation started existing.
Typing up the memory manager and hw submission queue handling is
comparitively trivial. Generally the kernel driver is also done last,
you bring up the userspace first, often by just directly programming
the hw from userspace. Kernel driver only gets in the way with this
stuff (nouveau is entirely developed as a userspace driver, as the
most extreme example).

This is a bit different for the display side, but nowadays those
drivers are fully in-kernel so they're all open. Well except the
nvidia one, and I've not heard of nvidia working on even an
out-of-tree open display driver, so that won't help the in-tree effort
at all.

Where it would have helped is if this open driver would come with
redistributable firmware, because that is right now the thing making
nouveau reverse-engineering painful enough to be non-feasible. Well
not the reverse-engineering, but the "shipping the result as a working
driver stack".

I don't think the facts on the ground support your claim here, aside
from the practical problem that nvidia is unwilling to even create an
open driver to begin with. So there isn't anything to merge.

> > open up your hw enough for that, I really don't see the point in
> > merging such a driver, it'll be an unmaintainable stack by anyone else
> > who's not having access to those NDA covered specs and patents and
> > everything.
>
> My perspective from RDMA is that the drivers are black boxes. I can
> hack around the interface layers but there is a lot of wild stuff in
> there that can't be understood without access to the HW documentation.

There's shipping gpu drivers with entirely reverse-engineered stacks.
And I don't mean "shipping in fedora" but "shipping in Chrome tablets
sold by OEM partners of Google". So it's very much possible, even if
the vendor is maximally stubborn about things.

> I think only HW that has open specs, like say NVMe, can really be
> properly community oriented. Otherwise we have to work in a community
> partnership with the vendor.

Well sure that's the ideal case, but most vendors in the accel space
arent interested actual partnership with the wider community. It's
"merge this kernel driver and have no further demands about anything
else". Well there are some who are on board, but it does take pretty
enormous amounts of coercion.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
