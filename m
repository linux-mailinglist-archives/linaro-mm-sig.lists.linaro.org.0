Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B53E48EE16
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 17:29:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BFE53EDFF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 16:29:11 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id CA46D3ED23
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 16:28:45 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id q8so16446874wra.12
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 08:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=tqGlTL36cL23P6if//t0psuJgzb2aZPNtB+QiYomoVg=;
        b=LgpWF+8/GyAMPLlcUXnFR7OSBhD5cQb37DlVJe8MofNwk478gk314Ibb51K3jfRFWS
         uTbfxNolynKt9W8MkttdcKIBj9sccmUaPINZYkduoDoQbsxg9oDqZoJwj0Eyy+yBaxAY
         dz15ALfZP7IXwMliDFeq+N3hOA/Nhf0qCfywU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=tqGlTL36cL23P6if//t0psuJgzb2aZPNtB+QiYomoVg=;
        b=wt/eFuAHsJU+2Jl5Bv6GA5mwhKIJKi9Y00A9g7Ca//B+HWM6RVZP33YB/zMYKeiwh6
         2HPfHWTU3B0DpPjtO/vvjgeiwS4ZM7hLh5waNz123RfeeeuXsg/JfLwBPSQHFen8EgG5
         37qeTqR/Ph/EmNCJXRvs0GXZOVUIwiaGn1Qy36ZaoPog3nT1YhwQ98pR1HRqLPQkPGfV
         NQA5ZNX5A15DM04uBLMLcaDx+udoen7DTIHsTh4lChJdn+xO3cofrB6/yXjmnYjrtKth
         M//tGDopaoTYDGiOS+0iqD9wKrAkO0PFqiAE0EgB6u+nK9PjKI4OjJNwjHWRyLU53RD9
         Nmcw==
X-Gm-Message-State: AOAM5331j6K8UHfv2iuzJRZg80NZSJgClyVdMlqFrQdQffEsbxGW+WqS
	BJmeva7G2VOIsEkuA6cYDY4tqw==
X-Google-Smtp-Source: ABdhPJx0wcQ+hXP/v3Kz3NXp+rvB8W5jykU7SHEfbGpdDnksWeXzQlF73fGFoh5Y0mdm8FxqnLA7bw==
X-Received: by 2002:adf:fa85:: with SMTP id h5mr9104024wrr.681.1642177724728;
        Fri, 14 Jan 2022 08:28:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id i10sm7008866wmq.45.2022.01.14.08.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 08:28:44 -0800 (PST)
Date: Fri, 14 Jan 2022 17:28:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YeGkusRJNixihMfj@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-2-christian.koenig@amd.com>
 <YcOTKYkEcu7MG2sY@phenom.ffwll.local>
 <b73ac88f-bb34-ed56-226f-6f3077365b75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b73ac88f-bb34-ed56-226f-6f3077365b75@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: KQGLSJVD5O2OIUHU7FHOREICTI757NJE
