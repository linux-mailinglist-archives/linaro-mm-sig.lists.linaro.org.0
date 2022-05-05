Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A91D51C1EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 16:08:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 386534809B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 14:08:51 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 723AA47FAF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 14:08:45 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id n10so8980022ejk.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 07:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=whU2Grj2hTMn+FouYox1YxYi97Wm6FNkZiyqXWhPOUA=;
        b=akAqrBV0UCJt5kdXnjxjtqW6s1hUOqmM7GAnqUSMXQ0HstjvuJunNVAPrkkr06KiEp
         DJ55hQVx91xGIpnqZwDMsZhurjgyj/DdnxyquJzsm3l+mg/RVVRDbc2z3+PiQ55K51I+
         3kLVmDji1r+KdQTkPJWq+pcMiVcWFQfVNDKbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=whU2Grj2hTMn+FouYox1YxYi97Wm6FNkZiyqXWhPOUA=;
        b=8C1xTj1xrim7xM22h1eXvdVhALofwMszO1S4GqkZQlCKfSwNwsxoIa2wJyzjahTZf9
         D5EBt5HOnrWAOQicnUt44cd66GWU9rwiEDQ9smw+ZAlESX1hkBLVFMjUJPY7R2xsBAlZ
         ZSAnoyaEaT77OaIcEM9acGbC683Hld3RHxOUA9yhdp0C5/Dp/Tnh3hoLkhVYumr0M4yK
         WxpwEljvoT4I/oIrWd/twc0SYILVYR/Tzmx26WqViDXZZHy7l+R/62BNYVQtnvVIUX20
         rhUIEeuD054179KTOYywvgaFtqRD+LWC7yI0S932FeHuPswD8FcW3kaXYhvH+EMA4CPU
         JgIw==
X-Gm-Message-State: AOAM531q7uMJYUPLPb1floDXw1Y14EDyv48X9jCJebzPsQgkCQ5UjCHL
	FnIPlZnFpaG7txemlQ8zQnyStQ==
X-Google-Smtp-Source: ABdhPJyd2lHGirqCzJ7MwmLX+vEXwRdS5/1VGdcqlUfczFM3BID+iBgZf5y/64BdxtG+AXSln2AquA==
X-Received: by 2002:a17:906:c145:b0:6f3:9ea7:1d41 with SMTP id dp5-20020a170906c14500b006f39ea71d41mr26269083ejc.269.1651759724417;
        Thu, 05 May 2022 07:08:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ia12-20020a170907a06c00b006f3ef214e0esm768619ejc.116.2022.05.05.07.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 07:08:43 -0700 (PDT)
Date: Thu, 5 May 2022 16:08:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnPaapZfMZuwW1h7@phenom.ffwll.local>
References: <20220504122256.1654-1-christian.koenig@amd.com>
 <20220504122256.1654-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504122256.1654-3-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: FUYRO3RPTJZSX4AM5QRSK2IJT2HC4KRI
X-Message-ID-Hash: FUYRO3RPTJZSX4AM5QRSK2IJT2HC4KRI
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FUYRO3RPTJZSX4AM5QRSK2IJT2HC4KRI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 04, 2022 at 02:22:54PM +0200, Christian K=F6nig wrote:
> dma_fence_chain containers cleanup signaled fences automatically, so
> filter those out from arrays as well.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-fence-unwrap.c | 23 ++++++++++++++++-------
>  include/linux/dma-fence-unwrap.h   |  4 ++--
>  2 files changed, 18 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fen=
ce-unwrap.c
> index 711be125428c..7b0b91086ded 100644
> --- a/drivers/dma-buf/dma-fence-unwrap.c
> +++ b/drivers/dma-buf/dma-fence-unwrap.c
> @@ -32,8 +32,13 @@ __dma_fence_unwrap_array(struct dma_fence_unwrap *curs=
or)
>  struct dma_fence *dma_fence_unwrap_first(struct dma_fence *head,
>  					 struct dma_fence_unwrap *cursor)
>  {
> +	struct dma_fence *tmp;
> +
>  	cursor->chain =3D dma_fence_get(head);
> -	return __dma_fence_unwrap_array(cursor);
> +	tmp =3D __dma_fence_unwrap_array(cursor);
> +	if (tmp && dma_fence_is_signaled(tmp))
> +		tmp =3D dma_fence_unwrap_next(cursor);
> +	return tmp;
>  }
>  EXPORT_SYMBOL_GPL(dma_fence_unwrap_first);
> =20
> @@ -48,12 +53,16 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fe=
nce_unwrap *cursor)
>  {
>  	struct dma_fence *tmp;
> =20
> -	++cursor->index;
> -	tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> -	if (tmp)
> -		return tmp;
> +	do {
> +		++cursor->index;
> +		tmp =3D dma_fence_array_next(cursor->array, cursor->index);
> +		if (tmp && !dma_fence_is_signaled(tmp))
> +			return tmp;

Don't do need a do {} while here too to first walk through the array
before going to the next one in the chain? Maybe add a testcase for this?

> +
> +		cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> +		tmp =3D __dma_fence_unwrap_array(cursor);
> +	} while (tmp && dma_fence_is_signaled(tmp));
> =20
> -	cursor->chain =3D dma_fence_chain_walk(cursor->chain);
> -	return __dma_fence_unwrap_array(cursor);
> +	return tmp;
>  }
>  EXPORT_SYMBOL_GPL(dma_fence_unwrap_next);
> diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence-u=
nwrap.h
> index e7c219da4ed7..e9d114637294 100644
> --- a/include/linux/dma-fence-unwrap.h
> +++ b/include/linux/dma-fence-unwrap.h
> @@ -41,8 +41,8 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fenc=
e_unwrap *cursor);
>   * @head: starting point for the iterator
>   *
>   * Unwrap dma_fence_chain and dma_fence_array containers and deep dive i=
nto all
> - * potential fences in them. If @head is just a normal fence only that o=
ne is
> - * returned.
> + * potential none signaled fences in them. If @head is just a normal fen=
ce only
> + * that one is returned.

I think I get what you want to say, but it reads garbled. What about
leaving the current text as-is and adding something like

"Note that signalled fences are opportunistically filtered out, which
means the iteration is potentially over no fence at all"

Or something like that? I think smashing this all into one sentence
doesn't work well.

Then please also add this same sentence to unwrap_first/next() for
completeness.
-Daniel

>   */
>  #define dma_fence_unwrap_for_each(fence, cursor, head)			\
>  	for (fence =3D dma_fence_unwrap_first(head, cursor); fence;	\
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
