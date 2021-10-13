Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9792342C2C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:19:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AF8961725
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:19:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EB35761499; Wed, 13 Oct 2021 14:19:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A839C6141E;
	Wed, 13 Oct 2021 14:19:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE704607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:19:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E92A46141E; Wed, 13 Oct 2021 14:19:28 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id DE650607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:19:26 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id y3so9054239wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rqU/dmK8rMWcEtsgaBLNzDP806G75d0eV2L5USY78fM=;
 b=CIYkYXAy4JpmzOW6g9gA0zNKwRGBbSvFuljk1DL1L2ywvH1FCvtnW2S65eaX6DNgyJ
 HWqxlyvCYyze/QHURQcl3FSsBpdQjI7kXVcFkl6gPZ/TgUlF/Hy+yrL4UecoYx0qgCHJ
 UR7iyCL6EhiOQl1BjS0N/r3zORjxFyJjw8lyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rqU/dmK8rMWcEtsgaBLNzDP806G75d0eV2L5USY78fM=;
 b=sNJLSDq6z70lXMpnkHCSyC0nvo3eUxRx/4XH9IUQbPGo7yyLM1393GD0kOVqcs3tCy
 TUCV+h/GiVlfiVikP1XsMK+MCRKRf3ORjGKDPNroGYV4q7ZUvh+P+w1lCfHbts0Zb90E
 pJn3grUPk9G33ZQ6Xzg5cczPdRYpoBfqhYvFmI/LJza9n8Wa3sLs7SzA2l4KpADtiEOD
 u3HwbFclaincjkrdNWwP4uYMx3QNTPOaMdjaEl7inoL3Vixnxt7k2jjQ6R51HbBP83R+
 cuSxv0h+kBFSMkVCl5u8zj2GYM0wD+GQrX/JQoGX5iiPwtT9pPLycYRHzXwbsUherlSu
 N//w==
X-Gm-Message-State: AOAM5321Ga60EwAqhqLK7/FwNEOTJ7maTVK4StQenWberfOi20fIpKWh
 lo6TbTicIB3Y6AxGmjsgEGflnQ==
X-Google-Smtp-Source: ABdhPJzsIIepLiJRjWr2jRRia7cpMVxh1CP0AxQBHtVpdv22ieiys1yU6Zib4paL8MeS0L0xXtDVsw==
X-Received: by 2002:adf:f481:: with SMTP id l1mr39278119wro.411.1634134765952; 
 Wed, 13 Oct 2021 07:19:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r8sm13456121wrv.61.2021.10.13.07.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:19:25 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:19:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbq6yXUVayXTntI@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-18-christian.koenig@amd.com>
 <50b8ffb7-2720-619d-3140-af2f90450a21@linux.intel.com>
 <65e28697-6f0a-7f97-d49b-ebf8d0b8d23f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65e28697-6f0a-7f97-d49b-ebf8d0b8d23f@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 17/28] drm/i915: use the new iterator in
 i915_gem_busy_ioctl v2
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 05, 2021 at 02:44:50PM +0200, Christian K=F6nig wrote:
> Am 05.10.21 um 14:40 schrieb Tvrtko Ursulin:
> > =

> > On 05/10/2021 12:37, Christian K=F6nig wrote:
> > > This makes the function much simpler since the complex
> > > retry logic is now handled else where.
> > > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > =

> > Reminder - r-b was retracted until at least more text is added to commit
> > message about pros and cons. But really some discussion had inside the
> > i915 team on the topic.
> =

> Sure, going to move those to a different branch.
> =

> But I really only see the following options:
> 1. Grab the lock.
> 2. Use the _unlocked variant with get/put.
> 3. Add another _rcu iterator just for this case.
> =

> I'm fine with either, but Daniel pretty much already rejected #3 and #2/#1
> has more overhead then the original one.

Anything that removes open-code rcu/lockless magic from i915 gets my ack,
there's way too much of this everywhere. So on this:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've asked Maarten to review the i915 ones for you, please pester him if
it's not happening :-)
-Daniel

