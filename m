Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C82FB82BD65
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 10:41:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C95EE40B69
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 09:41:38 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id EE0E340B69
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 09:41:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=W5TAPKsi;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a28f12a12e5so180337466b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 01:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705052477; x=1705657277; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vipcplhMlhbtLQhB0mA3Dqq/xKRhLIIoRd1dJzj/OY=;
        b=W5TAPKsiymkjzkH1Ud4hE4ptN0bAZCUtOYiSQ5ACn4g8eYJlJumaofZnDQLAtIkOqu
         K6+3B+XnhXLue34lnAZKQkCdyWZUAOC58id8i+QPUK9vkxZtq9EZ2Shp4bMsaMbqcu9+
         whI9CDp7/h3UNVwtr8fvHO5hg8lzBSv4908/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705052477; x=1705657277;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6vipcplhMlhbtLQhB0mA3Dqq/xKRhLIIoRd1dJzj/OY=;
        b=Px6Hor+h8ZqXeKszxULcBSHXVjhjQqXNzUijJeUUh5xk7kKVHVg1yPV0Y6yp3wR8SG
         z/wrueE2FImJiYShh/Cu3ua5CbbGQkp3kXg0iJbZFvkYRrzEkrCCA8GVkUXOQ/dDCAHY
         VkuQPpQOcK6QlbEks+e0MncPWWxsV5XD1oXgdWpKuDQ4/9+VSJQceJSJ4j0IjqnEgbEF
         ncM8Te8a8sG5C9N8EyQwJrR5UVGCi85LnAWrAybjMHD1XHAmq6wZYy73aBRwtSG62Obp
         Ollq8KkamPl+ochNXdN1S3/dUnbx68XkMHfcmvfhodaDSvPY6V1U7xVttFPIdFq5GBRJ
         5S+Q==
X-Gm-Message-State: AOJu0YwhPljPQLI7E6eqrdghYTbRU3Pg1foWsnBALIIxGZyvP58Y6k4m
	wzdRyeaJ+Et2vLbGY6hB8fFbGWd61jq05Q==
X-Google-Smtp-Source: AGHT+IFUrhEHLoxtmAPHlwzPSqcUm50dU47tJkMYj4SyQG2gZxwrNIyppWWPgxoz02QrYem4DZmo/w==
X-Received: by 2002:a17:907:1b0f:b0:a2c:ea34:5fa5 with SMTP id mp15-20020a1709071b0f00b00a2cea345fa5mr138146ejc.6.1705052476728;
        Fri, 12 Jan 2024 01:41:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id f4-20020a170906c08400b00a2b10e20292sm1597859ejz.215.2024.01.12.01.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 01:41:16 -0800 (PST)
Date: Fri, 12 Jan 2024 10:41:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <ZaEJOjXP2EJIe9rK@phenom.ffwll.local>
Mail-Followup-To: Yong Wu <yong.wu@mediatek.com>,
	Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>,
	Pavel Machek <pavel@ucw.cz>,
	Jeffrey Kardatzke <jkardatzke@google.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Vijayanand Jitta <quic_vjitta@quicinc.com>,
	jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linaro-mm-sig@lists.linaro.org,
	Pekka Paalanen <ppaalanen@gmail.com>,
	linux-mediatek@lists.infradead.org,
	Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	youlin.pei@mediatek.com, kuohong.wang@mediatek.com,
	linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
 <20240112092014.23999-5-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112092014.23999-5-yong.wu@mediatek.com>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,lists.freedesktop.org,google.com,ucw.cz,collabora.com,quicinc.com,mediatek.com,vger.kernel.org,lists.linaro.org,lists.infradead.org,arm.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EE0E340B69
