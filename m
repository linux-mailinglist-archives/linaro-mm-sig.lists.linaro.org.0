Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A57304EA998
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 10:48:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D086E3EBF8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 08:48:16 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by lists.linaro.org (Postfix) with ESMTPS id 330683EBCC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 08:48:13 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r13so23704327wrr.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 01:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wV/zkilnqdFrqQKJ4JOwa7kKyc//0tE3STDLU5WF3qc=;
        b=OuYZ6vtK2M4DG2+DY+jnQFbxcz0dEGjyJBrIsInABVbuKV6BbWRnxDKLkJhGe5zpXH
         pKheIMnEHKkyxXVBQqelEiZ84T+5Ca3CBm79FPwSqf+PZS/RGXSCcWAQEku77RIduFES
         oiqkvSp4a8hIY02oPqa0uAhYyFvXdWttnvMdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wV/zkilnqdFrqQKJ4JOwa7kKyc//0tE3STDLU5WF3qc=;
        b=qtOVo9XyrkKgK9/uShHyHqfy6nzPcyCdUE8TTfJh/+R38BJkxG70jkmVnv2+cDxk6p
         eJOkM4H6cMmEZanl7XEv+MK+35EdnOzykEmgRGFxBvT3g+JKY6vkzhGQxJPpBpn+Wq+s
         2lNtNPfERKEximPmLbe5ISMG8lGb2kdaOOkrcRADXzJ15DW3Vx+W0vd2ErA3jtSYC40H
         FUJyJ2x8/V3cDi0vASAyuvegLDuHYgO4oGLe+s3Z8OsNS2MWqCVVagGkYnasRxc27F3i
         crvhIV3IOJ5TM0vTyTl0pSyRZ7o8YKgiGfPNfd3RbTRKm1T9p583lCICP7bVMPdcKu69
         EA3A==
X-Gm-Message-State: AOAM531pERfELKT/OgStnYsOcfZQX+BPzgKuLE2LPwnTLbU5CNFZOpSB
	ar9JPGHwseBrgmqTP7EQj2qSGQ4ZS9kprh9Q
X-Google-Smtp-Source: ABdhPJzsef3n0+iH0vZE1Z/Q44owreRxus91uDLsKNCtdrlcsyprP/STCZVm2Q3lBDi6MKJ5/4vGyA==
X-Received: by 2002:a5d:59a2:0:b0:204:20d9:a5b9 with SMTP id p2-20020a5d59a2000000b0020420d9a5b9mr28725261wrr.560.1648543692293;
        Tue, 29 Mar 2022 01:48:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id b15-20020a05600018af00b002057c72d45fsm17762974wri.77.2022.03.29.01.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 01:48:11 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:48:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkLHypwNnLd+qA4H@phenom.ffwll.local>
References: <20220329070001.134180-1-christian.koenig@amd.com>
 <20220329070001.134180-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329070001.134180-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: 6SVBMGBDQ6BH27LVJOGDCLRJZVOLTAYX
X-Message-ID-Hash: 6SVBMGBDQ6BH27LVJOGDCLRJZVOLTAYX
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ville.syrjala@linux.intel.com, daniel@ffwll.ch, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf: handle empty dma_fence_arrays gracefully
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SVBMGBDQ6BH27LVJOGDCLRJZVOLTAYX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 29, 2022 at 09:00:01AM +0200, Christian K=F6nig wrote:
> A bug inside the new sync-file merge code created empty dma_fence_array i=
nstances.
>=20
> Warn about that and handle those without crashing.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

> ---
>  drivers/dma-buf/dma-fence-array.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fenc=
e-array.c
> index 52b85d292383..5c8a7084577b 100644
> --- a/drivers/dma-buf/dma-fence-array.c
> +++ b/drivers/dma-buf/dma-fence-array.c
> @@ -159,6 +159,8 @@ struct dma_fence_array *dma_fence_array_create(int nu=
m_fences,
>  	struct dma_fence_array *array;
>  	size_t size =3D sizeof(*array);
> =20
> +	WARN_ON(!num_fences || !fences);

WARN_ON and then dying randomly is kinda not nice, I'd wrap this in an

if (WARN_ON)
	return NULL;

with that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
>  	/* Allocate the callback structures behind the array. */
>  	size +=3D num_fences * sizeof(struct dma_fence_array_cb);
>  	array =3D kzalloc(size, GFP_KERNEL);
> @@ -231,6 +233,9 @@ struct dma_fence *dma_fence_array_first(struct dma_fe=
nce *head)
>  	if (!array)
>  		return head;
> =20
> +	if (!array->num_fences)
> +		return NULL;
> +
>  	return array->fences[0];
>  }
>  EXPORT_SYMBOL(dma_fence_array_first);
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
