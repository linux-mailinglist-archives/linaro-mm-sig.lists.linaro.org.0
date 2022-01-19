Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECF1493EEA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 18:19:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97C0F3EE91
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 17:19:04 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id D00723ED41
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 17:19:00 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id l35-20020a05600c1d2300b0034d477271c1so6894967wms.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 09:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=weDoiXWIlqsW0bwSabnqiWkOc5jo1BbeEdm7AfzIltI=;
        b=ZwijlQyT9ACfMKxTUvh3s7J6qo0qJbtEnyFJc45VVsm9b1nveMbpVe5TTxIPfYgZPr
         uf/XXWvVtIq6o5V/0mTPAvs45HG6iGmeSsfDJYAv5FQv5a+Idjeyuw44wSq0V1q5i9iG
         +fWqi9Uym2lrOa5qsnATZ2eZab7Q0m9P0KYMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=weDoiXWIlqsW0bwSabnqiWkOc5jo1BbeEdm7AfzIltI=;
        b=z+s4KboMzu1WcvJBTerGc706MMp0jkXltuKXcfsjlO/OGYYH1zisKo2I5u/rgME194
         luOWCPGnEZcuGD3ofc6VKp6GVqWHMUhFArjxuBl1DQQxmIA9zEIEdS+ZrNkAgM19ZlCI
         Vnz3MgB78nUCOZ4TDQPonWFgl4UJScsfNxMXkq4cTUCNVdRgcDZMu8YvzaDPVjAHCoCj
         XtUyomV10UFlvsH40JOVd5jSbWO4Ri4j/DMPuErCL9yEWbR6Cl3+0jGns9sTWaTh6p9N
         npfE2E0zYH/HzFdRWACI2ZLlwE7BDeN9k0ByuxYhsC3qL4ldy7VIwp7Wo6LYpRYLX3oo
         5Oyg==
X-Gm-Message-State: AOAM532WqcblWKFEaiHUJKI0gB0hSSfHGxpuxU3GkoznNfUcsvfZJOVA
	RMzxXQ82Ll24RyEF/JY788h30w==
X-Google-Smtp-Source: ABdhPJyAGgep8QOseVVDvL9cILUQyoL5tC8CLK3q904SVKTC2KYBUvucJ90kjGYENpFq5sfzsLyebA==
X-Received: by 2002:a05:600c:2994:: with SMTP id r20mr1407383wmd.158.1642612739974;
        Wed, 19 Jan 2022 09:18:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c13sm410043wrv.24.2022.01.19.09.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:18:59 -0800 (PST)
Date: Wed, 19 Jan 2022 18:18:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YehIAaPI53wNes+1@phenom.ffwll.local>
References: <20220119134339.3102-1-christian.koenig@amd.com>
 <20220119134339.3102-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119134339.3102-3-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: JI2GZUPD3SQHRLP7F4AADLG7ATIIGRWW
X-Message-ID-Hash: JI2GZUPD3SQHRLP7F4AADLG7ATIIGRWW
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] dma-buf: Warn about dma_fence_chain container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JI2GZUPD3SQHRLP7F4AADLG7ATIIGRWW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2022 at 02:43:38PM +0100, Christian K=F6nig wrote:
> Chaining of dma_fence_chain objects is only allowed through the prev
> fence and not through the contained fence.
>=20
> Warn about that when we create a dma_fence_chain.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-fence-chain.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fenc=
e-chain.c
> index 1b4cb3e5cec9..fa33f6b7f77b 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -254,5 +254,13 @@ void dma_fence_chain_init(struct dma_fence_chain *ch=
ain,
> =20
>  	dma_fence_init(&chain->base, &dma_fence_chain_ops,
>  		       &chain->lock, context, seqno);
> +
> +	/* Chaining dma_fence_chain container together is only allowed through
> +	 * the prev fence and not through the contained fence.
> +	 *
> +	 * The correct way of handling this is to flatten out the fence
> +	 * structure into a dma_fence_array by the caller instead.
> +	 */
> +	WARN_ON(dma_fence_is_chain(fence));

At first I was worried that you'd leave a chain fence in the array fence
as an option, but we exclude that with the previous patch.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  }
>  EXPORT_SYMBOL(dma_fence_chain_init);
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
