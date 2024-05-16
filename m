Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FE98C7441
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 11:59:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2099D447D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 09:59:47 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id E16F23F624
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 09:59:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=qdf7UJxl;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715853574;
	bh=dK2WkFIc661KKKqOwvbtfh51Ajk+5fstyZfpRUmwN2M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qdf7UJxluJK7VRWEKILOAxaP85bTBG6aWspLroV80yixGNmF+YeHh3KaaEQ54GWC6
	 MFF0PReIwv3Tb+NZgyCaVmHtAi2TIHYZT+rqfslChY2gL3EVI86K//FHPSmhH2y6Q+
	 vVFgRpybXddrl63bTWXm80tWUPOem0I2PZuPyeBTtzYPePWnE+OthXuCDER7SRS7Tq
	 ffehsgmYFMGtvzeASN5aAGEgVp4r1Xu3I4z+4NpQOMO61GgSYhxcUG6F4yXu5xOZfq
	 efT0kxjT8MMuw2KFQu9vUPez1MN58/reCdKydoel5SrNhGiBH9FoOzAIFmZcpraHFk
	 Qhs155mWVGxNA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BAD343780C13;
	Thu, 16 May 2024 09:59:32 +0000 (UTC)
Message-ID: <a1d91cee-e2e4-4310-a9b4-984626144ab2@collabora.com>
Date: Thu, 16 May 2024 11:59:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240515112308.10171-3-yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E16F23F624
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.39 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,linux-foundation.org];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,gmail.com,infradead.org,deltatee.com,ffwll.ch,mediatek.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DWL_DNSWL_BLOCKED(0.00)[collabora.com:dkim];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: JJTNVPXWNS2C37BPPY74UW7AZY423IEN
X-Message-ID-Hash: JJTNVPXWNS2C37BPPY74UW7AZY423IEN
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, willy@infradead.org, Logan Gunthorpe <logang@deltatee.com>, Daniel Vetter <daniel@ffwll.ch>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JJTNVPXWNS2C37BPPY74UW7AZY423IEN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 15/05/24 13:23, Yong Wu ha scritto:
> Introduce a FLAG for the restricted memory which means the memory is
> protected by TEE or hypervisor, then it's inaccessiable for kernel.
> 
> Currently we don't use sg_dma_unmark_restricted, thus this interface
> has not been added.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>   include/linux/scatterlist.h | 34 ++++++++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
> index 77df3d7b18a6..a6ad9018eca0 100644
> --- a/include/linux/scatterlist.h
> +++ b/include/linux/scatterlist.h
> @@ -282,6 +282,7 @@ static inline void sg_unmark_end(struct scatterlist *sg)
>   
>   #define SG_DMA_BUS_ADDRESS	(1 << 0)
>   #define SG_DMA_SWIOTLB		(1 << 1)
> +#define SG_DMA_RESTRICTED	(2 << 1)

I think you wanted to write (1 << 2) here :-)

Cheers,
Angelo

>   
>   /**
>    * sg_dma_is_bus_address - Return whether a given segment was marked
> @@ -352,6 +353,31 @@ static inline void sg_dma_mark_swiotlb(struct scatterlist *sg)
>   	sg->dma_flags |= SG_DMA_SWIOTLB;
>   }
>   
> +/**
> + * sg_dma_mark_restricted - Mark the scatterlist for restricted buffer.
> + * @sg:		SG entry
> + *
> + * Description:
> + *   Marks a a scatterlist for the restricted buffer that may be inaccessiable
> + *   in kernel if it is protected.
> + */
> +static inline void sg_dma_mark_restricted(struct scatterlist *sg)
> +{
> +	sg->dma_flags |= SG_DMA_RESTRICTED;
> +}
> +
> +/**
> + * sg_dma_is_restricted - Return whether the scatterlist was marked as restricted
> + *                        buffer.
> + * @sg:		SG entry
> + *
> + * Description:
> + *   Returns true if the scatterlist was marked as restricted buffer.
> + */
> +static inline bool sg_dma_is_restricted(struct scatterlist *sg)
> +{
> +	return sg->dma_flags & SG_DMA_RESTRICTED;
> +}
>   #else
>   
>   static inline bool sg_dma_is_bus_address(struct scatterlist *sg)
> @@ -372,6 +398,14 @@ static inline void sg_dma_mark_swiotlb(struct scatterlist *sg)
>   {
>   }
>   
> +static inline bool sg_dma_is_restricted(struct scatterlist *sg)
> +{
> +	return false;
> +}
> +
> +static inline void sg_dma_mark_restrited(struct scatterlist *sg)
> +{
> +}
>   #endif	/* CONFIG_NEED_SG_DMA_FLAGS */
>   
>   /**


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
