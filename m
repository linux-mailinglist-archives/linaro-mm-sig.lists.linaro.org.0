Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B293752AEC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jul 2023 21:29:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90AD943F1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jul 2023 19:29:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B5C2D3F095
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jul 2023 19:28:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=xnARUZ0P;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5C69C6128D;
	Thu, 13 Jul 2023 19:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C7CFC433C7;
	Thu, 13 Jul 2023 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1689276530;
	bh=zDVMhROmojmbgyEs2EDFF1j/BJYI67as1OcXUNfcQPg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xnARUZ0P4IJfcgcPMHZ9Y6DjTZcWfPEqfbjzO+3k0J7MGqLzYYWrIhzbHGrSDjTjP
	 fkROjl9lPL8k4HfEQESuE7ohoRjDo/EzyxGcqEbIhCTW0a3enlxmyy8AFC4kRNnTHf
	 gb37E6ir3PbH3oNe2jOpCLtGi0BIQ7W3ZZZXqmCM=
Date: Thu, 13 Jul 2023 21:28:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andrew Davis <afd@ti.com>
Message-ID: <2023071308-squeeze-hamster-d02f@gregkh>
References: <20230713191316.116019-1-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230713191316.116019-1-afd@ti.com>
X-Spamd-Result: default: False [-2.00 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[arndb.de,gmail.com,google.com,pengutronix.de,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[linuxfoundation.org:dkim,dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns,ti.com:url,ti.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B5C2D3F095
X-Spamd-Bar: --
Message-ID-Hash: 6NIBQ2A7DYG3Z5HI2FCJHOKXTKQIW5BA
X-Message-ID-Hash: 6NIBQ2A7DYG3Z5HI2FCJHOKXTKQIW5BA
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Arnd Bergmann <arnd@arndb.de>, Christian Gmeiner <christian.gmeiner@gmail.com>, John Stultz <jstultz@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NIBQ2A7DYG3Z5HI2FCJHOKXTKQIW5BA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 13, 2023 at 02:13:16PM -0500, Andrew Davis wrote:
> This new export type exposes to userspace the SRAM area as a DMA-BUF Heap,
> this allows for allocations of DMA-BUFs that can be consumed by various
> DMA-BUF supporting devices.

What devices exactly?

And what userspace tools/programs are going to use this api?

> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
> 
> Changes from v2:
>  - Make sram_dma_heap_allocate static (kernel test robot)
>  - Rebase on v6.5-rc1
> 
>  drivers/misc/Kconfig         |   7 +
>  drivers/misc/Makefile        |   1 +
>  drivers/misc/sram-dma-heap.c | 245 +++++++++++++++++++++++++++++++++++
>  drivers/misc/sram.c          |   6 +
>  drivers/misc/sram.h          |  16 +++
>  5 files changed, 275 insertions(+)
>  create mode 100644 drivers/misc/sram-dma-heap.c
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 75e427f124b28..ee34dfb61605f 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -448,6 +448,13 @@ config SRAM
>  config SRAM_EXEC
>  	bool
>  
> +config SRAM_DMA_HEAP
> +	bool "Export on-chip SRAM pools using DMA-Heaps"
> +	depends on DMABUF_HEAPS && SRAM
> +	help
> +	  This driver allows the export of on-chip SRAM marked as both pool
> +	  and exportable to userspace using the DMA-Heaps interface.

Module name?

>  config DW_XDATA_PCIE
>  	depends on PCI
>  	tristate "Synopsys DesignWare xData PCIe driver"
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> index f2a4d1ff65d46..5e7516bfaa8de 100644
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@ -47,6 +47,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
>  obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
>  obj-$(CONFIG_SRAM)		+= sram.o
>  obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
> +obj-$(CONFIG_SRAM_DMA_HEAP)	+= sram-dma-heap.o
>  obj-$(CONFIG_GENWQE)		+= genwqe/
>  obj-$(CONFIG_ECHO)		+= echo/
>  obj-$(CONFIG_CXL_BASE)		+= cxl/
> diff --git a/drivers/misc/sram-dma-heap.c b/drivers/misc/sram-dma-heap.c
> new file mode 100644
> index 0000000000000..c054c04dff33e
> --- /dev/null
> +++ b/drivers/misc/sram-dma-heap.c
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * SRAM DMA-Heap userspace exporter
> + *
> + * Copyright (C) 2019-2022 Texas Instruments Incorporated - https://www.ti.com/
> + *	Andrew Davis <afd@ti.com>

It's 2023 :(

And this needs review from the dma-buf maintainers before I could do
anything with it.

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