X-Message-ID-Hash: KQGLSJVD5O2OIUHU7FHOREICTI757NJE
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/24] dma-buf: add dma_resv_replace_fences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQGLSJVD5O2OIUHU7FHOREICTI757NJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 03, 2022 at 11:48:25AM +0100, Christian K=F6nig wrote:
> Am 22.12.21 um 22:05 schrieb Daniel Vetter:
> > On Tue, Dec 07, 2021 at 01:33:48PM +0100, Christian K=F6nig wrote:
> > > This function allows to replace fences from the shared fence list when
> > > we can gurantee that the operation represented by the original fence =
has
> > > finished or no accesses to the resources protected by the dma_resv
> > > object any more when the new fence finishes.
> > >=20
> > > Then use this function in the amdkfd code when BOs are unmapped from =
the
> > > process.
> > >=20
> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/dma-buf/dma-resv.c                    | 43 ++++++++++++++++
> > >   .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c  | 49 +++-------------=
---
> > >   include/linux/dma-resv.h                      |  2 +
> > >   3 files changed, 52 insertions(+), 42 deletions(-)
> > >=20
> > > diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> > > index 4deea75c0b9c..a688dbded3d3 100644
> > > --- a/drivers/dma-buf/dma-resv.c
> > > +++ b/drivers/dma-buf/dma-resv.c
> > > @@ -284,6 +284,49 @@ void dma_resv_add_shared_fence(struct dma_resv *=
obj, struct dma_fence *fence)
> > >   }
> > >   EXPORT_SYMBOL(dma_resv_add_shared_fence);
> > > +/**
> > > + * dma_resv_replace_fences - replace fences in the dma_resv obj
> > > + * @obj: the reservation object
> > > + * @context: the context of the fences to replace
> > > + * @replacement: the new fence to use instead
> > > + *
> > > + * Replace fences with a specified context with a new fence. Only va=
lid if the
> > > + * operation represented by the original fences is completed or has =
no longer
> > > + * access to the resources protected by the dma_resv object when the=
 new fence
> > > + * completes.
> > > + */
> > > +void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
> > > +			     struct dma_fence *replacement)
> > > +{
> > > +	struct dma_resv_list *list;
> > > +	struct dma_fence *old;
> > > +	unsigned int i;
> > > +
> > > +	dma_resv_assert_held(obj);
> > > +
> > > +	write_seqcount_begin(&obj->seq);
> > > +
> > > +	old =3D dma_resv_excl_fence(obj);
> > > +	if (old->context =3D=3D context) {
> > > +		RCU_INIT_POINTER(obj->fence_excl, dma_fence_get(replacement));
> > > +		dma_fence_put(old);
> > > +	}
> > > +
> > > +	list =3D dma_resv_shared_list(obj);
> > > +	for (i =3D 0; list && i < list->shared_count; ++i) {
> > > +		old =3D rcu_dereference_protected(list->shared[i],
> > > +						dma_resv_held(obj));
> > > +		if (old->context !=3D context)
> > > +			continue;
> > > +
> > > +		rcu_assign_pointer(list->shared[i], dma_fence_get(replacement));
> > > +		dma_fence_put(old);
> > Since the fences are all guaranteed to be from the same context, maybe =
we
> > should have a WARN_ON(__dma_fence_is_later()); here just to be safe?
>=20
> First of all happy new year!

Happy new year to you too!

Also I'm only still catching up.

> Then to answer your question, no :)
>=20
> This here is the case where we replace an preemption fence with a VM page
> table update fence. So both fences are not from the same context.
>=20
> But since you ask that means that I somehow need to improve the
> documentation.

Hm yeah then I'm confused, since right above you have the context check.
And I thought if the contexts are equal, then the fences must be ordered,
and since you're adding a new one it must be a later fences.

But now you're saying this is to replace a fence with a totally different
context one (which can totally make sense for the special fences compute
mode contexts all need), but then I honestly don't get why you even check
for the context.

Maybe more docs help explain what's going on, or maybe we should have the
is_later check only if the new fences is from the same context. amdkfd
might not benefit, but this is a new generic interface and other drivers
might horrendously screw this up :-) Plus then a big comment that if it's
a different fence timeline context the driver must guarantee that the new
fence is guaranteed to signal after anything we're replacing here.

I think it might also be good to just include the specific amdkfd use case
with a short intro to wth are preempt-ctx and page table fences, to
explain when this function is actually useful.

It's definitely a very special case function, and I'm worried driver
authors might come up with creative abuses for it that cause trouble.
-Daniel

