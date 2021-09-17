Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE840F76A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:23:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 500466328C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:22:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5D48564AD6; Fri, 17 Sep 2021 12:22:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73F0E6328C;
	Fri, 17 Sep 2021 12:22:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C0DA63258
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:22:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9199B6328C; Fri, 17 Sep 2021 12:22:51 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 86F3E63258
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:22:49 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id q26so14868207wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=HXqgLCz+yKWVJe3YgL7Hc4EWqSmTMlkzCm0SfT5efyo=;
 b=Q9oiull4f4tQJdv4ucW4V4rApFNA7kLo6g5e0THWILCM0xkRyQqnEq569l9o5JjlqC
 VOWZ5tcvi6D1aEc1EUj3h6Dg55YOh3K4JhYPUpUQQ+zJsRSh+fPX0u4gVUMexhRBO2//
 4wmP76Zm3pKLpxdHBFo3lZPMgZVtOZRGaTBBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=HXqgLCz+yKWVJe3YgL7Hc4EWqSmTMlkzCm0SfT5efyo=;
 b=HEPq4Wlh2wF+pAMsK1V6jTgJ09yl6Xfpa6wenuQBkUMuZ7uIcWvllq3l8g6WLult6F
 Q40VH4t8iaIcOVekgB5QVWbRtRds+Y8pE+7vXJuNRWyYP7+Woa4GifYSRDDrZCAsk113
 6gL1YlEPhdfUUr5cEkFTqHDMraILRWVoDaXEw5mt9lMiSmkjlzQmtWmdVYIBML9nuFbJ
 7U4zkOrEoIDZW54E0oaBc3sn6m5Vz5Zn87rAMMF8M0WpbjD+e8gfQx57Av3sMIwEjSIg
 k/ReI39UtjBxry3Dw9yyou1W3OIKtLhAc9TYqlhIzGg0p+qhviy0U/lpekLf2qZELz8A
 tzhw==
X-Gm-Message-State: AOAM530oyVd0FClmYYHc+AhR1pQIgnDEai9vRqRyTzKq5B0Z9roPDp9W
 TSy4NtWOhzJJpVjp8n/QwrmlvQ==
X-Google-Smtp-Source: ABdhPJxFruba4CBKvWMjPhXCOoPM0b8Ozzp4jrT1CHk/cVcE8YHZ0cGk0tlSEd2QREgsXuBRtRM30Q==
X-Received: by 2002:a5d:59a6:: with SMTP id p6mr11845539wrr.142.1631881368010; 
 Fri, 17 Sep 2021 05:22:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i9sm10903312wmi.44.2021.09.17.05.22.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:22:47 -0700 (PDT)
Date: Fri, 17 Sep 2021 14:22:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSIlVp8/MR/ww2Q@phenom.ffwll.local>
References: <20210910082655.82168-1-christian.koenig@amd.com>
 <YUDWHw19iUMfFr7K@phenom.ffwll.local>
 <26f766c9-9a3c-3894-9256-e07090655dc2@gmail.com>
 <CAKMK7uFcU-Dh8kMDrfY1rigVf0J-_R8GJ-d+C-iYNmOWx57W7Q@mail.gmail.com>
 <0bc024c5-a54c-eb3c-4c88-3eb7fbf77261@gmail.com>
 <YUNQJlSwzoKNRYIk@phenom.ffwll.local>
 <604fd887-10ce-0841-bb29-b756bd08d9ab@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <604fd887-10ce-0841-bb29-b756bd08d9ab@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/14] dma-buf: add
 dma_resv_for_each_fence_unlocked
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 17, 2021 at 08:32:49AM +0200, Christian K=F6nig wrote:
> Am 16.09.21 um 16:09 schrieb Daniel Vetter:
> > On Thu, Sep 16, 2021 at 02:49:26PM +0200, Christian K=F6nig wrote:
> > > Am 16.09.21 um 14:14 schrieb Daniel Vetter:
> > > > On Thu, Sep 16, 2021 at 10:50 AM Christian K=F6nig <ckoenig.leichtz=
umerken@gmail.com> wrote:
> > > > > Am 14.09.21 um 19:04 schrieb Daniel Vetter:
> > > > > > On Fri, Sep 10, 2021 at 10:26:42AM +0200, Christian K=F6nig wro=
te:
> > > > > > > Abstract the complexity of iterating over all the fences
> > > > > > > in a dma_resv object.
> > > > > > > =

> > > > > > > The new loop handles the whole RCU and retry dance and
> > > > > > > returns only fences where we can be sure we grabbed the
> > > > > > > right one.
> > > > > > > =

> > > > > > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > > > > > ---
> > > > > > >     drivers/dma-buf/dma-resv.c | 63 +++++++++++++++++++++++++=
+++++++++++++
> > > > > > >     include/linux/dma-resv.h   | 36 ++++++++++++++++++++++
> > > > > > >     2 files changed, 99 insertions(+)
> > > > > > > =

> > > > > > > diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma=
-resv.c
> > > > > > > index 84fbe60629e3..213a9b7251ca 100644
> > > > > > > --- a/drivers/dma-buf/dma-resv.c
> > > > > > > +++ b/drivers/dma-buf/dma-resv.c
> > > > > > > @@ -323,6 +323,69 @@ void dma_resv_add_excl_fence(struct dma_=
resv *obj, struct dma_fence *fence)
> > > > > > >     }
> > > > > > >     EXPORT_SYMBOL(dma_resv_add_excl_fence);
> > > > > > > +/**
> > > > > > > + * dma_resv_walk_unlocked - walk over fences in a dma_resv o=
bj
> > > > > > > + * @obj: the dma_resv object
> > > > > > > + * @cursor: cursor to record the current position
> > > > > > > + * @all_fences: true returns also the shared fences
> > > > > > > + * @first: if we should start over
> > > > > > > + *
> > > > > > > + * Return all the fences in the dma_resv object which are no=
t yet signaled.
> > > > > > > + * The returned fence has an extra local reference so will s=
tay alive.
> > > > > > > + * If a concurrent modify is detected the whole iterator is =
started over again.
> > > > > > > + */
> > > > > > > +struct dma_fence *dma_resv_walk_unlocked(struct dma_resv *ob=
j,
> > > > > > > +                                     struct dma_resv_cursor =
*cursor,
> > > > > > > +                                     bool all_fences, bool f=
irst)
> > > > > > > +{
> > > > > > > +    struct dma_fence *fence =3D NULL;
> > > > > > > +
> > > > > > > +    do {
> > > > > > > +            /* Drop the reference from the previous round */
> > > > > > > +            dma_fence_put(fence);
> > > > > > > +
> > > > > > > +            cursor->is_first =3D first;
> > > > > > > +            if (first) {
> > > > > > > +                    cursor->seq =3D read_seqcount_begin(&obj=
->seq);
> > > > > > > +                    cursor->index =3D -1;
> > > > > > > +                    cursor->fences =3D dma_resv_shared_list(=
obj);
> > > > > > > +                    cursor->is_exclusive =3D true;
> > > > > > > +
> > > > > > > +                    fence =3D dma_resv_excl_fence(obj);
> > > > > > > +                    if (fence && test_bit(DMA_FENCE_FLAG_SIG=
NALED_BIT,
> > > > > > > +                                          &fence->flags))
> > > > > > > +                            fence =3D NULL;
> > > > > > > +            } else {
> > > > > > > +                    fence =3D NULL;
> > > > > > > +            }
> > > > > > > +
> > > > > > > +            if (fence) {
> > > > > > > +                    fence =3D dma_fence_get_rcu(fence);
> > > > > > > +            } else if (all_fences && cursor->fences) {
> > > > > > > +                    struct dma_resv_list *fences =3D cursor-=
>fences;
> > > > > > > +
> > > > > > > +                    cursor->is_exclusive =3D false;
> > > > > > > +                    while (++cursor->index < fences->shared_=
count) {
> > > > > > > +                            fence =3D rcu_dereference(fences=
->shared[
> > > > > > > +                                                    cursor->=
index]);
> > > > > > > +                            if (!test_bit(DMA_FENCE_FLAG_SIG=
NALED_BIT,
> > > > > > > +                                          &fence->flags))
> > > > > > > +                                    break;
> > > > > > > +                    }
> > > > > > > +                    if (cursor->index < fences->shared_count)
> > > > > > > +                            fence =3D dma_fence_get_rcu(fenc=
e);
> > > > > > > +                    else
> > > > > > > +                            fence =3D NULL;
> > > > > > > +            }
> > > > > > > +
> > > > > > > +            /* For the eventually next round */
> > > > > > > +            first =3D true;
> > > > > > > +    } while (read_seqcount_retry(&obj->seq, cursor->seq));
> > > > > > > +
> > > > > > > +    return fence;
> > > > > > > +}
> > > > > > > +EXPORT_SYMBOL_GPL(dma_resv_walk_unlocked);
> > > > > > > +
> > > > > > >     /**
> > > > > > >      * dma_resv_copy_fences - Copy all fences from src to dst.
> > > > > > >      * @dst: the destination reservation object
> > > > > > > diff --git a/include/linux/dma-resv.h b/include/linux/dma-res=
v.h
> > > > > > > index 9100dd3dc21f..f5b91c292ee0 100644
> > > > > > > --- a/include/linux/dma-resv.h
> > > > > > > +++ b/include/linux/dma-resv.h
> > > > > > > @@ -149,6 +149,39 @@ struct dma_resv {
> > > > > > >        struct dma_resv_list __rcu *fence;
> > > > > > >     };
> > > > > > > +/**
> > > > > > > + * struct dma_resv_cursor - current position into the dma_re=
sv fences
> > > > > > > + * @seq: sequence number to check
> > > > > > > + * @index: index into the shared fences
> > > > > > > + * @shared: the shared fences
> > > > > > > + * @is_first: true if this is the first returned fence
> > > > > > > + * @is_exclusive: if the current fence is the exclusive one
> > > > > > > + */
> > > > > > > +struct dma_resv_cursor {
> > > > > > > +    unsigned int seq;
> > > > > > > +    unsigned int index;
> > > > > > > +    struct dma_resv_list *fences;
> > > > > > > +    bool is_first;
> > > > > > > +    bool is_exclusive;
> > > > > > > +};
> > > > > > A bit a bikeshed, but I think I'd be nice to align this with th=
e other
> > > > > > iterators we have, e.g. for the drm_connector list.
> > > > > > =

