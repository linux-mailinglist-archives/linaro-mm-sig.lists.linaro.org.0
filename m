Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED4A82BD9F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 10:49:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2D7540C76
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 09:49:28 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 62C7040B69
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 09:49:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=dZy7tM5I;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.44) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5573c79aac5so1364683a12.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 01:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705052946; x=1705657746; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=us7FlGdER6e8HJOcJ9DbE8FEDZwENOAoyDuutoH2bnc=;
        b=dZy7tM5IarRxZES8UqjmXwk5cCNv0E773FCsgmtpcZBWk4oWt9zA7ojR9AjjXG61y+
         MzuCFWsWctDlydMgdLHq+Ss4MufunSswtmqnU6Y3OQwghQKMOGzNgjBnlp4MVyCaWZgr
         BT5YlcSxxbN96y5o9yh3PahoXXCMUzpZ++UV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705052946; x=1705657746;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=us7FlGdER6e8HJOcJ9DbE8FEDZwENOAoyDuutoH2bnc=;
        b=q0nT+T54it+ot+t0xHGpyr641jJbBAHhcde4DKplJ5tSUaytUkitmAkcFTRq8FqVFZ
         N9vFFbw89WAAxJoSwZAeKtbCAH4Xv+IrV4GlqLOLMyMqR6+YNRxorsEbeLndhAdXpG9/
         fS5pF2JYqS9V8Mur9NR472p30rVhVvOTl+oVO7UJ1H8y3fsWcG7Ryd1d/agbEiFeAwZh
         xZbK3QRBw0Hv7F45cybOWmYEySHyf5N/rj4GK2HBJvtS0ZInjSOwkFDEvYpjQx9BR5n5
         kR5HBUmEBOoac2C5GMTFTsquRAWtDiYvXqtZ/3kzSiiMthDpWCK6p70D0fw+fC78SSy2
         WXqg==
X-Gm-Message-State: AOJu0YyV9++7ZTykAxUwOIbbqjRfEJ7eFnF+vuWk4d8MnrJuEkYpwbzm
	ipugZXTg+qgdawN43tDLW+70RohD6xw73w==
X-Google-Smtp-Source: AGHT+IEOiq3FXhd4T4HCBcGkiMyRtMKljt8lxwRBUf3NerLJ5gdqm06t+lKy82F5LT4WBLgvMEXbXw==
X-Received: by 2002:a05:6402:148d:b0:557:4249:44 with SMTP id e13-20020a056402148d00b0055742490044mr760113edv.1.1705052946272;
        Fri, 12 Jan 2024 01:49:06 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id dh19-20020a0564021d3300b00557332d657fsm1610937edb.39.2024.01.12.01.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 01:49:05 -0800 (PST)
Date: Fri, 12 Jan 2024 10:49:03 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
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
Message-ID: <ZaELD4APVuX4p77P@phenom.ffwll.local>
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
 <ZaEJOjXP2EJIe9rK@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZaEJOjXP2EJIe9rK@phenom.ffwll.local>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,lists.freedesktop.org,google.com,ucw.cz,collabora.com,quicinc.com,vger.kernel.org,lists.linaro.org,lists.infradead.org,arm.com];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 62C7040B69
