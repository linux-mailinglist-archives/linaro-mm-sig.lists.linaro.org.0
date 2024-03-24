Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9307D887C73
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Mar 2024 12:10:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28A1B40B52
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Mar 2024 11:10:53 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id A07B740B52
	for <linaro-mm-sig@lists.linaro.org>; Sun, 24 Mar 2024 11:10:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qdOmj8Ip;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 20E3ECE03F2;
	Sun, 24 Mar 2024 11:10:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 070DBC433C7;
	Sun, 24 Mar 2024 11:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711278647;
	bh=SliL9lrMTLlb02DVUsEIoBH8kLWyicIpi30CBkLACAo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qdOmj8IpSvL3J1HmB8y+mew6CrhOA5NEiJ+Rg96N5Ypb0+1f6aHFpehOcU8yMYb1T
	 K+47LI2WbRdPyAtvyY5X9mIQEBr9Pt+UpiFubwh09VFW0BMVCFaSPhauvft+3QF0ta
	 9/ZFA5SCCUitIIwkoOTDD3W2+ivaUkMR2V7NgvG6xR2tqP65XaCWCFY2JQRU4TtM4S
	 CxIYu4u5VRpCBy2i5e+K5CELBbNGfgrL6KbZOWBh2Yn5WZRVpuU8qauoXFqQga+Ucl
	 Z5wWRlAxqQv/w5DNHX2WaHoSzjmRBN42Kzg//5BJDZT4VmaLFknBalJp5xjyeSY43z
	 TLSSlAUd1MY9w==
Date: Sun, 24 Mar 2024 11:10:29 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20240324111029.3c57b885@jic23-huawei>
In-Reply-To: <20240310124836.31863-1-paul@crapouillou.net>
References: <20240310124836.31863-1-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: A07B740B52
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
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
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: D5LFR2Y5FRZIRUOZY7IT5DWBQDHG77ZH
X-Message-ID-Hash: D5LFR2Y5FRZIRUOZY7IT5DWBQDHG77ZH
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Nuno Sa <nuno.sa@analog.com>, Michael Hennerich <michael.hennerich@analog.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 0/6] iio: new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5LFR2Y5FRZIRUOZY7IT5DWBQDHG77ZH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 10 Mar 2024 13:48:29 +0100
Paul Cercueil <paul@crapouillou.net> wrote:

> Hi Jonathan,
> 
> Here's the final-er version of the IIO DMABUF patchset.
> 
> This v9 fixes the few issues reported by the kernel bot.
> 
> This was based on next-20240308.
> 
> Changelog:
> 
> - [3/6]:
>     - Select DMA_SHARED_BUFFER in Kconfig
>     - Remove useless forward declaration of 'iio_dma_fence'
>     - Import DMA-BUF namespace
>     - Add missing __user tag to iio_buffer_detach_dmabuf() argument

Merge window is coming to an end, and whilst we obviously have
plenty of time left in this cycle, I would like to get this queued
up fairly early so any issues can shake out and the various series
that will build on this can progress.

Hopefully Paul has addressed all remaining comments.
So I'm looking for RB or Ack for DMABUF and dmaengine parts from
respective reviewers/maintainers.

Thanks

Jonathan

> 
> Cheers,
> -Paul
> 
> Paul Cercueil (6):
>   dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
>   dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
>   iio: core: Add new DMABUF interface infrastructure
>   iio: buffer-dma: Enable support for DMABUFs
>   iio: buffer-dmaengine: Support new DMABUF based userspace API
>   Documentation: iio: Document high-speed DMABUF based API
> 
>  Documentation/iio/iio_dmabuf_api.rst          |  54 ++
>  Documentation/iio/index.rst                   |   1 +
>  drivers/dma/dma-axi-dmac.c                    |  40 ++
>  drivers/iio/Kconfig                           |   1 +
>  drivers/iio/buffer/industrialio-buffer-dma.c  | 181 ++++++-
>  .../buffer/industrialio-buffer-dmaengine.c    |  59 ++-
>  drivers/iio/industrialio-buffer.c             | 462 ++++++++++++++++++
>  include/linux/dmaengine.h                     |  27 +
>  include/linux/iio/buffer-dma.h                |  31 ++
>  include/linux/iio/buffer_impl.h               |  30 ++
>  include/uapi/linux/iio/buffer.h               |  22 +
>  11 files changed, 891 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/iio/iio_dmabuf_api.rst
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
