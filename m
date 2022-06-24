Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C815598BC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jun 2022 13:45:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8BE14792C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jun 2022 11:45:12 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 6F7B73EE59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jun 2022 11:45:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4AC89B82843;
	Fri, 24 Jun 2022 11:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 627FBC34114;
	Fri, 24 Jun 2022 11:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1656071105;
	bh=/2OHaS3MR1kb2k5L74fvco5RgmKK7foP/ilWbPMO+Es=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lGpUqG7MHtWZJ87v8qMZ8ChuH6aRq0Gij61Z4bVzYhrhQQ75WsPx7c69tzhoaYEa/
	 aE7zP6Dl4KJISHZSD46fhRnKFzXrLYqEaopQSxpqsXrgsHRUcnpFJ70meLA4RJo6rq
	 9ak1wnwEgWOwgHNYSlzSXlnmIkBDzsReYMuNiYRs=
Date: Fri, 24 Jun 2022 13:42:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <YrWjCnNJohij691b@kroah.com>
References: <20220623084347.38207-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623084347.38207-1-jiapeng.chong@linux.alibaba.com>
Message-ID-Hash: AKW5ONJE7DATMX27GMEWSZDQRMSS6TDF
X-Message-ID-Hash: AKW5ONJE7DATMX27GMEWSZDQRMSS6TDF
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: neal_liu@aspeedtech.com, balbi@kernel.org, andrew@aj.id.au, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] usb: gadget: Fix unsigned comparison with less than zero
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AKW5ONJE7DATMX27GMEWSZDQRMSS6TDF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jun 23, 2022 at 04:43:47PM +0800, Jiapeng Chong wrote:
> This was found by coccicheck:
> 
> ./drivers/usb/gadget/udc/aspeed_udc.c:496:8-13: WARNING: Unsigned expression compared with zero: chunk >= 0.

What does this mean?  Where is the error?

Please explain the reason for changes, not just the output of a random
tool that you ran on the code.

> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

What commit does this fix?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
