Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A08BA55F5ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 07:59:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5A503F43E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 05:59:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 5D0043EA33
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 05:59:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA1C26182A;
	Wed, 29 Jun 2022 05:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2CA2C34114;
	Wed, 29 Jun 2022 05:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1656482343;
	bh=XMyoN7X0TYQI0q///T/+MOg3sOWfMhqEPKgAL/Q93To=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QdQzN4m3seA5b/RQuleY8oI8TdkSeAOPAoBNHw4Eci1dHSQsKigMoAt3ruVHk0MG0
	 bCXGs8KNUTcrmlstD2Hyhd3NUYXbMVYVLccxfDCjb046oEshOU6ShDu70cJkNQVD/x
	 6pVKLf1LMpJ7X7CEYR/An4LVu3f520VduyvcJ120=
Date: Wed, 29 Jun 2022 07:59:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Jiapeng.Chong" <jiapeng.chong@linux.alibaba.com>
Message-ID: <YrvqJIsnmlol2etP@kroah.com>
References: <20220623084347.38207-1-jiapeng.chong@linux.alibaba.com>
 <YrWjCnNJohij691b@kroah.com>
 <19ba5da7-3e9d-49e1-aa7f-b0834737fbfe.jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19ba5da7-3e9d-49e1-aa7f-b0834737fbfe.jiapeng.chong@linux.alibaba.com>
Message-ID-Hash: 222KNEL2VBYHJWH7FD7TW2DM26SO5UVE
X-Message-ID-Hash: 222KNEL2VBYHJWH7FD7TW2DM26SO5UVE
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: neal_liu <neal_liu@aspeedtech.com>, balbi <balbi@kernel.org>, andrew <andrew@aj.id.au>, "sumit.semwal" <sumit.semwal@linaro.org>, "christian.koenig" <christian.koenig@amd.com>, linux-aspeed <linux-aspeed@lists.ozlabs.org>, linux-usb <linux-usb@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig]  Re: =?utf-8?b?5Zue5aSN77yaW1BBVENIXQ==?= usb: gadget: Fix unsigned comparison with less than zero
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/222KNEL2VBYHJWH7FD7TW2DM26SO5UVE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jun 29, 2022 at 01:51:01PM +0800, Jiapeng.Chong wrote:
> Sorry, we didn't see this patch.
> commit c09b1f372e746aeeb61ef8ffe0fea3970fd9273e

I am sorry, I do not understand what you mean here at all.

confused,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
