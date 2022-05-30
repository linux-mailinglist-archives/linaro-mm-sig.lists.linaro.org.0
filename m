Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AFF53745A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 08:24:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DF943F1FF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 06:24:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 054F73F1FE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 06:24:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 706756103B;
	Mon, 30 May 2022 06:24:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24427C34119;
	Mon, 30 May 2022 06:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1653891876;
	bh=2YgSIJ3CE+xe2Ajc1vpcGq3Gs3/6x2CvG5Mak/cA7L8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jyxYb9+z2P1WLZlZFPTJ5XDW/T/yY/HCs50OBkPXyRKjIVAfk5/+HxhUvyUs0vQFF
	 9rqptQZmTd/NhKQSM8kfwdUdcRxb486x9tGGb8t9bnW0654f36NWSzO8/ta7vfbdG5
	 MTcPaI9y5Ev5EqvbMlUAtx6JeP/l9xAJagrEJa8k=
Date: Mon, 30 May 2022 08:24:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Neal Liu <neal_liu@aspeedtech.com>
Message-ID: <YpRjIXaJ2ZeuuWJ8@kroah.com>
References: <20220523030134.2977116-1-neal_liu@aspeedtech.com>
 <20220523030134.2977116-2-neal_liu@aspeedtech.com>
 <TY2PR06MB3213611D7D9DD6F9B47DBB4080DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR06MB3213611D7D9DD6F9B47DBB4080DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
Message-ID-Hash: EHFIDBNA3VY4SM36NCUDLZS5TP5HDFR6
X-Message-ID-Hash: EHFIDBNA3VY4SM36NCUDLZS5TP5HDFR6
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Andrew Jeffery <andrew@aj.id.au>, Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>, "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/3] usb: gadget: add Aspeed ast2600 udc driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHFIDBNA3VY4SM36NCUDLZS5TP5HDFR6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 30, 2022 at 01:27:16AM +0000, Neal Liu wrote:
> Gentle ping on this path, thanks.

Please never top-post.

Also, it is the middle of the merge window and we can not do anything
with new submissions.  Please wait until next week at the earliest
before we can even start to look at stuff like this.

What is the rush?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
