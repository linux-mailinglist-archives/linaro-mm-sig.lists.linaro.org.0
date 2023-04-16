Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 375066F55BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:15:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B2633F6F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:15:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id BA7653EC76
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 15:15:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YdbRFGq8;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4746F61B20;
	Sun, 16 Apr 2023 15:15:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29733C433EF;
	Sun, 16 Apr 2023 15:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681658126;
	bh=vg7a+9DCnudCadywsW+LfZkYC34HIPkJONEpTnE3IgA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YdbRFGq8XX9t0ik/azOkzc9EKI0CmzqXbczuMupYZnuOWGoKjaTyzlIhAw/DyfaiQ
	 P//0oUjd/Me3pFl5u/6zxLgHHr+SFlpVunFRA9K86f7bHCLf5NLdu/QyxFp7SpHlhn
	 PgVXQm/s2Uuc39C8V9GcaWQxWjw2Gpl3RmlasxbB9RQ3KQRAGPKUSLFOt6HMyxVi3L
	 ltiIKU3FP0Hz3geJtpvvKV3Lh+b0ljO8P/dURRzfzP+Zq7z3aVaIOAqoO6ZG1B/+7B
	 prJppVDKgixqKXJGBV33f7rZsWOYcM1N7LJpGtEbzygqC3WfXs7zXixTo/GFKdu4U7
	 bm485htkgzjiQ==
Date: Sun, 16 Apr 2023 16:15:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230416161527.6e7021f1@jic23-huawei>
In-Reply-To: <20230403154955.216148-1-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154955.216148-1-paul@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BA7653EC76
X-Spamd-Bar: ------
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L3GZ7NX3NGUY47E7MG2TLEX6FQVOEKDX
X-Message-ID-Hash: L3GZ7NX3NGUY47E7MG2TLEX6FQVOEKDX
X-Mailman-Approved-At: Wed, 03 May 2023 10:14:15 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 10/11] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L3GZ7NX3NGUY47E7MG2TLEX6FQVOEKDX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  3 Apr 2023 17:49:54 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> Use the functions provided by the buffer-dma core to implement the
> DMABUF userspace API in the buffer-dmaengine IIO buffer implementation.
> 
> Since we want to be able to transfer an arbitrary number of bytes and
> not necesarily the full DMABUF, the associated scatterlist is converted
> to an array of DMA addresses + lengths, which is then passed to
> dmaengine_prep_slave_dma_array().
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
A few things inline.

Thanks,

Jonathan

> 
> ---
> v3: Use the new dmaengine_prep_slave_dma_array(), and adapt the code to
>     work with the new functions introduced in industrialio-buffer-dma.c.
> ---
>  .../buffer/industrialio-buffer-dmaengine.c    | 69 ++++++++++++++++---
>  include/linux/iio/buffer-dma.h                |  2 +
>  2 files changed, 60 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> index 866c8b84bb24..faed9c2b089c 100644
> --- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> +++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> @@ -65,25 +65,68 @@ static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
>  		iio_buffer_to_dmaengine_buffer(&queue->buffer);
>  	struct dma_async_tx_descriptor *desc;
>  	enum dma_transfer_direction dma_dir;
> +	unsigned int i, nents, *lenghts;
> +	struct scatterlist *sgl;
> +	unsigned long flags;
> +	dma_addr_t *addrs;
>  	size_t max_size;
>  	dma_cookie_t cookie;
> +	size_t len_total;
>  
> -	max_size = min(block->size, dmaengine_buffer->max_size);
> -	max_size = round_down(max_size, dmaengine_buffer->align);
> +	if (!block->bytes_used)
> +		return -EINVAL;
>  
> -	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN) {
> -		block->bytes_used = max_size;
> +	if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN)
>  		dma_dir = DMA_DEV_TO_MEM;
> -	} else {
> +	else
>  		dma_dir = DMA_MEM_TO_DEV;
> -	}
>  
> -	if (!block->bytes_used || block->bytes_used > max_size)
> -		return -EINVAL;

Ah this is dropping the code I moaned about earlier.  I'll probably
forget though so maybe add a note to that patch saying it goes
away later anyway so I don't keep moaning about it in future versions.

> +	if (block->sg_table) {
> +		sgl = block->sg_table->sgl;
> +		nents = sg_nents_for_len(sgl, block->bytes_used);
> +
> +		addrs = kmalloc_array(nents, sizeof(*addrs), GFP_KERNEL);
> +		if (!addrs)
> +			return -ENOMEM;
> +
> +		lenghts = kmalloc_array(nents, sizeof(*lenghts), GFP_KERNEL);

lengths?

> +		if (!lenghts) {
> +			kfree(addrs);
> +			return -ENOMEM;
> +		}
> +
> +		len_total = block->bytes_used;
>  
> -	desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
> -		block->phys_addr, block->bytes_used, dma_dir,
> -		DMA_PREP_INTERRUPT);
> +		for (i = 0; i < nents; i++) {
> +			addrs[i] = sg_dma_address(sgl);
> +			lenghts[i] = min(sg_dma_len(sgl), len_total);
> +			len_total -= lenghts[i];
> +
> +			sgl = sg_next(sgl);
> +		}
> +
> +		flags = block->cyclic ? DMA_PREP_REPEAT : DMA_PREP_INTERRUPT;
> +
> +		desc = dmaengine_prep_slave_dma_array(dmaengine_buffer->chan,
> +						      addrs, lenghts, nents,
> +						      dma_dir, flags);
> +		kfree(addrs);
> +		kfree(lenghts);
> +	} else {
> +		max_size = min(block->size, dmaengine_buffer->max_size);
> +		max_size = round_down(max_size, dmaengine_buffer->align);
> +
> +		if (queue->buffer.direction == IIO_BUFFER_DIRECTION_IN)
> +			block->bytes_used = max_size;
> +
> +		if (block->bytes_used > max_size)
> +			return -EINVAL;
> +
> +		desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
> +						   block->phys_addr,
> +						   block->bytes_used, dma_dir,
> +						   DMA_PREP_INTERRUPT);
> +	}


> diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
> index e5e5817e99db..48f7ffaf0867 100644
> --- a/include/linux/iio/buffer-dma.h
> +++ b/include/linux/iio/buffer-dma.h
> @@ -43,6 +43,7 @@ enum iio_block_state {
>   * @queue: Parent DMA buffer queue
>   * @kref: kref used to manage the lifetime of block
>   * @state: Current state of the block
> + * @cyclic: True if this is a cyclic buffer
>   * @fileio: True if this buffer is used for fileio mode

I might have commented on it earlier (I've lost track) but
attach should be documented as well.   Worth sanity checking
by either building with W=1 or running kernel-doc over
the files and fixing the warnings.

>   */
>  struct iio_dma_buffer_block {
> @@ -67,6 +68,7 @@ struct iio_dma_buffer_block {
>  	 */
>  	enum iio_block_state state;
>  
> +	bool cyclic;
>  	bool fileio;
>  
>  	struct dma_buf_attachment *attach;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
