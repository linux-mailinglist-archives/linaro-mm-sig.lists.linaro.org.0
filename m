Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F942650CBC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Dec 2022 14:38:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31A783EE7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Dec 2022 13:38:10 +0000 (UTC)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by lists.linaro.org (Postfix) with ESMTP id 6DBA63E97A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Dec 2022 13:29:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.microsoft.com header.s=default header.b="QZnI/Iyy";
	spf=pass (lists.linaro.org: domain of jpiotrowski@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=jpiotrowski@linux.microsoft.com;
	dmarc=pass (policy=none) header.from=linux.microsoft.com
Received: by linux.microsoft.com (Postfix, from userid 1112)
	id 0309520B92BA; Thu, 15 Dec 2022 05:29:18 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 0309520B92BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1671110958;
	bh=7vCuNFrK1OQpeQJVAk4kMKTCnLpf775i8aOo4DRS+9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QZnI/IyyKwaP/zHzNYXBCCMLXwZ6fWvbR3+FSmMN8vXx7vDA9nqW6jBuCd94pC8h5
	 AxMEb0GPQZDrKvtVpzQGSdOOMd57S+oHh7VfYSpHkUuhy2Pznc/RAL9npCWFUU+YVH
	 Zwan7XglTQRg5zjvabjEK8IJ+GIpzc9ooNPxTQRI=
Date: Thu, 15 Dec 2022 05:29:17 -0800
From: Jeremi Piotrowski <jpiotrowski@linux.microsoft.com>
To: Rijo Thomas <Rijo-john.Thomas@amd.com>
Message-ID: <20221215132917.GA11061@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <651349f55060767a9a51316c966c1e5daa57a644.1670919979.git.Rijo-john.Thomas@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <651349f55060767a9a51316c966c1e5daa57a644.1670919979.git.Rijo-john.Thomas@amd.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Rspamd-Queue-Id: 6DBA63E97A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.90 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[microsoft.com:d:+,microsoft.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linux.microsoft.com,none];
	R_DKIM_ALLOW(-0.20)[linux.microsoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:13.77.154.182];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:13.64.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linux.microsoft.com:+];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: jpiotrowski@linux.microsoft.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QON3R4VJNLDXTMMRZ3CRMHIIL2F4ER6W
