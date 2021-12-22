Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 794CC47D8EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:43:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB88661082
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:43:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E42E161009; Wed, 22 Dec 2021 21:43:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCD7B60DA3;
	Wed, 22 Dec 2021 21:43:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89FD2606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:43:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7DD6560DA3; Wed, 22 Dec 2021 21:43:34 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id 73A24606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:43:32 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id m21so14990939edc.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rGFC189p0/EoAKk+SmDLGFHPVcyFlSei8zEewkFJCeM=;
 b=Ji3RtVGcSaXXziXVZvdyWjy5OJnrLNDeKC0x5OT9/UGktaxejOUmlXezGaOy4t4wOV
 9q8q6zw5UVHab8o7RzaGML1+u0p76ecrdjvF35UDmPrd1O4IR3yeAqeqF4GMnQq/uLdo
 fmWTSdnwOKFNHbgIXtF3vjRpFEgSvZNVz0DTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rGFC189p0/EoAKk+SmDLGFHPVcyFlSei8zEewkFJCeM=;
 b=bFF0Rq5h1GBrkRv0CZ2nq9EroTGNCydZHvJ7C51sJbCywnm/sVhRwRZf0yC++dy8lD
 C5510LT1OPayDsxyGz9m3abAt4ZTCbBsEZf2rkZSYgcTxQ2LNPWQyW0m+smaKXrLpKWj
 ql5gEraZQROn08xjZgaGilI5qRY4PqJRJX2EBmoiFpf18tUKwD9fUqtwjiZwqN0kUsTV
 q8saV0MqYbs85XJHjYjzwEMdOLTK4AuDticRJlOMxmVDYpAfeDBBtY5+YrXMQ0Yjtr8D
 luVP9EQYI1wOUMgaIlD/f0KabceU79aqB3anbZbTHrjhucvQQJ16Tuvx9k5E1BDo87VI
 AaaA==
X-Gm-Message-State: AOAM530tuwzv3ZIplWrpNjXMeIp9H4nBNmExWDpL3NL6eFOcMJa8aGlj
 z9+UcIq8yU8HH3hnEz0OtrC3yJWf75WzqA==
X-Google-Smtp-Source: ABdhPJyxT8KQWM8hWC2wsRK03dqYPtFEF4zFxsnHzxRKmkHsJr22wE0SHz/Id4iluMcIzDpRPDM8YQ==
X-Received: by 2002:a05:6402:3490:: with SMTP id
 v16mr2838442edc.398.1640209411476; 
 Wed, 22 Dec 2021 13:43:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p4sm1083242eju.98.2021.12.22.13.43.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:43:30 -0800 (PST)
Date: Wed, 22 Dec 2021 22:43:29 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOcASxfAApIpbrf@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-14-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-14-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 13/24] dma-buf: drop the DAG approach
 for the dma_resv object
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

On Tue, Dec 07, 2021 at 01:34:00PM +0100, Christian K=F6nig wrote:
> So far we had the approach of using a directed acyclic
> graph with the dma_resv obj.
> =

> This turned out to have many downsides, especially it means
> that every single driver and user of this interface needs
> to be aware of this restriction when adding fences. If the
> rules for the DAG are not followed then we end up with
> potential hard to debug memory corruption, information
> leaks or even elephant big security holes because we allow
> userspace to access freed up memory.
> =

> Since we already took a step back from that by always
> looking at all fences we now go a step further and stop
> dropping the shared fences when a new exclusive one is
> added.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 13 -------------
>  1 file changed, 13 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 9acceabc9399..ecb2ff606bac 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c

No doc update at all!

I checked, we're not that shitty with docs, Minimally the DOC: section
header and also the struct dma_resv kerneldoc. Also there's maybe more
references and stuff I've missed on a quick look, please check for them
(e.g. dma_buf.resv kerneldoc is rather important to keep correct too).

Code itself does what it says in the commit message, but we really need
the most accurate docs we can get for this stuff, or the confusion will
persist :-/

Cheers, Daniel

> @@ -383,29 +383,16 @@ EXPORT_SYMBOL(dma_resv_replace_fences);
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce)
>  {
>  	struct dma_fence *old_fence =3D dma_resv_excl_fence(obj);
> -	struct dma_resv_list *old;
> -	u32 i =3D 0;
>  =

>  	dma_resv_assert_held(obj);
>  =

> -	old =3D dma_resv_shared_list(obj);
> -	if (old)
> -		i =3D old->shared_count;
> -
>  	dma_fence_get(fence);
>  =

>  	write_seqcount_begin(&obj->seq);
>  	/* write_seqcount_begin provides the necessary memory barrier */
>  	RCU_INIT_POINTER(obj->fence_excl, fence);
> -	if (old)
> -		old->shared_count =3D 0;
>  	write_seqcount_end(&obj->seq);
>  =

> -	/* inplace update, no shared fences */
> -	while (i--)
> -		dma_fence_put(rcu_dereference_protected(old->shared[i],
> -						dma_resv_held(obj)));
> -
>  	dma_fence_put(old_fence);
>  }
>  EXPORT_SYMBOL(dma_resv_add_excl_fence);
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