X-Spamd-Bar: -----
Message-ID-Hash: 7PPHZNFZPNGSHSXIVEYPBNEDCLQI6BIU
X-Message-ID-Hash: 7PPHZNFZPNGSHSXIVEYPBNEDCLQI6BIU
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Pavel Machek <pavel@ucw.cz>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, Pekka Paalanen <ppaalanen@gmail.com>, linux-mediatek@lists.infradead.org, Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, youlin.pei@mediatek.com, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 4/7] dma-buf: heaps: restricted_heap: Add dma_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7PPHZNFZPNGSHSXIVEYPBNEDCLQI6BIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 12, 2024 at 05:20:11PM +0800, Yong Wu wrote:
> Add the dma_ops for this restricted heap. For restricted buffer,
> cache_ops/mmap are not allowed, thus return EPERM for them.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/dma-buf/heaps/restricted_heap.c | 103 ++++++++++++++++++++++++
>  1 file changed, 103 insertions(+)
> 
> diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
> index 8c266a0f6192..ec4c63d2112d 100644
> --- a/drivers/dma-buf/heaps/restricted_heap.c
> +++ b/drivers/dma-buf/heaps/restricted_heap.c
> @@ -12,6 +12,10 @@
>  
>  #include "restricted_heap.h"
>  
> +struct restricted_heap_attachment {
> +	struct sg_table			*table;
> +};
> +
>  static int
>  restricted_heap_memory_allocate(struct restricted_heap *heap, struct restricted_buffer *buf)
>  {
> @@ -45,6 +49,104 @@ restricted_heap_memory_free(struct restricted_heap *heap, struct restricted_buff
>  	ops->memory_free(heap, buf);
>  }
>  
> +static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
> +{
> +	struct restricted_buffer *restricted_buf = dmabuf->priv;
> +	struct restricted_heap_attachment *a;
> +	struct sg_table *table;
> +	int ret;
> +
> +	a = kzalloc(sizeof(*a), GFP_KERNEL);
> +	if (!a)
> +		return -ENOMEM;
> +
> +	table = kzalloc(sizeof(*table), GFP_KERNEL);
> +	if (!table) {
> +		ret = -ENOMEM;
> +		goto err_free_attach;
> +	}
> +
> +	ret = sg_alloc_table(table, 1, GFP_KERNEL);
> +	if (ret)
> +		goto err_free_sgt;
> +	sg_set_page(table->sgl, NULL, restricted_buf->size, 0);

So this is definitely broken and violating the dma-buf api rules. You
cannot let attach succed and supply a dummy/invalid sg table.

Two options:

- Reject ->attach for all this buffers with -EBUSY and provide instead a
  private api for these secure buffers, similar to how virtio_dma_buf has
  private virto-specific apis. This interface would need to be
  standardized across all arm TEE users, so that we don't have a
  disastrous proliferation of apis.

- Allow ->attach, but _only_ for drivers/devices which can access the
  secure buffer correctly, and only if you can put the right secure buffer
  address into the sg table directly. If dma to a secure buffer for a
  given struct device * will not work correctly (i.e. without data
  corruption), you _must_ reject the attach attempt with -EBUSY.

The 2nd approach would be my preferred one, if it's technically possible.

Also my understanding is that arm TEE is standardized, so I think we'll at
least want some acks from other soc people whether this will work for them
too.

Finally the usual drill:
- this also needs the driver side support, if there's any changes needed.
  Just the new heap isn't enough.
- and for drm you need open userspace for this. Doesn't have to be the
  full content protection decode pipeline, the drivers in drm that landed
  secure buffer support thus far enabled it using the
  EGL_EXT_protected_content extension using gl, which side steps all the
  complications around content decryption keys and support

Cheers, Sima

> +
> +	a->table = table;
> +	attachment->priv = a;
> +
> +	return 0;
> +
> +err_free_sgt:
> +	kfree(table);
> +err_free_attach:
> +	kfree(a);
> +	return ret;
> +}
> +
> +static void restricted_heap_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
> +{
> +	struct restricted_heap_attachment *a = attachment->priv;
> +
> +	sg_free_table(a->table);
> +	kfree(a->table);
> +	kfree(a);
> +}
> +
> +static struct sg_table *
> +restricted_heap_map_dma_buf(struct dma_buf_attachment *attachment, enum dma_data_direction direct)
> +{
> +	struct restricted_heap_attachment *a = attachment->priv;
> +	struct sg_table *table = a->table;
> +
> +	return table;
> +}
> +
> +static void
> +restricted_heap_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_table *table,
> +			      enum dma_data_direction direction)
> +{
> +	struct restricted_heap_attachment *a = attachment->priv;
> +
> +	WARN_ON(a->table != table);
> +}
> +
> +static int
> +restricted_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
> +{
> +	return -EPERM;
> +}
> +
> +static int
> +restricted_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
> +{
> +	return -EPERM;
> +}
> +
> +static int restricted_heap_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
> +{
> +	return -EPERM;
> +}
> +
> +static void restricted_heap_free(struct dma_buf *dmabuf)
> +{
> +	struct restricted_buffer *restricted_buf = dmabuf->priv;
> +	struct restricted_heap *heap = dma_heap_get_drvdata(restricted_buf->heap);
> +
> +	restricted_heap_memory_free(heap, restricted_buf);
> +	kfree(restricted_buf);
> +}
> +
> +static const struct dma_buf_ops restricted_heap_buf_ops = {
> +	.attach		= restricted_heap_attach,
> +	.detach		= restricted_heap_detach,
> +	.map_dma_buf	= restricted_heap_map_dma_buf,
> +	.unmap_dma_buf	= restricted_heap_unmap_dma_buf,
> +	.begin_cpu_access = restricted_heap_dma_buf_begin_cpu_access,
> +	.end_cpu_access	= restricted_heap_dma_buf_end_cpu_access,
> +	.mmap		= restricted_heap_dma_buf_mmap,
> +	.release	= restricted_heap_free,
> +};
> +
>  static struct dma_buf *
>  restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
>  			 unsigned long fd_flags, unsigned long heap_flags)
> @@ -66,6 +168,7 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
>  	if (ret)
>  		goto err_free_buf;
>  	exp_info.exp_name = dma_heap_get_name(heap);
> +	exp_info.ops = &restricted_heap_buf_ops;
>  	exp_info.size = restricted_buf->size;
>  	exp_info.flags = fd_flags;
>  	exp_info.priv = restricted_buf;
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
