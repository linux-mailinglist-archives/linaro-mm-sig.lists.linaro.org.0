Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE5447D8E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:39:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D2626109B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:39:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 427C06105B; Wed, 22 Dec 2021 21:39:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA9CD60DA3;
	Wed, 22 Dec 2021 21:39:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D7FA6606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:39:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CAC2C60DA3; Wed, 22 Dec 2021 21:39:45 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by lists.linaro.org (Postfix) with ESMTPS id C094F606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:39:43 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id bm14so13687599edb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nw1vcdiLVYMep5XJh+Ei6gNWSN3eFbVTKO+rs9QcGRo=;
 b=RxRjpCs+LV+PD3aTUZt8LIeQUugNN6d6TrlDTQGiX1TeQis+RnQFMDgGERl39W/0wC
 VzOSPAgwgluxZfP/Pj920xnY9SYsf0yvGZ8Ohoq9CkK97Vgw8MD1tXbAn2fUWNbxk9G3
 tNm7PkPIhHmJAemuv1m9wk9KhyuEAWzfQIQr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nw1vcdiLVYMep5XJh+Ei6gNWSN3eFbVTKO+rs9QcGRo=;
 b=awa+s3CGLejbaOI0nuZEY4SWk41ath8o6JOn5gI6GyRGChay0SMGUEiWxNqtIbr584
 nsS3aFuFQWvz/MiHjiBAQBmpmsni4iv0JQetDR0xdszWBUHnOQdEEm/FhVDX/BxL/KcT
 ZTC4M6gvRN7mP88PhZcFcVslHw3D9XAvC0JBlgFRwL6606w170nn2bZLORWgvgnAQKHV
 aa1GCE+pntgULXES0YGH/WAZLABEtPZ2m6rpv6u3VoZwu4A5XlzC0NQoJGGZyEJVVxkB
 H0xF1R2xvdiaug5aMulJsmRR6MKu2ui60lulPYqZcRWlqw4CCj3SNU+qCIT3f5dUTXFu
 X9Hw==
X-Gm-Message-State: AOAM530tp6V5CAFLv3EaP9sw//Fp+9oHw8TGuwOKlPi2wkTeQnOyidxF
 RF18RgSKWf5a437JCOELJik/ww==
X-Google-Smtp-Source: ABdhPJwaOEwtCD9whrD3kuNlue5gRJQNEOv3PNpX4Tnb5qb0tf2zPcUx8pT4PtRDHjgQEHclLKHTFw==
X-Received: by 2002:a05:6402:11cf:: with SMTP id
 j15mr2428041edw.220.1640209182813; 
 Wed, 22 Dec 2021 13:39:42 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b10sm1325291ede.52.2021.12.22.13.39.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:39:42 -0800 (PST)
Date: Wed, 22 Dec 2021 22:39:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcObHJFmw7w8Hp3J@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-13-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-13-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/24] dma-buf: finally make
 dma_resv_excl_fence private
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

On Tue, Dec 07, 2021 at 01:33:59PM +0100, Christian K=F6nig wrote:
> Drivers should never touch this directly.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 17 +++++++++++++++++
>  include/linux/dma-resv.h   | 17 -----------------
>  2 files changed, 17 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 694716a3d66d..9acceabc9399 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -147,6 +147,23 @@ void dma_resv_fini(struct dma_resv *obj)
>  }
>  EXPORT_SYMBOL(dma_resv_fini);
>  =

> +/**
> + * dma_resv_excl_fence - return the object's exclusive fence
> + * @obj: the reservation object
> + *
> + * Returns the exclusive fence (if any). Caller must either hold the obj=
ects
> + * through dma_resv_lock() or the RCU read side lock through rcu_read_lo=
ck(),
> + * or one of the variants of each
> + *
> + * RETURNS
> + * The exclusive fence or NULL
> + */

Same thing with us not documenting internals, pls drop the comment
outright it doesn't really explain anything. With that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +static inline struct dma_fence *
> +dma_resv_excl_fence(struct dma_resv *obj)
> +{
> +	return rcu_dereference_check(obj->fence_excl, dma_resv_held(obj));
> +}
> +
>  /**
>   * dma_resv_shared_list - get the reservation object's shared fence list
>   * @obj: the reservation object
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index cdfbbda6f600..40ac9d486f8f 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -412,23 +412,6 @@ static inline void dma_resv_unlock(struct dma_resv *=
obj)
>  	ww_mutex_unlock(&obj->lock);
>  }
>  =

> -/**
> - * dma_resv_excl_fence - return the object's exclusive fence
> - * @obj: the reservation object
> - *
> - * Returns the exclusive fence (if any). Caller must either hold the obj=
ects
> - * through dma_resv_lock() or the RCU read side lock through rcu_read_lo=
ck(),
> - * or one of the variants of each
> - *
> - * RETURNS
> - * The exclusive fence or NULL
> - */
> -static inline struct dma_fence *
> -dma_resv_excl_fence(struct dma_resv *obj)
> -{
> -	return rcu_dereference_check(obj->fence_excl, dma_resv_held(obj));
> -}
> -
>  void dma_resv_init(struct dma_resv *obj);
>  void dma_resv_fini(struct dma_resv *obj);
>  int dma_resv_reserve_shared(struct dma_resv *obj, unsigned int num_fence=
s);
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
