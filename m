Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E99493EE5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 18:18:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D3813EE95
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 17:18:11 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 514693ED3C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 17:18:09 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id l35-20020a05600c1d2300b0034d477271c1so6888782wms.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 09:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rQ+yyRcLTMO72ZwgIvbqK79p/62FdZWlD9ln/D9mqrQ=;
        b=O8gRtMbL0cQw6BEysGCr14KMg9Fo4AlYnDea8ecj2bJB8uhHsX56dubo/71ZtMcKZm
         uykyzjo6ZkvjCXHzkb78rjXN40K8GhnxI4mD+/Yimu5LOLJWWValLuVsqFPpAgmxSNJd
         lQOdJFcRYHIPHS3zTAjTUHvT9Oxh4hpgQ7Hn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rQ+yyRcLTMO72ZwgIvbqK79p/62FdZWlD9ln/D9mqrQ=;
        b=zXNojS9DE1JjcGLR8K5bq3TtPkdwfsyVpJXDO7uyxuVU1APXBhh9rLO5ML+nnizMwt
         lhbkfWkT8/kdmHOzyp1qsXzXBzm2ixAwl3i+H2Vd/XfF42z5nrg0B1lz74r3J2PHqAq1
         83OR/TI5iYGV7vfa5Pbkry2auDW2N22vkuqRSr8V2dGwz2XEkNq4nt2HNK3u2U7467Uc
         u6vUEYOusXr5D2XR33xcxLwpE//PFEREewP5vLiu0b5HNJO/9vhcJZ68mDFSazW/nL0j
         Owvbbt/Y/kf7gQs4kucX9x2N+CXxPqhMaCDfBLhX5IYrSbRGVv35lZCINDUKU0y9JxlI
         N+lg==
X-Gm-Message-State: AOAM532p4zQiKRipDtnDUMWPDiD9zyc2uhR0sOln9c0Hr1HrmdprniDs
	qhbhCFErb1J1Wr+udGZYkws1dA==
X-Google-Smtp-Source: ABdhPJx4k/wum3uSEYpvkt7c9tWl67rTeqCQ4BapICaxaEK2FFu+ShCicViWb6AetcJAyz/n/0CZDQ==
X-Received: by 2002:a05:600c:3c9c:: with SMTP id bg28mr4470721wmb.190.1642612688352;
        Wed, 19 Jan 2022 09:18:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id n15sm570212wrf.79.2022.01.19.09.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:18:07 -0800 (PST)
Date: Wed, 19 Jan 2022 18:18:06 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YehHzs8FDn4PfD+l@phenom.ffwll.local>
References: <20220119134339.3102-1-christian.koenig@amd.com>
 <20220119134339.3102-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119134339.3102-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: VN4KB2D23S3WNPYUVGI7DJTCEXAXKW54
X-Message-ID-Hash: VN4KB2D23S3WNPYUVGI7DJTCEXAXKW54
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] dma-buf: warn about dma_fence_array container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VN4KB2D23S3WNPYUVGI7DJTCEXAXKW54/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2022 at 02:43:37PM +0100, Christian K=F6nig wrote:
> It's not allowed to nest another dma_fence container into a dma_fence_arr=
ay
> or otherwise we can run into recursion.
>=20
> Warn about that when we create a dma_fence_array.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-fence-array.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fenc=
e-array.c
> index 3e07f961e2f3..4bfbcb885bbc 100644
> --- a/drivers/dma-buf/dma-fence-array.c
> +++ b/drivers/dma-buf/dma-fence-array.c
> @@ -176,6 +176,19 @@ struct dma_fence_array *dma_fence_array_create(int n=
um_fences,
> =20
>  	array->base.error =3D PENDING_ERROR;
> =20
> +	/* dma_fence_array objects should never contain any other fence
> +	 * containers or otherwise we run into recursion and potential kernel
> +	 * stack overflow on operations on the dma_fence_array.
> +	 *
> +	 * The correct way of handling this is to flatten out the array by the
> +	 * caller instead.
> +	 *
> +	 * Enforce this here by checking that we don't create a dma_fence_array
> +	 * with any container inside.
> +	 */
> +	while (seqno--)
> +		WARN_ON(dma_fence_is_container(fences[seqno]));

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
>  	return array;
>  }
>  EXPORT_SYMBOL(dma_fence_array_create);
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
