Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C68EF3B20E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 21:17:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C868165FD1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 19:17:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 322EF6354D; Wed, 23 Jun 2021 19:17:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C05D5631AB;
	Wed, 23 Jun 2021 19:17:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B06E760752
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 19:17:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AE157631AB; Wed, 23 Jun 2021 19:17:05 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by lists.linaro.org (Postfix) with ESMTPS id A7DBF60752
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 19:17:03 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id nb6so5623005ejc.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 12:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7Hua08stsWuHXUQaJW2px47NH816H2YtXOe8cA4IlCg=;
 b=igrDooVK7zk8zc3g3dng9Z4kKomtb0NBT/xyXoKOS94YQo/bjKuJrZADYBrMzD09nW
 8ViG1g+Jg+fDW1mVxTt0V786rlCxik1uVc+AvXawxAIArMsqXfluF3j4zx8Z0vlo9uvD
 8Dy525bFR2inG+gm3XXR2dYbhgCibAdYaUrCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7Hua08stsWuHXUQaJW2px47NH816H2YtXOe8cA4IlCg=;
 b=UQnvzDD+8EM1OovfPS8HinUsRoaG7d6PE/FBNtR6pJhzEjkxtj27uz6aZBg/QtiZ9W
 GHGJ/M5SvTF42nlGXxCHWEqK1QoZKW+1bIPVP9aBr4juwC726b5TEAg6v7dWX88Kgeev
 KHuOhxn/ZlodSYQfyK2S/PgW4hg2PSbIaa1izDYew+6m/SxD5a8mteTP6yVEGDhsyHxj
 kv17Ujw9xaAY56uH4oNHvMLIvFYpwolezkgUV1U5YeAFoAFlmXRU+SefPkue4mpTFQGP
 JsMEWM+v0g9lR22IQTVYH9v22wHTDj+8ZZ16yY3kko6mVY/xeW53p8MiQ2tROhBOdVNj
 79Nw==
X-Gm-Message-State: AOAM533Bhh6uz0r0l3naj3SXUPVTKimNi3cFLYIXJBv3mH4SHCu1pIPT
 1IpEiCXnNHIgO06G7p3v9ufN0A==
X-Google-Smtp-Source: ABdhPJzJhju7GF3OV5WfqUhYCkKTkqdmd8DF/MurQj6ivLt84BKbGtZA9SzfqW27EuszS2xGxd/K8A==
X-Received: by 2002:a17:907:1ca0:: with SMTP id
 nb32mr1565572ejc.105.1624475822653; 
 Wed, 23 Jun 2021 12:17:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s7sm260735ejd.88.2021.06.23.12.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 12:17:02 -0700 (PDT)
Date: Wed, 23 Jun 2021 21:17:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <YNOIrGJY7lpy+/VE@phenom.ffwll.local>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-7-daniel.vetter@ffwll.ch>
 <20210623184737.7e47f77c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210623184737.7e47f77c@collabora.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 06/15] drm/panfrost: Fix implicit sync
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, linaro-mm-sig@lists.linaro.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jun 23, 2021 at 06:47:37PM +0200, Boris Brezillon wrote:
> On Tue, 22 Jun 2021 18:55:02 +0200
> Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> =

> > Currently this has no practial relevance I think because there's not
> > many who can pull off a setup with panfrost and another gpu in the
> > same system. But the rules are that if you're setting an exclusive
> > fence, indicating a gpu write access in the implicit fencing system,
> > then you need to wait for all fences, not just the previous exclusive
> > fence.
> > =

> > panfrost against itself has no problem, because it always sets the
> > exclusive fence (but that's probably something that will need to be
> > fixed for vulkan and/or multi-engine gpus, or you'll suffer badly).
> > Also no problem with that against display.
> > =

> > With the prep work done to switch over to the dependency helpers this
> > is now a oneliner.
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > Cc: Steven Price <steven.price@arm.com>
> > Cc: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> =

> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Pushed the 3 panfrost patches to drm-misc-next, thanks for reviewing them.
-Daniel

> =

> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > ---
> >  drivers/gpu/drm/panfrost/panfrost_job.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/panfrost/panfrost_job.c b/drivers/gpu/drm/=
panfrost/panfrost_job.c
> > index 71cd43fa1b36..ef004d587dc4 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_job.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_job.c
> > @@ -203,9 +203,8 @@ static int panfrost_acquire_object_fences(struct dr=
m_gem_object **bos,
> >  	int i, ret;
> >  =

> >  	for (i =3D 0; i < bo_count; i++) {
> > -		struct dma_fence *fence =3D dma_resv_get_excl_unlocked(bos[i]->resv);
> > -
> > -		ret =3D drm_gem_fence_array_add(deps, fence);
> > +		/* panfrost always uses write mode in its current uapi */
> > +		ret =3D drm_gem_fence_array_add_implicit(deps, bos[i], true);
> >  		if (ret)
> >  			return ret;
> >  	}
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
