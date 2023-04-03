Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5540B6D4D25
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 18:05:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5811A3E948
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 16:05:33 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by lists.linaro.org (Postfix) with ESMTPS id 3836F3E948
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 16:05:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lwn.net header.s=20201203 header.b=sVrUAqyY;
	spf=pass (lists.linaro.org: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net;
	dmarc=none
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 3D0407DB;
	Mon,  3 Apr 2023 16:05:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 3D0407DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1680537920; bh=XfDtjdL03UON+Z3Zz6rkWcdyGXWekaxVNb7/+FX5L8U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=sVrUAqyYPK7wSsQ8IJs1cDsAqIQ/9M607jLg0H46pR87YlOzoTwtrvkB5Ca9++4eV
	 rVRylq4QWLWdF+KrHhSq6nK3BOogOa7QkuajwHrpYdID0IN0ATCQeTnHBKW0dNL/ua
	 Z4ughGpDPqsftpwEvFcM/7JwtMRuh3ghV4Nb420mH8KwQO09ssHZB86HkrJblm2U1L
	 mz9CGfPXhE5r8LjPc3zqHXmLKYagH/mxqcAFkf723WAb6gwyTaLktx4tB5apj6BR+T
	 K+6Ra6vhXGLyk+MErb7swJ4Lq6p0uzTbi8MLv8XfBleCma21sb2mq8Au/ieY2dCj+3
	 uqlbQ3tHjxg4A==
From: Jonathan Corbet <corbet@lwn.net>
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul
 <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno
 =?utf-8?Q?S=C3=A1?= <noname.nuno@gmail.com>, Sumit Semwal
 <sumit.semwal@linaro.org>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230403154955.216148-2-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
 <20230403154955.216148-1-paul@crapouillou.net>
 <20230403154955.216148-2-paul@crapouillou.net>
Date: Mon, 03 Apr 2023 10:05:19 -0600
Message-ID: <87zg7p7xz4.fsf@meer.lwn.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3836F3E948
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+a:mail.lwn.net];
	R_DKIM_ALLOW(-0.20)[lwn.net:s=20201203];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[crapouillou.net,kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:45.79.64.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lwn.net:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[lwn.net];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: NECCREQNKKNMOQI5AYGVDITWWLZY5HNH
X-Message-ID-Hash: NECCREQNKKNMOQI5AYGVDITWWLZY5HNH
X-MailFrom: corbet@lwn.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 11/11] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NECCREQNKKNMOQI5AYGVDITWWLZY5HNH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Paul Cercueil <paul@crapouillou.net> writes:

One nit:

> Document the new DMABUF based API.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
>
> ---
> v2: - Explicitly state that the new interface is optional and is
>       not implemented by all drivers.
>     - The IOCTLs can now only be called on the buffer FD returned by
>       IIO_BUFFER_GET_FD_IOCTL.
>     - Move the page up a bit in the index since it is core stuff and not
>       driver-specific.
> v3: Update the documentation to reflect the new API.
> ---
>  Documentation/iio/dmabuf_api.rst | 59 ++++++++++++++++++++++++++++++++
>  Documentation/iio/index.rst      |  2 ++
>  2 files changed, 61 insertions(+)
>  create mode 100644 Documentation/iio/dmabuf_api.rst
>
> diff --git a/Documentation/iio/dmabuf_api.rst b/Documentation/iio/dmabuf_api.rst
> new file mode 100644
> index 000000000000..4d70372c7ebd
> --- /dev/null
> +++ b/Documentation/iio/dmabuf_api.rst
> @@ -0,0 +1,59 @@
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
> +
> +``IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)``
> +----------------------------------------------------------------
> +
> +Attach the DMABUF object, identified by its file descriptor, to the IIO
> +buffer. Returns zero on success, and a negative errno value on error.

Rather than abusing subsections, this would be better done as a
description list:

  IIO_BUFFER_DMABUF_ATTACH_IOCTL(int)
      Attach the DMABUF object, identified by its file descriptor, to
      the IIO buffer. Returns zero on success, and a negative errno
      value on error.

Thanks,

jon
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
