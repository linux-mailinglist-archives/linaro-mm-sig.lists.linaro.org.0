Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 939A57CF775
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:51:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A63F340C23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:51:35 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 358473F2F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 14:37:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=UCCuKVsR;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.218.50 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99c136ee106so1416421766b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 07:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695825433; x=1696430233; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mwpuJVrljR01ya7iLJlB/BxIx7PRZ9f1GPx1GjjrYe8=;
        b=UCCuKVsRIPlob+H4axcHejsdk61YlArGhcZRKM51U0fv2R75k5Zlo8MwBj5Pf8if81
         977f/NLlcttKr5USK8K5kh0Vk6uQK+btTr4cTPFdlSsz+nPl0rePWNlU36Guh5Uv63ds
         ZAiU9WBSzfLHd0EZ3tChyMnRZCcBOiDxW4dDAp0NMaic9nvN4CVbpqHlz3kb3GcqkmSJ
         3fUHS43PlUgSr9jTHgKVY+Rt+4F7htKU4znFmVLHQeYE5theIU5d6ygHdXF2oqSEog9O
         Mob6rXQxyAXcCNLZpEE3Q9KWY/1vNwGq9RlCs4vqhVWJi8Jq3QnvGFvcNuoAbvUGZRkS
         TdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825433; x=1696430233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwpuJVrljR01ya7iLJlB/BxIx7PRZ9f1GPx1GjjrYe8=;
        b=lmO3xl7I6AtDMU4WnvvDKk5V+RKkFslhaZgii6fqeJhYGuAQs7Y6DLsXf1gQ1Hdrre
         KWUImuZurrMv9slQ8PgkGdLZ5LdP77Hq43DTwXtbBniJurH4P14x6gXoKgmNn2u5cvM7
         PyQMz78il1hUusSJE7/Mfu5V5MsJMB71JOBQ+eAp36L+QHU5FPeIWySkccutCiR1vsGY
         Z57qJLSBZngj3EK5VCMUB0+zEfULfjJFu1qVG2MIc2KIuSrhyVtBqRicPM+LkdES11GD
         2UVDA4JzFwozatTSOwVobmV5POGDm/0MF6glKHaEyWM2/jurX1CC1/TP85/nta2NFCbN
         BMDw==
X-Gm-Message-State: AOJu0Yxa5IaQzwbNtOlIeD6X8CTjUbMrvYphlGHTfJytVoVqGtn6HvNt
	tyxycFCiOMMgZppxHTiagrV3D9Co
