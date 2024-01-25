Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28083CD72
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 21:30:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9070B43F52
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 20:30:43 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 514E53F38E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 20:30:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=OzWYMIu2;
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.53) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5586764bd0aso13104a12.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 12:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1706214635; x=1706819435; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fLwUYXjR6V1ZptUfaHjdXBygjq5la2NuNHiSaIUSLm4=;
        b=OzWYMIu2EhKIgAK7s9gz3IH3EYsKDQM05iHfBcBa/urb+X6yW1fHdIacY9RRDdNvVe
         V2qQfUdG5YjfiEh3UBUNQee5OZHoobb02/bw0Efp9w2ZPJfqcxoAs7RVJQ7/Mwtc8skz
         PUSJug8ZXThT4IefbVTIJpGQiPTGwZrAY9CCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706214635; x=1706819435;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fLwUYXjR6V1ZptUfaHjdXBygjq5la2NuNHiSaIUSLm4=;
        b=ldKr5kwMRJSVZ2RmXvmnXvQ8t9lHZz2FbbkQWS5OSFIXWD98QdW9IWPWOHsXlnakPo
         AHLyR7lKkYuAnePBhg4mjLXG9v9OaZKI7wk9I655aUYTlMldmlrBaHgzNAqR6OlzGQ2K
         eyPeT71Uw/YZB7WmO0Mwlx/sAJv/jYaIS6SiGlBJEPX9dxBW11rh31lHOaPG550KE5Wy
         c1DvcuBdW3q7ifWjLtoZQy1s35O8AneKvcivwmbRkYd/O0HR6TYZseLfT+f4b2tob8kJ
         WQB8rGVL15hhMRWyKWKGem7tGayJHx7qU75sf7/9Pb89fpOU9pjsgtj1kYtUwZA2gtzZ
         6CQQ==
X-Gm-Message-State: AOJu0YyBoc+GW+zwZ5CTzfhfwBmfT4PVcQTTN8BDq/kIBUcCwVQMDaoT
	t0yPbkrsxA3dk+ywapzHxWTMPU9BGBksAB89SdoDqxoUXUisXRurpHPoKhP/CGM=
X-Google-Smtp-Source: AGHT+IGjLsHFOclmZ7s+HWyNGbTWD340yamr9nUQrEdDL92SJyZdmTEbPrGTy0cMfclmD3+5Y2D2qg==
X-Received: by 2002:aa7:d1ce:0:b0:559:c6da:c889 with SMTP id g14-20020aa7d1ce000000b00559c6dac889mr263448edp.1.1706214634780;
        Thu, 25 Jan 2024 12:30:34 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id q25-20020a056402041900b0055c104274e7sm5770172edv.78.2024.01.25.12.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:30:34 -0800 (PST)
Date: Thu, 25 Jan 2024 21:30:32 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrew Davis <afd@ti.com>
Message-ID: <ZbLE6FYXFVzTLh28@phenom.ffwll.local>
Mail-Followup-To: Andrew Davis <afd@ti.com>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Paul Cercueil <paul@crapouillou.net>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20240123221227.868341-1-afd@ti.com>
 <20240123221227.868341-2-afd@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240123221227.868341-2-afd@ti.com>
X-Operating-System: Linux phenom 6.6.11-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 514E53F38E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-ed1-f53.google.com:helo,mail-ed1-f53.google.com:rdns];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
Message-ID-Hash: 2DXBDIK44VSYKMUYUNRP2MZZ25C6UWZS
X-Message-ID-Hash: 2DXBDIK44VSYKMUYUNRP2MZZ25C6UWZS
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Paul Cercueil <paul@crapouillou.net>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] udmabuf: Sync buffer mappings for attached devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2DXBDIK44VSYKMUYUNRP2MZZ25C6UWZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 23, 2024 at 04:12:26PM -0600, Andrew Davis wrote:
> Currently this driver creates a SGT table using the CPU as the
> target device, then performs the dma_sync operations against
> that SGT. This is backwards to how DMA-BUFs are supposed to behave.
> This may have worked for the case where these buffers were given
> only back to the same CPU that produced them as in the QEMU case.
> And only then because the original author had the dma_sync
> operations also backwards, syncing for the "device" on begin_cpu.
> This was noticed and "fixed" in this patch[0].
> 
> That then meant we were sync'ing from the CPU to the CPU using
> a pseudo-device "miscdevice". Which then caused another issue
> due to the miscdevice not having a proper DMA mask (and why should
> it, the CPU is not a DMA device). The fix for that was an even
> more egregious hack[1] that declares the CPU is coherent with
> itself and can access its own memory space..
> 
> Unwind all this and perform the correct action by doing the dma_sync
> operations for each device currently attached to the backing buffer.
> 
> [0] commit 1ffe09590121 ("udmabuf: fix dma-buf cpu access")
> [1] commit 9e9fa6a9198b ("udmabuf: Set the DMA mask for the udmabuf device (v2)")
> 
> Signed-off-by: Andrew Davis <afd@ti.com>

