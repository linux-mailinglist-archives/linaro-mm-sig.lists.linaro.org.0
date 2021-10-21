Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DAC43604D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 13:31:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF54660BD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 11:31:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8772660A90; Thu, 21 Oct 2021 11:31:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D55960AEB;
	Thu, 21 Oct 2021 11:31:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 72A3B60836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:31:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 705E660AEB; Thu, 21 Oct 2021 11:31:13 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id 67E3060836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:31:11 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 b189-20020a1c1bc6000000b0030da052dd4fso430989wmb.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 04:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=f56JgTBKb8JmBZkmOs6Now7nUne1yamJNVQolZeHYv8=;
 b=C3VmqxGRNoDOgDguk8ItjzrEXLbNqVReLp0anA7NTkmIOa/N2347kqb4EBUju22FoN
 gMu+EkjQSnIK68vgukXL08RBkz/sCCnU93WWtW7ttP0CAM73Gi993pR9pHpniiL75JpP
 VJthuOSggVhlTXNGreuCacV1G3qLx4Yl80F9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=f56JgTBKb8JmBZkmOs6Now7nUne1yamJNVQolZeHYv8=;
 b=0VSJ+e+4mJwhjbLk/zvRSyA5alKGUmHvCsgpsOirkuEuo2M8tyrmogX01Itxy3pA9b
 iG/M2uNZ5vS7dxGs4/XntKgGeE3LBAtPKpsq4BWzsluuLBGHdT+b4PwXDz2hHp+4SixD
 YAM1KRfgIUuxnHn3w5KHNqKe/I5zkaX26UBEYkEIaMqaZt62xWoM8QZbftgsTECh7B2K
 7quzqWkp1e7JCNEIrYsC/PbNiOaLfVtZaFxC0LBiVVCdV+mbilhymVoSwEvcxDKv2slh
 sV3+FjDPK9uqPKrRGuovGrjgnw3+o15Z8PGXKJNNLNeYpZ5860hAPoEl4DwqqBAoVAGz
 SNvw==
X-Gm-Message-State: AOAM5318hps3n+MDroNHF7sopNqT4wm+G1d4jkcDYpe0vldq1k9WlNht
 2jPsnu5gOLdXABcfWCP9JGfr5g==
X-Google-Smtp-Source: ABdhPJytF5iq2p5Stwjaip348UJfwexafxO1AF5C155FvMCbFj1c/2h41YMDj9ZJDp3XeR8hhncqPg==
X-Received: by 2002:a05:600c:b43:: with SMTP id
 k3mr5944164wmr.142.1634815870444; 
 Thu, 21 Oct 2021 04:31:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j11sm4669319wmi.24.2021.10.21.04.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:31:10 -0700 (PDT)
Date: Thu, 21 Oct 2021 13:31:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YXFPfBL0uSpD33rj@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
 <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
 <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
 <YW7WmU/GLzgJbDQc@phenom.ffwll.local>
 <35416546-b60b-d5cf-7fe9-abaa0dde63e2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35416546-b60b-d5cf-7fe9-abaa0dde63e2@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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
Cc: tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 19, 2021 at 05:51:38PM +0200, Christian K=F6nig wrote:
> Am 19.10.21 um 16:30 schrieb Daniel Vetter:
> > On Tue, Oct 19, 2021 at 03:02:26PM +0200, Christian K=F6nig wrote:
> > > Am 13.10.21 um 16:23 schrieb Daniel Vetter:
> > > > On Tue, Oct 05, 2021 at 01:37:38PM +0200, Christian K=F6nig wrote:
> > > > > Makes the handling a bit more complex, but avoids the use of
> > > > > dma_resv_get_excl_unlocked().
> > > > > =

> > > > > v2: improve coding and documentation
> > > > > =

> > > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > > ---
> > > > >    drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
> > > > >    1 file changed, 11 insertions(+), 2 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gp=
u/drm/drm_gem_atomic_helper.c
> > > > > index e570398abd78..8534f78d4d6d 100644
> > > > > --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > > > +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > > > @@ -143,6 +143,7 @@
> > > > >     */
> > > > >    int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, s=
truct drm_plane_state *state)
> > > > >    {
> > > > > +	struct dma_resv_iter cursor;
> > > > >    	struct drm_gem_object *obj;
> > > > >    	struct dma_fence *fence;
> > > > > @@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct d=
rm_plane *plane, struct drm_plane_st
> > > > >    		return 0;
> > > > >    	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> > > > > -	fence =3D dma_resv_get_excl_unlocked(obj->resv);
> > > > > -	drm_atomic_set_fence_for_plane(state, fence);
> > > > > +	dma_resv_iter_begin(&cursor, obj->resv, false);
> > > > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > > > +		/* TODO: We only use the first write fence here and need to fix
> > > > > +		 * the drm_atomic_set_fence_for_plane() API to accept more than
> > > > > +		 * one. */
> > > > I'm confused, right now there is only one write fence. So no need to
> > > > iterate, and also no need to add a TODO. If/when we add more write =
fences
> > > > then I think this needs to be revisited, and ofc then we do need to=
 update
> > > > the set_fence helpers to carry an entire array of fences.
> > > Well could be that I misunderstood you, but in your last explanation =
it
> > > sounded like the drm_atomic_set_fence_for_plane() function needs fixi=
ng
> > > anyway because a plane could have multiple BOs.
> > > =

> > > So in my understanding what we need is a
> > > drm_atomic_add_dependency_for_plane() function which records that a c=
ertain
> > > fence needs to be signaled before a flip.
> > Yeah that's another issue, but in practice there's no libva which decod=
es
> > into planar yuv with different fences between the planes. So not a bug =
in
> > practice.
> > =

> > But this is entirely orthogonal to you picking up the wrong fence here =
if
> > there's not exclusive fence set:
> > =

> > - old code: Either pick the exclusive fence, or not fence if the exclus=
ive
> >    one is not set.
> > =

> > - new code: Pick the exclusive fence or the first shared fence
> =

> Hui what?
> =

> We use "dma_resv_iter_begin(&cursor, obj->resv, *false*);" here which mea=
ns
> that only the exclusive fence is returned and no shared fences whatsoever.
> =

> My next step is to replace the boolean with a bunch of use case describing
> enums. I hope that will make it much clearer what's going on here.

Yeah I got that entirely wrong, which is kinda bad since that's about the
only thing worth checking in these conversions :-/

I'll go recheck them again and slap some more r-b on stuff.
-Daniel

> =

> Christian.
> =

> > New behaviour is busted, because scanning out and reading from a buffer=
 at
> > the same time (for the next frame, e.g. to copy over damaged areas or s=
ome
> > other tricks) is very much a supported thing. Atomic _only_ wants to lo=
ok
> > at the exclusive fence slot, which mean "there is an implicitly synced
> > write to this buffers". Implicitly synced reads _must_ be ignored.
> =

> =

> > =

> > Now amdgpu doesn't have this distinction in its uapi, but many drivers =
do.
> > -Daniel
> > =

> > > Support for more than one write fence then comes totally naturally.
> > > =

> > > Christian.
> > > =

> > > > -Daniel
> > > > =

> > > > > +		dma_fence_get(fence);
> > > > > +		break;
> > > > > +	}
> > > > > +	dma_resv_iter_end(&cursor);
> > > > > +	drm_atomic_set_fence_for_plane(state, fence);
> > > > >    	return 0;
> > > > >    }
> > > > >    EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
> > > > > -- =

> > > > > 2.25.1
> > > > > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
