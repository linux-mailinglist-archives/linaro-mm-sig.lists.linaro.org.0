Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E00B747D8A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:21:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CCFA6105D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:21:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 79A566109D; Wed, 22 Dec 2021 21:21:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F70260DA3;
	Wed, 22 Dec 2021 21:21:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6CEC4606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:21:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45FE460DA3; Wed, 22 Dec 2021 21:21:17 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 3A601606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:21:15 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id q14so5950393edi.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UOyNk6zHot8QJ2cJj1ziXQ3UAlzgLdXMmKFvUQzRJ6s=;
 b=I1ZLCqeUseVSQW/GgASZaPFuH/1JrRTu7shw7XShZKIhdJmmDlR3gDxh0fdD9uquQR
 x64PtNAVCHc5jM8/4w3rSqLFuZYuc22woVMM6VaUBU1Ung2cQ5+FtLY7w+fDIesoC5gA
 dwuGiruGn33XTKgqhWzf7T4mErCD0n3vpPW6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UOyNk6zHot8QJ2cJj1ziXQ3UAlzgLdXMmKFvUQzRJ6s=;
 b=Vm6hq3M4y9xxJHODEKeoNp1k0EQ2KlmxGNZT2FP5WKWbO7oy1ZUO4A867gnwtf/1yf
 cm42guIWSYG/g9CsEhWvNMlEonGtwaU6phQTWXLu+xMg7narvFj8uL1zUu3XI2/lhoFG
 C64HEuTa9S8wrpUxfSTRtE6Qv/P6R4/Im1UWIU0EhUjJ4Gw/jcvQhkh6272xKDOE9qwv
 BOpzLGYKclbzJC5WMXT+nt4Hbep5BuDA/qtAGh8fomlV6JQHyoT5MW1o/G1rRpVAVA3a
 D8j/ILEISDwNQGyFbKmIYAAXo/7GAkkYRaveyloWnYtwjm8BjMjBKzz5Ufjc+QAdBAa+
 5MAw==
X-Gm-Message-State: AOAM532wxPEt1dgCzP7Uq4wFsLU1uIjTdpv25qBKqkKTm+8DDeIzml7/
 AwKRbc4TxzNOqTwqsXnQJahsGw==
X-Google-Smtp-Source: ABdhPJyIVxXQ4Ca2/Cnk62TAAxp7H1zzuGUjDQtNGiMuNW3/Ir6dsDSolAiY+ly2PBzTCNa4kdfmRQ==
X-Received: by 2002:a05:6402:1914:: with SMTP id
 e20mr4559319edz.96.1640208074237; 
 Wed, 22 Dec 2021 13:21:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hq9sm1063167ejc.57.2021.12.22.13.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:21:13 -0800 (PST)
Date: Wed, 22 Dec 2021 22:21:12 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOWyHzY22ZCCvef@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-5-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/24] dma-buf: add
 dma_resv_get_singleton v2
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

On Tue, Dec 07, 2021 at 01:33:51PM +0100, Christian K=F6nig wrote:
> Add a function to simplify getting a single fence for all the fences in
> the dma_resv object.
> =

> v2: fix ref leak in error handling
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 52 ++++++++++++++++++++++++++++++++++++++
>  include/linux/dma-resv.h   |  2 ++
>  2 files changed, 54 insertions(+)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 480c305554a1..694716a3d66d 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -34,6 +34,7 @@
>   */
>  =

>  #include <linux/dma-resv.h>
> +#include <linux/dma-fence-array.h>
>  #include <linux/export.h>
>  #include <linux/mm.h>
>  #include <linux/sched/mm.h>
> @@ -657,6 +658,57 @@ int dma_resv_get_fences(struct dma_resv *obj, bool w=
rite,
>  }
>  EXPORT_SYMBOL_GPL(dma_resv_get_fences);
>  =

> +/**
> + * dma_resv_get_singleton - Get a single fence for all the fences
> + * @obj: the reservation object
> + * @write: true if we should return all fences
> + * @fence: the resulting fence
> + *
> + * Get a single fence representing all the fences inside the resv object.
> + * Returns either 0 for success or -ENOMEM.
> + *
> + * Warning: This can't be used like this when adding the fence back to t=
he resv
> + * object since that can lead to stack corruption when finalizing the
> + * dma_fence_array.

Uh I don't get this one? I thought the only problem with nested fences is
the signalling recursion, which we work around with the irq_work?

Also if there's really an issue with dma_fence_array fences, then that
warning should be on the dma_resv kerneldoc, not somewhere hidden like
this. And finally I really don't see what can go wrong, sure we'll end up
with the same fence once in the dma_resv_list and then once more in the
fence array. But they're all refcounted, so really shouldn't matter.

The code itself looks correct, but me not understanding what even goes
wrong here freaks me out a bit.

I guess something to figure out next year, I kinda hoped I could squeeze a
review in before I disappear :-/
-Daniel

> + */
> +int dma_resv_get_singleton(struct dma_resv *obj, bool write,
> +			   struct dma_fence **fence)
> +{
> +	struct dma_fence_array *array;
> +	struct dma_fence **fences;
> +	unsigned count;
> +	int r;
> +
> +	r =3D dma_resv_get_fences(obj, write, &count, &fences);
> +        if (r)
> +		return r;
> +
> +	if (count =3D=3D 0) {
> +		*fence =3D NULL;
> +		return 0;
> +	}
> +
> +	if (count =3D=3D 1) {
> +		*fence =3D fences[0];
> +		kfree(fences);
> +		return 0;
> +	}
> +
> +	array =3D dma_fence_array_create(count, fences,
> +				       dma_fence_context_alloc(1),
> +				       1, false);
> +	if (!array) {
> +		while (count--)
> +			dma_fence_put(fences[count]);
> +		kfree(fences);
> +		return -ENOMEM;
> +	}
> +
> +	*fence =3D &array->base;
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(dma_resv_get_singleton);
> +
>  /**
>   * dma_resv_wait_timeout - Wait on reservation's objects
>   * shared and/or exclusive fences.
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index fa2002939b19..cdfbbda6f600 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -438,6 +438,8 @@ void dma_resv_replace_fences(struct dma_resv *obj, ui=
nt64_t context,
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fen=
ce);
>  int dma_resv_get_fences(struct dma_resv *obj, bool write,
>  			unsigned int *num_fences, struct dma_fence ***fences);
> +int dma_resv_get_singleton(struct dma_resv *obj, bool write,
> +			   struct dma_fence **fence);
>  int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
>  long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool int=
r,
>  			   unsigned long timeout);
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
