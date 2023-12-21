Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A49281BBB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 17:16:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60CF2402B5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 16:16:13 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id ECD5C3EFF9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 16:15:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=U7JID0qg;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E8888CE1FCA;
	Thu, 21 Dec 2023 16:15:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 788CEC433C7;
	Thu, 21 Dec 2023 16:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703175349;
	bh=RiMSGgzKIJ2hWpvefMIbapvzTJWfetulkf8+NEdqvv4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=U7JID0qgL+Hj7Nm/E+Y4eU354Fh4oIXb7v/E0uzIOq9pP0ONsR+WJVW/CGPCcL0Z6
	 yQV589B+xZ9CKBs8eJCDvVloyeRwc+uUdeH7VsCz77tFdA318Tzsj057GLEACEbm3I
	 HUK7fBsCb5gGlEWSot6XE6lNHxGW4PxRJq5f4DLIm0nTLNnPl2My/oi7GLLl780QdJ
	 AvBjWLy1MoXBy+ivmi7RZSeCpMqwniu5Vh6GApTz+cgboEpaBvtISq3x0dsbekaV/M
	 lszpzqoIxypfHLbB67/rFKRbuzIrYXjjZrTaWnZ6AU7tDLtDf+0yLfOcR3ULzHGsOG
	 +vqMx+jZtiuWQ==
Date: Thu, 21 Dec 2023 16:15:31 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20231221161531.17fcac72@jic23-huawei>
In-Reply-To: <20231219175009.65482-9-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-9-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:rdns,sin.source.kernel.org:helo,crapouillou.net:email];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,amd.com,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ECD5C3EFF9
X-Spamd-Bar: --
Message-ID-Hash: HGGH7NVMYCFPG2PAAYEPHQAMF2WRWCL2
X-Message-ID-Hash: HGGH7NVMYCFPG2PAAYEPHQAMF2WRWCL2
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 8/8] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGGH7NVMYCFPG2PAAYEPHQAMF2WRWCL2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 19 Dec 2023 18:50:09 +0100
Paul Cercueil <paul@crapouillou.net> wrote:

> Document the new DMABUF based API.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
One minor comment inline.

> 
> ---
> v2: - Explicitly state that the new interface is optional and is
>       not implemented by all drivers.
>     - The IOCTLs can now only be called on the buffer FD returned by
>       IIO_BUFFER_GET_FD_IOCTL.
>     - Move the page up a bit in the index since it is core stuff and not
>       driver-specific.
> 
> v3: Update the documentation to reflect the new API.
> 
> v5: Use description lists for the documentation of the three new IOCTLs
>     instead of abusing subsections.
> ---
>  Documentation/iio/dmabuf_api.rst | 54 ++++++++++++++++++++++++++++++++
>  Documentation/iio/index.rst      |  2 ++
>  2 files changed, 56 insertions(+)
>  create mode 100644 Documentation/iio/dmabuf_api.rst
> 
> diff --git a/Documentation/iio/dmabuf_api.rst b/Documentation/iio/dmabuf_api.rst
> new file mode 100644
> index 000000000000..1cd6cd51a582
> --- /dev/null
> +++ b/Documentation/iio/dmabuf_api.rst
> @@ -0,0 +1,54 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===================================
> +High-speed DMABUF interface for IIO
> +===================================
> +
> +1. Overview
> +===========
> +
> +The Industrial I/O subsystem supports access to buffers through a
> +file-based interface, with read() and write() access calls through the
> +IIO device's dev node.
> +
> +It additionally supports a DMABUF based interface, where the userspace
> +can attach DMABUF objects (externally created) to a IIO buffer, and
> +subsequently use them for data transfers.
> +
> +A userspace application can then use this interface to share DMABUF
> +objects between several interfaces, allowing it to transfer data in a
> +zero-copy fashion, for instance between IIO and the USB stack.
> +
> +The userspace application can also memory-map the DMABUF objects, and
> +access the sample data directly. The advantage of doing this vs. the
> +read() interface is that it avoids an extra copy of the data between the
> +kernel and userspace. This is particularly useful for high-speed devices
> +which produce several megabytes or even gigabytes of data per second.
> +It does however increase the userspace-kernelspace synchronization
> +overhead, as the DMA_BUF_SYNC_START and DMA_BUF_SYNC_END IOCTLs have to
> +be used for data integrity.
> +
> +2. User API
> +===========
> +
> +As part of this interface, three new IOCTLs have been added. These three
> +IOCTLs have to be performed on the IIO buffer's file descriptor,
> +obtained using the IIO_BUFFER_GET_FD_IOCTL() ioctl.

I would call out that they do not work on the main file descriptor (which
is arguably also a IIO buffer file descriptor).

> +
> +  ``IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)``
> +    Attach the DMABUF object, identified by its file descriptor, to the
> +    IIO buffer. Returns zero on success, and a negative errno value on
> +    error.
> +
> +  ``IIO_BUFFER_DMABUF_DETACH_IOCTL(int)``
> +    Detach the given DMABUF object, identified by its file descriptor,
> +    from the IIO buffer. Returns zero on success, and a negative errno
> +    value on error.
> +
> +    Note that closing the IIO buffer's file descriptor will
> +    automatically detach all previously attached DMABUF objects.
> +
> +  ``IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *iio_dmabuf)``
> +    Enqueue a previously attached DMABUF object to the buffer queue.
> +    Enqueued DMABUFs will be read from (if output buffer) or written to
> +    (if input buffer) as long as the buffer is enabled.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
