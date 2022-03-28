Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1289F4E9956
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 16:22:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45E933EF7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 14:22:58 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by lists.linaro.org (Postfix) with ESMTPS id 06A5D3EA16
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 14:22:54 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id r204-20020a1c44d5000000b0038ccb70e239so3679518wma.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0qMi19vJjaBiLl9cST+fBDBfq+lOIRwdfDjsTWbv4+A=;
        b=F6SrEc540oQbJ4koNpIXnsQNTXkFgqI6U/3cDMxUWVC4DyuuAWQRvto0jWiQx+RygR
         az1eH84A1QaOlVPcmO2sktRA6+Oq14ehcGOz9Wipe7TsmT4xpng2OUhP8KJzz26RUyKz
         O3PYrAc8ylFBmFqVK6n23fC3EaqzGbjQigaF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0qMi19vJjaBiLl9cST+fBDBfq+lOIRwdfDjsTWbv4+A=;
        b=qg8sAm34XDHMcqmy8uGAI4/LpuEGeNDCjbLXcclRIrQk+xekygPhwhf3TlgvRKCWYi
         u1I4NcQ0BztdQ/FMlvHLFVLS17ZWTckzPFcNp7LIvaI84wSiHUR5iKDLf7P6Pw8J8ZBa
         3Y+1nK4YU00ASNMrE06Pwu3jOE/WjWETV10gYw533whLGPy2XCFMREwLbty1n6R5H+tz
         O43okO9qhtx8FOnNo44JtMmL/yJTsRo1MSU91/3XU0zL6wxhsa4tGeOzzVQGBWbPg9kx
         93zlNbPGrUmFTka0TOIJENJlCb78LrGGngI0CHH1CTmr7UANz1sK3DQtaCbejjQ/iY/Z
         QUyw==
X-Gm-Message-State: AOAM530aWp31dsy/0UzEYYdA3IWC49ibdPxuZi/y1MM+2ICKKYxDhCoi
	DQO11I36ZNYeZs+iFReVQqNUhQ==
X-Google-Smtp-Source: ABdhPJy/CXlQv4q32M0C+eVPZAvzKzIlirYkPv5FpU1qt19fZsp2h8xi+lNT8j6s35IT6ynk7FjAsw==
X-Received: by 2002:a05:600c:12c9:b0:38c:b319:6da2 with SMTP id v9-20020a05600c12c900b0038cb3196da2mr36510119wmd.125.1648477373048;
        Mon, 28 Mar 2022 07:22:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm13921845wmp.44.2022.03.28.07.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 07:22:52 -0700 (PDT)
Date: Mon, 28 Mar 2022 16:22:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkHEutP7ylbVgJjf@phenom.ffwll.local>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj3e0QjbnPoG7n4I@intel.com>
 <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
 <338d0623-1161-c958-101f-dc7d8ef12f99@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <338d0623-1161-c958-101f-dc7d8ef12f99@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: RXYY32DPTZESPSFY7IBPGSJ2DGBVEMCB
X-Message-ID-Hash: RXYY32DPTZESPSFY7IBPGSJ2DGBVEMCB
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RXYY32DPTZESPSFY7IBPGSJ2DGBVEMCB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 28, 2022 at 12:28:31PM +0200, Christian K=F6nig wrote:
> Hi Ville & Daniel,
>=20
> Am 25.03.22 um 16:28 schrieb Christian K=F6nig:
> > Am 25.03.22 um 16:25 schrieb Ville Syrj=E4l=E4:
> > > On Fri, Mar 11, 2022 at 12:02:43PM +0100, Christian K=F6nig wrote:
> > > > Add a general purpose helper to deep dive into
> > > > dma_fence_chain/dma_fence_array
> > > > structures and iterate over all the fences in them.
> > > >=20
> > > > This is useful when we need to flatten out all fences in those
> > > > structures.
> > > >=20
> > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > One of the dma-buf patches took down Intel CI. Looks like every
> > > machine oopses in some sync_file thing now:
> > > <1>[=A0 260.470008] BUG: kernel NULL pointer dereference, address:
> > > 0000000000000010
> > > <1>[=A0 260.470020] #PF: supervisor read access in kernel mode
> > > <1>[=A0 260.470025] #PF: error_code(0x0000) - not-present page
> > > <6>[=A0 260.470030] PGD 0 P4D 0
> > > <4>[=A0 260.470035] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > > <4>[=A0 260.470040] CPU: 0 PID: 5306 Comm: core_hotunplug Not tainted
> > > 5.17.0-CI-CI_DRM_11405+ #1
> > > <4>[=A0 260.470049] Hardware name: Intel Corporation Jasper Lake
> > > Client Platform/Jasperlake DDR4 SODIMM RVP, BIOS
> > > JSLSFWI1.R00.2385.D02.2010160831 10/16/2020
> > > <4>[=A0 260.470058] RIP: 0010:dma_fence_array_first+0x19/0x20
>=20
> I've looked into this and the root cause seems to be that the new code
> doesn't handle dma_fence_arrays with zero elements.
>=20
> That is rather easy to fix, but a dma_fence_array with zero number of
> elements is most likely a bug because under the wrong circumstances it can
> create a dma_fence instance which will never signal.
>=20
> I've send out a patch on Frinday ([PATCH] dma-buf: WIP dma_fence_array_fi=
rst
> fix) which avoids the crash and prints a warning if anybody tries to crea=
te
> a dma_fence_array with zero length.
>=20
> Can you test this?

It's in drm-tip now (in the fixup branch) so drm-tip results should have
the result soonish:

https://intel-gfx-ci.01.org/tree/drm-tip/index.html?

Cheers, Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
