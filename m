Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6CD3FEF99
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Sep 2021 16:43:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B571D622E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Sep 2021 14:43:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7FAA9619AA; Thu,  2 Sep 2021 14:43:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE24660B57;
	Thu,  2 Sep 2021 14:43:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 97A8F60A8C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Sep 2021 14:43:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9552B60B57; Thu,  2 Sep 2021 14:43:01 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id 8E46560A8C
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Sep 2021 14:42:59 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id m2so1477898wmm.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Sep 2021 07:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3GYw4VqZJwFbN7M1V+7uxZEpfGH+re55UYwuc0UfZW4=;
 b=UlizNpztkm4p+pWlclD5c2BKS3cZxIzvJpqfIyd8KvZynLcyZoIlyw2l/D7C2jDbcs
 9o6EoEERzph5Y1xjmSqUhBQX2t7vHnIzDtzHnlx0xqX3wNBL04zBSPAFXAyPQVfdDDB/
 W+S31AQdBz5SVyjOA8y2aX9BJLKr5Qp9s1oB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3GYw4VqZJwFbN7M1V+7uxZEpfGH+re55UYwuc0UfZW4=;
 b=Rt7zdV+d2ae5YKdc8ZMRklC5Jr8Vp5GMeVJVr3oSr/ppGPVLUs4Xy0KwSfZWGqxD8U
 sZBmrZEJYVwOwtFKXxzvXzVusglePlqUEvwX5QNs4SuJr2sF7AQaZgmOnDIeFujH65Ir
 dpPQXvCyiZsWLz2KBoynQXKbA5J+2v0CtSESF86BMDOl20WbS/18TV9c22s3PBC5wb3+
 NWcNby6Kh3Z6x/Ow58IdhWSGupo0PkGTW91s1wOtWo8yhtWbL6RhL/R4hOtA88Y5C6dA
 aM6JK/JU7ExQIA/kLvqbzG/A3lhmI/ZtTJRUqGlf4f0C1diHvcVVdutezh9AXecrwqZE
 xHaA==
X-Gm-Message-State: AOAM533hmWY89hjjxoxXa9f1TUPEl75PX53VYOKmK3bGKmTOqgDt5kKp
 EpMr7u98Mb63fNRhJsBrtuyX1Q==
X-Google-Smtp-Source: ABdhPJyZcl/ZQXO0rzpkYxiXrq7qIAF+5K0riWJ2qNh/8exAgaKJsVxQFYTRVgybEU4ihhul4mAKyQ==
X-Received: by 2002:a7b:c751:: with SMTP id w17mr3599808wmk.162.1630593778688; 
 Thu, 02 Sep 2021 07:42:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a6sm1922618wmb.7.2021.09.02.07.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 07:42:58 -0700 (PDT)
Date: Thu, 2 Sep 2021 16:42:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YTDi8BNRXcEkf8a4@phenom.ffwll.local>
References: <20210901120240.7339-1-christian.koenig@amd.com>
 <20210901120240.7339-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210901120240.7339-3-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dma-buf: clarify
 dma_fence_add_callback documentation
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
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 01, 2021 at 02:02:40PM +0200, Christian K=F6nig wrote:
> That the caller doesn't need to keep a reference is rather
> risky and not defensive at all.
> =

> Especially dma_buf_poll got that horrible wrong, so better
> remove that sentence and also clarify that the callback
> might be called in atomic or interrupt context.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Still on the fence between documenting the precise rules and documenting
the safe rules, but this is tricky enough that you got me convinced. Plus
shorter, simpler, clearer kerneldoc has much better chances of being read,
understood and followed.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/dma-fence.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index ce0f5eff575d..1e82ecd443fa 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -616,20 +616,17 @@ EXPORT_SYMBOL(dma_fence_enable_sw_signaling);
>   * @cb: the callback to register
>   * @func: the function to call
>   *
> + * Add a software callback to the fence. The caller should keep a refere=
nce to
> + * the fence.
> + *
>   * @cb will be initialized by dma_fence_add_callback(), no initialization
>   * by the caller is required. Any number of callbacks can be registered
>   * to a fence, but a callback can only be registered to one fence at a t=
ime.
>   *
> - * Note that the callback can be called from an atomic context.  If
> - * fence is already signaled, this function will return -ENOENT (and
> + * If fence is already signaled, this function will return -ENOENT (and
>   * *not* call the callback).
>   *
> - * Add a software callback to the fence. Same restrictions apply to
> - * refcount as it does to dma_fence_wait(), however the caller doesn't n=
eed to
> - * keep a refcount to fence afterward dma_fence_add_callback() has retur=
ned:
> - * when software access is enabled, the creator of the fence is required=
 to keep
> - * the fence alive until after it signals with dma_fence_signal(). The c=
allback
> - * itself can be called from irq context.
> + * Note that the callback can be called from an atomic context or irq co=
ntext.
>   *
>   * Returns 0 in case of success, -ENOENT if the fence is already signaled
>   * and -EINVAL in case of error.
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
