Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE69664C509
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 09:26:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA4D03E970
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 08:26:08 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 647803E969
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Dec 2022 08:25:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=LsbQHL2Y;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id EB630CE180B;
	Wed, 14 Dec 2022 08:25:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 141E2C433AC;
	Wed, 14 Dec 2022 08:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1671006354;
	bh=nUhA1KN+yRl+UoxzA4ZvEUH9cmzVGlUJ/vaEO+7pygI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LsbQHL2YXxb5IMvaSJ7+YYdciPjG0QapQJSC0aODWhZWLAA24qZQ+IUljHoQzZVaf
	 Kvgosw3knqxIc+u2CVFEGazvDlgaCKNs+RLLY5wol3TftjXDY3VXc55krmFoHhowjo
	 0y4RU41w/u/7hgXMVyvBASAKpWQ/uyge07tHMDbw=
Date: Wed, 14 Dec 2022 09:25:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y5mIj6yLpObaLfSr@kroah.com>
References: <20221214025414.44866-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221214025414.44866-1-jiasheng@iscas.ac.cn>
X-Rspamd-Queue-Id: 647803E969
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[145.40.73.55:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.source.kernel.org:rdns,sin.source.kernel.org:helo,iscas.ac.cn:email,linuxfoundation.org:dkim];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:rdns,sin.source.kernel.org:helo,linuxfoundation.org:dkim,iscas.ac.cn:email];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: T7FCWHDMGHSDXLO33G2FN27EPOBB6CC7
X-Message-ID-Hash: T7FCWHDMGHSDXLO33G2FN27EPOBB6CC7
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: neal_liu@aspeedtech.com, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] usb: gadget: aspeed_udc: Add check for dma_alloc_coherent
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7FCWHDMGHSDXLO33G2FN27EPOBB6CC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 14, 2022 at 10:54:14AM +0800, Jiasheng Jiang wrote:
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
> v1 -> v2:
> 
> 1. Add "goto err;" when allocation fails.

You already sent a previous v2 that differs from this one, this should
be v3, right?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
