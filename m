Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 687EB436047
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 13:30:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6406960C15
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 11:30:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C80360C02; Thu, 21 Oct 2021 11:30:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5DEF60AEB;
	Thu, 21 Oct 2021 11:30:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5590E60836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:30:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5346960AEB; Thu, 21 Oct 2021 11:30:12 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 4972360836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:30:10 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 l38-20020a05600c1d2600b0030d80c3667aso417579wms.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 04:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dhkroFo5cTqPW/9I0QfTfl4tRGasMCZec3snfXwEdQw=;
 b=cNCzH/F9jo1mrS9fIpnFRxiuK1duTdSiS/BYtW0H9+6dSbICcyVyeVk6jY6OCbznn/
 2cvw43JzEBZdJmClLo6p4YPeApuCIGvjhatiGHDTCUHtpz/JoAHDpayhd4GLNKER4mAO
 +kizyafx9rF0g39mxgF0BMzXJKc8m8qYpo2oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dhkroFo5cTqPW/9I0QfTfl4tRGasMCZec3snfXwEdQw=;
 b=kt8BgzrC+QzqVOzg0hvgVE9RHKNSFjJoVnPjFlx9jHzT+hERbp/3hz0p7/kIfHXKCs
 FQYMtV2DUv53BvzRds/7xUIjOg0TIG2baV2oPNCWZoUvDq1PMu2DwRVXjn5zc6E3V9gU
 vlIq/5GV8f8MRVL2zd04Oaf9sApiCFP8jz60pN3VIUihDrxSPnYh9vrZ7ArJfc0N+7xQ
 V2jdTKXsJiDlVCPEFx22UieXZIrOOu5POzTVQuoH66BftkOfEm4CkR3pae/XPSF0/2dd
 FmJfUj2JaWBoycYV5QIDgdl+bxKYADGo3yV7P3C0KrG3mIWvijuI1BPdVyFqM3t23mG2
 0o4w==
X-Gm-Message-State: AOAM532sJkdvQupkN9PckFWeN0XAkc08lACSvBRUOmsJ0V5Q5JpODj2Q
 DpTYfAUbARZLyg/wh7396o1gYldiltsKNg==
X-Google-Smtp-Source: ABdhPJzVEsIh/7AIiiuboT/OSVHnKqiQNg3iRZoNs0kgS+jdXcxGYl4P7uvEF+ur0clU4RQu6vQ/fg==
X-Received: by 2002:a1c:4444:: with SMTP id r65mr5934723wma.174.1634815809326; 
 Thu, 21 Oct 2021 04:30:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p3sm4628449wrs.10.2021.10.21.04.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:30:08 -0700 (PDT)
Date: Thu, 21 Oct 2021 13:30:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YXFPP2wdjNV46YgP@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-15-christian.koenig@amd.com>
 <YWbp1PoezuLqHpKZ@phenom.ffwll.local>
 <9fff1e2b-b4f1-9c36-b621-4c896bf58c01@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fff1e2b-b4f1-9c36-b621-4c896bf58c01@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 14/28] drm/msm: use new iterator in
 msm_gem_describe
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

On Tue, Oct 19, 2021 at 01:49:08PM +0200, Christian K=F6nig wrote:
> Am 13.10.21 um 16:14 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:28PM +0200, Christian K=F6nig wrote:
> > > Simplifying the code a bit. Also drop the RCU read side lock since the
> > > object is locked anyway.
> > > =

> > > Untested since I can't get the driver to compile on !ARM.
> > Cross-compiler install is pretty easy and you should have that for push=
ing
> > drm changes to drm-misc :-)
> =

> I do have cross compile setups for some architectures, but I seriously ca=
n't
> do that for every single driver.
> =

> With only a bit of work we allowed MSM to be compile tested on other
> architectures as well now. That even yielded a couple of missing includes
> and dependencies in MSM which just don't matter on ARM.

The only ones you need is arm32 and arm64.
-Daniel

> =

> > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > Assuming this compiles, it looks correct.
> =

> Yes it does.
> =

> > =

> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> =

> =

> Thanks,
> Christian.
> =

> > =

> > > ---
> > >   drivers/gpu/drm/msm/msm_gem.c | 19 +++++--------------
> > >   1 file changed, 5 insertions(+), 14 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_=
gem.c
> > > index 40a9863f5951..5bd511f07c07 100644
> > > --- a/drivers/gpu/drm/msm/msm_gem.c
> > > +++ b/drivers/gpu/drm/msm/msm_gem.c
> > > @@ -880,7 +880,7 @@ void msm_gem_describe(struct drm_gem_object *obj,=
 struct seq_file *m,
> > >   {
> > >   	struct msm_gem_object *msm_obj =3D to_msm_bo(obj);
> > >   	struct dma_resv *robj =3D obj->resv;
> > > -	struct dma_resv_list *fobj;
> > > +	struct dma_resv_iter cursor;
> > >   	struct dma_fence *fence;
> > >   	struct msm_gem_vma *vma;
> > >   	uint64_t off =3D drm_vma_node_start(&obj->vma_node);
> > > @@ -955,22 +955,13 @@ void msm_gem_describe(struct drm_gem_object *ob=
j, struct seq_file *m,
> > >   		seq_puts(m, "\n");
> > >   	}
> > > -	rcu_read_lock();
> > > -	fobj =3D dma_resv_shared_list(robj);
> > > -	if (fobj) {
> > > -		unsigned int i, shared_count =3D fobj->shared_count;
> > > -
> > > -		for (i =3D 0; i < shared_count; i++) {
> > > -			fence =3D rcu_dereference(fobj->shared[i]);
> > > +	dma_resv_for_each_fence(&cursor, robj, true, fence) {
> > > +		if (dma_resv_iter_is_exclusive(&cursor))
> > > +			describe_fence(fence, "Exclusive", m);
> > > +		else
> > >   			describe_fence(fence, "Shared", m);
> > > -		}
> > >   	}
> > > -	fence =3D dma_resv_excl_fence(robj);
> > > -	if (fence)
> > > -		describe_fence(fence, "Exclusive", m);
> > > -	rcu_read_unlock();
> > > -
> > >   	msm_gem_unlock(obj);
> > >   }
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
