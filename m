Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3125D462F33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 10:03:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B247561A27
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:03:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 98B8661A3D; Tue, 30 Nov 2021 09:03:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1CBC60E25;
	Tue, 30 Nov 2021 09:03:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 368506090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:03:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 325E560E25; Tue, 30 Nov 2021 09:03:44 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 1FF006090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:03:42 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 i8-20020a7bc948000000b0030db7b70b6bso18910672wml.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 01:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=muzD7wBGzdqNzoTkinsMAk1ZnhCVTb2hy14oh4sGZXs=;
 b=KsOZO+2oOR1bZyCfTbjNitszllo/P6mAAuU1fyIFGEN2IQIt6gBYkeLkFMToefKSSd
 KXAK47tNWFmKXqIr2zqnN4TzMXjb0hu0Z/C/9+rsuKL5EFdbgQ8N2Ulaei987P0d1zk6
 3YeAo3mF6uzga03vx3r+yO0+W175UzZ54INx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=muzD7wBGzdqNzoTkinsMAk1ZnhCVTb2hy14oh4sGZXs=;
 b=gEfpQxtMxp6A4c+GBrcQHkhL2+JuIe7xMZFgq9oNBVv6rBf4PeFAoOGDKvaAbE263n
 7uyn178I/KwPDDEhIGoCuu/AdDHSFoeknBz+uR+zbO5ZCgHtanwmZHPM09cMon/3+zHL
 fNxWktzWkvwV0TGS5ASvg6nKH7LL+/rA76zxn/jLZJ4c23/Yjp4SJ2KQlOXgwGlorCGl
 sfN8QvjKIBnjd2MTXdJNs6jWDTxuFKbvbennEcio/TkkQ+c1Na/m2oMChpGqrfs7vqpT
 kt2vIfkVIr/euS5GXe6LCcB3t84EBqKBPIEKQx2jrwNiiiFs9ZwllTbgrYbL2mtVCe7K
 bLlg==
X-Gm-Message-State: AOAM530Xa0MsbdzkjmZob73Dek2ecN7GsEnIzROQ7k60k307W0S7PizZ
 EayxUs6rV9ibVDhNxjNBTdIiJA==
X-Google-Smtp-Source: ABdhPJylCtn/FlaJSqiqPVHrC1ZZ68HhySRCjXJmhWHPzzI6fuCM07R78HjQ+BCid992BuANhdaSWg==
X-Received: by 2002:a1c:4d8:: with SMTP id 207mr3442077wme.23.1638263021169;
 Tue, 30 Nov 2021 01:03:41 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p13sm1802064wmi.0.2021.11.30.01.03.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 01:03:40 -0800 (PST)
Date: Tue, 30 Nov 2021 10:03:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YaXo6uvtJJPIU6YP@phenom.ffwll.local>
References: <20211129120659.1815-1-christian.koenig@amd.com>
 <20211129120659.1815-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129120659.1815-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/28] dma-buf: make fence mandatory for
 dma_resv_add_excl_fence v2
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
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Nov 29, 2021 at 01:06:34PM +0100, Christian K=F6nig wrote:
> Calling dma_resv_add_excl_fence() with the fence as NULL and expecting
> that that this frees up the fences is simply abuse of the internals of
> the dma_resv object.
> =

> v2: drop the fence pruning completely.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Cursory look says you got them all, and it's definitely the right thing to
do.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/dma-resv.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index ff3c0558b3b8..4deea75c0b9c 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -305,8 +305,7 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, st=
ruct dma_fence *fence)
>  	if (old)
>  		i =3D old->shared_count;
>  =

> -	if (fence)
> -		dma_fence_get(fence);
> +	dma_fence_get(fence);
>  =

>  	write_seqcount_begin(&obj->seq);
>  	/* write_seqcount_begin provides the necessary memory barrier */
> -- =

> 2.25.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
