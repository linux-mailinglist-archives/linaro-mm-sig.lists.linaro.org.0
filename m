Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 152198D1DC6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 May 2024 15:58:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D2C2443C43
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 May 2024 13:58:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 854E840074
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 May 2024 13:58:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IjAW0mhU;
	spf=pass (lists.linaro.org: domain of david@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=david@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716904725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=54PHYlJ0PDEnDWhop/PaR+jnOIH2PsxLKNR7Lww/RKs=;
	b=IjAW0mhUIm8v96McZvUyS3MyiFTFq6Y8jo3kppl0PyisUBMZ1XK45z3VcORtP4fQISud2b
	S8d9Qqo4coiL5UoVW7pHFyeq0xP7jM2y2n07LG0hjyG8kgP8KFxue3hicJ+yAPo/npZWDm
	0N+zRHvSjuhbEXnhUCnVDz7D9D2Skr0=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-1MbyGIqBPW6gPq7H9U-_xw-1; Tue, 28 May 2024 09:58:43 -0400
X-MC-Unique: 1MbyGIqBPW6gPq7H9U-_xw-1
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a6265d3cc76so59973266b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 May 2024 06:58:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716904718; x=1717509518;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=54PHYlJ0PDEnDWhop/PaR+jnOIH2PsxLKNR7Lww/RKs=;
        b=LTf6WWLbzESsYuBt5yuimcGEYxiXAyBIFcJOzgXAjRb8X4IxbObHMCPf5NQx/ZqQYg
         k40eakC69qveyg/G2dNDsSbgxzWDz4h8xiUB1Prz1cz71kFKVUNHhKYOCYcRk0mNy9Qp
         GEmVJCwnrmFfxsxGHrsWmkSPcdQSwelOJrCxO+6GUMDEUBlVQN34r86sFyvJoPVq/jv5
         PCDNa1tifResDa76o8p/DPt6nJLQyavolP55P2pynHRnWj7QGtLy9P3LpCdZ+HflC7Ue
         Y00r8gDgD/tXxx4cWZmTHwFRKyMiUNdVq7pLHGOakt/9ChRe9PX1Jo2h7JtbuZPiAjSf
         z1uw==
X-Forwarded-Encrypted: i=1; AJvYcCX4MRKqCWl536rOpLlhEe3jBpkxdZtqID+SECaFwv2RtqJUk00WEi/e8feA8bBB5SO/lyp/xhBdeG42HRJ5j6dhhWZZsdAm0W/zcz7LlsE=
X-Gm-Message-State: AOJu0YyWiwvbYy0L7jB5h7x7SvB9+CU6+K/MJoDL1OrC0ZfWPK+0vQHI
	XB1kJMSFLss4eOMuhqqMhc3ifBoBQknTMZhvmbzIppAC92d/Dg5yPrPfD5/DmHj0Z7AHNzyMr9A
	THOax2lAF2dbemZ8HzdKNTijUAvj+cyjJwnDiIWYb8QMO+xMNHHHmmy8n/pI9T8+J
X-Received: by 2002:a17:906:bc42:b0:a62:3c94:3bd2 with SMTP id a640c23a62f3a-a6265011270mr904385166b.73.1716904718529;
        Tue, 28 May 2024 06:58:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQIR74emKom8ATw+snuAUy13d6llophtQiniGptcCuWj8oFnstnUM6NEvnixIbkTAxpA1/sA==
X-Received: by 2002:a17:906:bc42:b0:a62:3c94:3bd2 with SMTP id a640c23a62f3a-a6265011270mr904382466b.73.1716904718020;
        Tue, 28 May 2024 06:58:38 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f28:4600:d3a7:6c26:54cf:e01e? (p200300d82f284600d3a76c2654cfe01e.dip0.t-ipconnect.de. [2003:d8:2f28:4600:d3a7:6c26:54cf:e01e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c818362sm617978566b.34.2024.05.28.06.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 06:58:37 -0700 (PDT)
Message-ID: <93ee4e04-bdc7-4ac6-b93b-b6cf1b3311af@redhat.com>
Date: Tue, 28 May 2024 15:58:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arnd Bergmann <arnd@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dave Airlie <airlied@redhat.com>, Vivek Kasireddy
 <vivek.kasireddy@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20240528133138.2237237-1-arnd@kernel.org>
From: David Hildenbrand <david@redhat.com>
In-Reply-To: <20240528133138.2237237-1-arnd@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 854E840074
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.19 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	URIBL_BLOCKED(0.00)[arndb.de:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: 6DU3DNXZ4SGISQP2VGSIETARYV7YKCDW
X-Message-ID-Hash: 6DU3DNXZ4SGISQP2VGSIETARYV7YKCDW
X-MailFrom: david@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Arnd Bergmann <arnd@arndb.de>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: add CONFIG_MMU dependency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6DU3DNXZ4SGISQP2VGSIETARYV7YKCDW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 28.05.24 um 15:31 schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> There is no !CONFIG_MMU version of vmf_insert_pfn():
> 
> arm-linux-gnueabi-ld: drivers/dma-buf/udmabuf.o: in function `udmabuf_vm_fault':
> udmabuf.c:(.text+0xaa): undefined reference to `vmf_insert_pfn'
> 
> Fixes: f7254e043ff1 ("udmabuf: use vmf_insert_pfn and VM_PFNMAP for handling mmap")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/dma-buf/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> index e4dc53a36428..b46eb8a552d7 100644
> --- a/drivers/dma-buf/Kconfig
> +++ b/drivers/dma-buf/Kconfig
> @@ -35,6 +35,7 @@ config UDMABUF
>   	default n
>   	depends on DMA_SHARED_BUFFER
>   	depends on MEMFD_CREATE || COMPILE_TEST
> +	depends on MMU
>   	help
>   	  A driver to let userspace turn memfd regions into dma-bufs.
>   	  Qemu can use this to create host dmabufs for guest framebuffers.

Acked-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
