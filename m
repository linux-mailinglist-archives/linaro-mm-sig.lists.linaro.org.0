Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93659940BDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jul 2024 10:40:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2932434D0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jul 2024 08:40:02 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 3CF883F65C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jul 2024 08:39:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="G1//LkU/";
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.44) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42802e90140so498815e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jul 2024 01:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722328782; x=1722933582; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMbXMLPxdHgp8aCQRIwbUSynHwaJsa3HFc5CrwRM3iA=;
        b=G1//LkU/2zmo1H2Ey0z+z4zC5a/YbfBmQbLLHUkR4UHJ5y3iMxJZ8f9xyXYdIvxCUI
         OJLjqScd4pxbzIsXF3884FRUqZ6xq7xYFXFEjlC2Q0yix+YB/ldl3U7CBandSZZJfszy
         b1R2YKBOg2CiAXjfLtG98gORSsaHABz6cBwqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722328782; x=1722933582;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mMbXMLPxdHgp8aCQRIwbUSynHwaJsa3HFc5CrwRM3iA=;
        b=IrZoQlozXlcNUJEt/sBeCif/UMZAQhvTfhLvM0gEDHBoLnmOUcggdFhZRdWWAytKld
         zLDp4flSZBQ88TLKwEN1w57DMa9iNGKBF7S0hQEVAt21Pnunysl5G4EbvIjBD99YK4+L
         ErGiaI11QukGQBJCLiezxLo1kXEQfyi1CcXOUbal9a9TN1X3dgiY/9Hise+42ME1e7Ej
         1fmfVDuYeB9XymxfR8+uOnh4/EysJR2m9AtP/k0Ip8KSXz8wUA3q+wy6II+ujqQwxyAm
         AGwiaJciqGpAIrTLYKjTyH6SHeegOfW8i/e6O5WBttOKOHNwyBmswZ2kWwRsJYkt2DLT
         h7RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm+EKbxhK6ydooBARFQdTKD4zmSA6wM+vYDNjo0bgEsibiz+jonF2ZPzV6GDwhUd2Rpw3X6aUoejLlk/EN@lists.linaro.org
X-Gm-Message-State: AOJu0YwR8EjXx7IR3rHg4EAEmWiW72H/3Ur1ApImCsgyu4rUomVmtQEg
	gx40ry0bYZbQOfJ2yXtPERZ42DRAdhbCtFT3V6e8UXTp0FOEm7TeMS/1nDlY8NI=
X-Google-Smtp-Source: AGHT+IGdFjY0cCQvq3hH977T/VIttQHVhMME0vlMsCLSRfvyDCHXoJ2M6IjFVm/zP4wBbIdXQrKJMQ==
X-Received: by 2002:a05:600c:1387:b0:426:6fc0:5910 with SMTP id 5b1f17b1804b1-428054feb50mr74046665e9.1.1722328782058;
        Tue, 30 Jul 2024 01:39:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4281a5d10acsm79712725e9.24.2024.07.30.01.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 01:39:41 -0700 (PDT)
Date: Tue, 30 Jul 2024 10:39:39 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <Zqimyx_jEi5ne6GB@phenom.ffwll.local>
Mail-Followup-To: Zenghui Yu <yuzenghui@huawei.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org,
	linux-kernel@vger.kernel.org, sumit.semwal@linaro.org,
	benjamin.gaignard@collabora.com, Brian.Starkey@arm.com,
	jstultz@google.com, tjmercier@google.com, shuah@kernel.org,
	wanghaibin.wang@huawei.com
References: <20240729081202.937-1-yuzenghui@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729081202.937-1-yuzenghui@huawei.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3CF883F65C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[huawei.com:email,arm.com:email];
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
Message-ID-Hash: HJDMFVRVRU6D4NZPZRI4BLX2F4UIUA5V
X-Message-ID-Hash: HJDMFVRVRU6D4NZPZRI4BLX2F4UIUA5V
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, shuah@kernel.org, wanghaibin.wang@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] MAINTAINERS: Add selftests to DMA-BUF HEAPS FRAMEWORK entry
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HJDMFVRVRU6D4NZPZRI4BLX2F4UIUA5V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 29, 2024 at 04:12:02PM +0800, Zenghui Yu wrote:
> Include dmabuf-heaps selftests in the correct entry so that updates to it
> can be sent to the right place.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>

Applied to drm-misc-next, thanks for your patch.
-Sima

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 42decde38320..b7f24c9fb0e2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6660,6 +6660,7 @@ F:	drivers/dma-buf/dma-heap.c
>  F:	drivers/dma-buf/heaps/*
>  F:	include/linux/dma-heap.h
>  F:	include/uapi/linux/dma-heap.h
> +F:	tools/testing/selftests/dmabuf-heaps/
>  
>  DMC FREQUENCY DRIVER FOR SAMSUNG EXYNOS5422
>  M:	Lukasz Luba <lukasz.luba@arm.com>
> -- 
> 2.33.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
