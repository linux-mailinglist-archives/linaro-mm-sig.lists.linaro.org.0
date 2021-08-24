Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CB64F3F5C0C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Aug 2021 12:25:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54CE663221
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Aug 2021 10:25:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 03D4F61017; Tue, 24 Aug 2021 10:25:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A29C661081;
	Tue, 24 Aug 2021 10:25:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC3B261017
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Aug 2021 10:25:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B382F61081; Tue, 24 Aug 2021 10:25:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id A148D61017
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Aug 2021 10:24:58 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF647101E;
 Tue, 24 Aug 2021 03:24:57 -0700 (PDT)
Received: from [10.57.15.112] (unknown [10.57.15.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1DC63F66F;
 Tue, 24 Aug 2021 03:24:55 -0700 (PDT)
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 James.Bottomley@HansenPartnership.com, deller@gmx.de,
 sudipm.mukherjee@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <93b21629db55629ec3d384e8184c4a9dd0270c11.1629754126.git.christophe.jaillet@wanadoo.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1a6f5b12-7cf2-cdb8-7a60-20c2d2ee38f3@arm.com>
Date: Tue, 24 Aug 2021 11:24:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <93b21629db55629ec3d384e8184c4a9dd0270c11.1629754126.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] parisc/parport_gsc: switch from 'pci_'
 to 'dma_' API
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-parisc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On 2021-08-23 22:30, Christophe JAILLET wrote:
> The wrappers in include/linux/pci-dma-compat.h should go away.
> 
> The patch has been generated with the coccinelle script below.
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_free_consistent(e1, e2, e3, e4)
> +    dma_free_coherent(&e1->dev, e2, e3, e4)
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> If needed, see post from Christoph Hellwig on the kernel-janitors ML:
>     https://marc.info/?l=kernel-janitors&m=158745678307186&w=4
> 
> This has *NOT* been compile tested because I don't have the needed
> configuration.
> ssdfs
> ---
>   drivers/parport/parport_gsc.c | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/parport/parport_gsc.c b/drivers/parport/parport_gsc.c
> index 1e43b3f399a8..db912fa6b6df 100644
> --- a/drivers/parport/parport_gsc.c
> +++ b/drivers/parport/parport_gsc.c
> @@ -390,9 +390,8 @@ static int __exit parport_remove_chip(struct parisc_device *dev)
>   		if (p->irq != PARPORT_IRQ_NONE)
>   			free_irq(p->irq, p);
>   		if (priv->dma_buf)
> -			pci_free_consistent(priv->dev, PAGE_SIZE,
> -					    priv->dma_buf,
> -					    priv->dma_handle);
> +			dma_free_coherent(&priv->dev->dev, PAGE_SIZE,
> +					  priv->dma_buf, priv->dma_handle);

Hmm, seeing a free on its own made me wonder where the corresponding 
alloc was, but on closer inspection it seems there isn't one. AFAICS 
priv->dma_buf is only ever assigned with NULL (and priv->dev doesn't 
seem to be assigned at all), so this could likely just be removed. In 
fact it looks like all the references to DMA in this driver are just 
copy-paste from parport_pc and unused.

Robin.

>   		kfree (p->private_data);
>   		parport_put_port(p);
>   		kfree (ops); /* hope no-one cached it */
> 
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
