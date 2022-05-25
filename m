Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B21533D73
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 15:14:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E48A3ED4D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 13:14:01 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 88A363EBFA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 13:13:56 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id y24so4715128wmq.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 06:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=lmbJRuO8uHeaBnVDzKY/ZYIDnHRrOxdK5BjQnLSy42w=;
        b=Pg/PqdMHjPIw9ISgM0XG0Quw8mgnBQMljExJqpBKyIldTVVwIG4CebJ6u7VjSJmlkI
         /68YGv7wGJsRAJp+58CvnscocvB6gGa7TlmeZ807OmyQidk/oltdSjMSSzjzhGgRKhZz
         yAm2MJk57oAqUOb5dFVPdxBCc69cqVB65Y1y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=lmbJRuO8uHeaBnVDzKY/ZYIDnHRrOxdK5BjQnLSy42w=;
        b=J4qjl90KWnmHlXnRCvN1DZE35+R0SDOfVYHE7yPn47WVEjt2t4QY/QYPU2jdcUMhYu
         c+cnsGzx31jue9FdTEGyftPdLXstqU/oNmzrNma8FQOPmf+WxUMBMc+oVlIwLQ1Gkrbc
         Ib6HJ0UWDwRY3Pgmct+p4CSBvfK62Wf0g/u8s8qz/5y4iC0xmUjeUBFRtancb/XKOuee
         qsczytEo97b+Wij+3D2fstY9rUhwyq2tXTVspi1UA4wOW2nKKCTszUr82OBritGqUVKk
         8Ng0hcC5hJNUllbu34Fn2qyC2SeB15tO8MO7XYWjl0Yts322X+m4Mm7ptx+gWX9nI/LR
         9zeg==
X-Gm-Message-State: AOAM532nZNsiYFbLvwvIB30ttmj6SS+SsCJ7uc4MAPqS6mEPjaOdm9sG
	yst6VQCYoZdw33IreY3fFWzDsw==
X-Google-Smtp-Source: ABdhPJwxgdGa79ycChw5p3tzy0jtFWtqcvHwQvr8K6MJgm1hA+uLhjMa/mzAxYHClQnbnKrzvuq1tQ==
X-Received: by 2002:a05:600c:350f:b0:397:7204:ce8e with SMTP id h15-20020a05600c350f00b003977204ce8emr1636850wmq.0.1653484435543;
        Wed, 25 May 2022 06:13:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id p40-20020a05600c1da800b003973a3fe4fasm2216698wms.42.2022.05.25.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 06:13:54 -0700 (PDT)
Date: Wed, 25 May 2022 15:13:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yo4rkGsNuG8bDRp0@phenom.ffwll.local>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506141009.18047-3-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: WHZRJQ4XA7NLRELY6JIHQLEDV7VNWD67
X-Message-ID-Hash: WHZRJQ4XA7NLRELY6JIHQLEDV7VNWD67
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHZRJQ4XA7NLRELY6JIHQLEDV7VNWD67/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, May 06, 2022 at 04:10:07PM +0200, Christian K=F6nig wrote:
> dma_fence_chain containers cleanup signaled fences automatically, so
> filter those out from arrays as well.
>=20
> v2: fix missing walk over the array
> v3: massively simplify the patch and actually update the description.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  include/linux/dma-fence-unwrap.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence-u=
nwrap.h
> index e7c219da4ed7..a4d342fef8e0 100644
> --- a/include/linux/dma-fence-unwrap.h
> +++ b/include/linux/dma-fence-unwrap.h
> @@ -43,9 +43,13 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fen=
ce_unwrap *cursor);
>   * Unwrap dma_fence_chain and dma_fence_array containers and deep dive i=
nto all
>   * potential fences in them. If @head is just a normal fence only that o=
ne is
>   * returned.
> + *
> + * Note that signalled fences are opportunistically filtered out, which
> + * means the iteration is potentially over no fence at all.
>   */
>  #define dma_fence_unwrap_for_each(fence, cursor, head)			\
>  	for (fence =3D dma_fence_unwrap_first(head, cursor); fence;	\
> -	     fence =3D dma_fence_unwrap_next(cursor))
> +	     fence =3D dma_fence_unwrap_next(cursor))			\
> +		if (!dma_fence_is_signaled(fence))
> =20
>  #endif
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
