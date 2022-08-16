Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7FB5F58AE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 18:58:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E32EC3F528
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 16:58:26 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id CBB043EB82
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Aug 2022 14:14:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DF0DEB81A1A;
	Tue, 16 Aug 2022 14:14:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6931C433D6;
	Tue, 16 Aug 2022 14:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660659266;
	bh=EqGCBYyQrzDGG+Rj9eP7WOEAaOjJVvNTKkQcHlotY9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IyTxYdKC4fPXXkM4Ze30lTcYMGnXKBkdAlvzwqQutesClMRHmQ95iy4Lv095RTeqH
	 N6kplPKn8OKcyb8zkGzCBbhdTJulf6WagtrSSAD69mhw49m8J+B790l6Tv+z3cXB8V
	 TlE3beoibvxeYJ2MSt0gbMFQ9LImjk/BnLGpMb9TzdIu6kW49YbtGcI3qSlR5Rsh35
	 Int841UvDdpyNVACp7pKYNXFJcOhAj7CH/NeSo+CFbruppGwQgx+VkuKM2gVEURjZl
	 PbAgPP51GV64FtjfTyXhFlNFNLSSN/bM+AiTzV/v3e6Arl0KzkRoQTlehRCH8qaW5Z
	 /jmuwPwc7fRbw==
Date: Tue, 16 Aug 2022 17:14:22 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YvumPtoM1FpOQBey@unreal>
References: <0-v1-d8f4e1fa84c8+17-rdma_dmabuf_fix_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0-v1-d8f4e1fa84c8+17-rdma_dmabuf_fix_jgg@nvidia.com>
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TB4AIK7PTVP24AVLN2TRTJYUHU4J2YMR
X-Message-ID-Hash: TB4AIK7PTVP24AVLN2TRTJYUHU4J2YMR
X-Mailman-Approved-At: Wed, 05 Oct 2022 16:58:00 +0000
CC: linux-rdma@vger.kernel.org, Oded Gabbay <ogabbay@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Gal Pressman <galpress@amazon.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rc] RDMA: Handle the return code from dma_resv_wait_timeout() properly
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TB4AIK7PTVP24AVLN2TRTJYUHU4J2YMR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Aug 16, 2022 at 11:03:20AM -0300, Jason Gunthorpe wrote:
> ib_umem_dmabuf_map_pages() returns 0 on success and -ERRNO on failure.
> 
> dma_resv_wait_timeout() uses a different scheme:
> 
>  * Returns -ERESTARTSYS if interrupted, 0 if the wait timed out, or
>  * greater than zero on success.
> 
> This results in ib_umem_dmabuf_map_pages() being non-functional as a
> positive return will be understood to be an error by drivers.
> 
> Fixes: f30bceab16d1 ("RDMA: use dma_resv_wait() instead of extracting the fence")
> Cc: stable@kernel.org
> Tested-by: Maor Gottlieb <maorg@nvidia.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/infiniband/core/umem_dmabuf.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Thanks, applied to -rc.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
