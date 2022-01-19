Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1127D493EEE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 18:20:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B5553EE98
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 17:20:06 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id B0EB23ED6C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 17:20:02 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id l12-20020a7bc34c000000b003467c58cbdfso15751258wmj.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 09:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=x1K+9XuZnU2QXSiIOenVV/0BbioWKHd2vi7gWIUztz4=;
        b=ZjDcbktQX1wrIfebPiKigKTZKneWJd4ErYnf1dt5pNy9Jtv+LToiiIVncgX0W4YBXJ
         WHNrl6WoAOT5RHKyYTIRNkCY95mR+MSqAkbhxhgNxsoQ64IkTvrE4NpPR9/UJm4T40QM
         Ib41oXpbBcJ34yd7Fu2m115MV2byinCv02T54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=x1K+9XuZnU2QXSiIOenVV/0BbioWKHd2vi7gWIUztz4=;
        b=7yZ0/APEBZ4jH1UwbE4UsmiFQOj4endiHqauIXeMWKZClExtOQl9bsZ87kB5h8gjUR
         jtfBPLW9E6rht0CGbkN2G5Zw1Wj1qUhebfH55dm6oeTP1DIWTXdaNJ9WvZhc6SUZYCzW
         EGSizgC6HjKA2yYEnMNHV36ek/zLoie+TwTevpFs0nZMMB3Cn8j9hoEBq/Xj9Sgq/KFg
         qHeJ1Vitq33GnJND0/IRavdhuvhIaMAf31hOnOe0SZ2Pp7t/7wyjiNnksGdx05Kc4vfH
         UiuDmOAlNny5UktFpzwlDcC79TGG6GoBVTptSKcf85Qsg1hfMmjwsIuacW21hPow9oWC
         w5Nw==
X-Gm-Message-State: AOAM531rGY0SkGlbVHYdsbjxYqivqbyMnxUEIsDSFc1va3qBIyczzti/
	qt8kv1fAiFqdobzPokREs6cTow==
X-Google-Smtp-Source: ABdhPJwpJ/+gWlQUuTp3j3mXrLlbARjuqjVzw39wNQS0Ltl/R0eyrvLAkK+eazHap9QqPxuGOwVN3Q==
X-Received: by 2002:a05:600c:2216:: with SMTP id z22mr4628205wml.119.1642612801812;
        Wed, 19 Jan 2022 09:20:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id x13sm427589wru.28.2022.01.19.09.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:20:01 -0800 (PST)
Date: Wed, 19 Jan 2022 18:19:59 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YehIP4zMfcO79Zrl@phenom.ffwll.local>
References: <20220119134339.3102-1-christian.koenig@amd.com>
 <20220119134339.3102-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119134339.3102-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: EHRXGRC5Z3FSLR33IAHOM4434KFQS33L
X-Message-ID-Hash: EHRXGRC5Z3FSLR33IAHOM4434KFQS33L
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] dma-buf: warn about containers in dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHRXGRC5Z3FSLR33IAHOM4434KFQS33L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2022 at 02:43:39PM +0100, Christian K=F6nig wrote:
> Drivers should not add containers as shared fences to the dma_resv
> object, instead each fence should be added individually.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 6dd9a40b55d4..e8a0c1d51da2 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -256,6 +256,11 @@ void dma_resv_add_shared_fence(struct dma_resv *obj,=
 struct dma_fence *fence)
> =20
>  	dma_resv_assert_held(obj);
> =20
> +	/* Drivers should not add containers here, instead add each fence
> +	 * individually.
> +	 */
> +	WARN_ON(dma_fence_is_container(fence));

I'm honestly not sure whether this could go boom, so good if we push this
asap and let it soak in linux-next for the entire release cycle.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

On the change itself, we'll see what it brings.
-Daniel

> +
>  	fobj =3D dma_resv_shared_list(obj);
>  	count =3D fobj->shared_count;
> =20
> --=20
> 2.25.1
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
