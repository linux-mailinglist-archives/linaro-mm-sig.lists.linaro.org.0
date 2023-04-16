Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6126D6F55BC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:15:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 791693F6B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:15:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B194E3E923
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 15:10:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sPXbC0sA;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3935760C01;
	Sun, 16 Apr 2023 15:10:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23133C433D2;
	Sun, 16 Apr 2023 15:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681657824;
	bh=I0sotEmV3kawNyJtlPP3kmpIyzaPhPsF87PCQWk+tlY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=sPXbC0sAJIEoZdtARQ8ujGEOupvOV46NmhADpKDepBQtzwPcO0oko3cFP0kUwSjFW
	 9bWkPtWo1p0jYWXPNV+7F4Vz/nzPvZpvkJgSeS6+AkbGqaz2DVx3OwXsD9mxZdMCGJ
	 F+ntAIeeoUDxtOWV6Kr5I1kYHIlTAmK1TkQxvkUlULhs/wwZCU9kvksDQn6+qhrn9G
	 Z6bvxASy0KCgriRs42PpEUlOtY9zzHJDDM0Pk1c36EDo7f+BlnU6lXdQProQSL+nQz
	 Mw8SMUN/9Xaz0avDg+4zabNkNYgg93URXiM5j7tMUwDaTR02tsQ+inoiBL1DnD2zIw
	 qWeKX7qeNQblQ==
Date: Sun, 16 Apr 2023 16:10:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230416161024.68c761b2@jic23-huawei>
In-Reply-To: <20230403154800.215924-10-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154800.215924-10-paul@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
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
X-Rspamd-Queue-Id: B194E3E923
X-Spamd-Bar: ------
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MC4WISRB7D26J5BCZKR6R2WSS6MDLZ5X
X-Message-ID-Hash: MC4WISRB7D26J5BCZKR6R2WSS6MDLZ5X
X-Mailman-Approved-At: Wed, 03 May 2023 10:14:14 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 09/11] iio: buffer-dma: Enable support for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MC4WISRB7D26J5BCZKR6R2WSS6MDLZ5X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  3 Apr 2023 17:47:58 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> Implement iio_dma_buffer_attach_dmabuf(), iio_dma_buffer_detach_dmabuf()
> and iio_dma_buffer_transfer_dmabuf(), which can then be used by the IIO
> DMA buffer implementations.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Hi Paul,

A few superficially comments.

Jonathan

> 
> ---
> v3: Update code to provide the functions that will be used as callbacks
> for the new IOCTLs.
> ---
>  drivers/iio/buffer/industrialio-buffer-dma.c | 157 +++++++++++++++++--
>  include/linux/iio/buffer-dma.h               |  24 +++
>  2 files changed, 168 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/buffer/industrialio-buffer-dma.c b/drivers/iio/buffer/industrialio-buffer-dma.c
> index e14814e0d4c8..422bd784fd1e 100644
> --- a/drivers/iio/buffer/industrialio-buffer-dma.c
> +++ b/drivers/iio/buffer/industrialio-buffer-dma.c
...

> @@ -412,8 +448,12 @@ static void iio_dma_buffer_submit_block(struct iio_dma_buffer_queue *queue,
>  
>  	block->state = IIO_BLOCK_STATE_ACTIVE;
>  	iio_buffer_block_get(block);
> +

Trivial, but I'd rather not see unrelated white space changes in a patch
doing anything else.

>  	ret = queue->ops->submit(queue, block);
>  	if (ret) {
> +		if (!block->fileio)
> +			iio_buffer_signal_dmabuf_done(block->attach, ret);
> +
>  		/*
>  		 * This is a bit of a problem and there is not much we can do
>  		 * other then wait for the buffer to be disabled and re-enabled
> @@ -645,6 +685,97 @@ size_t iio_dma_buffer_data_available(struct iio_buffer *buf)
>  }
>  EXPORT_SYMBOL_GPL(iio_dma_buffer_data_available);

...

> +int iio_dma_buffer_enqueue_dmabuf(struct iio_buffer *buffer,
> +				  struct iio_dma_buffer_block *block,
> +				  struct sg_table *sgt,
> +				  size_t size, bool cyclic)
> +{
> +	struct iio_dma_buffer_queue *queue = iio_buffer_to_queue(buffer);
> +	int ret = 0;

No need to init.

> +
> +	mutex_lock(&queue->lock);
> +	ret = iio_dma_can_enqueue_block(block);
> +	if (ret < 0)
> +		goto out_mutex_unlock;
> +
> +	block->bytes_used = size;
> +	block->cyclic = cyclic;
> +	block->sg_table = sgt;
> +
> +	iio_dma_buffer_enqueue(queue, block);
> +
> +out_mutex_unlock:
> +	mutex_unlock(&queue->lock);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(iio_dma_buffer_enqueue_dmabuf);

Obviously an unrelated activity but good to namespace these
in a future patch set.

> +
>  /**
>   * iio_dma_buffer_set_bytes_per_datum() - DMA buffer set_bytes_per_datum callback
>   * @buffer: Buffer to set the bytes-per-datum for
> diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
> index 490b93f76fa8..e5e5817e99db 100644
> --- a/include/linux/iio/buffer-dma.h
> +++ b/include/linux/iio/buffer-dma.h

>  /**
>   * enum iio_block_state - State of a struct iio_dma_buffer_block
> @@ -41,6 +43,7 @@ enum iio_block_state {
>   * @queue: Parent DMA buffer queue
>   * @kref: kref used to manage the lifetime of block
>   * @state: Current state of the block
> + * @fileio: True if this buffer is used for fileio mode

Docs need update for the other two new elements.

>   */
>  struct iio_dma_buffer_block {
>  	/* May only be accessed by the owner of the block */
> @@ -63,6 +66,11 @@ struct iio_dma_buffer_block {
>  	 * queue->list_lock if the block is not owned by the core.
>  	 */
>  	enum iio_block_state state;
> +
> +	bool fileio;
> +
> +	struct dma_buf_attachment *attach;
> +	struct sg_table *sg_table;
>  };

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
