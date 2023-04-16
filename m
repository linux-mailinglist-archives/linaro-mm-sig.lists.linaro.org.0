Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EE56F55B6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:14:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D79F4402AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:14:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D191D3E944
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 14:35:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qXG8251j;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 65EA260AF0;
	Sun, 16 Apr 2023 14:35:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 430E5C433D2;
	Sun, 16 Apr 2023 14:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681655745;
	bh=oYi/kfI630Qf+lLXMqcP2QjSxuZ+vYcX7yZzqhjWWPM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qXG8251jqoVWUSrV51sLs1oSzzzzC7T5MtiNgDOESqs5+OgUn50TkoCMIDGbrY7zw
	 0MwCsOSE+IHg+WnBoq/rbXZ9T5W1VTUs+NlAqaVB7xoTpqOL4nBcvQ6+mvqKdxiRss
	 fgI13c9cODMUip2h0xLk0MkAC0bhKvca6iC1ALoV33Q3mryHq7oa69z42ztWG42/xh
	 yV21inZTVYosbfM5GtForpPhe5w79bw5gq3JXjzFPqDfTocfFalD0xVknUY5MeliM0
	 5QhN1+1HLRaYXnCXWVn5DUSSLmXl524KN1R0GlUF72fWS0Dsr0a/bhFvc1aHJCLVj8
	 hwWKe+48vTCaA==
Date: Sun, 16 Apr 2023 15:35:46 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230416153546.63290206@jic23-huawei>
In-Reply-To: <20230403154800.215924-6-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154800.215924-6-paul@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D191D3E944
X-Spamd-Bar: ----
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D6CWAG5FUP7CSBHQNGF5NLGTLDY2YTNF
X-Message-ID-Hash: D6CWAG5FUP7CSBHQNGF5NLGTLDY2YTNF
X-Mailman-Approved-At: Wed, 03 May 2023 10:14:00 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/11] iio: buffer-dmaengine: Support specifying buffer direction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6CWAG5FUP7CSBHQNGF5NLGTLDY2YTNF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  3 Apr 2023 17:47:54 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> Update the devm_iio_dmaengine_buffer_setup() function to support
> specifying the buffer direction.
> 
> Update the iio_dmaengine_buffer_submit() function to handle input
> buffers as well as output buffers.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Reviewed-by: Alexandru Ardelean <ardeleanalex@gmail.com>

Just one trivial question inline.

Jonathan

> diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> index 5f85ba38e6f6..592d2aa9044c 100644
> --- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> +++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> @@ -64,14 +64,25 @@ static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
>  	struct dmaengine_buffer *dmaengine_buffer =
>  		iio_buffer_to_dmaengine_buffer(&queue->buffer);
>  	struct dma_async_tx_descriptor *desc;
> +	enum dma_transfer_direction dma_dir;
> +	size_t max_size;
>  	dma_cookie_t cookie;
>  
> -	block->bytes_used = min(block->size, dmaengine_buffer->max_size);
> -	block->bytes_used = round_down(block->bytes_used,
> -			dmaengine_buffer->align);
> +	max_size = min(block->size, dmaengine_buffer->max_size);
> +	max_size = round_down(max_size, dmaengine_buffer->align);
> +
> +	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN) {
> +		block->bytes_used = max_size;
> +		dma_dir = DMA_DEV_TO_MEM;
> +	} else {
> +		dma_dir = DMA_MEM_TO_DEV;
> +	}
> +
> +	if (!block->bytes_used || block->bytes_used > max_size)
> +		return -EINVAL;

Two paths to here.  Either DIRECTION_IN in which we just set things
up so conditions being checked are always fine (unless max_size == 0?
Can that happen?), or !DIRECTION_IN.
So why not move this into the else {} branch above?

>  
>  	desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
> -		block->phys_addr, block->bytes_used, DMA_DEV_TO_MEM,
> +		block->phys_addr, block->bytes_used, dma_dir,
>  		DMA_PREP_INTERRUPT);
>  	if (!desc)
>  		return -ENOMEM;
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