So yeah the above hacks are terrible, but I don't think this is better.
What you're doing now is that you're potentially doing the flushing
multiple times, so if you have a lot of importers with life mappings this
is a performance regression.

It's probably time to bite the bullet and teach the dma-api about flushing
for multiple devices. Or some way we can figure out which is the one
device we need to pick which gives us the right amount of flushing.

Cheers, Sima

> ---
>  drivers/dma-buf/udmabuf.c | 41 +++++++++++++++------------------------
>  1 file changed, 16 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index 3a23f0a7d112a..ab6764322523c 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -26,8 +26,6 @@ MODULE_PARM_DESC(size_limit_mb, "Max size of a dmabuf, in megabytes. Default is
>  struct udmabuf {
>  	pgoff_t pagecount;
>  	struct page **pages;
> -	struct sg_table *sg;
> -	struct miscdevice *device;
>  	struct list_head attachments;
>  	struct mutex lock;
>  };
> @@ -169,12 +167,8 @@ static void unmap_udmabuf(struct dma_buf_attachment *at,
>  static void release_udmabuf(struct dma_buf *buf)
>  {
>  	struct udmabuf *ubuf = buf->priv;
> -	struct device *dev = ubuf->device->this_device;
>  	pgoff_t pg;
>  
> -	if (ubuf->sg)
> -		put_sg_table(dev, ubuf->sg, DMA_BIDIRECTIONAL);
> -
>  	for (pg = 0; pg < ubuf->pagecount; pg++)
>  		put_page(ubuf->pages[pg]);
>  	kfree(ubuf->pages);
> @@ -185,33 +179,31 @@ static int begin_cpu_udmabuf(struct dma_buf *buf,
>  			     enum dma_data_direction direction)
>  {
>  	struct udmabuf *ubuf = buf->priv;
> -	struct device *dev = ubuf->device->this_device;
> -	int ret = 0;
> -
> -	if (!ubuf->sg) {
> -		ubuf->sg = get_sg_table(dev, buf, direction);
> -		if (IS_ERR(ubuf->sg)) {
> -			ret = PTR_ERR(ubuf->sg);
> -			ubuf->sg = NULL;
> -		}
> -	} else {
> -		dma_sync_sg_for_cpu(dev, ubuf->sg->sgl, ubuf->sg->nents,
> -				    direction);
> -	}
> +	struct udmabuf_attachment *a;
>  
> -	return ret;
> +	mutex_lock(&ubuf->lock);
> +
> +	list_for_each_entry(a, &ubuf->attachments, list)
> +		dma_sync_sgtable_for_cpu(a->dev, a->table, direction);
> +
> +	mutex_unlock(&ubuf->lock);
> +
> +	return 0;
>  }
>  
>  static int end_cpu_udmabuf(struct dma_buf *buf,
>  			   enum dma_data_direction direction)
>  {
>  	struct udmabuf *ubuf = buf->priv;
> -	struct device *dev = ubuf->device->this_device;
> +	struct udmabuf_attachment *a;
>  
> -	if (!ubuf->sg)
> -		return -EINVAL;
> +	mutex_lock(&ubuf->lock);
> +
> +	list_for_each_entry(a, &ubuf->attachments, list)
> +		dma_sync_sgtable_for_device(a->dev, a->table, direction);
> +
> +	mutex_unlock(&ubuf->lock);
>  
> -	dma_sync_sg_for_device(dev, ubuf->sg->sgl, ubuf->sg->nents, direction);
>  	return 0;
>  }
>  
> @@ -307,7 +299,6 @@ static long udmabuf_create(struct miscdevice *device,
>  	exp_info.priv = ubuf;
>  	exp_info.flags = O_RDWR;
>  
> -	ubuf->device = device;
>  	buf = dma_buf_export(&exp_info);
>  	if (IS_ERR(buf)) {
>  		ret = PTR_ERR(buf);
> -- 
> 2.39.2
> 
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