> > > > > > So struct dma_resv_fence_iter, dma_resv_fence_iter_begin/next/e=
nd().
> > > > > I've renamed the structure to dma_resv_iter.
> > > > > =

> > > > > > Also I think the for_each macro must not include begin/end call=
s. If we
> > > > > > include that then it saves 2 lines of code at the cost of a pil=
e of
> > > > > > awkward bugs because people break; out of the loop or return ea=
rly  (only
> > > > > > continue is safe) and we leak a fence. Or worse.
> > > > > > =

> > > > > > Explicit begin/end is much more robust at a very marginal cost =
imo.
> > > > > The key point is that this makes it quite a bunch more complicate=
d to
> > > > > implement. See those functions are easiest when you centralize th=
em and
> > > > > try to not spread the functionality into begin/end.
> > > > > =

> > > > > The only thing I could see in the end function would be to drop t=
he
> > > > > reference for the dma_fence and that is not really something I wo=
uld
> > > > > like to do because we actually need to keep that reference in a b=
unch of
> > > > > cases.
> > > > Yeah but it's extremely fragile. See with drm_connector_iter we als=
o have
> > > > the need to grab a reference to that connector in a few place, and =
I do
> > > > think that open-code that is much clearer instead of inheriting a
> > > > reference that the for_each macro acquired for you, and which you c=
leverly
> > > > leaked through a break; Compare
> > > > =

> > > > for_each_fence(fence) {
> > > > 	if (fence) {
> > > > 		found_fence =3D fence;
> > > > 		break;
> > > > 	}
> > > > }
> > > > =

> > > > /* do some itneresting stuff with found_fence */
> > > > =

> > > > dma_fence_put(found_fence); /* wtf, where is this fence reference f=
rom */
> > > > =

> > > > Versus what I'm proposing:
> > > > =

> > > > fence_iter_init(&fence_iter)
> > > > for_each_fence(fence, &fence_iter) {
> > > > 	if (fence) {
> > > > 		found_fence =3D fence;
> > > > 		dma_fence_get(found_fence);
> > > > 		break;
> > > > 	}
> > > > }
> > > > fence_iter_end(&fence_iter)
> > > > =

> > > > /* do some itneresting stuff with found_fence */
> > > > =

> > > > dma_fence_put(found_fence); /* 100% clear which reference we're put=
ting here */
> > > > =

> > > > One of these patterns is maintainable and clear, at the cost of 3 m=
ore
> > > > lines. The other one is frankly just clever but fragile nonsense.
> > > > =

> > > > So yeah I really think we need the iter_init/end/next triple of fun=
ctions
> > > > here. Too clever is no good at all. And yes that version means you =
have an
> > > > additional kref_get/put in there for the found fence, but I really =
don't
> > > > think that matters in any of these paths here.
> > > Yeah, that's what I've pondered on as well but I thought that avoidin=
g the
> > > extra get/put dance would be more important to avoid.
> > Yeah, but if that shows up in a benchmark/profile, we can fix it with s=
ome
> > fence_iter_get_fence() or so wrapper which explicitly hands the referen=
ce
> > over to you (by clearing the pointer in the iter or wherever so the
> > _next() or _end() do not call dma_fence_put anymore). So if necessary, =
we
> > can have clarity and speed here.
> =

