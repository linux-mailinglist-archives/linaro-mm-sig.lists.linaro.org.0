Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 218C989D903
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 14:14:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27B6C400D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 12:14:42 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 46547400D7
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 12:14:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=u902tTqa;
	dmarc=pass (policy=none) header.from=linuxfoundation.org;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DB364CE122C;
	Tue,  9 Apr 2024 12:14:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEDB2C43390;
	Tue,  9 Apr 2024 12:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1712664877;
	bh=b6JwoQx9iqUWXaUmbAB3ya+MdSagj6m7QwNqt/Lxn+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u902tTqa9EOdqFofkXIH03QWbKFlfzdl79ctoI6PXU2cx/k7Vw+be+EmYpYeTUrUt
	 ccjnEo8OLYsrdcWQCASKWCOdiddtPXPYptPTRTmYncwtUObdct1DS/WtYd7v7utmQa
	 anctvW8YG0B3/n3nD5YB/4lWA+In/P+Rtb/85p0k=
Date: Tue, 9 Apr 2024 14:14:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pascal FONTAIN <Pascal.FONTAIN@bachmann.info>
Message-ID: <2024040944-flashcard-tribune-6a8e@gregkh>
References: <20240409120605.4138472-1-Pascal.FONTAIN@bachmann.info>
 <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info>
X-Rspamd-Queue-Id: 46547400D7
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linuxfoundation.org:dkim,sin.source.kernel.org:helo,sin.source.kernel.org:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4IAVDEMK3BJZ6STJVHC3JPTYRTZJ44SE
X-Message-ID-Hash: 4IAVDEMK3BJZ6STJVHC3JPTYRTZJ44SE
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4IAVDEMK3BJZ6STJVHC3JPTYRTZJ44SE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 09, 2024 at 02:06:05PM +0200, Pascal FONTAIN wrote:
> From: Andrew Davis <afd@ti.com>
> 
> This new export type exposes to userspace the SRAM area as a DMA-BUF
> Heap,
> this allows for allocations of DMA-BUFs that can be consumed by various
> DMA-BUF supporting devices.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> Tested-by: Pascal Fontain <pascal.fontain@bachmann.info>

When sending on a patch from someone else, you too must sign off on it
as per our documenation.  Please read it and understand what you are
agreeing to when you do that for a new version please.

> ---
>  drivers/misc/Kconfig         |   7 +
>  drivers/misc/Makefile        |   1 +
>  drivers/misc/sram-dma-heap.c | 246 +++++++++++++++++++++++++++++++++++
>  drivers/misc/sram.c          |   6 +
>  drivers/misc/sram.h          |  16 +++
>  5 files changed, 276 insertions(+)
>  create mode 100644 drivers/misc/sram-dma-heap.c
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 9e4ad4d61f06..e6674e913168 100644
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

What will use this in userspace?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
