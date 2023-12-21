Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0181BB95
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 17:13:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F1133F009
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 16:13:39 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 1DD323EFF9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 16:13:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LQbBRiV2;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 83754CE1FF6;
	Thu, 21 Dec 2023 16:13:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4218C433CB;
	Thu, 21 Dec 2023 16:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703175195;
	bh=KVesujFyxk8g+PzjFWaKsdIwlbPbsy9MmO8ani2Ia+Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=LQbBRiV2NxFUlEtQl9y5+GPe98N7iyUbmlEtAJYC69/jn5YMiEp1tfhq/lyTEFOGn
	 fdRPQMVVnE1xFlCoa3XIHzGdf2/7FfSm0loSmFlaeWDW8gPEfT2ZfXlukBd0aLLy3l
	 qyiWwUipdrLQHBBDY5IUzQV8xVXYAc33ENr9DFcqCc6Y9YMfJgrKshGdN+bVjWdwBy
	 bIdM8FsrbnbjT4D4d0E8htI1K0bodi1FkJ9SREYSRULMgFLxVKZsBEwJ/J/v8aTcye
	 9aqYrHcTGq0q68Eln1R4BfbgPOBj3TOIWa44/Gr7WzeQQ5Mx7DQgLLYpNiUfQp9Uhz
	 3GYgpXjn6n3QA==
Date: Thu, 21 Dec 2023 16:12:58 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20231221161258.056f5ce4@jic23-huawei>
In-Reply-To: <20231219175009.65482-8-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-8-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:rdns,sin.source.kernel.org:helo];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,amd.com,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1DD323EFF9
X-Spamd-Bar: --
Message-ID-Hash: LO6GVKD2ER6ARAJ5XNBXRZPBOL7WJE62
X-Message-ID-Hash: LO6GVKD2ER6ARAJ5XNBXRZPBOL7WJE62
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/8] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LO6GVKD2ER6ARAJ5XNBXRZPBOL7WJE62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 19 Dec 2023 18:50:08 +0100
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
One question inline. Otherwise looks fine to me.

J
> 
> ---
> v3: Use the new dmaengine_prep_slave_dma_array(), and adapt the code to
>     work with the new functions introduced in industrialio-buffer-dma.c.
> 
> v5: - Use the new dmaengine_prep_slave_dma_vec().
>     - Restrict to input buffers, since output buffers are not yet
>       supported by IIO buffers.
> ---
>  .../buffer/industrialio-buffer-dmaengine.c    | 52 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> index 5f85ba38e6f6..825d76a24a67 100644
> --- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> +++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
> @@ -64,15 +64,51 @@ static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
>  	struct dmaengine_buffer *dmaengine_buffer =
>  		iio_buffer_to_dmaengine_buffer(&queue->buffer);
>  	struct dma_async_tx_descriptor *desc;
> +	unsigned int i, nents;
> +	struct scatterlist *sgl;
> +	struct dma_vec *vecs;
> +	size_t max_size;
>  	dma_cookie_t cookie;
> +	size_t len_total;
>  
> -	block->bytes_used = min(block->size, dmaengine_buffer->max_size);
> -	block->bytes_used = round_down(block->bytes_used,
> -			dmaengine_buffer->align);
> +	if (queue->buffer.direction != IIO_BUFFER_DIRECTION_IN) {
> +		/* We do not yet support output buffers. */
> +		return -EINVAL;
> +	}
>  
> -	desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
> -		block->phys_addr, block->bytes_used, DMA_DEV_TO_MEM,
> -		DMA_PREP_INTERRUPT);
> +	if (block->sg_table) {
> +		sgl = block->sg_table->sgl;
> +		nents = sg_nents_for_len(sgl, block->bytes_used);

Are we guaranteed the length in the sglist is enough?  If not this
can return an error code.


> +
> +		vecs = kmalloc_array(nents, sizeof(*vecs), GFP_KERNEL);
> +		if (!vecs)
> +			return -ENOMEM;
> +
> +		len_total = block->bytes_used;
> +
> +		for (i = 0; i < nents; i++) {
> +			vecs[i].addr = sg_dma_address(sgl);
> +			vecs[i].len = min(sg_dma_len(sgl), len_total);
> +			len_total -= vecs[i].len;
> +
> +			sgl = sg_next(sgl);
> +		}
> +
> +		desc = dmaengine_prep_slave_dma_vec(dmaengine_buffer->chan,
> +						    vecs, nents, DMA_DEV_TO_MEM,
> +						    DMA_PREP_INTERRUPT);
> +		kfree(vecs);
> +	} else {
> +		max_size = min(block->size, dmaengine_buffer->max_size);
> +		max_size = round_down(max_size, dmaengine_buffer->align);
> +		block->bytes_used = max_size;
> +
> +		desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
> +						   block->phys_addr,
> +						   block->bytes_used,
> +						   DMA_DEV_TO_MEM,
> +						   DMA_PREP_INTERRUPT);
> +	}
>  	if (!desc)
>  		return -ENOMEM;
>  

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
