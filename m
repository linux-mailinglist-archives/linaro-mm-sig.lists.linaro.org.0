Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AA8844113
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 14:53:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBDA6400DD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 13:53:53 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 5E1FB3EA59
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 13:53:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="V/ifnS5r";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.208.52 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55a9008c185so1725264a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 05:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706709226; x=1707314026; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ahOd0DsEgD/5LLUjuJjav5ZXUjQod+q+9a1w7vEMGKU=;
        b=V/ifnS5r1dGpchb8sHoWl5c4Z33xbgxOUlzLxgv7wdPfQvLf3pqyyg8lDSMZGAwIoa
         ZAMlglJTj5iPymXd4TxPchH66UizMhXcPZyV1bTQbEcIjULTPuhnmL319V55v7iOAMrf
         nIXMra46hpyBRxkNymk9eRf12xsTzF57DUdmaMXOlcxi2qS2vrPuEtxbTWL79NXfkBvY
         l8A4KUUEuxrmBbGAEFqXhGgDfRapCvALiOq9SKVTslOBRWmXbefWPzJBNAff+3eVqATu
         QwUFR4bfzXEVgIAMl7RWU+70x6tLE/F3dBDkpYZbryOX82g9HOJrZAbz/WS4nG9Iwkkn
         vc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706709226; x=1707314026;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahOd0DsEgD/5LLUjuJjav5ZXUjQod+q+9a1w7vEMGKU=;
        b=lPlyZAToUqVQuGaWXPkm95608QpKjOfM9ndZTs894vS+ysgREnr5OmZKiL+Qh3o8/O
         5q0Vpvc6I7DyoF60ZTTEf+ocX/If7goESzxGFFY1+cGUbyaV9UONqaeG0eMdqXYeBJi4
         Kjis/F0+2m1EQjPkfCMe5PKynunlzpl6RIiRKqFNXRu1aoO5uBFhAF0qu2O+QC9zzi9G
         0k53VAUbpGr/dpMEPwTHN7nBBZTcyMaV6UdMcnRqYx4Etr4ntlVdKCaO5RvEFsnCycf3
         HeZQto5CBff8WtmpXhgH7IE53mMAlUAeszrpoCgY0DdhAZadwL3CDNxFeIUltjszX7Q7
         Xgqg==
X-Gm-Message-State: AOJu0YwTLYBpanec7qht2EdCDVxWlBws+Lqd7QQTZWFdL0/7GRRYn/az
	0ThW6g3BNvg9ZVkMhIbRybkXmAjhbWSlbSRNG7vWkAMEqzy2pGrpsvM7wuV+E73sVg==
X-Google-Smtp-Source: AGHT+IF/HhYD9uEpTmG0foPvY+xCTXKvk5obu0HsU61MTSjfgdbYBqyNsdDIta+ap8fzjTNneV6ulw==
X-Received: by 2002:a05:6402:26ce:b0:55f:992a:6214 with SMTP id x14-20020a05640226ce00b0055f992a6214mr544647edd.4.1706709226169;
        Wed, 31 Jan 2024 05:53:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWUqIoHU49HCTb1rUovxV2gzF0kNXugLnZJeOYtS/NemWRrh0sE6nRlMpUq+1mJOwWQ4reR3QOaR4C3hI6SS4Kh4wZKVlDJ6uoiKBDU6GaEZZwuVqTSlfqoRX1FVckX34fLfeEqodIdgfqNacwxzO+JYfyzbocr4Tf59DtEwj01giG3YFJYFmtUtcG6AP90iDOC5tTEc867KA+4Emd3CN1m+cq3Dcnp1bMhe39oHkOf2V0jc4Bm3Bv6PK49WOdh4e/icTK6ccAzVCAvXM8v/flwcNq8frmo+e6JZeNhUY6YN1hwSWBx+UtwP0rMZbbaqwrgKeKmjD2tJSVyvIRoB22IZqQSA0oS+sFhSdh38PdbvFu5BAMPHZv/GJMNZp30c6wZ1ADFFk8hz9MQ3y+PNePEmHaVS9CRINxdCNihRo6E4sgFvNybrmAmsC9H269+TZOeVrhCndoEuH72nqlo1ERZTy5ElrRbIMG8cczjx3VcSNQBRpAh1bFq1MgJiK5+nY1mN/UQhps5E330KFEiv7gJSnXi/jK8jB8We7h/tnrp/0t23yaFt41Svs574zOCgtjvdO0u52EcTzEez9PatHNpm5lOxC8qYzIzcVI0R91u1nCmwKpYslmUYln4R7MnjewahTR+IYHmByVBXx0FTdOFqHCMcWcrlN39J5yYs1np2PrPxYyI3DIW1gi3OCDgZNdD5rVHlFc75iXOjasBH7eahPDFLcVx0p6BqqJ2mLLk4NTcoZIP85Zu5wI7g8IBiqrZJcWYGgNwTRryHRWokBw5XBe1BnY+ib53YyThWi+SlQrwBSm9ItKEaslSYUzPrVjWnl0hURKIOdO4Q1NPXPTGQdvnNoeFf6lkeqho5K0m8d5bIh8SAM9gkGTnBDlRsusQAZ8M5GG+Da2YhJoKqVc8P0u+gvHUcFdFxRqRfZjFVyBvK4UT6BKw+xELIa0Q+7Tc6t
 togPTrIj/XhTaCr9NEbPyyavGfIsDRv+PD
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id ec37-20020a0564020d6500b0055f8adf1d6esm465420edb.47.2024.01.31.05.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 05:53:45 -0800 (PST)
Date: Wed, 31 Jan 2024 14:53:43 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20240131135343.rj6xlch6zcev2v47@pop-os.localdomain>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
 <20240112092014.23999-4-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112092014.23999-4-yong.wu@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5E1FB3EA59
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: UZ7NK2BV6YFKSTX6AHG7OHSL5D74S3ZF
X-Message-ID-Hash: UZ7NK2BV6YFKSTX6AHG7OHSL5D74S3ZF
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZ7NK2BV6YFKSTX6AHG7OHSL5D74S3ZF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 12, 2024 at 05:20:10PM +0800, Yong Wu wrote:
> Add "struct restricted_heap_ops". For the restricted memory, totally there
> are two steps:
> a) memory_alloc: Allocate the buffer in kernel;
> b) memory_restrict: Restrict/Protect/Secure that buffer.
> The memory_alloc is mandatory while memory_restrict is optinal since it may
>
s/optinal/optional/

