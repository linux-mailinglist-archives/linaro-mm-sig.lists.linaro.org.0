Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FCA7C58CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Oct 2023 18:04:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D504C40446
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Oct 2023 16:04:04 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 367B53EAAF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Oct 2023 16:04:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=ZibvpBf6;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.178 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1c9bca1d96cso15180395ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Oct 2023 09:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697040241; x=1697645041; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/JdPIzkZRw+UEDCwPct/StXsx1OeuztdzUWh/BOTJXs=;
        b=ZibvpBf6nplMslyRb+N8tRmObjdHnq/OQwFixeDv7hu3CzQCrhhznNCrnudhNGlESd
         DBprm8k7haS8klgHgw3VJxbfnbsNJWCcfa191XcrZjnEGG+D69CgMrnCeYaJXGbCSLX3
         uf3VGsjJz3ajE3A03P5xLTm41eT+fMBFtiyRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697040241; x=1697645041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/JdPIzkZRw+UEDCwPct/StXsx1OeuztdzUWh/BOTJXs=;
        b=TYbnTazOg2P4fvs9HK55tQrut1KPpQYn5aWtTxYQ3FnWgxRuOGpNSKwapThw3M7oko
         jeR+M5HVmO6mxS+p8FwQhyM6GzJFenCrmWIVpKNlvQe/z463kqvK+/zoFBR/pWzYCvUv
         fofqXfeVt9chJA+OOy2AwlqLL0ZsNtL+fLk328PL2yNbpyOplg1lh3EkUJohnqMwgq62
         xav2vGzS89pd0HTV0p/OaQs6q4Bfs9l+K0F5+CTPgS9QrfFFLZWNdJuLqmBkbK7O3tVh
         GWrmKg/XvmIyrsnZX93NUaHH/jDsEgE4Awz3BcEUnc6aStDCuDn5jWEkNGianSscCFgh
         mESg==
X-Gm-Message-State: AOJu0Yyg8FnE8iYV+8kCyIL6IjbJucf3GDSjhWZ4WWBBjnYa8DKVawCH
	G8HD7W+LisgshmJsqxJ/QMFCoQ==
X-Google-Smtp-Source: AGHT+IGqjWqrCIqSHnONJ5fjKcFYrHjY07tSyis9X/kZiXSoJrS/q64lZQJ+lrnayGHRVg3N8XWShA==
X-Received: by 2002:a17:903:2289:b0:1c6:28f6:9545 with SMTP id b9-20020a170903228900b001c628f69545mr21755725plh.45.1697040241156;
        Wed, 11 Oct 2023 09:04:01 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id jw14-20020a170903278e00b001adf6b21c77sm9908plb.107.2023.10.11.09.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 09:04:00 -0700 (PDT)
Date: Wed, 11 Oct 2023 09:03:58 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <202310110903.FE533CBCD@keescook>
References: <ZSarP0/+hG8/87//@work>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZSarP0/+hG8/87//@work>
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.178:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 367B53EAAF
Message-ID-Hash: P2TPFW5J6D4OLH3YNVRP4IDFCAB6X6ZC
X-Message-ID-Hash: P2TPFW5J6D4OLH3YNVRP4IDFCAB6X6ZC
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH][next] dma-buf: Fix NULL pointer dereference in dma_fence_enable_sw_signaling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2TPFW5J6D4OLH3YNVRP4IDFCAB6X6ZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 11, 2023 at 08:03:43AM -0600, Gustavo A. R. Silva wrote:
> Currently, a NULL pointer dereference will happen in function
> `dma_fence_enable_sw_signaling()` (at line 615), in case `chain`
> is not allocated in `mock_chain()` and this function returns
> `NULL` (at line 86). See below:
> 
> drivers/dma-buf/st-dma-fence-chain.c:
>  86         chain = mock_chain(NULL, f, 1);
>  87         if (!chain)
>  88                 err = -ENOMEM;
>  89
>  90         dma_fence_enable_sw_signaling(chain);

Instead of the larger patch, should line 88 here just do a "return
-ENOMEM" instead?

-Kees

> 
> drivers/dma-buf/dma-fence.c:
>  611 void dma_fence_enable_sw_signaling(struct dma_fence *fence)
>  612 {
>  613         unsigned long flags;
>  614
>  615         spin_lock_irqsave(fence->lock, flags);
> 			       ^^^^^^^^^^^
> 				    |
> 			  NULL pointer reference
> 			  if fence == NULL
> 
>  616         __dma_fence_enable_signaling(fence);
>  617         spin_unlock_irqrestore(fence->lock, flags);
>  618 }
> 
> Fix this by adding a NULL check before dereferencing `fence` in
> `dma_fence_enable_sw_signaling()`. This will prevent any other NULL
> pointer dereference when the `fence` passed as an argument is `NULL`.
> 
> Addresses-Coverity: ("Dereference after null check")
> Fixes: d62c43a953ce ("dma-buf: Enable signaling on fence for selftests")
> Cc: stable@vger.kernel.org
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/dma-buf/dma-fence.c | 9 ++++++++-
>  include/linux/dma-fence.h   | 2 +-
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 8aa8f8cb7071..4d2f13560d0f 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -607,14 +607,21 @@ static bool __dma_fence_enable_signaling(struct dma_fence *fence)
>   * This will request for sw signaling to be enabled, to make the fence
>   * complete as soon as possible. This calls &dma_fence_ops.enable_signaling
>   * internally.
> + *
> + * Returns 0 on success and a negative error value when @fence is NULL.
>   */
> -void dma_fence_enable_sw_signaling(struct dma_fence *fence)
> +int dma_fence_enable_sw_signaling(struct dma_fence *fence)
>  {
>  	unsigned long flags;
>  
> +	if (!fence)
> +		return -EINVAL;
> +
>  	spin_lock_irqsave(fence->lock, flags);
>  	__dma_fence_enable_signaling(fence);
>  	spin_unlock_irqrestore(fence->lock, flags);
> +
> +	return 0;
>  }
>  EXPORT_SYMBOL(dma_fence_enable_sw_signaling);
>  
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index ebe78bd3d121..1e4025e925e6 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -399,7 +399,7 @@ int dma_fence_add_callback(struct dma_fence *fence,
>  			   dma_fence_func_t func);
>  bool dma_fence_remove_callback(struct dma_fence *fence,
>  			       struct dma_fence_cb *cb);
> -void dma_fence_enable_sw_signaling(struct dma_fence *fence);
> +int dma_fence_enable_sw_signaling(struct dma_fence *fence);
>  
>  /**
>   * dma_fence_is_signaled_locked - Return an indication if the fence
> -- 
> 2.34.1
> 
> 

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
