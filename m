Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B418CAD5A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 13:28:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0841544889
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 11:28:36 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 9E9153F4BA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 11:28:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kSy0RTCN;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-420104e5336so19476715e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 04:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716290908; x=1716895708; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QCvn53QZqHKbd8wXZQruum5PyX2Xyujq+z5EaypRXU8=;
        b=kSy0RTCNPnZtIbZiE9/4Jm/M1pP3zqjXrxOq5wFwPCzHpIX3PRYprzPVarmRRKK/V2
         WIGVtxtIpsmCSd9TFsE41vkfFkNn457DVn3PrnNcHnsEbSHB1zf5b5o92pC562H7aFcT
         vurf4yfgrmdJNK+e//THGRrjbY+tGYlahYcVKBBivSjhLP4hGntr4vpauzkwtM1HFtrj
         t1tLbHmpymfnQANb5VqSt1nW8zBRJe/VHWS8kJ9W9vLgzYmHa95rchw4Y+2swgfF7kD2
         zPZi6WBJo6myGK7jnOSJ3iCCTVNN7fkdkz11kIB3UM7adUfsNFMdFmmhgrDlyYu6d3gB
         ABKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716290908; x=1716895708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QCvn53QZqHKbd8wXZQruum5PyX2Xyujq+z5EaypRXU8=;
        b=vTD933190AYLdjJI32uYSJSjnuO5ulkshkQSwxE8cKuHB69OtsmrAZ7HpxdZvOXyCz
         n4Cs5miaHt8RCl7OrwSjXVfWmINzT+B49Y6yeg/b4TsYEdbHfuE7W9QRlqO+qSHImaxA
         8NsP4Z55zbiDQVj8lZRGZinxjWF95MKEUE7nzhBAcmgGzAmGJJZTWXODvqiRuIZRvHCi
         GKubQFA6fIXrPd3rYKnXsf40qYHFTr03u42rMvpMvypgfMTZiSCV2P/X6YmeY0RrNT+T
         3LDIrKMQadc0NVBXzkdplson86pGj21wBbeNzASmYPwaNqP0YXtWNyawzv3JJXAnqGzE
         JfuA==
X-Forwarded-Encrypted: i=1; AJvYcCVoBb0eTF5lPQ/TKTdz0wWXLj2fj3fmpsUZgdPiKBAqAQT6rs764BKyIAz00ZOxm04TzgfYLfGLmpvqQ4aJc5XfgjGdv4OsrC+Azba/84s=
X-Gm-Message-State: AOJu0YwbuN7cnrzcvLKhb/j3f/DyJ69zoOrcnqBuD4+joF5YqidiNgn9
	zNr+KQ2bzV4P7a/dOffzRjmrp1De1cjY+5zBS0w7xiY35QPpH17p
X-Google-Smtp-Source: AGHT+IFpeGZ9iCxLuTlFb+Vd1m76hVZ2lgoagmtHznB8dVhlERYFGSRgpPrkzrTynhee6VbDMgb7Rw==
X-Received: by 2002:a05:600c:4f49:b0:420:12df:1f7e with SMTP id 5b1f17b1804b1-420e19e46d4mr76021715e9.9.1716290908433;
        Tue, 21 May 2024 04:28:28 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccbe8f8asm460922885e9.10.2024.05.21.04.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 04:28:27 -0700 (PDT)
