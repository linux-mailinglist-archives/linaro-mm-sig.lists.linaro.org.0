Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB0A93EDCE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jul 2024 09:02:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B4004251F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jul 2024 07:02:16 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 2E8283F477
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jul 2024 07:02:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=M2pjnxeW;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.128.42) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-428032ed83cso2449525e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jul 2024 00:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722236520; x=1722841320; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jiq86OgV8aN77ZK3gSdcC84nDSEMhthS0/eJkO/i+l0=;
        b=M2pjnxeWahYTNkI6sbJua9YzOQVs710EVoaD9DJtK631cZIuErAYPBcrnW02k7M7iu
         3Wb4yEpd4GdnMfC/0JOdDbHAj3O/1jBnmbAb0fCQM+QzwaIhZ5ewTRsV7VxcmZgGDEVR
         d83fazt4GZ4S4SYlYyDLMJP+l3N7EnU7TYFSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722236520; x=1722841320;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jiq86OgV8aN77ZK3gSdcC84nDSEMhthS0/eJkO/i+l0=;
        b=QUbwTEFXcDbGzmMnVMzXC7+fR1uL9moF+zpzLRcbKgyNULoYaKslref6UblZdNNTcQ
         eePAg0ovjlDfgpu7u/8X1H3o9pv+21gGMQwKCKrpSL9fPDm+ZOc37lskh5b85V0RRi9w
         jx65w1OGbKiNDEuwBKx3MLmU5D5BUSZcLy9B0//Uno3P2elPhyoruNdd1G0g56DOYgcF
         64RRUbzV+5q2RDKMDV/QbttY84D64gwtuTx6hbU2FC+UvpfTDh9shwEkaQCl+GkinInT
         Xvno8aCUBtrVd5HARlrvZH9ez4Qrz2kyEHtlaYd16SLNacbyIDhSQmSA2flaekrxNPZx
         6DXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV42uGgnRq94X7D7UvYvDfYA7c7L+eV2eIJwupsl3XULol18B7HOAnIF7SLX1vEfEQo+evb4MqY8qSwRhTGb95ciZp45lFRnwyuHTarV1E=
X-Gm-Message-State: AOJu0Yyj9p8mNoVico3x9xwHQ4EKvjI3dSNw7syjPGKA20Utg+wow/9J
	o4yOLgys/V6i49fHbJ78SE2qV0DbsfZLU96D60OfVSeKzg6xkDwYVbTGV9N4SSc=
X-Google-Smtp-Source: AGHT+IEiT+O8ufmV6ZCYKgzAur7uD7ABX1l7m8G+4knDu8SiWra9FtLVycZ8kwh2N41DGIzudaMzfQ==
X-Received: by 2002:a05:600c:4511:b0:425:65b1:abb4 with SMTP id 5b1f17b1804b1-428053beee0mr56974615e9.0.1722236519848;
        Mon, 29 Jul 2024 00:01:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4281225141dsm83180525e9.45.2024.07.29.00.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 00:01:59 -0700 (PDT)
Date: Mon, 29 Jul 2024 09:01:57 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <Zqc-ZWlTYwnKHoQK@phenom.ffwll.local>
Mail-Followup-To: Zenghui Yu <yuzenghui@huawei.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org,
	linux-kernel@vger.kernel.org, sumit.semwal@linaro.org,
	benjamin.gaignard@collabora.com, Brian.Starkey@arm.com,
	jstultz@google.com, tjmercier@google.com, shuah@kernel.org,
	wanghaibin.wang@huawei.com
References: <20240729024604.2046-1-yuzenghui@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729024604.2046-1-yuzenghui@huawei.com>
X-Operating-System: Linux phenom 6.9.7-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E8283F477
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
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
Message-ID-Hash: 4YR5JWJMFGO5GOXIGFAKXZYPMPZ5T6N6
X-Message-ID-Hash: 4YR5JWJMFGO5GOXIGFAKXZYPMPZ5T6N6
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, shuah@kernel.org, wanghaibin.wang@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] kselftests: dmabuf-heaps: Ensure the driver name is null-terminated
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YR5JWJMFGO5GOXIGFAKXZYPMPZ5T6N6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 29, 2024 at 10:46:04AM +0800, Zenghui Yu wrote:
> Even if a vgem device is configured in, we will skip the import_vgem_fd()
> test almost every time.
> 
>   TAP version 13
>   1..11
>   # Testing heap: system
>   # =======================================
>   # Testing allocation and importing:
>   ok 1 # SKIP Could not open vgem -1
> 
> The problem is that we use the DRM_IOCTL_VERSION ioctl to query the driver
> version information but leave the name field a non-null-terminated string.
> Terminate it properly to actually test against the vgem device.
> 
> While at it, let's check the length of the driver name is exactly 4 bytes
> and return early otherwise (in case there is a name like "vgemfoo" that
> gets converted to "vgem\0" unexpectedly).
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> * From v1 [1]:
>   - Check version.name_len is exactly 4 bytes and return early otherwise
> 
> [1] https://lore.kernel.org/r/20240708134654.1725-1-yuzenghui@huawei.com

Thanks for your patch, I'll push it to drm-misc-next-fixes.

> P.S., Maybe worth including the kselftests file into "DMA-BUF HEAPS
> FRAMEWORK" MAINTAINERS entry?

Good idea, want to do the patch for that too?

Cheers, Sima


> 
>  tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c b/tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c
> index 5f541522364f..5d0a809dc2df 100644
> --- a/tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c
> +++ b/tools/testing/selftests/dmabuf-heaps/dmabuf-heap.c
> @@ -29,9 +29,11 @@ static int check_vgem(int fd)
>  	version.name = name;
>  
>  	ret = ioctl(fd, DRM_IOCTL_VERSION, &version);
> -	if (ret)
> +	if (ret || version.name_len != 4)
>  		return 0;
>  
> +	name[4] = '\0';
> +
>  	return !strcmp(name, "vgem");
>  }
>  
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
