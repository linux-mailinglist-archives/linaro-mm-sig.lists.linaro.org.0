Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3C55199E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 10:34:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A3F94807A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 May 2022 08:34:31 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 28FEA3EC34
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 May 2022 08:34:27 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id g20so879693edw.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 May 2022 01:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=8jDOSrZSiV6w3X1ACPuL+sxmkqjx+kq4DiVP5x5vSpk=;
        b=lHVgHnZiH13l2dDPKpQ1leUolO7KzDsTUClQyzz9TzStE1wUzencFkWFRHMglTJ6tE
         QXe/xvG8mhCoR+Tzf/8Shde4hhEk4bmSrvmKOCmcPUhZUtlhA2QD0BitHkP84rsYn/UL
         uBbuHWcsFsUflmTY2tmhkbSYQWGTBYeZmzhiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=8jDOSrZSiV6w3X1ACPuL+sxmkqjx+kq4DiVP5x5vSpk=;
        b=lv+CoSPCBH0YDYzRgG5U/FCFexXaZdPuv6aJKWYMI/84VRQ6U2RxNNlhJT8eWlnVoN
         jcFX49htSumsG6DYaJxqKXCfyZGrntrauekC/eqtrHQMLrXrjADefMKnz33I5pqggNKC
         yRsZaysaj5adO+xPdDpM76M+DDziNkLOpj9ImCMlEw5zqcsCSLQnMMVlupoRuyICgz3/
         lvYvxhd+N0M0yTipqnaFYVlNwCWJLGYNWI8uFjpC2+TrCsbrnyPMDLjXLo8dgdZKwjNH
         wFq0JKuzVSP6Y9wLy50Z/JgSdeFJ/5fqtiZhS7ZyuMUELAO+vXrTv8IWKJwgcl98FLqX
         TnxQ==
X-Gm-Message-State: AOAM530be+bPAPsw7UxgJOrwhCmYmWK88cdcuYCTl933aFDUeHCl2hTy
	6h8GWrgX6JBwKenUUF8qEK6Ayw==
X-Google-Smtp-Source: ABdhPJy3I5WdqqSY6fWfVm3ogHu0RoLWrwglM1BgTcYvHJKEt5In0vfkQIYGdQIubOsFqewaPJ7rQg==
X-Received: by 2002:a05:6402:1d4c:b0:427:d1f5:3a41 with SMTP id dz12-20020a0564021d4c00b00427d1f53a41mr11283912edb.218.1651653266220;
        Wed, 04 May 2022 01:34:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id en9-20020a056402528900b00425ff691a32sm8622400edb.0.2022.05.04.01.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:34:25 -0700 (PDT)
Date: Wed, 4 May 2022 10:34:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnI6kPd01lG/q0N2@phenom.ffwll.local>
References: <20220426124637.329764-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426124637.329764-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: OSWM5FJUOEN3VA67CSATD6YMCY5KMSAG
X-Message-ID-Hash: OSWM5FJUOEN3VA67CSATD6YMCY5KMSAG
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf/sync_file: cleanup fence merging a bit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSWM5FJUOEN3VA67CSATD6YMCY5KMSAG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 26, 2022 at 02:46:35PM +0200, Christian K=F6nig wrote:
> krealloc_array() ignores attempts to reduce the array size, so the attempt
> to save memory is completely pointless here.
>=20
> Also move testing for the no fence case into sync_file_set_fence(), this
> way we don't even touch the fence array when we don't have any fences.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/sync_file.c | 21 +++++++--------------
>  1 file changed, 7 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 514d213261df..0fe564539166 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -157,9 +157,15 @@ static int sync_file_set_fence(struct sync_file *syn=
c_file,
>  	 * we already own a new reference to the fence. For num_fence > 1
>  	 * we own the reference of the dma_fence_array creation.
>  	 */
> -	if (num_fences =3D=3D 1) {
> +
> +	if (num_fences =3D=3D 0) {
> +		sync_file->fence =3D dma_fence_get_stub();
> +		kfree(fences);
> +
> +	} else if (num_fences =3D=3D 1) {
>  		sync_file->fence =3D fences[0];
>  		kfree(fences);
> +
>  	} else {
>  		array =3D dma_fence_array_create(num_fences, fences,
>  					       dma_fence_context_alloc(1),
> @@ -261,19 +267,6 @@ static struct sync_file *sync_file_merge(const char =
*name, struct sync_file *a,
>  		}
>  	}
> =20
> -	if (index =3D=3D 0)
> -		fences[index++] =3D dma_fence_get_stub();
> -
> -	if (num_fences > index) {
> -		struct dma_fence **tmp;
> -
> -		/* Keep going even when reducing the size failed */
> -		tmp =3D krealloc_array(fences, index, sizeof(*fences),
> -				     GFP_KERNEL);
> -		if (tmp)
> -			fences =3D tmp;
> -	}
> -
>  	if (sync_file_set_fence(sync_file, fences, index) < 0)
>  		goto err_put_fences;
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
