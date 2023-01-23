Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9946777D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 10:51:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC05244384
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 09:51:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 604413EBC6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 09:51:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=KUjTYbl3;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D193C60E00;
	Mon, 23 Jan 2023 09:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B19F0C433EF;
	Mon, 23 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1674467488;
	bh=I1TFqfaAYrE67AWuhwWFFkrdbPVOTogsIu0uGhqZTMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KUjTYbl3HSo04F7350eYhPO++nuP3ClQEi4/mYv1LTVeS1HcAahmC6f3QiKxhUSK0
	 cLhlfWr9Tgcf8Fn8o9sDFM23S4fteDSwKEB7WdAOV2uJCMLLeH4TuKVCzlUPB6zwq+
	 mmhUIZWAHUv1EUx8mlzjIDzcy0s4w25PHrPB6w+0=
Date: Mon, 23 Jan 2023 10:51:25 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Li Chen <lchen@ambarella.com>
Message-ID: <Y85YncUCtRyVnpvt@kroah.com>
References: <20230123073305.149940-1-lchen@ambarella.com>
 <20230123073305.149940-11-lchen@ambarella.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123073305.149940-11-lchen@ambarella.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 604413EBC6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: USDW7FJPB6J5UY4XJFIXLZIURZ5JXKWR
X-Message-ID-Hash: USDW7FJPB6J5UY4XJFIXLZIURZ5JXKWR
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Slaby <jirislaby@kernel.org>, Li Chen <me@linux.beauty>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>, "moderated list:ARM/Ambarella SoC support" <linux-arm-kernel@lists.infradead.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/15] serial: ambarella: add support for Ambarella uart_port
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/USDW7FJPB6J5UY4XJFIXLZIURZ5JXKWR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 23, 2023 at 03:32:25PM +0800, Li Chen wrote:
> This driver add support for Ambarella's uart, which
> can be used for console and etc.
> 
> Signed-off-by: Li Chen <lchen@ambarella.com>
> Change-Id: Ie68af7ad2187e21853e58d52cd97fd7145303730
> ---
>  MAINTAINERS                         |    1 +
>  drivers/tty/serial/Kconfig          |   16 +
>  drivers/tty/serial/Makefile         |    1 +
>  drivers/tty/serial/ambarella_uart.c | 1581 +++++++++++++++++++++++++++
>  drivers/tty/serial/ambarella_uart.h |  120 ++

Why do you need a .h file for a single .c file?  They should all be in
one file please.

Also, no change-id, you know this...

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
