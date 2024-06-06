Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6158FF3D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jun 2024 19:33:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2FDB44812
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jun 2024 17:33:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 78DC340B7A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jun 2024 17:33:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=YjgG7Vov;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=6C3828TkhUBt3LMHxNw+f5eKbQSK74nm3cDfcfA+ESQ=; b=YjgG7Vov4whzGWtff+CpF/oKgO
	S3i5UR/b7npg7U4tVrxl3/D4ZmVvyFwLuag78KKpUhLwsakb4RRuKd+b+fvTmuvICnqfNxp6Mmwb+
	m8qm8ei8eE7zOW7hJpzGnDF/99H35cAwMFrDaHJ8pWLHqwo3ULZoC6aVMUzDzpK3UgH+tt+fio3q+
	rfntirFQ7pDVbXz+c05AEXWBLgme0hSzKmAmCpLaKc9pxe2XJgMaZm/2lF17eM9JfIjJOewvm84eV
	cloM0LYjQ5T2r2CcHxsslcAhPDYArfm4Kf+iQ9Ddu3DECTWahfCAv33BCBI6HW4F9kNSNrdMmQtEE
	ZTzE5uxg==;
Received: from [50.53.4.147] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFGyq-0000000Alrg-33v6;
	Thu, 06 Jun 2024 17:32:52 +0000
Message-ID: <5052adab-5b5e-4ac2-902c-bb373c00bbbb@infradead.org>
Date: Thu, 6 Jun 2024 10:32:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20240605110845.86740-1-paul@crapouillou.net>
 <20240605110845.86740-7-paul@crapouillou.net>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20240605110845.86740-7-paul@crapouillou.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 78DC340B7A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.19 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
Message-ID-Hash: HZFGIC5HXZZAWU6OJOXU754R3LVENIBH
X-Message-ID-Hash: HZFGIC5HXZZAWU6OJOXU754R3LVENIBH
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 6/6] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZFGIC5HXZZAWU6OJOXU754R3LVENIBH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On 6/5/24 4:08 AM, Paul Cercueil wrote:
> Document the new DMABUF based API.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
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
> 
> v8: Renamed dmabuf_api.rst -> iio_dmabuf_api.rst, and updated index.rst
>     whose format changed in iio/togreg.
> ---
>  Documentation/iio/iio_dmabuf_api.rst | 54 ++++++++++++++++++++++++++++
>  Documentation/iio/index.rst          |  1 +
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/iio/iio_dmabuf_api.rst
> 
> diff --git a/Documentation/iio/iio_dmabuf_api.rst b/Documentation/iio/iio_dmabuf_api.rst
> new file mode 100644
> index 000000000000..1cd6cd51a582
> --- /dev/null
> +++ b/Documentation/iio/iio_dmabuf_api.rst
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

I would say/write:                                to an IIO buffer,

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
> +
> +  ``IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)``

                                     (int fd)
?

> +    Attach the DMABUF object, identified by its file descriptor, to the
> +    IIO buffer. Returns zero on success, and a negative errno value on
> +    error.
> +
> +  ``IIO_BUFFER_DMABUF_DETACH_IOCTL(int)``

ditto.

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

thanks.
-- 
#Randy
https://people.kernel.org/tglx/notes-about-netiquette
https://subspace.kernel.org/etiquette.html
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
