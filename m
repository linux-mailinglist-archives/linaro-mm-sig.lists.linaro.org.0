Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FB7604DCA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:53:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1494B3EF90
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:53:17 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by lists.linaro.org (Postfix) with ESMTPS id 947793F549
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 13:45:22 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id i3so6177631qkl.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 06:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lTLxj593wgb0rSkyx/kVpkcZN0XitEmW0vMjErWHotA=;
        b=FyJaKv2cOaRg6P7yvu8zs1jVRm/8RMTbc6dfECJ+ZO5o/HmyZWXx30/9G58nVbrc5b
         uilHyUda0dD/kYG1qtguthEwDaL9y8JeP+HPCBHfMWclRlKZoOK/NXZxzGUfoaxervvy
         D0TcePhLr6rEHe3E5Hlf5A5QN/T9th71F+ymU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lTLxj593wgb0rSkyx/kVpkcZN0XitEmW0vMjErWHotA=;
        b=26eVVcno5kj3/pg9dsgbM/buQWeqvw96k3ALPOqL1Eb7aw9hAoBGy8h9ZRF9mSM6PK
         fAJQJ53u8BDDZBDHfqbUT/PhhVNnRzgdla0inI3rgIx8oLGvsgIv7H3rt4ozcMgNE9mZ
         WWxyrI3wmyrCwvTg2+O0qKyere0GXQTRd0yrwfIHP4KXaUyuWs85Y9OmFPHt/278nNAf
         5LkvpRtc3J368fMud16BUaJIc634WFjiuHIkXsAdEmXzMWQnkbcg0E8GaQ+etJFPGy40
         vnWmoTEJoNZjS5GR+4p2GbpsWOOey9qCZu/FFNaSxN5yp/RHpd9xWLyd5OHoOvyoMXFx
         7LxQ==
X-Gm-Message-State: ACrzQf2hVQVyTwSiOEXwaFOEBuSGqBd9kuyNh39u9wcwHKG1aKOMBlAk
	5Rd1vLafWQ/WMabERcXoxnx6wg==
X-Google-Smtp-Source: AMsMyM6DBqbYqDsHBnddfGDZuwycGpoIY7LinhBIG4+l+K0bdEu/uf1UKptO3KnL1trAn9LU6bZY/Q==
X-Received: by 2002:a05:620a:f15:b0:6cf:2130:88e3 with SMTP id v21-20020a05620a0f1500b006cf213088e3mr2093263qkl.519.1663854322211;
        Thu, 22 Sep 2022 06:45:22 -0700 (PDT)
Received: from [172.22.22.4] ([98.61.227.136])
        by smtp.googlemail.com with ESMTPSA id w7-20020ac857c7000000b0035bbb6268e2sm3902332qta.67.2022.09.22.06.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 06:45:21 -0700 (PDT)
Message-ID: <4d75a9fd-1b94-7208-9de8-5a0102223e68@ieee.org>
Date: Thu, 22 Sep 2022 08:45:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-4-keescook@chromium.org>
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20220922031013.2150682-4-keescook@chromium.org>
X-MailFrom: elder@ieee.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EXCXHUVIRZBNOF6SRQYYAIAJSGEYJR3B
X-Message-ID-Hash: EXCXHUVIRZBNOF6SRQYYAIAJSGEYJR3B
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:19 +0000
CC: Alex Elder <elder@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro
 .org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/12] net: ipa: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EXCXHUVIRZBNOF6SRQYYAIAJSGEYJR3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 9/21/22 10:10 PM, Kees Cook wrote:
> Instead of discovering the kmalloc bucket size _after_ allocation, round
> up proactively so the allocation is explicitly made for the full size,
> allowing the compiler to correctly reason about the resulting size of
> the buffer through the existing __alloc_size() hint.
> 
> Cc: Alex Elder <elder@kernel.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   drivers/net/ipa/gsi_trans.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ipa/gsi_trans.c b/drivers/net/ipa/gsi_trans.c
> index 18e7e8c405be..cec968854dcf 100644
> --- a/drivers/net/ipa/gsi_trans.c
> +++ b/drivers/net/ipa/gsi_trans.c
> @@ -89,6 +89,7 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
>   			u32 max_alloc)
>   {
>   	void *virt;
> +	size_t allocate;

I don't care about this but the reverse Christmas tree
convention would put the "allocate" variable definition
above "virt".

Whether you fix that or not, this patch looks good to me.

Reviewed-by: Alex Elder <elder@linaro.org>

>   	if (!size)
>   		return -EINVAL;
> @@ -104,13 +105,15 @@ int gsi_trans_pool_init(struct gsi_trans_pool *pool, size_t size, u32 count,
>   	 * If there aren't enough entries starting at the free index,
>   	 * we just allocate free entries from the beginning of the pool.
>   	 */
> -	virt = kcalloc(count + max_alloc - 1, size, GFP_KERNEL);
> +	allocate = size_mul(count + max_alloc - 1, size);
> +	allocate = kmalloc_size_roundup(allocate);
> +	virt = kzalloc(allocate, GFP_KERNEL);
>   	if (!virt)
>   		return -ENOMEM;
>   
>   	pool->base = virt;
>   	/* If the allocator gave us any extra memory, use it */
> -	pool->count = ksize(pool->base) / size;
> +	pool->count = allocate / size;
>   	pool->free = 0;
>   	pool->max_alloc = max_alloc;
>   	pool->size = size;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
