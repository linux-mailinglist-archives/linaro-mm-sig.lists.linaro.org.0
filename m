Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CECA543E515
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Oct 2021 17:26:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF73F603A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Oct 2021 15:26:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11AFF6033F; Thu, 28 Oct 2021 15:26:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 440316037E;
	Thu, 28 Oct 2021 15:26:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3C4C460326
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Oct 2021 15:26:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 381AD6037E; Thu, 28 Oct 2021 15:26:11 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 3151360326
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Oct 2021 15:26:09 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id d3so10872320wrh.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Oct 2021 08:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=agTgEPLmvB/7z84bA0Fq2eAXyefFfSRIxtsavGdMMRY=;
 b=lvmK05pCCHf15pV8yJp+0uTRgIc88WGAvQ1vgdWsTfwJPbaNwflyl+/4AQl+zZYibi
 s2STHm9nRuvKY3NNLLKNasvC1/iogK50hsgmrJKZmj3+hLW/8QOc3Bw1Shxxnd9IXuLL
 PN7r3j0aMb57+SQQhhIQ1mvTTLNigF8rhWqH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=agTgEPLmvB/7z84bA0Fq2eAXyefFfSRIxtsavGdMMRY=;
 b=bpaEgeT2j058TBkuUVrOOUQ+bVXEPyqINVAuVSN9u/4dltw+L/M+Q3ldZ6EL5KqNIz
 nFhPGavuQixP8oe1nuXoHLFW8R9NUqJ9jNYiN95fevipXki8KzHbjnySDbXosvTARE8v
 FeYGG+a+289UI+vhXHxK8BYmsAwRbVGYxgCuWnqJmJ435QaacHj+ce5yEC/yLWddOQH2
 LWcsLuVcZRg39McKJMPM0xchvk3HDY7yg+4mgDynu+eFIL5VaDUvyBjIMlL4GRSr641u
 BXDjAWpFK5RpjQJj5+faSOha2Eo6VBZvzA0sQmziQwUQyxlt2l7zWaKQZMUmZjgCBvA7
 cfjA==
X-Gm-Message-State: AOAM532k3YSTyNf+Ecqnp5LtKzBbSXHTrZON5UJRkBJfwK/dPfulpLsy
 zCInhADb0qLY1Pkr3AVb/RzsJg==
X-Google-Smtp-Source: ABdhPJwC658b6JYOWWx2PGdESXYuo9lApQkPGmjeLqc4rQ80PE9cO9n1U9xiKAB4QVeU4k7DVMHkuA==
X-Received: by 2002:a5d:604b:: with SMTP id j11mr6503662wrt.162.1635434768303; 
 Thu, 28 Oct 2021 08:26:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l124sm6962325wml.8.2021.10.28.08.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 08:26:07 -0700 (PDT)
Date: Thu, 28 Oct 2021 17:26:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YXrBDSywbTHRoM3H@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-27-christian.koenig@amd.com>
 <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
 <cca39a70-5820-18e2-8bda-a4a0d7ad2c31@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cca39a70-5820-18e2-8bda-a4a0d7ad2c31@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 26/28] drm/nouveau: use the new
 interator in nv50_wndw_prepare_fb
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

On Fri, Oct 22, 2021 at 03:17:17PM +0200, Christian K=F6nig wrote:
> Am 13.10.21 um 16:29 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:40PM +0200, Christian K=F6nig wrote:
> > > Makes the handling a bit more complex, but avoids the use of
> > > dma_resv_get_excl_unlocked().
> > > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
> > >   1 file changed, 9 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/dr=
m/nouveau/dispnv50/wndw.c
> > > index 8d048bacd6f0..30712a681e2a 100644
> > > --- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> > > +++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> > > @@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, str=
uct drm_plane_state *state)
> > >   	struct nouveau_bo *nvbo;
> > >   	struct nv50_head_atom *asyh;
> > >   	struct nv50_wndw_ctxdma *ctxdma;
> > > +	struct dma_resv_iter cursor;
> > > +	struct dma_fence *fence;
> > >   	int ret;
> > >   	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
> > > @@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, st=
ruct drm_plane_state *state)
> > >   			asyw->image.handle[0] =3D ctxdma->object.handle;
> > >   	}
> > > -	asyw->state.fence =3D dma_resv_get_excl_unlocked(nvbo->bo.base.resv=
);
> > > +	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
> > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > +		/* TODO: We only use the first writer here */
> > Same thing as with the atomic core helper. This is actually broken,
> > because for atomic we really do _not_ want to wait for any shared fence=
s.
> > Which this will do, if there's no exclusive fence attached.
> > =

> > So upgrading my general concern on this and the atomic helper patch to a
> > reject, since I think it's broken.
> =

> Since we simply had a misunderstanding with that could I get an rb for th=
at
> now?

Oh sorry, I thought I've supplied that. As much a you still trust my r-b
at least :-)

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> =

> Thanks,
> Christian.
> =

> > -Daniel
> > =

> > > +		asyw->state.fence =3D dma_fence_get(fence);
> > > +		break;
> > > +	}
> > > +	dma_resv_iter_end(&cursor);
> > >   	asyw->image.offset[0] =3D nvbo->offset;
> > >   	if (wndw->func->prepare) {
> > > -- =

> > > 2.25.1
> > > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
