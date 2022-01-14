Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CF348EE2E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 17:33:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C98333ED7D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 16:33:40 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id CD1E93ECAA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 16:33:11 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id o7-20020a05600c510700b00347e10f66d1so3845541wms.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 08:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZIIyOq9/oXrPizWbUUaL9+KeQVMy19MSltRLOnZI+Sg=;
        b=Y+ju2lmpK9osLNH5uCV0xivjNzwGMiB+7AlMRCoDQ3Dvs6EDm5isq+QMWIIVYsIXzn
         KsFSlhPnT6BCF1HkV9Xw+LHXf653f92IGvULe1IpjzXvsSg81x1BXSI++CLXNA3zQBc2
         M6X113Wd5RFcBicbvpsSoT6juxGcqqbklg39A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZIIyOq9/oXrPizWbUUaL9+KeQVMy19MSltRLOnZI+Sg=;
        b=hmP4QFpkIVYE/m/GtJOJdu2sXbIPaXLEmShXgv1H7N2rfheYlf/wdFkmML1N1jSNRZ
         cnloKnutnUQ2RTwAdeJ49pBkA4MPfDMgiYJk+c1UwgfWDeJI4z+5pwMRb91GrfMnuxcU
         WlpudpF+uMdmVHTIow7DzMGGSimHWey0iu15UZbrbbp/VPsKeqsYnKg2GfqjthHjE704
         r8J3nHdyMq/OaqITOeYOVlUvkH5D58cVWAVd+MczyurNtcMO3sFIZZB1p5HS55KeqYjn
         nCVmLNWu5ZQM7JzsP4uYJ7+GsFDh5QON8ZFe9nukX0ZvcUE69IxXn0O0m/pzfeLpxLP/
         +2tA==
X-Gm-Message-State: AOAM533BGHp2El0m+t2Cz0hm56TAgpnqiGQsN7F0Bl1wjPKpOh9lJ7Sy
	+aQKbJHbENiul1O/LJO5ZHglV8Z+wzDIVg==
X-Google-Smtp-Source: ABdhPJwfLCmpFijMbefgJqdiTPuqTbnvWB+jsxq4rh8TkULuZ1WAFfi4tHbaUEtg8G6KpOERmI3blA==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr8716623wmh.146.1642177990732;
        Fri, 14 Jan 2022 08:33:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id l25sm5426250wmh.18.2022.01.14.08.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 08:33:10 -0800 (PST)
Date: Fri, 14 Jan 2022 17:33:08 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YeGlxJWNfFKIoT1W@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-14-christian.koenig@amd.com>
 <YcOcASxfAApIpbrf@phenom.ffwll.local>
 <d1fe9e3b-3d58-2aa8-36ae-9052192a2f0d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1fe9e3b-3d58-2aa8-36ae-9052192a2f0d@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: YOTLFINYTR33OAMC66534F4YXIYNWSAZ
X-Message-ID-Hash: YOTLFINYTR33OAMC66534F4YXIYNWSAZ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/24] dma-buf: drop the DAG approach for the dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOTLFINYTR33OAMC66534F4YXIYNWSAZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 04, 2022 at 04:08:20PM +0100, Christian K=F6nig wrote:
> Am 22.12.21 um 22:43 schrieb Daniel Vetter:
> > On Tue, Dec 07, 2021 at 01:34:00PM +0100, Christian K=F6nig wrote:
> > > So far we had the approach of using a directed acyclic
> > > graph with the dma_resv obj.
> > >=20
> > > This turned out to have many downsides, especially it means
> > > that every single driver and user of this interface needs
> > > to be aware of this restriction when adding fences. If the
> > > rules for the DAG are not followed then we end up with
> > > potential hard to debug memory corruption, information
> > > leaks or even elephant big security holes because we allow
> > > userspace to access freed up memory.
> > >=20
> > > Since we already took a step back from that by always
> > > looking at all fences we now go a step further and stop
> > > dropping the shared fences when a new exclusive one is
> > > added.
> > >=20
> > > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> > > ---
> > >   drivers/dma-buf/dma-resv.c | 13 -------------
> > >   1 file changed, 13 deletions(-)
> > >=20
> > > diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> > > index 9acceabc9399..ecb2ff606bac 100644
> > > --- a/drivers/dma-buf/dma-resv.c
> > > +++ b/drivers/dma-buf/dma-resv.c
> > No doc update at all!
>=20
> Scratching my head I'm pretty sure I've updated at least the kerneldoc for
> dma_resv_add_excl_fence(). Must have gone lost in some rebase.
>=20
> >=20
> > I checked, we're not that shitty with docs,
>=20
> Well I wouldn't say shitty, but they are not perfect either.

This was sarcasm, I meant to say that despite the struggles the docs
in-tree are pretty good nowadays. Email just sucks sometimes for
communication.

> >   Minimally the DOC: section
> > header and also the struct dma_resv kerneldoc. Also there's maybe more
> > references and stuff I've missed on a quick look, please check for them
> > (e.g. dma_buf.resv kerneldoc is rather important to keep correct too).
> >=20
> > Code itself does what it says in the commit message, but we really need
> > the most accurate docs we can get for this stuff, or the confusion will
> > persist :-/
>=20
> Yeah completely agree, going to fix that.

Awesome!

Cheers, Daniel

>=20
> Thanks,
> Christian.
>=20
> >=20
> > Cheers, Daniel
> >=20
> > > @@ -383,29 +383,16 @@ EXPORT_SYMBOL(dma_resv_replace_fences);
> > >   void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence=
 *fence)
> > >   {
> > >   	struct dma_fence *old_fence =3D dma_resv_excl_fence(obj);
> > > -	struct dma_resv_list *old;
> > > -	u32 i =3D 0;
> > >   	dma_resv_assert_held(obj);
> > > -	old =3D dma_resv_shared_list(obj);
> > > -	if (old)
> > > -		i =3D old->shared_count;
> > > -
> > >   	dma_fence_get(fence);
> > >   	write_seqcount_begin(&obj->seq);
> > >   	/* write_seqcount_begin provides the necessary memory barrier */
> > >   	RCU_INIT_POINTER(obj->fence_excl, fence);
> > > -	if (old)
> > > -		old->shared_count =3D 0;
> > >   	write_seqcount_end(&obj->seq);
> > > -	/* inplace update, no shared fences */
> > > -	while (i--)
> > > -		dma_fence_put(rcu_dereference_protected(old->shared[i],
> > > -						dma_resv_held(obj)));
> > > -
> > >   	dma_fence_put(old_fence);
> > >   }
> > >   EXPORT_SYMBOL(dma_resv_add_excl_fence);
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