Message-ID: <473b5f9b-da6d-425b-93c0-5bb6bb49a9bc@gmail.com>
Date: Tue, 21 May 2024 13:28:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan
 <gustavo@padovan.org>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <d3204a5b4776553455c2cfb1def72f1dae0dba25.1716054403.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <d3204a5b4776553455c2cfb1def72f1dae0dba25.1716054403.git.christophe.jaillet@wanadoo.fr>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E9153F4BA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_TO(0.00)[wanadoo.fr,linaro.org,padovan.org,amd.com,chromium.org,kernel.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: EWQ3UFAJA5MOZ47U4H5X5DWYY32UTOAZ
X-Message-ID-Hash: EWQ3UFAJA5MOZ47U4H5X5DWYY32UTOAZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/fence-array: Add flex array to struct dma_fence_array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EWQ3UFAJA5MOZ47U4H5X5DWYY32UTOAZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 18.05.24 um 19:47 schrieb Christophe JAILLET:
> This is an effort to get rid of all multiplications from allocation
> functions in order to prevent integer overflows [1][2].
>
> The "struct dma_fence_array" can be refactored to add a flex array in order
> to have the "callback structures allocated behind the array" be more
> explicit.
>
> Do so:
>     - makes the code more readable and safer.
>     - allows using __counted_by() for additional checks
>     - avoids some pointer arithmetic in dma_fence_array_enable_signaling()
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments [1]
> Link: https://github.com/KSPP/linux/issues/160 [2]
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Compile tested only.
>
> Also, I don't think that 'cb' is a great name and the associated kernel-doc
> description could certainly be improved.
> Any proposal welcomed :)

Ah, yes. That was also on my TODO list for a very long time.

> ---
>   drivers/dma-buf/dma-fence-array.c | 10 ++++------
>   include/linux/dma-fence-array.h   |  3 +++
>   2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
> index 9b3ce8948351..9c55afaca607 100644
> --- a/drivers/dma-buf/dma-fence-array.c
> +++ b/drivers/dma-buf/dma-fence-array.c
> @@ -70,7 +70,7 @@ static void dma_fence_array_cb_func(struct dma_fence *f,
>   static bool dma_fence_array_enable_signaling(struct dma_fence *fence)
>   {
>   	struct dma_fence_array *array = to_dma_fence_array(fence);
> -	struct dma_fence_array_cb *cb = (void *)(&array[1]);
> +	struct dma_fence_array_cb *cb = array->cb;
>   	unsigned i;
>   
>   	for (i = 0; i < array->num_fences; ++i) {
> @@ -168,22 +168,20 @@ struct dma_fence_array *dma_fence_array_create(int num_fences,
>   					       bool signal_on_any)
>   {
>   	struct dma_fence_array *array;
> -	size_t size = sizeof(*array);
>   
>   	WARN_ON(!num_fences || !fences);
>   
> -	/* Allocate the callback structures behind the array. */
> -	size += num_fences * sizeof(struct dma_fence_array_cb);
> -	array = kzalloc(size, GFP_KERNEL);
> +	array = kzalloc(struct_size(array, cb, num_fences), GFP_KERNEL);
>   	if (!array)
>   		return NULL;
>   
> +	array->num_fences = num_fences;
> +
>   	spin_lock_init(&array->lock);
>   	dma_fence_init(&array->base, &dma_fence_array_ops, &array->lock,
>   		       context, seqno);
>   	init_irq_work(&array->work, irq_dma_fence_array_work);
>   
> -	array->num_fences = num_fences;
>   	atomic_set(&array->num_pending, signal_on_any ? 1 : num_fences);
>   	array->fences = fences;
>   
> diff --git a/include/linux/dma-fence-array.h b/include/linux/dma-fence-array.h
> index ec7f25def392..a793f9d5c73b 100644
> --- a/include/linux/dma-fence-array.h
> +++ b/include/linux/dma-fence-array.h
> @@ -33,6 +33,7 @@ struct dma_fence_array_cb {
>    * @num_pending: fences in the array still pending
>    * @fences: array of the fences
>    * @work: internal irq_work function
> + * @cb: array of callback helpers
>    */
>   struct dma_fence_array {
>   	struct dma_fence base;
> @@ -43,6 +44,8 @@ struct dma_fence_array {
>   	struct dma_fence **fences;
>   
>   	struct irq_work work;
> +
> +	struct dma_fence_array_cb cb[] __counted_by(num_fences);

Please name that callbacks, apart from that looks good to me.

Regards,
Christian.


>   };
>   
>   /**

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