>=20
> Regards,
> Christian.
>=20
> >=20
> > With that added:
> >=20
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >=20
> > > +	}
> > > +
> > > +	write_seqcount_end(&obj->seq);
> > > +}
> > > +EXPORT_SYMBOL(dma_resv_replace_fences);
> > > +
> > >   /**
> > >    * dma_resv_add_excl_fence - Add an exclusive fence.
> > >    * @obj: the reservation object
> > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drive=
rs/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > > index 71acd577803e..b558ef0f8c4a 100644
> > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > > @@ -236,53 +236,18 @@ void amdgpu_amdkfd_release_notify(struct amdgpu=
_bo *bo)
> > >   static int amdgpu_amdkfd_remove_eviction_fence(struct amdgpu_bo *bo,
> > >   					struct amdgpu_amdkfd_fence *ef)
> > >   {
> > > -	struct dma_resv *resv =3D bo->tbo.base.resv;
> > > -	struct dma_resv_list *old, *new;
> > > -	unsigned int i, j, k;
> > > +	struct dma_fence *replacement;
> > >   	if (!ef)
> > >   		return -EINVAL;
> > > -	old =3D dma_resv_shared_list(resv);
> > > -	if (!old)
> > > -		return 0;
> > > -
> > > -	new =3D kmalloc(struct_size(new, shared, old->shared_max), GFP_KERN=
EL);
> > > -	if (!new)
> > > -		return -ENOMEM;
> > > -
> > > -	/* Go through all the shared fences in the resevation object and so=
rt
> > > -	 * the interesting ones to the end of the list.
> > > +	/* TODO: Instead of block before we should use the fence of the page
> > > +	 * table update and TLB flush here directly.
> > >   	 */
> > > -	for (i =3D 0, j =3D old->shared_count, k =3D 0; i < old->shared_cou=
nt; ++i) {
> > > -		struct dma_fence *f;
> > > -
> > > -		f =3D rcu_dereference_protected(old->shared[i],
> > > -					      dma_resv_held(resv));
> > > -
> > > -		if (f->context =3D=3D ef->base.context)
> > > -			RCU_INIT_POINTER(new->shared[--j], f);
> > > -		else
> > > -			RCU_INIT_POINTER(new->shared[k++], f);
> > > -	}
> > > -	new->shared_max =3D old->shared_max;
> > > -	new->shared_count =3D k;
> > > -
> > > -	/* Install the new fence list, seqcount provides the barriers */
> > > -	write_seqcount_begin(&resv->seq);
> > > -	RCU_INIT_POINTER(resv->fence, new);
> > > -	write_seqcount_end(&resv->seq);
> > > -
> > > -	/* Drop the references to the removed fences or move them to ef_lis=
t */
> > > -	for (i =3D j; i < old->shared_count; ++i) {
> > > -		struct dma_fence *f;
> > > -
> > > -		f =3D rcu_dereference_protected(new->shared[i],
> > > -					      dma_resv_held(resv));
> > > -		dma_fence_put(f);
> > > -	}
> > > -	kfree_rcu(old, rcu);
> > > -
> > > +	replacement =3D dma_fence_get_stub();
> > > +	dma_resv_replace_fences(bo->tbo.base.resv, ef->base.context,
> > > +				replacement);
> > > +	dma_fence_put(replacement);
> > >   	return 0;
> > >   }
> > > diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> > > index eebf04325b34..e0be34265eae 100644
> > > --- a/include/linux/dma-resv.h
> > > +++ b/include/linux/dma-resv.h
> > > @@ -457,6 +457,8 @@ void dma_resv_init(struct dma_resv *obj);
> > >   void dma_resv_fini(struct dma_resv *obj);
> > >   int dma_resv_reserve_shared(struct dma_resv *obj, unsigned int num_=
fences);
> > >   void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fen=
ce *fence);
> > > +void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
> > > +			     struct dma_fence *fence);
> > >   void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence=
 *fence);
> > >   int dma_resv_get_fences(struct dma_resv *obj, struct dma_fence **pf=
ence_excl,
> > >   			unsigned *pshared_count, struct dma_fence ***pshared);
> > > --=20
> > > 2.25.1
> > >=20
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