X-Google-Smtp-Source: AGHT+IE24BySFabmbygoup96UaV3lWsfthbehjSORDi1CarIOCzrFCMCEesG7lkPLlYbBFWt6f/70Q==
X-Received: by 2002:a17:907:7611:b0:9a1:bd53:b23 with SMTP id jx17-20020a170907761100b009a1bd530b23mr2067824ejc.14.1695825433013;
        Wed, 27 Sep 2023 07:37:13 -0700 (PDT)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id k8-20020a170906a38800b0099bc2d1429csm9411039ejz.72.2023.09.27.07.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 07:37:12 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:37:09 +0200
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20230927143709.hrytde34trrdhpwf@pop-os.localdomain>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-7-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-7-yong.wu@mediatek.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com];
	URIBL_BLOCKED(0.00)[linaro.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 358473F2F4
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HSH722S332O4MBTJ7QFAMZ35WMSSUDIF
X-Message-ID-Hash: HSH722S332O4MBTJ7QFAMZ35WMSSUDIF
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:53 +0000
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Anan Sun <anan.sun@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer allocating/freeing
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSH722S332O4MBTJ7QFAMZ35WMSSUDIF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 11, 2023 at 10:30:35AM +0800, Yong Wu wrote:
> Add TEE service call for secure memory allocating/freeing.
> 
> Signed-off-by: Anan Sun <anan.sun@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/mtk_secure_heap.c | 69 ++++++++++++++++++++++++-
>  1 file changed, 68 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-buf/heaps/mtk_secure_heap.c
> index e3da33a3d083..14c2a16a7164 100644
> --- a/drivers/dma-buf/heaps/mtk_secure_heap.c
> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> @@ -17,6 +17,9 @@
>  
>  #define MTK_TEE_PARAM_NUM		4
>  
> +#define TZCMD_MEM_SECURECM_UNREF	7
> +#define TZCMD_MEM_SECURECM_ZALLOC	15
This is related to the discussion around UUID as well. These numbers
here are specific to the MediaTek TA. If we could make things more
generic, then these should probably be 0 and 1. 

I also find the naming a bit heavy, I think I'd suggest something like:
# define TEE_CMD_SECURE_HEAP_ZALLOC ...
and so on.

> +
>  /*
>   * MediaTek secure (chunk) memory type
>   *
> @@ -29,6 +32,8 @@ enum kree_mem_type {
The "kree" here, is that meant to indicate kernel REE? If yes, then I
guess that could be dropped since we know we're already in the kernel
context, perhaps instead name it something with "secure_heap_type"?

>  struct mtk_secure_heap_buffer {
>  	struct dma_heap		*heap;
>  	size_t			size;
> +
> +	u32			sec_handle;
>  };
>  
>  struct mtk_secure_heap {
> @@ -80,6 +85,63 @@ static int mtk_kree_secure_session_init(struct mtk_secure_heap *sec_heap)
>  	return ret;
>  }
>  
> +static int
> +mtk_sec_mem_tee_service_call(struct tee_context *tee_ctx, u32 session,
> +			     unsigned int command, struct tee_param *params)
> +{
> +	struct tee_ioctl_invoke_arg arg = {0};
> +	int ret;
> +
> +	arg.num_params = MTK_TEE_PARAM_NUM;
> +	arg.session = session;
> +	arg.func = command;
> +
> +	ret = tee_client_invoke_func(tee_ctx, &arg, params);
> +	if (ret < 0 || arg.ret) {
> +		pr_err("%s: cmd %d ret %d:%x.\n", __func__, command, ret, arg.ret);
> +		ret = -EOPNOTSUPP;
> +	}
> +	return ret;
> +}
Perhaps not relevant for this patch set, but since this function is just
a pure TEE call, I'm inclined to suggest that this could even be moved
out as a generic TEE function. I.e., something that could be used
elsewhere in the Linux kernel.

> +
> +static int mtk_sec_mem_allocate(struct mtk_secure_heap *sec_heap,
> +				struct mtk_secure_heap_buffer *sec_buf)
> +{
> +	struct tee_param params[MTK_TEE_PARAM_NUM] = {0};
> +	u32 mem_session = sec_heap->mem_session;
How about name it tee_session? Alternative ta_session? I think that
would better explain what it actually is.

> +	int ret;
> +
> +	params[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> +	params[0].u.value.a = SZ_4K;			/* alignment */
> +	params[0].u.value.b = sec_heap->mem_type;	/* memory type */
> +	params[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> +	params[1].u.value.a = sec_buf->size;
> +	params[2].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT;
> +
> +	/* Always request zeroed buffer */
> +	ret = mtk_sec_mem_tee_service_call(sec_heap->tee_ctx, mem_session,
> +					   TZCMD_MEM_SECURECM_ZALLOC, params);
> +	if (ret)
> +		return -ENOMEM;
> +
> +	sec_buf->sec_handle = params[2].u.value.a;
> +	return 0;
> +}
> +
> +static void mtk_sec_mem_release(struct mtk_secure_heap *sec_heap,
> +				struct mtk_secure_heap_buffer *sec_buf)
> +{
> +	struct tee_param params[MTK_TEE_PARAM_NUM] = {0};
> +	u32 mem_session = sec_heap->mem_session;
> +
> +	params[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> +	params[0].u.value.a = sec_buf->sec_handle;
> +	params[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
Perhaps worth having a comment for params[1] explain why we need the
VALUE_OUTPUT here?

-- 
// Regards
Joakim

> +
> +	mtk_sec_mem_tee_service_call(sec_heap->tee_ctx, mem_session,
> +				     TZCMD_MEM_SECURECM_UNREF, params);
> +}
> +
>  static struct dma_buf *
>  mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
>  		      unsigned long fd_flags, unsigned long heap_flags)
> @@ -107,6 +169,9 @@ mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
>  	sec_buf->size = size;
>  	sec_buf->heap = heap;
>  
> +	ret = mtk_sec_mem_allocate(sec_heap, sec_buf);
> +	if (ret)
> +		goto err_free_buf;
>  	exp_info.exp_name = dma_heap_get_name(heap);
>  	exp_info.size = sec_buf->size;
>  	exp_info.flags = fd_flags;
> @@ -115,11 +180,13 @@ mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
>  	dmabuf = dma_buf_export(&exp_info);
>  	if (IS_ERR(dmabuf)) {
>  		ret = PTR_ERR(dmabuf);
> -		goto err_free_buf;
> +		goto err_free_sec_mem;
>  	}
>  
>  	return dmabuf;
>  
> +err_free_sec_mem:
> +	mtk_sec_mem_release(sec_heap, sec_buf);
>  err_free_buf:
>  	kfree(sec_buf);
>  	return ERR_PTR(ret);
> -- 
> 2.25.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
