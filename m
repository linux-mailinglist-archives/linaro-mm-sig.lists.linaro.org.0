Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD3F3BDC61
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 19:36:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 416FE66924
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 17:36:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EA05B66942; Tue,  6 Jul 2021 17:36:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5004263570;
	Tue,  6 Jul 2021 17:36:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4F25604F6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:36:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E085F63570; Tue,  6 Jul 2021 17:36:09 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 by lists.linaro.org (Postfix) with ESMTPS id DA775604F6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 17:36:07 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id
 f12-20020a056830204cb029048bcf4c6bd9so10282738otp.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 10:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UAvpvptXG6sMkQz+gf0B/1SxifjIkdjKCH8sm6hLVss=;
 b=VykMUkCUg7WcIEKsR1v4RBrI2NiKhIwMgV+BRVA0h1SvtWJEdi9m1qCCccVZziliFj
 qBlBMH+TnRCrISUoXKFEYq86K2054AAs5F5INJ5GSJLHKD1Qf4iQDfLSgfcflxvogC6g
 kX++oMx5RF5cu+sGrdeqLrJSxn9RpJvqmO3q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UAvpvptXG6sMkQz+gf0B/1SxifjIkdjKCH8sm6hLVss=;
 b=J6Ekm8rvcl2XE3e19b8YmeFySixe4fPKWy03WTVFaggoviENGLYGIPUf1u1OpGvC2M
 FajOt9H17JYAMsB06b2BsdxxllEeqTNNcvMVMRq0po+HybJgDM1pSIROeAvk36n4vZFs
 EGVCkIiv6NqArWLhRvhqEybXX0V3tG0sCw/L2UN4cB/WvJAeLwVInuLCdna5O9aRGx0e
 rVvKl01flskITAvfLY7FlU6xuLwnhWIt4H6uKwiGAekHvLzmBEbQDjFy+VGhvMX5GnQK
 LvptdGIEjru+1912jWEnXYU1FfKxAbYlx8HyHWp2ymAn1yN6bvnkRabVFmsTlQy73+Bk
 emHg==
X-Gm-Message-State: AOAM530aDTpGeplkgHfOu8z7H+7CDImYaBJx0CntS2xQUoxz4850cQke
 uB4FxIva4LVYppxMBsjb2gRPBVnbC3BJQIDgUarK1w==
X-Google-Smtp-Source: ABdhPJz36ON+djVou1Lu0bUXqr7/f1L1bt2WJsjaaZuWE3eVLCbRks9b/YMgcJJgp0E9upbbebjDolDn3fGr+cA7dq8=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr16150759otb.281.1625592967188; 
 Tue, 06 Jul 2021 10:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
 <20210706142357.GN4604@ziepe.ca>
 <CAKMK7uELNzwUe+hhVWRg=Pk5Wt_vOOX922H48Kd6dTyO2PeBbg@mail.gmail.com>
 <20210706152542.GP4604@ziepe.ca>
 <CAKMK7uH7Ar6+uAOU_Sj-mf89V9WCru+66CV5bO9h-WAAv7Mgdg@mail.gmail.com>
 <20210706162953.GQ4604@ziepe.ca>
In-Reply-To: <20210706162953.GQ4604@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Jul 2021 19:35:55 +0200
Message-ID: <CAKMK7uGXUgjyjch57J3UnC7SA3-4g87Ft7tLjj9fFkgyKkKdrg@mail.gmail.com>
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

On Tue, Jul 6, 2021 at 6:29 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Jul 06, 2021 at 05:49:01PM +0200, Daniel Vetter wrote:
>
> > The other thing to keep in mind is that one of these drivers supports
> > 25 years of product generations, and the other one doesn't.
>
> Sure, but that is the point, isn't it? To have an actually useful
> thing you need all of this mess
>
> > > My argument is that an in-tree open kernel driver is a big help to
> > > reverse engineering an open userspace. Having the vendors
> > > collaboration to build that monstrous thing can only help the end goal
> > > of an end to end open stack.
> >
> > Not sure where this got lost, but we're totally fine with vendors
> > using the upstream driver together with their closed stack. And most
> > of the drivers we do have in upstream are actually, at least in parts,
> > supported by the vendor. E.g. if you'd have looked the drm/arm driver
> > you picked is actually 100% written by ARM engineers. So kinda
> > unfitting example.
>
> So the argument with Habana really boils down to how much do they need
> to show in the open source space to get a kernel driver? You want to
> see the ISA or compiler at least?

Yup. We dont care about any of the fancy pieces you build on top, nor
does the compiler need to be the optimizing one. Just something that's
good enough to drive the hw in some demons to see how it works and all
that. Generally that's also not that hard to reverse engineer, if
someone is bored enough, the real fancy stuff tends to be in how you
optimize the generated code. And make it fit into the higher levels
properly.

> That at least doesn't seem "extreme" to me.
>
> > > For instance a vendor with an in-tree driver has a strong incentive to
> > > sort out their FW licensing issues so it can be redistributed.
> >
> > Nvidia has been claiming to try and sort out the FW problem for years.
> > They even managed to release a few things, but I think the last one is
> > 2-3 years late now. Partially the reason is that there don't have a
> > stable api between the firmware and driver, it's all internal from the
> > same source tree, and they don't really want to change that.
>
> Right, companies have no incentive to work in a sane way if they have
> their own parallel world. I think drawing them part by part into the
> standard open workflows and expectations is actually helpful to
> everyone.

Well we do try to get them on board part-by-part generally starting
with the kernel and ending with a proper compiler instead of the usual
llvm hack job, but for whatever reasons they really like their
in-house stuff, see below for what I mean.

> > > > I don't think the facts on the ground support your claim here, aside
> > > > from the practical problem that nvidia is unwilling to even create an
> > > > open driver to begin with. So there isn't anything to merge.
> > >
> > > The internet tells me there is nvgpu, it doesn't seem to have helped.
> >
> > Not sure which one you mean, but every once in a while they open up a
> > few headers, or a few programming specs, or a small driver somewhere
> > for a very specific thing, and then it dies again or gets obfuscated
> > for the next platform, or just never updated. I've never seen anything
> > that comes remotely to something complete, aside from tegra socs,
> > which are fully supported in upstream afaik.
>
> I understand nvgpu is the tegra driver that people actualy
> use. nouveau may have good tegra support but is it used in any actual
> commercial product?

I think it was almost the case. Afaik they still have their internal
userspace stack working on top of nvidia, at least last year someone
fixed up a bunch of issues in the tegra+nouveau combo to enable format
modifiers properly across the board. But also nvidia is never going to
sell you that as the officially supported thing, unless your ask comes
back with enormous amounts of sold hardware.

And it's not just nvidia, it's pretty much everyone. Like a soc
company I don't want to know started collaborating with upstream and
the reverse-engineered mesa team on a kernel driver, seems to work
pretty well for current hardware. But for the next generation they
decided it's going to be again only their in-house tree that
completele ignores drivers/gpu/drm, and also tosses all the
foundational work they helped build on the userspace side. And this is
consistent across all companies, over the last 20 years I know of
(often non-public) stories across every single company where they
decided that all the time invested into community/upstream
collaboration isn't useful anymore, we go all vendor solo for the next
one.

Most of those you luckily don't hear about anymore, all it results in
the upstream driver being 1-2 years late or so. But even the good ones
where we collaborate well can't seem to help themselves and want to
throw it all away every few years.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
