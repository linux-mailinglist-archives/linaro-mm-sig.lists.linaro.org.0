Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A75D7D4A87
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Oct 2023 10:39:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C6E13F96C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Oct 2023 08:39:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3EF353F621
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Oct 2023 08:37:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=OGJO3GgE;
	dmarc=pass (policy=quarantine) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 354DC66072F6;
	Tue, 24 Oct 2023 09:37:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698136667;
	bh=OXWBJI8/0kuWCWSXzhyCCeuu9STJjBJew+90jgeB8X4=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=OGJO3GgETEk/ycZzbWNpU1U+oaj6LykXxpi2st2VCGO/eoz4X/z9I2H/Q8WSe9O2A
	 ND33IMXmMoCyNOTlbcvfVgSFosGXdqSmO5S2bJOm9QBdckE05TxRPgqudMt5cKUEc9
	 aD6yRms2261d4sPMjJeDgujNJyNO5ciuTEyhJl1T5mGd+RWKLN77wMdvRILoCHAi0A
	 wxYlwhkNBrbbjo8c7voaWm7f28zgIXSWrHn+SkmMYxiuZtLS+VexCvJqqtHNdREE9y
	 Wnz/CvjQrhbyIejGo65mUWCqv0A/sSMLVpCAHtRkFimCBPIX8447u7ty4X9vBPmVGN
	 n05yD2ajcv6jQ==
Message-ID: <fa495623-1b63-4b94-84b8-c5cf0b9ba0ae@collabora.com>
Date: Tue, 24 Oct 2023 10:37:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
 <20231023044549.21412-4-jason-jh.lin@mediatek.com>
