Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 659E343386B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 16:32:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4B8C6075A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 14:32:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B564A60752; Tue, 19 Oct 2021 14:32:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 852F96058D;
	Tue, 19 Oct 2021 14:32:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E0D560537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 14:32:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 68E1F6058D; Tue, 19 Oct 2021 14:32:22 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by lists.linaro.org (Postfix) with ESMTPS id 5910860537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 14:32:20 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id z20so13680745edc.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 07:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RT2OWiu66UenIvORUGYG/GiRCyemF3VXNlRjAEErvao=;
 b=a4VY42HJalA72DhnkXpd9tI69pDyiIL9oOJ7/ZH4b5qD7xnc30mssvRB3cjOZ9gpS1
 S4WJsMv4GIlfvLpDJmm5CSlSUuZU3Ab0HJeX6j/UyfMmb1a4UFP9lNdy3jqax3O8rtp1
 gqXRlNaj/65fRr3cpsscUBAHgVLoRLi0kcXiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RT2OWiu66UenIvORUGYG/GiRCyemF3VXNlRjAEErvao=;
 b=sSRmhfVMWkSDHvVFXKTjZWLmYWWRpKqJsBevOU78p3fyjkG309RRvuGJ9nCU+SFkV+
 oWm9PTHcdseQmqs8xNHIchPrQXkk15xiqEcqYW1GRbSDMfSklcriPAXICBi7z7VWoKHn
 e6BSbFIdlWDexJFB06svOJ/p+fqyACteff6CS6y0uNnj8Grk3DmLM+GnqQ80W7kkFpCH
 cFaC6mmvLlXMsiNztJlkzQekutge7oMseybVXo/AslmPcxL4Q4iseYiw/IyP8nO+a3HB
 yZ+BrU5kVIg7vZWFppEp7c0sm3WNF11DKx1yFOR6l1vf8ZAFYoGIdopQmIb6cDNlSx2+
 Cd1w==
X-Gm-Message-State: AOAM530eywMZ/9rdH+QXrOaXxDCRlJJpV/bibroFxvoGe55yrxQMvZR9
 WTvCW1MysMbsIhJyblzgMBXIdA==
X-Google-Smtp-Source: ABdhPJyAM6JgxZkvD4lSzTHT1aiap2InBn5R1eowSjP+BYqEwXduZ8CcPEQ4r7OJ7dlznkvFTq09dw==
X-Received: by 2002:a50:d8c2:: with SMTP id y2mr54011219edj.360.1634653851982; 
 Tue, 19 Oct 2021 07:30:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t6sm11675493edj.27.2021.10.19.07.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 07:30:51 -0700 (PDT)
Date: Tue, 19 Oct 2021 16:30:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YW7WmU/GLzgJbDQc@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
 <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
 <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
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

On Tue, Oct 19, 2021 at 03:02:26PM +0200, Christian K=F6nig wrote:
> Am 13.10.21 um 16:23 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:38PM +0200, Christian K=F6nig wrote:
> > > Makes the handling a bit more complex, but avoids the use of
> > > dma_resv_get_excl_unlocked().
> > > =

> > > v2: improve coding and documentation
> > > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
> > >   1 file changed, 11 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/dr=
m/drm_gem_atomic_helper.c
> > > index e570398abd78..8534f78d4d6d 100644
> > > --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > @@ -143,6 +143,7 @@
> > >    */
> > >   int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct=
 drm_plane_state *state)
> > >   {
> > > +	struct dma_resv_iter cursor;
> > >   	struct drm_gem_object *obj;
> > >   	struct dma_fence *fence;
> > > @@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct drm_p=
lane *plane, struct drm_plane_st
> > >   		return 0;
> > >   	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> > > -	fence =3D dma_resv_get_excl_unlocked(obj->resv);
> > > -	drm_atomic_set_fence_for_plane(state, fence);
> > > +	dma_resv_iter_begin(&cursor, obj->resv, false);
> > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > +		/* TODO: We only use the first write fence here and need to fix
> > > +		 * the drm_atomic_set_fence_for_plane() API to accept more than
> > > +		 * one. */
> > I'm confused, right now there is only one write fence. So no need to
> > iterate, and also no need to add a TODO. If/when we add more write fenc=
es
> > then I think this needs to be revisited, and ofc then we do need to upd=
ate
> > the set_fence helpers to carry an entire array of fences.
> =

> Well could be that I misunderstood you, but in your last explanation it
> sounded like the drm_atomic_set_fence_for_plane() function needs fixing
> anyway because a plane could have multiple BOs.
> =

> So in my understanding what we need is a
> drm_atomic_add_dependency_for_plane() function which records that a certa=
in
> fence needs to be signaled before a flip.

Yeah that's another issue, but in practice there's no libva which decodes
into planar yuv with different fences between the planes. So not a bug in
practice.

But this is entirely orthogonal to you picking up the wrong fence here if
there's not exclusive fence set:

- old code: Either pick the exclusive fence, or not fence if the exclusive
  one is not set.

- new code: Pick the exclusive fence or the first shared fence

New behaviour is busted, because scanning out and reading from a buffer at
the same time (for the next frame, e.g. to copy over damaged areas or some
other tricks) is very much a supported thing. Atomic _only_ wants to look
at the exclusive fence slot, which mean "there is an implicitly synced
write to this buffers". Implicitly synced reads _must_ be ignored.

Now amdgpu doesn't have this distinction in its uapi, but many drivers do.
-Daniel

> Support for more than one write fence then comes totally naturally.
> =

> Christian.
> =

> > -Daniel
> > =

> > > +		dma_fence_get(fence);
> > > +		break;
> > > +	}
> > > +	dma_resv_iter_end(&cursor);
> > > +	drm_atomic_set_fence_for_plane(state, fence);
> > >   	return 0;
> > >   }
> > >   EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
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
