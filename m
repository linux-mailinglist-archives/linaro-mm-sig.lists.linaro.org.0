Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEFC62BD61
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 13:18:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F10A23F499
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 12:18:53 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 9DC193EF90
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Nov 2022 12:18:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=RiT7vESz;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.2.228] (109-252-117-140.nat.spd-mgts.ru [109.252.117.140])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3BBA36602A87;
	Wed, 16 Nov 2022 12:18:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668601116;
	bh=mTiboSp+831cUtpvB29HPDE6adi+m8S+qn1F7FX8nDo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RiT7vESzO/zNl7nY7KcaUMuVpOD97IZLlL4pZ/aXDYwhwxWu9ptkCHZ6uugsI67mP
	 JKIgPxl2GMHn8ECaHu55ar/rdm4R5ta4zK5S2fRuZ62jDNP+/p2x2cjJQkRedG85dr
	 1rtbisZcZOvWt7pVtPfU+ayK0xxAHKvTeUahLNYpNdud4pd/NxCiQggi767yj+e8J5
	 RbLpFuDsxjXzMvaBLK4NrIiSTkjKPdODVyblisSgHgW7VYQkggimPLUvzs/FOv7kcK
	 4wMpVmBzXVFZoWmGqS5d8IUtSZox5L8QTLVzWLUaBIUfLbuw3T7lAquKiO31j7KnBF
	 J79eHjyqU3XzQ==
Message-ID: <4f92e95f-a0dc-4eac-4c08-0df85de78ae7@collabora.com>
Date: Wed, 16 Nov 2022 15:18:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>,
 Gerd Hoffmann <kraxel@redhat.com>
References: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: 9DC193EF90
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[madras.collabora.co.uk:helo,madras.collabora.co.uk:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	FREEMAIL_TO(0.00)[googlemail.com,redhat.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: PSJ5EF2IHDCX2LPG6Q6X7APQXWX75TYY
X-Message-ID-Hash: PSJ5EF2IHDCX2LPG6Q6X7APQXWX75TYY
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PSJ5EF2IHDCX2LPG6Q6X7APQXWX75TYY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/15/22 23:04, Lukasz Wiecaszek wrote:
> The reason behind that patch is associated with videobuf2 subsystem
> (or more genrally with v4l2 framework) and user created
> dma buffers (udmabuf). In some circumstances
> when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> wants to use dma_buf_vmap() method on the attached dma buffer.
> As udmabuf does not have .vmap operation implemented,
> such dma_buf_vmap() natually fails.
> 
> videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) each
> videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
> videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plane 0
> videobuf2_common: __buf_prepare: buffer preparation failed: -14
> 
> The patch itself seems to be strighforward.
> It adds implementation of .vmap and .vunmap methods
> to 'struct dma_buf_ops udmabuf_ops'.
> .vmap method itself uses vm_map_ram() to map pages linearly
> into the kernel virtual address space.
> .vunmap removes mapping created earlier by .vmap.
> All locking and 'vmapping counting' is done in dma_buf.c
> so it seems to be redundant/unnecessary in .vmap/.vunmap.
> 
> Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
> v1: https://lore.kernel.org/linux-media/202211120352.G7WPASoP-lkp@intel.com/T/#t
> v2: https://lore.kernel.org/linux-media/20221114052944.GA7264@thinkpad-p72/T/#t
> 
> v2 -> v3: Added .vunmap to 'struct dma_buf_ops udmabuf_ops'
> v1 -> v2: Patch prepared and tested against 6.1.0-rc2+
> 
>  drivers/dma-buf/udmabuf.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index 283816fbd72f..740d6e426ee9 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -13,6 +13,8 @@
>  #include <linux/slab.h>
>  #include <linux/udmabuf.h>
>  #include <linux/hugetlb.h>
> +#include <linux/vmalloc.h>
> +#include <linux/iosys-map.h>
>  
>  static int list_limit = 1024;
>  module_param(list_limit, int, 0644);
> @@ -60,6 +62,30 @@ static int mmap_udmabuf(struct dma_buf *buf, struct vm_area_struct *vma)
>  	return 0;
>  }
>  
> +static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> +{
> +	struct udmabuf *ubuf = buf->priv;
> +	void *vaddr;
> +
> +	dma_resv_assert_held(buf->resv);
> +
> +	vaddr = vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
> +	if (!vaddr)
> +		return -EINVAL;
> +
> +	iosys_map_set_vaddr(map, vaddr);
> +	return 0;
> +}
> +
> +static void vunmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> +{
> +	struct udmabuf *ubuf = buf->priv;
> +
> +	dma_resv_assert_held(buf->resv);
> +
> +	vm_unmap_ram(map->vaddr, ubuf->pagecount);
> +}
> +
>  static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
>  				     enum dma_data_direction direction)
>  {
> @@ -162,6 +188,8 @@ static const struct dma_buf_ops udmabuf_ops = {
>  	.unmap_dma_buf	   = unmap_udmabuf,
>  	.release	   = release_udmabuf,
>  	.mmap		   = mmap_udmabuf,
> +	.vmap		   = vmap_udmabuf,
> +	.vunmap		   = vunmap_udmabuf,
>  	.begin_cpu_access  = begin_cpu_udmabuf,
>  	.end_cpu_access    = end_cpu_udmabuf,
>  };

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

-- 
Best regards,
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
