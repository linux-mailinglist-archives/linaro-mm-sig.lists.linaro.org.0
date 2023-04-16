Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5E46F55B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:15:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9394F3F6B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:15:02 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id EC9053E923
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 15:04:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=p1uWn8XV;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A121660C8F;
	Sun, 16 Apr 2023 15:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E1B6C433EF;
	Sun, 16 Apr 2023 15:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681657448;
	bh=3XfcYKJTf9648eHoIZWE+scXWW1wRgr8pMTuHaE/qZ4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=p1uWn8XV4gWYM/nyHekPHz6WphaIcOgDac5rAU5cSiyyBERYHRb3y+5NBS+mjdk4W
	 Hda1w6aFP5Aos8zqMx+498ZvoUNo53kfiyflUYv1KcBPdsukThlEqDlDduLTv18gAs
	 CKsRZV6Dx44D3mQLsWGz4y0B5CYwhCiGnPcfQtejxUld13qSE3a1OzX8NJWdwcf4gw
	 zeUq8f64mdF3yfku7/lqgWpcoHGW164TWJ4B+mrxjn4NWoloYdw15KwntM4xLNm9HB
	 30+QmtDQO3qD+90dmXcVfBGMLf5zMHsNK+f5jrtRYSVd2tdSgRyGbLzeSjbSVkRR8q
	 TtyK0pPrVsN6g==
Date: Sun, 16 Apr 2023 16:04:08 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230416160408.5fae01a0@jic23-huawei>
In-Reply-To: <20230403154800.215924-8-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154800.215924-8-paul@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EC9053E923
X-Spamd-Bar: ----
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FSTS23HZSIIVETT24YPB4M76NYUOQHMT
X-Message-ID-Hash: FSTS23HZSIIVETT24YPB4M76NYUOQHMT
X-Mailman-Approved-At: Wed, 03 May 2023 10:14:01 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/11] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FSTS23HZSIIVETT24YPB4M76NYUOQHMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  3 Apr 2023 17:47:56 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> Add the necessary infrastructure to the IIO core to support a new
> optional DMABUF based interface.
> 
> With this new interface, DMABUF objects (externally created) can be
> attached to a IIO buffer, and subsequently used for data transfer.
> 
> A userspace application can then use this interface to share DMABUF
> objects between several interfaces, allowing it to transfer data in a
> zero-copy fashion, for instance between IIO and the USB stack.
> 
> The userspace application can also memory-map the DMABUF objects, and
> access the sample data directly. The advantage of doing this vs. the
> read() interface is that it avoids an extra copy of the data between the
> kernel and userspace. This is particularly userful for high-speed
> devices which produce several megabytes or even gigabytes of data per
> second.

I like numbers to support a patch.  Any nice ones to throw in here
as examples of expected rates?

> 
> As part of the interface, 3 new IOCTLs have been added:
> 
> IIO_BUFFER_DMABUF_ATTACH_IOCTL(int fd):
>  Attach the DMABUF object identified by the given file descriptor to the
>  buffer.
> 
> IIO_BUFFER_DMABUF_DETACH_IOCTL(int fd):
>  Detach the DMABUF object identified by the given file descriptor from
>  the buffer. Note that closing the IIO buffer's file descriptor will
>  automatically detach all previously attached DMABUF objects.
> 
> IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *):
>  Request a data transfer to/from the given DMABUF object. Its file
>  descriptor, as well as the transfer size and flags are provided in the
>  "iio_dmabuf" structure.
> 
> These three IOCTLs have to be performed on the IIO buffer's file
> descriptor, obtained using the IIO_BUFFER_GET_FD_IOCTL() ioctl.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> 

Trivial comments from me.  I don't (yet) understand dmabuf well enough
to know if that part is right or not.  Not sure I will ever find the time
so relying on those who are more familiar with it to tell me if that code
is correct.

Thanks,

Jonathan



>  static int iio_buffer_chrdev_release(struct inode *inode, struct file *filep)
>  {
>  	struct iio_dev_buffer_pair *ib = filep->private_data;
>  	struct iio_dev *indio_dev = ib->indio_dev;
>  	struct iio_buffer *buffer = ib->buffer;
> +	struct iio_dmabuf_priv *priv, *tmp;
>  
>  	wake_up(&buffer->pollq);
>  
> +	/* Close all attached DMABUFs */
> +	list_for_each_entry_safe(priv, tmp, &buffer->dmabufs, entry) {
> +		list_del_init(&priv->entry);
> +		iio_buffer_dmabuf_put(priv->attach);
> +	}
> +
> +	/* TODO: Is it safe? Can "ib" be freed here? */

No idea :)  However that need resolving before we apply this.

