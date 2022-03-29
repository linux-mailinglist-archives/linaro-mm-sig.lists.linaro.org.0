Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D317E4EA9A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 10:49:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F3B23EBF9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 08:49:45 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by lists.linaro.org (Postfix) with ESMTPS id 5BBB23EBCC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 08:49:41 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id u3so23768003wrg.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 01:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=3WOsP0N8pQYSZR7dCr/GEolSLsBOcDjGOSuUf4Q8y5c=;
        b=Cr8k1GfBxjxgkiKcehLqVxYA6mL2h4XI3jCGech6aDvqrYzO39ohK4BWHM7caw8U+T
         vYUExF3iJ6E0zzY1UXPqlQQu0ZEda+9cCZVbaE1pv1kCOJ7Fqmw3GXMhujiTrYvzPJ/t
         DGAmNOSeVp8M3HYk+vTLA/ofD2NBtrKdEuzP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=3WOsP0N8pQYSZR7dCr/GEolSLsBOcDjGOSuUf4Q8y5c=;
        b=uUMdWOj8TCvaDNhw+vieIUvI/mQT9rMbb8RYQRF23+XJNSJiFTelEc+qq0vxVCxWLj
         m35U5lZBkRArMLm5z7ZOV6q4cVEUj0Kr9022IXIUijTn31NaAPIsQqtjEGzGuBc1GqKw
         OTfipoo3Z6axEh1CxhaxhFWDllBMHcKojx/mkEnZOWlF7KDX6ZhiAqQmGzWeMJga8w6+
         pFqTFEbQSD9gGN3bm0x2b2jms5KKVyX/PjzkKkEDC6qkvM25wtI3z8cVZ6yOh81NiY1q
         HFRUNLfIB4pcA7DObmvhmSfknQ9rheqKkXVTQ6qSEBzUDmkByh5vaW76WquKRZSCR96v
         9QbQ==
X-Gm-Message-State: AOAM530Xh9Os06L6bgPR9j1ga9c+Je9OSpDxatkF/8hnngnm+cLSmptB
	E6qneCUYj1HUY13hmVKDGInxlQ==
X-Google-Smtp-Source: ABdhPJxsBo7mH6qQdvfu4gCQhAS59ss1wdC1AX1XGHJLm8qth9AwFe6z+gofLqam6doW5OJmi4ZNmA==
X-Received: by 2002:a5d:64e7:0:b0:205:8cc7:aa82 with SMTP id g7-20020a5d64e7000000b002058cc7aa82mr29697748wri.247.1648543780450;
        Tue, 29 Mar 2022 01:49:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id w7-20020a1cf607000000b00389a5390180sm1613852wmc.25.2022.03.29.01.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 01:49:40 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:49:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkLIIhzuiE9jN8xK@phenom.ffwll.local>
References: <20220329070001.134180-1-christian.koenig@amd.com>
 <20220329070001.134180-2-christian.koenig@amd.com>
 <YkLHypwNnLd+qA4H@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkLHypwNnLd+qA4H@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: JG3KGQRVO34IGGMU2Q7QY37C7MNBY5VP
X-Message-ID-Hash: JG3KGQRVO34IGGMU2Q7QY37C7MNBY5VP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ville.syrjala@linux.intel.com, daniel@ffwll.ch, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf: handle empty dma_fence_arrays gracefully
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JG3KGQRVO34IGGMU2Q7QY37C7MNBY5VP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 29, 2022 at 10:48:10AM +0200, Daniel Vetter wrote:
> On Tue, Mar 29, 2022 at 09:00:01AM +0200, Christian K=F6nig wrote:
> > A bug inside the new sync-file merge code created empty dma_fence_array=
 instances.
> >=20
> > Warn about that and handle those without crashing.
> >=20
> > Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
>=20
> > ---
> >  drivers/dma-buf/dma-fence-array.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fe=
nce-array.c
> > index 52b85d292383..5c8a7084577b 100644
> > --- a/drivers/dma-buf/dma-fence-array.c
> > +++ b/drivers/dma-buf/dma-fence-array.c
> > @@ -159,6 +159,8 @@ struct dma_fence_array *dma_fence_array_create(int =
num_fences,
> >  	struct dma_fence_array *array;
> >  	size_t size =3D sizeof(*array);
> > =20
> > +	WARN_ON(!num_fences || !fences);
>=20
> WARN_ON and then dying randomly is kinda not nice, I'd wrap this in an
>=20
> if (WARN_ON)
> 	return NULL;
>=20
> with that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Uh strike that, you handle it gracefully with the check below.

>=20
> > +
> >  	/* Allocate the callback structures behind the array. */
> >  	size +=3D num_fences * sizeof(struct dma_fence_array_cb);
> >  	array =3D kzalloc(size, GFP_KERNEL);
> > @@ -231,6 +233,9 @@ struct dma_fence *dma_fence_array_first(struct dma_=
fence *head)
> >  	if (!array)
> >  		return head;
> > =20

Maybe add a comment here that this is just defensive programming, like

	/* No fences isn't allowed and splats in create, but be defensive */

Either way Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> I guess,
coffee not quite yet working.
-Daniel

> > +	if (!array->num_fences)
> > +		return NULL;
> > +
> >  	return array->fences[0];
> >  }
> >  EXPORT_SYMBOL(dma_fence_array_first);
> > --=20
> > 2.25.1
> >=20
>=20
> --=20
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
