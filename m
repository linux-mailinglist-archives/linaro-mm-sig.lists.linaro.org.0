Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4AA4337F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 16:00:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 161A06073E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 14:00:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C10216057D; Tue, 19 Oct 2021 14:00:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FC766057D;
	Tue, 19 Oct 2021 14:00:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 783B860503
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 14:00:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E8246057D; Tue, 19 Oct 2021 14:00:47 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by lists.linaro.org (Postfix) with ESMTPS id 644B360503
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 14:00:45 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id a25so13233233edx.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 07:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cWgLVIxPlB0EUk2RA+dnfGL3b+FWQ/k3Rt9YVL8+es0=;
 b=hJ0ux5wtmFWOMZz/2SKwcRPNzwKsJW+B9MJwj5Ck9iSM6SAXnilKiJhw098Q+Ryq44
 4rSK+5FSV6PCBHh3IjzPi/Pa2n0PLuuuOPEnfb74Ls4ZWgafOv63rPfKDi6Dm5b4dfNN
 /ZvpoEk6ynGgAfhE5I/pWjkCqcVgOU2Kwu0Cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cWgLVIxPlB0EUk2RA+dnfGL3b+FWQ/k3Rt9YVL8+es0=;
 b=Juqlxi8vVhy7w4ll9ia941+GRAN0uOoYlMprYY6ozTIKlUpvEYSW4gGj9RqDoCkp97
 DILUVd1/nx1deZQESLp7HCFJAWBbfrTTrZuUJnY+zV4RfPUsfyDVcpOdrAsMzrCdwr64
 mVRmN4cuLOVUYOt+CUsHtfrddadtuBrr/q51NJq3tugAa//BvB8ChIf1Sl9XknJ30oXJ
 kZ6vPSk+vgd4gGrGvnl9pYDWngjgMXqkfwkmssiWZ2rgKeitbM+FvQVReGeZBgF3VIUT
 8tL3lotnxZTwrT0qkJ887HZ8FQrk/0PHrOFetLrv/g8recFtlKm8Qc5xtGhu4cx6goZQ
 s5og==
X-Gm-Message-State: AOAM5324Eoo2LIKuKOc8WbEbqN9Ppa6AbT2ZdtndhN1NkDKflbrzG7uL
 BJAhtltYb5RdbLxDEVaRBQRYlA==
X-Google-Smtp-Source: ABdhPJw5lOzn70N0JgxP4QgPQhpr3WdffMJoX5zXj62wwNiS8Jd781tdyIjXbT1pBntzl16Ze7UW3w==
X-Received: by 2002:a17:907:d08:: with SMTP id
 gn8mr4523917ejc.395.1634651960977; 
 Tue, 19 Oct 2021 06:59:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f22sm11268362edu.26.2021.10.19.06.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 06:59:20 -0700 (PDT)
Date: Tue, 19 Oct 2021 15:59:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YW7PNr4Tk2DWOeIH@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-24-christian.koenig@amd.com>
 <YWbrb7xQfTWU15U1@phenom.ffwll.local>
 <71bf3523-7c18-dac7-de53-f7b20e737cc3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71bf3523-7c18-dac7-de53-f7b20e737cc3@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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

On Tue, Oct 19, 2021 at 02:54:04PM +0200, Christian K=F6nig wrote:
> Am 13.10.21 um 16:21 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:37PM +0200, Christian K=F6nig wrote:
> > > Simplifying the code a bit.
> > > =

> > > v2: add missing rcu_read_lock()/unlock()
> > > v3: switch to locked version
> > > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Please make sure you also apply this to the new copy of this code in
> > drm/sched. This one here is up for deletion, once I get all the driver
> > conversions I have landed ...
> =

> Yeah, I do have that. Only added this patch here for completeness so that=
 I
> could at least consider dropping the old access functions.
> =

> Put I will hold it back, just ping me when the code in question is remove=
d.

Imo go ahead and push this, the rebasing is trivial since I just delete
code. That way I don't have to remember to do anything :-)
-Daniel

> =

> Christian.
> =

> > -Daniel
> > =

> > > ---
> > >   drivers/gpu/drm/drm_gem.c | 26 +++++---------------------
> > >   1 file changed, 5 insertions(+), 21 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > > index 09c820045859..4dcdec6487bb 100644
> > > --- a/drivers/gpu/drm/drm_gem.c
> > > +++ b/drivers/gpu/drm/drm_gem.c
> > > @@ -1340,31 +1340,15 @@ int drm_gem_fence_array_add_implicit(struct x=
array *fence_array,
> > >   				     struct drm_gem_object *obj,
> > >   				     bool write)
> > >   {
> > > -	int ret;
> > > -	struct dma_fence **fences;
> > > -	unsigned int i, fence_count;
> > > -
> > > -	if (!write) {
> > > -		struct dma_fence *fence =3D
> > > -			dma_resv_get_excl_unlocked(obj->resv);
> > > -
> > > -		return drm_gem_fence_array_add(fence_array, fence);
> > > -	}
> > > +	struct dma_resv_iter cursor;
> > > +	struct dma_fence *fence;
> > > +	int ret =3D 0;
> > > -	ret =3D dma_resv_get_fences(obj->resv, NULL,
> > > -						&fence_count, &fences);
> > > -	if (ret || !fence_count)
> > > -		return ret;
> > > -
> > > -	for (i =3D 0; i < fence_count; i++) {
> > > -		ret =3D drm_gem_fence_array_add(fence_array, fences[i]);
> > > +	dma_resv_for_each_fence(&cursor, obj->resv, write, fence) {
> > > +		ret =3D drm_gem_fence_array_add(fence_array, fence);
> > >   		if (ret)
> > >   			break;
> > >   	}
> > > -
> > > -	for (; i < fence_count; i++)
> > > -		dma_fence_put(fences[i]);
> > > -	kfree(fences);
> > >   	return ret;
> > >   }
> > >   EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
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
