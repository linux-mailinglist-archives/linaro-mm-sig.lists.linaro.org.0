Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 932C445F0D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 16:37:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAE596216B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 15:37:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 86FB662CA7; Fri, 26 Nov 2021 15:37:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69E8060F1F;
	Fri, 26 Nov 2021 15:37:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B91460ADB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 15:37:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40F2060F1F; Fri, 26 Nov 2021 15:37:20 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by lists.linaro.org (Postfix) with ESMTPS id 364C760ADB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 15:37:18 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id t9so2524616wrx.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 07:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4FnyaLWyvOAQeJjC3Zb+4XuQuhsTMCYxjqdXSYoADFk=;
 b=FPi53YagST9tqSejwT2pIZ23vOSDIA/5Cw8qme3DBlmpYictGDAMBZj6BmO7b3JXFB
 f2WbPqsfa6wZgqecexgXNYzTjGRehDYay8bKuz5DHhnPPvljhGGwtibjMdxuhhv4Ifal
 qRqB3wTFdL02O4CNjJqyNqI9QX6iu68VfKTc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4FnyaLWyvOAQeJjC3Zb+4XuQuhsTMCYxjqdXSYoADFk=;
 b=UOnXy7WE3qeQy4ctm4yNwG1HvY9usgsqYHnVX76YBpknElk/1Ybq6uW98MYWvyq0Qs
 bqoDU38ds3kS3mBBg8eCGRN1ZnMnogVpPQoegycI1UGq0xHjBl6M2KcTVEAWTj66fA8g
 6W8NK/HuwAwP1PpcTKA2CbXASYTfX3RhSXsHjI96WLwj1hIuE+hpSQm8TDE+dciE6pJy
 DPOaXBu2clcOwA8baBCYXs204h8BCQieIL/mm3FHs27S5ugh0OJ+iN0UdJ+P+Kaqtj80
 sXdUVa6gNNP1rPsVHzVlrywoy+E7LWkCuNFS+IfErE2ZpscqWS35TH2Cqq6Pl0fyXhNT
 nsiw==
X-Gm-Message-State: AOAM532izXQz289pibfeu6sA61O02CsnKRMJVt5mWutrFNO9xUgeietc
 Q+ykChawYZc5UEvjmc44DW6nzw==
X-Google-Smtp-Source: ABdhPJy9NU89a6BqtlQNlnHKD+/fMzjk0BNrICOiirM/Q+4JDx+qY42SvDak49q035dxBZaGz1IxUw==
X-Received: by 2002:a5d:6548:: with SMTP id z8mr15732064wrv.502.1637941037157; 
 Fri, 26 Nov 2021 07:37:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n7sm5752435wro.68.2021.11.26.07.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:37:16 -0800 (PST)
Date: Fri, 26 Nov 2021 16:37:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YaD/Kq4xTZ6jWikq@phenom.ffwll.local>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-20-christian.koenig@amd.com>
 <YZ+wCxjFSI4EAIvx@phenom.ffwll.local>
 <0a3f93f1-278e-c393-3e79-745a52694f3d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a3f93f1-278e-c393-3e79-745a52694f3d@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 19/26] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Nov 26, 2021 at 11:30:19AM +0100, Christian K=F6nig wrote:
> Am 25.11.21 um 16:47 schrieb Daniel Vetter:
> > On Tue, Nov 23, 2021 at 03:21:04PM +0100, Christian K=F6nig wrote:
> > > Use dma_resv_get_singleton() here to eventually get more than one wri=
te
> > > fence as single fence.
> > Yeah this is nice, atomic commit helpers not supporting multiple write
> > fences was really my main worry in this entire endeavour. Otherwise loo=
ks
> > all rather reasonable.
> > =

> > I'll try to find some review bandwidth, but would be really if you can
> > volunteer others too (especially making sure ttm drivers set the KERNEL
> > fences correctly in all cases).
> =

> Maybe I should split that up into switching over to adding the enum and t=
hen
> switching to kernel/bookkeep(previously other) for some use cases.
> =

> It would be good if I could get an rb on the trivial driver cleanups firs=
t.
> I can send those out individually if that helps.

Yeah some of the conversion patches might make sense to be split a bit
more. Especially when there's functional changes hiding, but I tought
you've split them out? But didn't read them in detail.

Either way for stuff like this I think it's always best to split the
mechanical stuff from the concept intro/docs and functional changes,
except when it's really very obvious what's going on and just as small
patch.
-Daniel

> =

> Thanks,
> Christian.
> =

> > -Daniel
> > =

> > =

> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/gpu/drm/drm_gem_atomic_helper.c | 18 +++++++-----------
> > >   1 file changed, 7 insertions(+), 11 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/dr=
m/drm_gem_atomic_helper.c
> > > index c3189afe10cb..9338ddb7edff 100644
> > > --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > @@ -143,25 +143,21 @@
> > >    */
> > >   int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct=
 drm_plane_state *state)
> > >   {
> > > -	struct dma_resv_iter cursor;
> > >   	struct drm_gem_object *obj;
> > >   	struct dma_fence *fence;
> > > +	int ret;
> > >   	if (!state->fb)
> > >   		return 0;
> > >   	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> > > -	dma_resv_iter_begin(&cursor, obj->resv, false);
> > > -	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > -		/* TODO: Currently there should be only one write fence, so this
> > > -		 * here works fine. But drm_atomic_set_fence_for_plane() should
> > > -		 * be changed to be able to handle more fences in general for
> > > -		 * multiple BOs per fb anyway. */
> > > -		dma_fence_get(fence);
> > > -		break;
> > > -	}
> > > -	dma_resv_iter_end(&cursor);
> > > +	ret =3D dma_resv_get_singleton(obj->resv, false, &fence);
> > > +	if (ret)
> > > +		return ret;
> > > +	/* TODO: drm_atomic_set_fence_for_plane() should be changed to be a=
ble
> > > +	 * to handle more fences in general for multiple BOs per fb.
> > > +	 */
> > >   	drm_atomic_set_fence_for_plane(state, fence);
> > >   	return 0;
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
