Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C59EC52D98A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 17:56:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 080E0410A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 15:56:41 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 7F3333EC34
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 15:56:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A5620B82520;
	Thu, 19 May 2022 15:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1A71C385AA;
	Thu, 19 May 2022 15:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652975795;
	bh=HB0SywbMvt2xHizeVdOfaikETzpcXvZJJzSNtapX5kI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YfOpM0Q8nxBLGFQ6UzEuZ5Q7PEMclqOAQJEXU/xV4jB+EfKLN2B3x7gCUKUE6UlCg
	 xiMkT+shxKPz2daPz2Mg83Xqc0P2TZjhG8Z+ZapOyQBZVS9ZjkRr+rtsoTT3F1W6Fm
	 zg2MknPLGE83TKPK6c4W8D954el8Ws/p0P14EMKs=
Date: Thu, 19 May 2022 17:56:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Neal Liu <neal_liu@aspeedtech.com>
Message-ID: <YoZosLk5GhTsP841@kroah.com>
References: <20220518062043.1075360-1-neal_liu@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220518062043.1075360-1-neal_liu@aspeedtech.com>
Message-ID-Hash: ZCNY2Z3ZF7GW7R7W7EKSUMD33PML2XJF
X-Message-ID-Hash: ZCNY2Z3ZF7GW7R7W7EKSUMD33PML2XJF
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andrew Jeffery <andrew@aj.id.au>, Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/3] add Aspeed udc driver for ast2600
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZCNY2Z3ZF7GW7R7W7EKSUMD33PML2XJF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 18, 2022 at 02:20:40PM +0800, Neal Liu wrote:
> This patch series aim to add Aspeed USB 2.0 Device Controller (udc)
> driver, including driver itself, device tree node and documentation.
> 
> Change since v2:
> - Rename device tree nodes.
> - Fix unusual indentation.
> 
> Change since v1:
> - Fix build test warning reported by kernel test robot.
> - Rename proper name for dt-bindings document.
> 
> *** BLURB HERE ***

No blurb?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