> +	if (!list_empty(&buffer->dmabufs))
> +		dev_warn(&indio_dev->dev, "Buffer FD closed with active transfers\n");
> +
>  	kfree(ib);
>  	clear_bit(IIO_BUSY_BIT_POS, &buffer->flags);
>  	iio_device_put(indio_dev);
> @@ -1515,11 +1591,337 @@ static int iio_buffer_chrdev_release(struct inode *inode, struct file *filep)
>  	return 0;
>  }
>  




> +static int iio_buffer_enqueue_dmabuf(struct iio_dev_buffer_pair *ib,
> +				     struct iio_dmabuf __user *iio_dmabuf_req,
> +				     bool nonblock)
> +{

...

> +
> +	ret = buffer->access->enqueue_dmabuf(buffer, priv->block, sgt,
> +					     iio_dmabuf.bytes_used, cyclic);
> +	if (ret)

Hmm. Is there an easy way to perhaps avoid a function with multiple
error handling paths like we have here.  Perhaps drag the
extra stuff from the the dmabuf_done() function into this if (ret)
then goto err_fence_put;?  I'm not sure if that would make this even
harder to read however.

> +		iio_buffer_signal_dmabuf_done(attach, ret);
> +
> +	dma_buf_put(dmabuf);
> +
> +	return ret;
> +
> +err_resv_unlock:
> +	dma_resv_unlock(dmabuf->resv);
> +err_fence_put:
> +	dma_fence_put(&fence->base);
> +err_unmap_attachment:
> +	dma_buf_unmap_attachment(attach, sgt, dir);
> +err_attachment_put:
> +	iio_buffer_dmabuf_put(attach);
> +err_dmabuf_put:
> +	dma_buf_put(dmabuf);
> +
> +	return ret;
> +}
> +
> +void iio_buffer_signal_dmabuf_done(struct dma_buf_attachment *attach, int ret)
> +{
> +	struct iio_dmabuf_priv *priv = attach->importer_priv;
> +	struct iio_dma_fence *fence = priv->fence;
> +	enum dma_data_direction dir = fence->dir;
> +	struct sg_table *sgt = fence->sgt;
> +
> +	dma_fence_get(&fence->base);
> +	fence->base.error = ret;
> +	dma_fence_signal(&fence->base);
> +	dma_fence_put(&fence->base);
> +
> +	dma_buf_unmap_attachment(attach, sgt, dir);
> +	iio_buffer_dmabuf_put(attach);
> +}
> +EXPORT_SYMBOL_GPL(iio_buffer_signal_dmabuf_done);

...

> diff --git a/include/linux/iio/buffer_impl.h b/include/linux/iio/buffer_impl.h
> index 89c3fd7c29ca..a8a490091277 100644
> --- a/include/linux/iio/buffer_impl.h
> +++ b/include/linux/iio/buffer_impl.h
> @@ -9,8 +9,11 @@
>  #include <uapi/linux/iio/buffer.h>
>  #include <linux/iio/buffer.h>
>  
> +struct dma_buf_attachment;
>  struct iio_dev;
> +struct iio_dma_buffer_block;
>  struct iio_buffer;
> +struct sg_table;
>  
>  /**
>   * INDIO_BUFFER_FLAG_FIXED_WATERMARK - Watermark level of the buffer can not be
> @@ -39,6 +42,9 @@ struct iio_buffer;
>   *                      device stops sampling. Calles are balanced with @enable.
>   * @release:		called when the last reference to the buffer is dropped,
>   *			should free all resources allocated by the buffer
> + * @alloc_dmabuf:	called from userspace via ioctl to allocate one DMABUF.

Looks like you missed updating the docs.

> + * @enqueue_dmabuf:	called from userspace via ioctl to queue this DMABUF
> + *			object to this buffer. Requires a valid DMABUF fd.
>   * @modes:		Supported operating modes by this buffer type
>   * @flags:		A bitmask combination of INDIO_BUFFER_FLAG_*
>   *
> @@ -68,6 +74,14 @@ struct iio_buffer_access_funcs {
>  
>  	void (*release)(struct iio_buffer *buffer);
>  
> +	struct iio_dma_buffer_block * (*attach_dmabuf)(struct iio_buffer *buffer,
> +						       struct dma_buf_attachment *attach);
> +	void (*detach_dmabuf)(struct iio_buffer *buffer,
> +			      struct iio_dma_buffer_block *block);
> +	int (*enqueue_dmabuf)(struct iio_buffer *buffer,
> +			      struct iio_dma_buffer_block *block,
> +			      struct sg_table *sgt, size_t size, bool cyclic);
> +
>  	unsigned int modes;
>  	unsigned int flags;
>  };

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
