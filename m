Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B691C6551A8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Dec 2022 15:54:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A265F3EED9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Dec 2022 14:54:43 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 499EE3ED81
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Dec 2022 14:54:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=gX5Y35IK;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9FE0C61031;
	Fri, 23 Dec 2022 14:54:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70414C433EF;
	Fri, 23 Dec 2022 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1671807280;
	bh=cSy0mW+JcTGb7wHmP//5AEf5hO9OkLMlS2Uwg9AqFDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gX5Y35IKQGdNunDgzb61X+D8dOY93c74L5LknWjdD5pCpgadFrpFyVtU4rvB0RlrQ
	 ZnZNwY2E1QprEiZCKqBLfE5KtLSI+rfB2HzIreroor7O2mDD4qFaXHOcvIMDqJGRwL
	 FErdqywfeKrilpUbIcjoopCPLFlOle5jGZXefO5s=
Date: Fri, 23 Dec 2022 15:54:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y6XBLcTGUp/2ta9i@kroah.com>
References: <20221215123112.20553-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221215123112.20553-1-jiasheng@iscas.ac.cn>
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo,linuxfoundation.org:dkim];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	URIBL_BLOCKED(0.00)[linuxfoundation.org:dkim,dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 499EE3ED81
X-Spamd-Bar: ------
Message-ID-Hash: CSL353HXRPKKMDG4GG7XDQ7FTMMZPFYU
X-Message-ID-Hash: CSL353HXRPKKMDG4GG7XDQ7FTMMZPFYU
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: neal_liu@aspeedtech.com, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] usb: gadget: aspeed_udc: Add check for dma_alloc_coherent
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSL353HXRPKKMDG4GG7XDQ7FTMMZPFYU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 15, 2022 at 08:31:12PM +0800, Jiasheng Jiang wrote:
> Add the check for the return value of dma_alloc_coherent in order to
> avoid NULL pointer dereference.
> 
> This flaw was found using an experimental static analysis tool we are
> developing, APP-Miner, which has not been disclosed.
> 
> The allyesconfig build using GCC 9.3.0 shows no new warning. As we
> don't have a UDC device to test with, no runtime testing was able to
> be performed.
> 
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
> Changelog:
> 
> v2 -> v3:
> 
> 1. Add information of finding tool and tests to commit message.
> 
> v1 -> v2:
> 
> 1. Add "goto err;" when allocation fails.
> ---
>  drivers/usb/gadget/udc/aspeed_udc.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed_udc.c b/drivers/usb/gadget/udc/aspeed_udc.c
> index 01968e2167f9..7dc2457c7460 100644
> --- a/drivers/usb/gadget/udc/aspeed_udc.c
> +++ b/drivers/usb/gadget/udc/aspeed_udc.c
> @@ -1516,6 +1516,10 @@ static int ast_udc_probe(struct platform_device *pdev)
>  					  AST_UDC_EP_DMA_SIZE *
>  					  AST_UDC_NUM_ENDPOINTS,
>  					  &udc->ep0_buf_dma, GFP_KERNEL);
> +	if (!udc->ep0_buf) {
> +		rc = -ENOMEM;
> +		goto err;
> +	}
>  
>  	udc->gadget.speed = USB_SPEED_UNKNOWN;
>  	udc->gadget.max_speed = USB_SPEED_HIGH;
> -- 
> 2.25.1
> 

Why is this just a duplicate of the patch previously submitted here:
	https://lore.kernel.org/r/20221125092833.74822-1-yuancan@huawei.com

confused,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
