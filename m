Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 823A452D984
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 17:56:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C497410BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 15:56:28 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 655253EC34
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 15:56:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 60508B82567;
	Thu, 19 May 2022 15:56:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961A5C385AA;
	Thu, 19 May 2022 15:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652975781;
	bh=7pFCBqNSOCLfuzYpPeUv7mtCv/aLkeRffL8GhHRye+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SjEnH3fNPqcYJf7wgZXzs/OuUWWntd9ED4SsWc0xmNyDMmQxhm9GJnZH3y6L8K6Qe
	 uEVXAD15/cvqD3TBDwjGUTQeqHlxeT3+6LfwRKjrBoai3DslApfkcoQh1mhSmCSSQ7
	 K5q8laNoq73GpDHrWSlZNdlb0Em0ET3sd+6l9Ys8=
Date: Thu, 19 May 2022 17:56:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Neal Liu <neal_liu@aspeedtech.com>
Message-ID: <YoZoouI4EbnNYE6h@kroah.com>
References: <20220518062043.1075360-1-neal_liu@aspeedtech.com>
 <20220518062043.1075360-2-neal_liu@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220518062043.1075360-2-neal_liu@aspeedtech.com>
Message-ID-Hash: W7YY4VFKOUWBHK6HLZWJ6Q237DBTWIU5
X-Message-ID-Hash: W7YY4VFKOUWBHK6HLZWJ6Q237DBTWIU5
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andrew Jeffery <andrew@aj.id.au>, Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] usb: gadget: add Aspeed ast2600 udc driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W7YY4VFKOUWBHK6HLZWJ6Q237DBTWIU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 18, 2022 at 02:20:41PM +0800, Neal Liu wrote:
> Aspeed udc is compliant with USB2.0, supports USB High Speed
> and Full Speed, backward compatible with USB1.1.
> 
> Supports independent DMA channel for each generic endpoint.
> Supports 32/256 stages descriptor mode for all generic endpoints.
> 
> This driver supports full functionality including single/multiple
> stages descriptor mode, and exposes 1 UDC gadget driver.
> 
> Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
> Reported-by: kernel test robot <lkp@intel.com>

The kernel test robot did not report that you needed to add a new driver :(

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
