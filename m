Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A055901567
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Jun 2024 11:56:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5588A4424C
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  9 Jun 2024 09:56:06 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 930D53F52A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Jun 2024 09:55:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Vh4rp+nY;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 67215CE0B3E;
	Sun,  9 Jun 2024 09:55:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331BCC2BD10;
	Sun,  9 Jun 2024 09:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717926953;
	bh=J3+LkAlthj2AJZLov9TBAoYftU77dGSFi6J0sALU0co=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Vh4rp+nYjUUgM1+TcsBri2M5y1fvrGCXzGe1V+fo6MKCK7rJqsTLooYlf65NCjVvt
	 Tt9m3WeDWASFpGNXmjb+rs3eHqJn0RbGDc7ct4c1lAnocGLbGO1mNyycpM6DDVfO1A
	 JeK4MbJisCPaj+nU3ayutUVe9FG1kyr4Jfd6kKDSUl6zrRjcgj8qK67oEjwmCoxIUK
	 1anrNBYEO/rzthGsyH0348ZLzBWlrqQpH7kfnsRkVy+fPsxegcic5G7VnH9hvMGgJu
	 K41rX/QAmAH4t2kwexgm09vL3cgBuu/GvkzWZKe4axa5KScy2nlGDfRI7BgaWhqciu
	 0MgiMFDAimjQw==
Date: Sun, 9 Jun 2024 10:55:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20240609105501.0f836684@jic23-huawei>
In-Reply-To: <20240605110845.86740-5-paul@crapouillou.net>
References: <20240605110845.86740-1-paul@crapouillou.net>
	<20240605110845.86740-5-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 930D53F52A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: 66ETIZUHAQSPKDA3FTH6YM32XJ4TPZXH
X-Message-ID-Hash: 66ETIZUHAQSPKDA3FTH6YM32XJ4TPZXH
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 4/6] iio: buffer-dma: Enable support for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/66ETIZUHAQSPKDA3FTH6YM32XJ4TPZXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed,  5 Jun 2024 13:08:43 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> Implement iio_dma_buffer_attach_dmabuf(), iio_dma_buffer_detach_dmabuf()
> and iio_dma_buffer_transfer_dmabuf(), which can then be used by the IIO
> DMA buffer implementations.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> 
Same thing on SoB.
Also another missing structure field related docs comment inline.

> diff --git a/include/linux/iio/buffer-dma.h b/include/linux/iio/buffer-dma.h
> index 6e27e47077d5..e54158e53fd6 100644
> --- a/include/linux/iio/buffer-dma.h
> +++ b/include/linux/iio/buffer-dma.h
> @@ -7,6 +7,7 @@
>  #ifndef __INDUSTRIALIO_DMA_BUFFER_H__
>  #define __INDUSTRIALIO_DMA_BUFFER_H__
>  
> +#include <linux/atomic.h>
>  #include <linux/list.h>
>  #include <linux/kref.h>
>  #include <linux/spinlock.h>
> @@ -16,6 +17,9 @@
>  struct iio_dma_buffer_queue;
>  struct iio_dma_buffer_ops;
>  struct device;
> +struct dma_buf_attachment;
> +struct dma_fence;
> +struct sg_table;
>  
>  /**
>   * enum iio_block_state - State of a struct iio_dma_buffer_block
> @@ -41,6 +45,8 @@ enum iio_block_state {
>   * @queue: Parent DMA buffer queue
>   * @kref: kref used to manage the lifetime of block
>   * @state: Current state of the block
> + * @cyclic: True if this is a cyclic buffer
> + * @fileio: True if this buffer is used for fileio mode

kernel doc needs to be complete. So missing attach, sg_table and fence.

>   */
>  struct iio_dma_buffer_block {
>  	/* May only be accessed by the owner of the block */
> @@ -63,6 +69,14 @@ struct iio_dma_buffer_block {
>  	 * queue->list_lock if the block is not owned by the core.
>  	 */
>  	enum iio_block_state state;
> +
> +	bool cyclic;
> +	bool fileio;
> +
> +	struct dma_buf_attachment *attach;
> +	struct sg_table *sg_table;
> +
> +	struct dma_fence *fence;
>  };
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