Content-Language: en-US
In-Reply-To: <20231023044549.21412-4-jason-jh.lin@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3EF353F621
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: A7KWIX2BQ57UKOYRCYO75LOUIKKLV2X3
X-Message-ID-Hash: A7KWIX2BQ57UKOYRCYO75LOUIKKLV2X3
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/11] drm/mediatek: Add secure buffer control flow to mtk_drm_gem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A7KWIX2BQ57UKOYRCYO75LOUIKKLV2X3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 23/10/23 06:45, Jason-JH.Lin ha scritto:
> Add secure buffer control flow to mtk_drm_gem.
> 
> When user space takes DRM_MTK_GEM_CREATE_ENCRYPTED flag and size
> to create a mtk_drm_gem object, mtk_drm_gem will find a matched size
> dma buffer from secure dma-heap and bind it to mtk_drm_gem object.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_drm_gem.c | 84 +++++++++++++++++++++++++-
>   drivers/gpu/drm/mediatek/mtk_drm_gem.h |  4 ++
>   2 files changed, 87 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> index bcce723f257d..2064ccd7dde0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> @@ -4,6 +4,8 @@
>    */
>   
>   #include <linux/dma-buf.h>
> +#include <linux/dma-heap.h>
> +#include <uapi/linux/dma-heap.h>
>   #include <drm/mediatek_drm.h>
>   
>   #include <drm/drm.h>
> @@ -55,6 +57,80 @@ static struct mtk_drm_gem_obj *mtk_drm_gem_init(struct drm_device *dev,
>   	return mtk_gem_obj;
>   }
>   
> +struct mtk_drm_gem_obj *mtk_drm_gem_create_from_heap(struct drm_device *dev,
> +						     const char *heap, size_t size)
> +{
> +	struct mtk_drm_private *priv = dev->dev_private;
> +	struct mtk_drm_gem_obj *mtk_gem;
> +	struct drm_gem_object *obj;
> +	struct dma_heap *dma_heap;
> +	struct dma_buf *dma_buf;
> +	struct dma_buf_attachment *attach;
> +	struct sg_table *sgt;
> +	struct iosys_map map = {};
> +	int ret;
> +
> +	mtk_gem = mtk_drm_gem_init(dev, size);
> +	if (IS_ERR(mtk_gem))
> +		return ERR_CAST(mtk_gem);
> +
> +	obj = &mtk_gem->base;
> +
> +	dma_heap = dma_heap_find(heap);
> +	if (!dma_heap) {
> +		DRM_ERROR("heap find fail\n");
> +		goto err_gem_free;
> +	}
> +	dma_buf = dma_heap_buffer_alloc(dma_heap, size,
> +					O_RDWR | O_CLOEXEC, DMA_HEAP_VALID_HEAP_FLAGS);
> +	if (IS_ERR(dma_buf)) {
> +		DRM_ERROR("buffer alloc fail\n");
> +		dma_heap_put(dma_heap);
> +		goto err_gem_free;
> +	}
> +	dma_heap_put(dma_heap);
> +
> +	attach = dma_buf_attach(dma_buf, priv->dma_dev);
> +	if (IS_ERR(attach)) {
> +		DRM_ERROR("attach fail, return\n");
> +		dma_buf_put(dma_buf);
> +		goto err_gem_free;
> +	}

blank line here please

> +	sgt = dma_buf_map_attachment(attach, DMA_BIDIRECTIONAL);
> +	if (IS_ERR(sgt)) {
> +		DRM_ERROR("map failed, detach and return\n");
> +		dma_buf_detach(dma_buf, attach);
> +		dma_buf_put(dma_buf);
> +		goto err_gem_free;
> +	}
> +	obj->import_attach = attach;
> +	mtk_gem->dma_addr = sg_dma_address(sgt->sgl);
> +	mtk_gem->sg = sgt;
> +	mtk_gem->size = dma_buf->size;
> +
> +	if (!strcmp(heap, "mtk_svp") || !strcmp(heap, "mtk_svp_cma")) {
> +		/* secure buffer can not be mapped */
> +		mtk_gem->sec = true;
> +	} else {
> +		ret = dma_buf_vmap(dma_buf, &map);
> +		mtk_gem->kvaddr = map.vaddr;
> +		if (ret) {
> +			DRM_ERROR("map failed, ret=%d\n", ret);
> +			dma_buf_unmap_attachment(attach, sgt, DMA_BIDIRECTIONAL);
> +			dma_buf_detach(dma_buf, attach);
> +			dma_buf_put(dma_buf);
> +			mtk_gem->kvaddr = NULL;
> +		}
> +	}
> +
> +	return mtk_gem;
> +
> +err_gem_free:
> +	drm_gem_object_release(obj);
> +	kfree(mtk_gem);
> +	return ERR_PTR(-ENOMEM);
> +}
> +
>   struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev,
>   					   size_t size, bool alloc_kmap)
>   {
> @@ -218,7 +294,9 @@ struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
>   	if (IS_ERR(mtk_gem))
>   		return ERR_CAST(mtk_gem);
>   
> +	mtk_gem->sec = !sg_page(sg->sgl);
>   	mtk_gem->dma_addr = sg_dma_address(sg->sgl);
> +	mtk_gem->size = attach->dmabuf->size;
>   	mtk_gem->sg = sg;
>   
>   	return &mtk_gem->base;
> @@ -290,7 +368,11 @@ int mtk_gem_create_ioctl(struct drm_device *dev, void *data,
>   	struct drm_mtk_gem_create *args = data;
>   	int ret;
>   
> -	mtk_gem = mtk_drm_gem_create(dev, args->size, false);
> +	if (args->flags & DRM_MTK_GEM_CREATE_ENCRYPTED)
> +		mtk_gem = mtk_drm_gem_create_from_heap(dev, "mtk_svp_cma", args->size);
> +	else
> +		mtk_gem = mtk_drm_gem_create(dev, args->size, false);
> +
>   	if (IS_ERR(mtk_gem))
>   		return PTR_ERR(mtk_gem);
>   
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.h b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
> index 90f3d2916ec5..ed4d23e252e9 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
> @@ -27,9 +27,11 @@ struct mtk_drm_gem_obj {
>   	void			*cookie;
>   	void			*kvaddr;
>   	dma_addr_t		dma_addr;
> +	size_t			size;
>   	unsigned long		dma_attrs;
>   	struct sg_table		*sg;
>   	struct page		**pages;
> +	bool			sec;

`sec` may be ambiguous. You can call that `secure` or `is_secure_buf`.

>   };
>   
>   #define to_mtk_gem_obj(x)	container_of(x, struct mtk_drm_gem_obj, base)
> @@ -37,6 +39,8 @@ struct mtk_drm_gem_obj {
>   void mtk_drm_gem_free_object(struct drm_gem_object *gem);
>   struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev, size_t size,
>   					   bool alloc_kmap);
> +struct mtk_drm_gem_obj *mtk_drm_gem_create_from_heap(struct drm_device *dev,
> +						     const char *heap, size_t size);
>   int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
>   			    struct drm_mode_create_dumb *args);
>   struct sg_table *mtk_gem_prime_get_sg_table(struct drm_gem_object *obj);



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
