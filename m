Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG4WJbj24GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADFE40FC21
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BCD740501
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:48:23 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id F11963F794
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 18:36:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin-net.20230601.gappssmtp.com header.s=20230601 header.b=k1ItAL4z;
	dmarc=none;
	spf=none (lists.linaro.org: domain of tursulin@ursulin.net has no SPF policy when checking 209.85.128.44) smtp.mailfrom=tursulin@ursulin.net
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-471191ac79dso50266255e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 11:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761071806; x=1761676606; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u/31NMDpjYxX79hD0m9CWPcEz0sXm9H/7kszN6l94dI=;
        b=k1ItAL4zt2lDQQoI0u8rDbBOXRDUsS5+qFICZzr4UChyEwFX9g/MskkEQ0n8JGExef
         Hb1CPXT2TuZ04jyTB/eZ0BsrzB2VUDx3JEVjHjXjlPUu4n2PmGKfnfAxNiligFDBAooR
         RYgau4TGNyqHJvcWf24YEceEeuAcYfbCjAQxb9396nYj50hj48lBf7C3a7Eq3R9/cUC/
         0cVtmcq1+YOD4g4Y4uQuRayzGBCQLcdSfjVWAmpqzSk4HsSdASGIbuOkBwDX0Y076NWF
         ZNicuKiTUeanRjzuzqkoNPkeWf6deaEaLm1EDiMhCWiTm5muQBIa6vGi7y00HjGwF1/s
         ZBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761071806; x=1761676606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u/31NMDpjYxX79hD0m9CWPcEz0sXm9H/7kszN6l94dI=;
        b=dJqmTXR3ZwL0HIrC2/RxPDKdaEB341s9sgwBCSu3ozU+m9t/yunsWOBRjPB7apebjy
         +AHZA+Ger672+1cXn5Etp6YEUT20qNELIt6r087W/gtp7/aqDatoLmNRiCCniHwcv95f
         56GqiF3pljJ03RtzGnnE1ytwJf5h77uEihZL7KDeyvol4PTi61xWNlRQjEgJBJ7LmAwG
         98iPef6JsotYvBogCrM8XNMSMRzHTq3FAkODFhle0sNmL/QS+Zops7n/TCtuu9iDw0a8
         IVLytUereEvpasquv5Cke2auFyDpxxxPis7Eh61yHOy0BHZIH6bvJPzX+Cq20G6sxBi9
         FzHA==
X-Forwarded-Encrypted: i=1; AJvYcCWbiOPbSNs0jJYkNisfhU8nmXjFDX4CHaHFMvqSLiwjVk89JuNb0ZmDZq0NeMtE0vbQIDvEglqkmVilcuif@lists.linaro.org
X-Gm-Message-State: AOJu0YwRst+sQRdTq8RDp9Xg+6TR0TaT+mqwphLsQwBBKyzLWhNtzrS9
	4CDLum95kSgo2w/xfFzyjBllf91A+scFTpFfezQS5MXTAxdUWTWOsTWWqzbDHKlii7g=
X-Gm-Gg: ASbGncttzJt4nbPH6EkTCXJ99ACUrYsCzLY8fUmAfxPv/mYlxeZyy3oR3f/NJDXv3Qt
	kiOPkUPV3OBdGVXexfqJK6r/gw+BURwVf46C5ZzuiAGtK/itl/KhWt6EwY50noUbOclVyOyfbAT
	jxXfq8+d5e/o0nvrDy5zCrTD/p7MY8XqNGJ+OGaPML3zyJxM22hmgcErzr2ptnT18umdcPcr/kx
	QmZl5IEdQGz9WEyLUbZQ/MMFK9Oy2bLPbiueJ35TaIfXGW+Lbx2cDIhoSQ1aNETDEocN0lIrTHO
	gv2l8xr/YAHUbrFECqsJxi5Fd5Es0oqadMk/doXfGxQI3UV+YQIfcik7v7F4GXBqIjknEqJEZPg
	vHlWgRZJj44O4EXHZwEb2UZ2mR0IhL9tEZRa4+RGEMkESMv+lQWZvlcZrdq5/WClV/ZDVQdscRz
	fAxoZRM0ygEx8cJ1M=
X-Google-Smtp-Source: AGHT+IHuD5mgeD886pEcOy41CAh/C4EmnxTay38r/3oLMR6ZOooN7HM0ZxHB9uqLJmXa6KYTzdPWRw==
X-Received: by 2002:a05:600c:811b:b0:471:13fa:1b84 with SMTP id 5b1f17b1804b1-4711787c803mr131576495e9.12.1761071805713;
        Tue, 21 Oct 2025 11:36:45 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c427ed3fsm6714205e9.1.2025.10.21.11.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 11:36:45 -0700 (PDT)
Message-ID: <d9c16e9e-8321-41fe-9112-e754445d8bb0@ursulin.net>
Date: Tue, 21 Oct 2025 19:36:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Akash Goel <akash.goel@arm.com>, sumit.semwal@linaro.org,
 gustavo@padovan.org, christian.koenig@amd.com
References: <20251021160951.1415603-1-akash.goel@arm.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251021160951.1415603-1-akash.goel@arm.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5OY6OQY77BSN5DJWNDRZVO4AY6IQ65FX
X-Message-ID-Hash: 5OY6OQY77BSN5DJWNDRZVO4AY6IQ65FX
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:13 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, nd@arm.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Fix safe access wrapper to call timeline name method
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5OY6OQY77BSN5DJWNDRZVO4AY6IQ65FX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	DATE_IN_PAST(1.00)[4244];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.525];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,ursulin.net:mid];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 3ADFE40FC21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 21/10/2025 17:09, Akash Goel wrote:
> This commit fixes the wrapper function dma_fence_timeline_name(), that
> was added for safe access, to actually call the timeline name method of
> dma_fence_ops.
> 
> Cc: <stable@vger.kernel.org> # v6.17+
> Signed-off-by: Akash Goel <akash.goel@arm.com>

Fixes: 506aa8b02a8d ("dma-fence: Add safe access helpers and document 
the rules")

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Apologies for the copy and paste snafu.

Regards,

Tvrtko

> ---
>   drivers/dma-buf/dma-fence.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 3f78c56b58dc..39e6f93dc310 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -1141,7 +1141,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence)
>   			 "RCU protection is required for safe access to returned string");
>   
>   	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> -		return fence->ops->get_driver_name(fence);
> +		return fence->ops->get_timeline_name(fence);
>   	else
>   		return "signaled-timeline";
>   }

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