> be part of memory_alloc.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/restricted_heap.c | 41 ++++++++++++++++++++++++-
>  drivers/dma-buf/heaps/restricted_heap.h | 12 ++++++++
>  2 files changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
> index fd7c82abd42e..8c266a0f6192 100644
> --- a/drivers/dma-buf/heaps/restricted_heap.c
> +++ b/drivers/dma-buf/heaps/restricted_heap.c
> @@ -12,10 +12,44 @@
>  
>  #include "restricted_heap.h"
>  
> +static int
> +restricted_heap_memory_allocate(struct restricted_heap *heap, struct restricted_buffer *buf)
> +{
> +	const struct restricted_heap_ops *ops = heap->ops;
> +	int ret;
> +
> +	ret = ops->memory_alloc(heap, buf);
> +	if (ret)
> +		return ret;
> +
> +	if (ops->memory_restrict) {
> +		ret = ops->memory_restrict(heap, buf);
> +		if (ret)
> +			goto memory_free;
> +	}
> +	return 0;
> +
> +memory_free:
> +	ops->memory_free(heap, buf);
> +	return ret;
> +}
> +
> +static void
> +restricted_heap_memory_free(struct restricted_heap *heap, struct restricted_buffer *buf)
> +{
> +	const struct restricted_heap_ops *ops = heap->ops;
> +
> +	if (ops->memory_unrestrict)
> +		ops->memory_unrestrict(heap, buf);
> +
> +	ops->memory_free(heap, buf);
> +}
> +
>  static struct dma_buf *
>  restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
>  			 unsigned long fd_flags, unsigned long heap_flags)
>  {
> +	struct restricted_heap *restricted_heap = dma_heap_get_drvdata(heap);
>  	struct restricted_buffer *restricted_buf;
>  	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>  	struct dma_buf *dmabuf;
> @@ -28,6 +62,9 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
>  	restricted_buf->size = ALIGN(size, PAGE_SIZE);
>  	restricted_buf->heap = heap;
>  
> +	ret = restricted_heap_memory_allocate(restricted_heap, restricted_buf);
>
Can we guarantee that "restricted_heap" here isn't NULL (i.e., heap->priv). If
not perhaps we should consider adding a check for NULL in the
restricted_heap_memory_allocate() function?

> +	if (ret)
> +		goto err_free_buf;
>  	exp_info.exp_name = dma_heap_get_name(heap);
>  	exp_info.size = restricted_buf->size;
>  	exp_info.flags = fd_flags;
> @@ -36,11 +73,13 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
>  	dmabuf = dma_buf_export(&exp_info);
>  	if (IS_ERR(dmabuf)) {
>  		ret = PTR_ERR(dmabuf);
> -		goto err_free_buf;
> +		goto err_free_restricted_mem;
>  	}
>  
>  	return dmabuf;
>  
> +err_free_restricted_mem:
> +	restricted_heap_memory_free(restricted_heap, restricted_buf);
>  err_free_buf:
>  	kfree(restricted_buf);
>  	return ERR_PTR(ret);
> diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
> index 443028f6ba3b..ddeaf9805708 100644
> --- a/drivers/dma-buf/heaps/restricted_heap.h
> +++ b/drivers/dma-buf/heaps/restricted_heap.h
> @@ -15,6 +15,18 @@ struct restricted_buffer {
>  
>  struct restricted_heap {
>  	const char		*name;
> +
> +	const struct restricted_heap_ops *ops;
> +};
> +
> +struct restricted_heap_ops {
>
This have the same name as used for the dma_heap_ops in the file
restricted_heap.c, this might be a little bit confusing, or?

> +	int	(*heap_init)(struct restricted_heap *heap);
> +
> +	int	(*memory_alloc)(struct restricted_heap *heap, struct restricted_buffer *buf);
> +	void	(*memory_free)(struct restricted_heap *heap, struct restricted_buffer *buf);
> +
> +	int	(*memory_restrict)(struct restricted_heap *heap, struct restricted_buffer *buf);
> +	void	(*memory_unrestrict)(struct restricted_heap *heap, struct restricted_buffer *buf);
>
Is the prefix "memory_" superfluous here in these ops?

Also related to a comment on the prior patch. The name here is "heap" for
restricted_heap, but below you use rstrd_heap. It's the same struct, so I would
advise to use the same name to avoid confusion when reading the code. As
mentioned before, I think the name "rheap" would be a good choice.

>  };
>  
>  int restricted_heap_add(struct restricted_heap *rstrd_heap);
> -- 
> 2.25.1
> 

-- 
// Regards
Joakim
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
