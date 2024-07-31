Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED6D943768
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 22:50:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 715B540E10
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 20:50:45 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id EA06340B66
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 20:50:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=UXw98ZWa;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.47) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-428098e2b3bso4592225e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 13:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722459027; x=1723063827; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1IW9fAfwq5NHi01t4CV5LKiWLlhlBwcc8UFMWZp9sQ=;
        b=UXw98ZWayiaIh8u4ATCAYCEx1bwvk9XlPg+Q03DBTTVtp+Bend4Y3dgz2/m2zT8Cvj
         KXT1KnUkBc71eZszH+sBqkAdj2Z4wQ6fwwrNRzaWPeInkVnGWTWDkIGXJnGtl95Bbf1R
         nunLLUzaGLa2nF0vRLqg8rGnpuizLSdf/wdXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722459027; x=1723063827;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L1IW9fAfwq5NHi01t4CV5LKiWLlhlBwcc8UFMWZp9sQ=;
        b=ZP1aVDjKnRwv2gzolns+ftr3eH/31S/LM1iS4nt8nzKKjEc6I0nSahysbdcsUQ+AwP
         8CVEuRnkM/YHJYRcL47A/Xqu2sumSfBIkWZonLyLophmBeZ5U0HiWDhDztkz4YlAXRdH
         hu91oHVxVOneLcNrlrHkzNHGIZv9SqeUFYSjF1lK4GXw1PuHV1QYvBoL+X8tB0r0ZfJY
         0zxdWZjD5P3PmiVCdk223YHolth2Y+DoWbW0WWumPj0pu6Sb5KS38+V7PPs76KOs8+Xu
         AMYSCSJceU4VMp0XTMLkvFZ7bIN7AFhCUNV4QYtexfMSyMHymlMp0Wp1LoAa4/lNFNau
         VG+g==
X-Forwarded-Encrypted: i=1; AJvYcCWgtgkY8wXVHtL6G5FPH3LSevPvVFaEmt/RFNBTgv7jAVC+Xd8ofX8iJlx6nRS+HmhnXZyVZXjKOe9wgQpIVnfUxU8F0dbZ4Cfa6F+YeTM=
X-Gm-Message-State: AOJu0YysKQX2+pRE74IE5LDOh+xDfYw/rvkNXOXLxnNzjY4vT0pjV+m7
	e/r10KtCTnzDBg5YSx5iOWshmijeBhRelAcGyprc8Y8vh35A8tPCOjLJdMmVnHQ=
X-Google-Smtp-Source: AGHT+IHiZKSox2G+KBZt85yTqo1If0pNRi36MPMG5PUE38oK6EzOOZBBO76h+Oh0f6kIAO981/aiaA==
X-Received: by 2002:a05:600c:35c9:b0:425:6962:4253 with SMTP id 5b1f17b1804b1-428b8a3da1emr2490685e9.4.1722459026790;
        Wed, 31 Jul 2024 13:50:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b8adc7dsm33246505e9.14.2024.07.31.13.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 13:50:26 -0700 (PDT)
Date: Wed, 31 Jul 2024 22:50:24 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <ZqqjkCZtDP3jtD_2@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	opensource.kernel@vivo.com
References: <20240731033449.1016195-1-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731033449.1016195-1-link@vivo.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EA06340B66
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:url,phenom.ffwll.local:mid,mail-wm1-f47.google.com:helo,mail-wm1-f47.google.com:rdns];
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
X-Rspamd-Action: no action
Message-ID-Hash: PPUX4UVU2JRVKSEEIDQPDPVTKY25C527
X-Message-ID-Hash: PPUX4UVU2JRVKSEEIDQPDPVTKY25C527
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: use kmem_cache to alloc udmabuf folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PPUX4UVU2JRVKSEEIDQPDPVTKY25C527/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 31, 2024 at 11:34:49AM +0800, Huan Yang wrote:
> The current udmabuf_folio contains a list_head and the corresponding
> folio pointer, with a size of 24 bytes. udmabuf_folio uses kmalloc to
> allocate memory.
> 
> However, kmalloc is a public pool, starting from 64 bytes. This means
> that each udmabuf_folio allocation will waste 40 bytes.
> 
> Considering that each udmabuf creates a folio corresponding to a
> udmabuf_folio, the wasted memory can be significant in the case of
> memory fragmentation.
> 
> Furthermore, if udmabuf is frequently used, the allocation and
> deallocation of udmabuf_folio will also be frequent.
> 
> Therefore, this patch adds a kmem_cache dedicated to the allocation and
> deallocation of udmabuf_folio.This is expected to improve the
> performance of allocation and deallocation within the expected range,
> while also avoiding memory waste.
> 
> Signed-off-by: Huan Yang <link@vivo.com>
> ---
>  drivers/dma-buf/udmabuf.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index 047c3cd2ceff..db4de8c745ce 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -24,6 +24,8 @@ static int size_limit_mb = 64;
>  module_param(size_limit_mb, int, 0644);
>  MODULE_PARM_DESC(size_limit_mb, "Max size of a dmabuf, in megabytes. Default is 64.");
>  
> +static struct kmem_cache *udmabuf_folio_cachep;
> +
>  struct udmabuf {
>  	pgoff_t pagecount;
>  	struct folio **folios;
> @@ -169,7 +171,7 @@ static void unpin_all_folios(struct list_head *unpin_list)
>  		unpin_folio(ubuf_folio->folio);
>  
>  		list_del(&ubuf_folio->list);
> -		kfree(ubuf_folio);
> +		kmem_cache_free(udmabuf_folio_cachep, ubuf_folio);
>  	}
>  }
>  
> @@ -178,7 +180,7 @@ static int add_to_unpin_list(struct list_head *unpin_list,
>  {
>  	struct udmabuf_folio *ubuf_folio;
>  
> -	ubuf_folio = kzalloc(sizeof(*ubuf_folio), GFP_KERNEL);
> +	ubuf_folio = kmem_cache_alloc(udmabuf_folio_cachep, GFP_KERNEL);
>  	if (!ubuf_folio)
>  		return -ENOMEM;
>  
> @@ -492,10 +494,20 @@ static int __init udmabuf_dev_init(void)
>  	if (ret < 0) {
>  		pr_err("Could not setup DMA mask for udmabuf device\n");
>  		misc_deregister(&udmabuf_misc);

misc_deregister() is now called twice in this error path, I think you've
forgotten to delete this line too?

Otherwise lgtm.
-Sima

> -		return ret;
> +		goto err;
> +	}
> +
> +	udmabuf_folio_cachep = KMEM_CACHE(udmabuf_folio, 0);
> +	if (unlikely(!udmabuf_folio_cachep)) {
> +		ret = -ENOMEM;
> +		goto err;
>  	}
>  
>  	return 0;
> +
> +err:
> +	misc_deregister(&udmabuf_misc);
> +	return ret;
>  }
>  
>  static void __exit udmabuf_dev_exit(void)
> 
> base-commit: cd19ac2f903276b820f5d0d89de0c896c27036ed
> -- 
> 2.45.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