> Ok fine with me, going to rework the code.
> =

> > =

> > > Anyway, going to change that to make clear what happens here.
> > > =

> > > But question is can you go over the patch set and see if we can repla=
ce some
> > > more dma_fence_for_each_fence_unlock() with dma_fence_for_each_fence()
> > > because the lock is either held or can be taken? I would have a much =
better
> > > feeling to avoid the unlocked access in the first place.
> > Yeah fully agreed, I think we should aim as much for fully locked.
> =

> The problem is that I can't really say for a lot of code if we should use
> the locked or unlocked variant.
> =

> For example Tvrtko suggested to use the locked variant in
> i915_request_await_object() and I mixed that up with
> i915_sw_fence_await_reservation(). End result is that the CI system blew =
up
> immediately.
> =

> Good that the CI system caught that, but I will certainly only move to the
> locked variant if somebody explicitly confirm to me that we can do that f=
or
> an use case.

Yeah I think going to the locked version on a case-by-case basis is
probably best.

> > Btw on that did you see my other reply where I toss around an idea for =
the
> > dma_resv unsharing problem?
> =

> At least I don't know what you are talking about. So no I probably somehow
> missed that.

https://lore.kernel.org/dri-devel/YUC0hPE7gx7E+tEx@phenom.ffwll.local/

Cheers, Daniel

> =

> Christian.
> =

> =

> > -Daniel
> > =

> > > Thanks,
> > > Christian.
> > > =

> > > > Cheers, Daniel
> > > > =

> > > > > Regards,
> > > > > Christian.
> > > > > =

> > > > > > Otherwise I think this fence iterator is a solid concept that y=
eah we
> > > > > > should roll out everywhere.
> > > > > > -Daniel
> > > > > > =

> > > > > > > +
> > > > > > > +/**
> > > > > > > + * dma_resv_for_each_fence_unlocked - fence iterator
> > > > > > > + * @obj: a dma_resv object pointer
> > > > > > > + * @cursor: a struct dma_resv_cursor pointer
> > > > > > > + * @all_fences: true if all fences should be returned
> > > > > > > + * @fence: the current fence
> > > > > > > + *
> > > > > > > + * Iterate over the fences in a struct dma_resv object witho=
ut holding the
> > > > > > > + * dma_resv::lock. The RCU read side lock must be hold when =
using this, but can
> > > > > > > + * be dropped and re-taken as necessary inside the loop. @al=
l_fences controls
> > > > > > > + * if the shared fences are returned as well.
> > > > > > > + */
> > > > > > > +#define dma_resv_for_each_fence_unlocked(obj, cursor, all_fe=
nces, fence)    \
> > > > > > > +    for (fence =3D dma_resv_walk_unlocked(obj, cursor, all_f=
ences, true); \
> > > > > > > +         fence; dma_fence_put(fence),                       =
            \
> > > > > > > +         fence =3D dma_resv_walk_unlocked(obj, cursor, all_f=
ences, false))
> > > > > > > +
> > > > > > >     #define dma_resv_held(obj) lockdep_is_held(&(obj)->lock.b=
ase)
> > > > > > >     #define dma_resv_assert_held(obj) lockdep_assert_held(&(o=
bj)->lock.base)
> > > > > > > @@ -366,6 +399,9 @@ void dma_resv_fini(struct dma_resv *obj);
> > > > > > >     int dma_resv_reserve_shared(struct dma_resv *obj, unsigne=
d int num_fences);
> > > > > > >     void dma_resv_add_shared_fence(struct dma_resv *obj, stru=
ct dma_fence *fence);
> > > > > > >     void dma_resv_add_excl_fence(struct dma_resv *obj, struct=
 dma_fence *fence);
> > > > > > > +struct dma_fence *dma_resv_walk_unlocked(struct dma_resv *ob=
j,
> > > > > > > +                                     struct dma_resv_cursor =
*cursor,
> > > > > > > +                                     bool first, bool all_fe=
nces);
> > > > > > >     int dma_resv_get_fences(struct dma_resv *obj, struct dma_=
fence **pfence_excl,
> > > > > > >                        unsigned *pshared_count, struct dma_fe=
nce ***pshared);
> > > > > > >     int dma_resv_copy_fences(struct dma_resv *dst, struct dma=
_resv *src);
> > > > > > > --
> > > > > > > 2.25.1
> > > > > > > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