X-Message-ID-Hash: QON3R4VJNLDXTMMRZ3CRMHIIL2F4ER6W
X-Mailman-Approved-At: Mon, 19 Dec 2022 13:38:07 +0000
CC: Tom Lendacky <thomas.lendacky@amd.com>, John Allen <john.allen@amd.com>, Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Mythri PK <Mythri.Pandeshwarakrishna@amd.com>, Jeshwanth <JESHWANTHKUMAR.NK@amd.com>, Devaraj Rangasamy <Devaraj.Rangasamy@amd.com>, stable@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] crypto: ccp - Allocate TEE ring and cmd buffer using DMA APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QON3R4VJNLDXTMMRZ3CRMHIIL2F4ER6W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Dec 13, 2022 at 04:40:27PM +0530, Rijo Thomas wrote:
> For AMD Secure Processor (ASP) to map and access TEE ring buffer, the
> ring buffer address sent by host to ASP must be a real physical
> address and the pages must be physically contiguous.
> 
> In a virtualized environment though, when the driver is running in a
> guest VM, the pages allocated by __get_free_pages() may not be
> contiguous in the host (or machine) physical address space. Guests
> will see a guest (or pseudo) physical address and not the actual host
> (or machine) physical address. The TEE running on ASP cannot decipher
> pseudo physical addresses. It needs host or machine physical address.
> 
> To resolve this problem, use DMA APIs for allocating buffers that must
> be shared with TEE. This will ensure that the pages are contiguous in
> host (or machine) address space. If the DMA handle is an IOVA,
> translate it into a physical address before sending it to ASP.
> 
> This patch also exports two APIs (one for buffer allocation and
> another to free the buffer). This API can be used by AMD-TEE driver to
> share buffers with TEE.
> 
> Fixes: 33960acccfbd ("crypto: ccp - add TEE support for Raven Ridge")
> Cc: Tom Lendacky <thomas.lendacky@amd.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Rijo Thomas <Rijo-john.Thomas@amd.com>
> Co-developed-by: Jeshwanth <JESHWANTHKUMAR.NK@amd.com>
> Signed-off-by: Jeshwanth <JESHWANTHKUMAR.NK@amd.com>
> Reviewed-by: Devaraj Rangasamy <Devaraj.Rangasamy@amd.com>
> ---
> v2:
>  * Removed references to dma_buffer.
>  * If psp_init() fails, clear reference to master device.
>  * Handle gfp flags within psp_tee_alloc_buffer() instead of passing it as
>    a function argument.
>  * Added comments within psp_tee_alloc_buffer() to serve as future
>    documentation.
> 
>  drivers/crypto/ccp/psp-dev.c |  13 ++--
>  drivers/crypto/ccp/tee-dev.c | 124 +++++++++++++++++++++++------------
>  drivers/crypto/ccp/tee-dev.h |   9 +--
>  include/linux/psp-tee.h      |  49 ++++++++++++++
>  4 files changed, 142 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/crypto/ccp/psp-dev.c b/drivers/crypto/ccp/psp-dev.c
> index c9c741ac8442..380f5caaa550 100644
> --- a/drivers/crypto/ccp/psp-dev.c
> +++ b/drivers/crypto/ccp/psp-dev.c
> @@ -161,13 +161,13 @@ int psp_dev_init(struct sp_device *sp)
>  		goto e_err;
>  	}
> 
> -	ret = psp_init(psp);
> -	if (ret)
> -		goto e_irq;
> -
>  	if (sp->set_psp_master_device)
>  		sp->set_psp_master_device(sp);
> 
> +	ret = psp_init(psp);
> +	if (ret)
> +		goto e_clear;
> +
>  	/* Enable interrupt */
>  	iowrite32(-1, psp->io_regs + psp->vdata->inten_reg);
> 
> @@ -175,7 +175,10 @@ int psp_dev_init(struct sp_device *sp)
> 
>  	return 0;
> 
> -e_irq:
> +e_clear:
> +	if (sp->clear_psp_master_device)
> +		sp->clear_psp_master_device(sp);
> +
>  	sp_free_psp_irq(psp->sp, psp);
>  e_err:
>  	sp->psp_data = NULL;
> diff --git a/drivers/crypto/ccp/tee-dev.c b/drivers/crypto/ccp/tee-dev.c
> index 5c9d47f3be37..5c43e6e166f1 100644
> --- a/drivers/crypto/ccp/tee-dev.c
> +++ b/drivers/crypto/ccp/tee-dev.c
> @@ -12,8 +12,9 @@
>  #include <linux/mutex.h>
>  #include <linux/delay.h>
>  #include <linux/slab.h>
> +#include <linux/dma-direct.h>
> +#include <linux/iommu.h>
>  #include <linux/gfp.h>
> -#include <linux/psp-sev.h>
>  #include <linux/psp-tee.h>
> 
>  #include "psp-dev.h"
> @@ -21,25 +22,73 @@
> 
>  static bool psp_dead;
> 
> +struct psp_tee_buffer *psp_tee_alloc_buffer(unsigned long size)
> +{
> +	struct psp_device *psp = psp_get_master_device();
> +	struct psp_tee_buffer *buf;
> +	struct iommu_domain *dom;
> +
> +	if (!psp || !size)
> +		return NULL;
> +
> +	buf = kzalloc(sizeof(*buf), GFP_KERNEL);
> +	if (!buf)
> +		return NULL;
> +
> +	/* The pages allocated for PSP Trusted OS must be physically
> +	 * contiguous in host (or machine) address space. Therefore,
> +	 * use DMA API to allocate memory.
> +	 */
> +
> +	buf->vaddr = dma_alloc_coherent(psp->dev, size, &buf->dma,
> +					GFP_KERNEL | __GFP_ZERO);

dma_alloc_coherent memory is just as contiguous as __get_free_pages, and
calling dma_alloc_coherent from a guest does not guarantee that the memory is
contiguous in host memory either. The memory would look contiguous from the
device point of view thanks to the IOMMU though (in both cases). So this is not
about being contiguous but other properties that you might rely on (dma mask
most likely, or coherent if you're not running this on x86?).

Can you confirm why this fixes things and update the comment to reflect that.

> +	if (!buf->vaddr || !buf->dma) {
> +		kfree(buf);
> +		return NULL;
> +	}
> +
> +	buf->size = size;
> +
> +	/* Check whether IOMMU is present. If present, convert IOVA to
> +	 * physical address. In the absence of IOMMU, the DMA address
> +	 * is actually the physical address.
> +	 */
> +
> +	dom = iommu_get_domain_for_dev(psp->dev);
> +	if (dom)
> +		buf->paddr = iommu_iova_to_phys(dom, buf->dma);
> +	else
> +		buf->paddr = buf->dma;

This is confusing: you're storing GPA for the guest and HPA in case of the
host, to pass to the device. Let's talk about the host case.

a) the device is behind an IOMMU. The DMA API gives you an IOVA, and the device
should be using the IOVA to access memory (because it's behind an IOMMU).
b) the device is not behind an IOMMU. The DMA API gives you a PA, the device
uses a PA.

But in case a) you're extracting the PA, which means your device can bypass the
IOMMU, in which case the system should not think that it is behind an IOMMU. So
how does this work?

Jeremi

> +
> +	return buf;
> +}
> +EXPORT_SYMBOL(psp_tee_alloc_buffer);
> +

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
