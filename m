Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1FD54C687
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jun 2022 12:53:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 724793F492
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jun 2022 10:53:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E69103ECFB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jun 2022 10:53:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 83A83615B0;
	Wed, 15 Jun 2022 10:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05BCEC34115;
	Wed, 15 Jun 2022 10:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1655290418;
	bh=xorApPrJYjqRVSP/59nC6A1gHUam/lVIdxd8tViYqNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XLzcAJdjue7U4UAgQgf9+RKr6LPQLQ1VcUI/upqTv1jd4xn6ffwn+7ka1a4EDGE8U
	 zqx74/OmAxwHanaqgwTA7wUZlgugxFfwkQhE/i3XRtI35ar4o26wDmuNDE1Dgh11mi
	 /epAMQstrnhJN4qD2PnkwxCSW90WgW64Lkp7vHmk=
Date: Wed, 15 Jun 2022 12:53:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: heliang <windhl@126.com>
Message-ID: <Yqm6LvDGqaRMaUHa@kroah.com>
References: <20220615104833.3963552-1-windhl@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615104833.3963552-1-windhl@126.com>
Message-ID-Hash: WOBCAE2JOB2WIB2EN2EMK5NVXMQIA4ZT
X-Message-ID-Hash: WOBCAE2JOB2WIB2EN2EMK5NVXMQIA4ZT
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ldewangan@nvidia.com, jirislaby@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com, p.zabel@pengutronix.de, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-serial@vger.kernel.org, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drivers: tty: serial: Add missing of_node_put() in serial-tegra.c
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOBCAE2JOB2WIB2EN2EMK5NVXMQIA4ZT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jun 15, 2022 at 06:48:33PM +0800, heliang wrote:
> In tegra_uart_init(), of_find_matching_node() will return a node
> pointer with refcount incremented. We should use of_node_put()
> when it is not used anymore.
> 
> Signed-off-by: heliang <windhl@126.com>

We need a real name please, one you sign documents with.

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