X-Spamd-Bar: -
Message-ID-Hash: NXTTJN363H3EW3RUHTZYRIQCDZ2GUEPX
X-Message-ID-Hash: NXTTJN363H3EW3RUHTZYRIQCDZ2GUEPX
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 4/7] dma-buf: heaps: restricted_heap: Add dma_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NXTTJN363H3EW3RUHTZYRIQCDZ2GUEPX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 12, 2024 at 10:41:14AM +0100, Daniel Vetter wrote:
> On Fri, Jan 12, 2024 at 05:20:11PM +0800, Yong Wu wrote:
> > Add the dma_ops for this restricted heap. For restricted buffer,
> > cache_ops/mmap are not allowed, thus return EPERM for them.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/dma-buf/heaps/restricted_heap.c | 103 ++++++++++++++++++++++++
> >  1 file changed, 103 insertions(+)
> > 
> > diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
> > index 8c266a0f6192..ec4c63d2112d 100644
> > --- a/drivers/dma-buf/heaps/restricted_heap.c
> > +++ b/drivers/dma-buf/heaps/restricted_heap.c
> > @@ -12,6 +12,10 @@
> >  
> >  #include "restricted_heap.h"
> >  
> > +struct restricted_heap_attachment {
> > +	struct sg_table			*table;
> > +};
> > +
> >  static int
> >  restricted_heap_memory_allocate(struct restricted_heap *heap, struct restricted_buffer *buf)
> >  {
> > @@ -45,6 +49,104 @@ restricted_heap_memory_free(struct restricted_heap *heap, struct restricted_buff
> >  	ops->memory_free(heap, buf);
> >  }
> >  
> > +static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
> > +{
> > +	struct restricted_buffer *restricted_buf = dmabuf->priv;
> > +	struct restricted_heap_attachment *a;
> > +	struct sg_table *table;
> > +	int ret;
> > +
> > +	a = kzalloc(sizeof(*a), GFP_KERNEL);
> > +	if (!a)
> > +		return -ENOMEM;
> > +
> > +	table = kzalloc(sizeof(*table), GFP_KERNEL);
> > +	if (!table) {
> > +		ret = -ENOMEM;
> > +		goto err_free_attach;
> > +	}
> > +
> > +	ret = sg_alloc_table(table, 1, GFP_KERNEL);
> > +	if (ret)
> > +		goto err_free_sgt;
> > +	sg_set_page(table->sgl, NULL, restricted_buf->size, 0);
> 
> So this is definitely broken and violating the dma-buf api rules. You
> cannot let attach succed and supply a dummy/invalid sg table.
> 
> Two options:
> 
> - Reject ->attach for all this buffers with -EBUSY and provide instead a
>   private api for these secure buffers, similar to how virtio_dma_buf has
>   private virto-specific apis. This interface would need to be
>   standardized across all arm TEE users, so that we don't have a
>   disastrous proliferation of apis.
> 
> - Allow ->attach, but _only_ for drivers/devices which can access the
>   secure buffer correctly, and only if you can put the right secure buffer
>   address into the sg table directly. If dma to a secure buffer for a
>   given struct device * will not work correctly (i.e. without data
>   corruption), you _must_ reject the attach attempt with -EBUSY.
> 
> The 2nd approach would be my preferred one, if it's technically possible.
> 
> Also my understanding is that arm TEE is standardized, so I think we'll at
> least want some acks from other soc people whether this will work for them
> too.
> 
> Finally the usual drill:
> - this also needs the driver side support, if there's any changes needed.
>   Just the new heap isn't enough.

Ok I quickly scrolled through your drm patches and that confirms that the
current dma-buf interface you're implementing is just completely breaking
the api. And you need to paper over that will all kinds of very icky
special-casing.

So definitely need to rethink the overall design between dma-buf heaps and
drivers here.
-Sima

> - and for drm you need open userspace for this. Doesn't have to be the
>   full content protection decode pipeline, the drivers in drm that landed
>   secure buffer support thus far enabled it using the
>   EGL_EXT_protected_content extension using gl, which side steps all the
>   complications around content decryption keys and support
> 
> Cheers, Sima
> 
> > +
> > +	a->table = table;
> > +	attachment->priv = a;
> > +
> > +	return 0;
> > +
> > +err_free_sgt:
> > +	kfree(table);
> > +err_free_attach:
> > +	kfree(a);
> > +	return ret;
> > +}
> > +
> > +static void restricted_heap_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
> > +{
> > +	struct restricted_heap_attachment *a = attachment->priv;
> > +
> > +	sg_free_table(a->table);
> > +	kfree(a->table);
> > +	kfree(a);
> > +}
> > +
> > +static struct sg_table *
> > +restricted_heap_map_dma_buf(struct dma_buf_attachment *attachment, enum dma_data_direction direct)
> > +{
> > +	struct restricted_heap_attachment *a = attachment->priv;
> > +	struct sg_table *table = a->table;
> > +
> > +	return table;
> > +}
> > +
> > +static void
> > +restricted_heap_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_table *table,
> > +			      enum dma_data_direction direction)
> > +{
> > +	struct restricted_heap_attachment *a = attachment->priv;
> > +
> > +	WARN_ON(a->table != table);
> > +}
> > +
> > +static int
> > +restricted_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
> > +{
> > +	return -EPERM;
> > +}
> > +
> > +static int
> > +restricted_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf, enum dma_data_direction direction)
> > +{
> > +	return -EPERM;
> > +}
> > +
> > +static int restricted_heap_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
> > +{
> > +	return -EPERM;
> > +}
> > +
> > +static void restricted_heap_free(struct dma_buf *dmabuf)
> > +{
> > +	struct restricted_buffer *restricted_buf = dmabuf->priv;
> > +	struct restricted_heap *heap = dma_heap_get_drvdata(restricted_buf->heap);
> > +
> > +	restricted_heap_memory_free(heap, restricted_buf);
> > +	kfree(restricted_buf);
> > +}
> > +
> > +static const struct dma_buf_ops restricted_heap_buf_ops = {
> > +	.attach		= restricted_heap_attach,
> > +	.detach		= restricted_heap_detach,
> > +	.map_dma_buf	= restricted_heap_map_dma_buf,
> > +	.unmap_dma_buf	= restricted_heap_unmap_dma_buf,
> > +	.begin_cpu_access = restricted_heap_dma_buf_begin_cpu_access,
> > +	.end_cpu_access	= restricted_heap_dma_buf_end_cpu_access,
> > +	.mmap		= restricted_heap_dma_buf_mmap,
> > +	.release	= restricted_heap_free,
> > +};
> > +
> >  static struct dma_buf *
> >  restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
> >  			 unsigned long fd_flags, unsigned long heap_flags)
> > @@ -66,6 +168,7 @@ restricted_heap_allocate(struct dma_heap *heap, unsigned long size,
> >  	if (ret)
> >  		goto err_free_buf;
> >  	exp_info.exp_name = dma_heap_get_name(heap);
> > +	exp_info.ops = &restricted_heap_buf_ops;
> >  	exp_info.size = restricted_buf->size;
> >  	exp_info.flags = fd_flags;
> >  	exp_info.priv = restricted_buf;
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