> =

> Regards,
> Christian.
> =

> > =

> > Regards,
> > =

> > Tvrtko
> > =

> > > ---
> > > =A0 drivers/gpu/drm/i915/gem/i915_gem_busy.c | 35 ++++++++++---------=
-----
> > > =A0 1 file changed, 14 insertions(+), 21 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> > > index 6234e17259c1..dc72b36dae54 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
> > > @@ -82,8 +82,8 @@ i915_gem_busy_ioctl(struct drm_device *dev, void
> > > *data,
> > > =A0 {
> > > =A0=A0=A0=A0=A0 struct drm_i915_gem_busy *args =3D data;
> > > =A0=A0=A0=A0=A0 struct drm_i915_gem_object *obj;
> > > -=A0=A0=A0 struct dma_resv_list *list;
> > > -=A0=A0=A0 unsigned int seq;
> > > +=A0=A0=A0 struct dma_resv_iter cursor;
> > > +=A0=A0=A0 struct dma_fence *fence;
> > > =A0=A0=A0=A0=A0 int err;
> > > =A0 =A0=A0=A0=A0=A0 err =3D -ENOENT;
> > > @@ -109,27 +109,20 @@ i915_gem_busy_ioctl(struct drm_device *dev,
> > > void *data,
> > > =A0=A0=A0=A0=A0=A0 * to report the overall busyness. This is what the=
 wait-ioctl
> > > does.
> > > =A0=A0=A0=A0=A0=A0 *
> > > =A0=A0=A0=A0=A0=A0 */
> > > -retry:
> > > -=A0=A0=A0 seq =3D raw_read_seqcount(&obj->base.resv->seq);
> > > -
> > > -=A0=A0=A0 /* Translate the exclusive fence to the READ *and* WRITE e=
ngine */
> > > -=A0=A0=A0 args->busy =3D
> > > busy_check_writer(dma_resv_excl_fence(obj->base.resv));
> > > -
> > > -=A0=A0=A0 /* Translate shared fences to READ set of engines */
> > > -=A0=A0=A0 list =3D dma_resv_shared_list(obj->base.resv);
> > > -=A0=A0=A0 if (list) {
> > > -=A0=A0=A0=A0=A0=A0=A0 unsigned int shared_count =3D list->shared_cou=
nt, i;
> > > -
> > > -=A0=A0=A0=A0=A0=A0=A0 for (i =3D 0; i < shared_count; ++i) {
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct dma_fence *fence =3D
> > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rcu_dereference(list->=
shared[i]);
> > > -
> > > +=A0=A0=A0 args->busy =3D 0;
> > > +=A0=A0=A0 dma_resv_iter_begin(&cursor, obj->base.resv, true);
> > > +=A0=A0=A0 dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > +=A0=A0=A0=A0=A0=A0=A0 if (dma_resv_iter_is_restarted(&cursor))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 args->busy =3D 0;
> > > +
> > > +=A0=A0=A0=A0=A0=A0=A0 if (dma_resv_iter_is_exclusive(&cursor))
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Translate the exclusive fence t=
o the READ *and*
> > > WRITE engine */
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 args->busy |=3D busy_check_writer(=
fence);
> > > +=A0=A0=A0=A0=A0=A0=A0 else
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Translate shared fences to READ=
 set of engines */
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 args->busy |=3D busy_check_re=
ader(fence);
> > > -=A0=A0=A0=A0=A0=A0=A0 }
> > > =A0=A0=A0=A0=A0 }
> > > -
> > > -=A0=A0=A0 if (args->busy && read_seqcount_retry(&obj->base.resv->seq=
, seq))
> > > -=A0=A0=A0=A0=A0=A0=A0 goto retry;
> > > +=A0=A0=A0 dma_resv_iter_end(&cursor);
> > > =A0 =A0=A0=A0=A0=A0 err =3D 0;
> > > =A0 out:
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
