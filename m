Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 525487CF7B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:57:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49AA440C53
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:57:39 +0000 (UTC)
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	by lists.linaro.org (Postfix) with ESMTPS id 339CE3EAAF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Oct 2023 16:14:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=embeddedor.com header.s=default header.b="xt/Tb6mH";
	spf=pass (lists.linaro.org: domain of gustavo@embeddedor.com designates 44.202.169.33 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com;
	dmarc=none
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTP
	id qYulq9a7VIBlVqbqGq9s22; Wed, 11 Oct 2023 16:13:48 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id qbqhqO6S2eUFEqbqhqIR2C; Wed, 11 Oct 2023 16:14:15 +0000
X-Authority-Analysis: v=2.4 cv=LJl1/ba9 c=1 sm=1 tr=0 ts=6526c9d7
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=WzbPXH4gqzPVN0x6HrNMNA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=wYkD_t78qR0A:10 a=VwQbUJbxAAAA:8
 a=V7xphIdJqzxAJ2XP6soA:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IglXiu7clxmjc6NnMmyD4jz2gwc1+yZr7itwJnzvAag=; b=xt/Tb6mHGkEDAh4cK7S1dC9YrF
	Ndo23soGJTyTAu3uPEpBks1653WuqTh2RNwMKZBwa/ZscUhiKV5rrGUcELLkvzCHlxV7LwGGz9lle
	Rt1XSM4N3QugUJxGUlk0KGEc89mdad7gJ/wwviLO7zJ91SyJzF1Fon6J2fRVewGEsGemkGKNYiclv
	k2T39BjJcRgXe9Y7ZV5j0qNYvnM2mK7lQ9m85tPw8EIk9/rCGsKMIfSGppfDRXMwQLBevv+qmScCo
	y66LDAm+8vUF4TB+o4sXQ0nROLR3mid6Lf7MbYslf6jnqu7tH8M9AKzrrRjWtmGLtT3L5EzLvzQ4c
	+rL4Io2w==;
Received: from 187-162-21-192.static.axtel.net ([187.162.21.192]:58052 helo=[192.168.15.7])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.1)
	(envelope-from <gustavo@embeddedor.com>)
	id 1qqbqg-002zCK-1C;
	Wed, 11 Oct 2023 11:14:14 -0500
Message-ID: <0d63e8aa-5836-40e7-8f8a-2be10fbaac4a@embeddedor.com>
Date: Wed, 11 Oct 2023 10:13:42 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <ZSarP0/+hG8/87//@work> <202310110903.FE533CBCD@keescook>
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <202310110903.FE533CBCD@keescook>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.linaro.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.21.192
X-Source-L: No
X-Exim-ID: 1qqbqg-002zCK-1C
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-21-192.static.axtel.net ([192.168.15.7]) [187.162.21.192]:58052
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCGAUyAVaRSmwhMQ+eL2+Xpb4Cu+sGTRjOt9cemx3UxDK6vqDopZ/eWZepcSWFMwX/NlmcH2bLc3e+4T0l6BXhED0BE8J/R4kF2eDB7wa8PwAC4lYzEU
 awLkHzYvkqqsgTOdPk4d5Fnt738C/C8GlklGmHWq93ynmaKlAA3jM2aHNit6h3V3AiE4EC141hITKQyN+1GdqcPzzc2YnoIWQ2c6Z2YXa6F/3ZbnRe+HCrh1
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[embeddedor.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:44.202.169.32/29];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[44.202.169.33:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	DMARC_NA(0.00)[embeddedor.com];
	HAS_X_ANTIABUSE(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_X_SOURCE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[embeddedor.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 339CE3EAAF
X-MailFrom: gustavo@embeddedor.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5JO5XOFNAPJAUHMRMOXNVKLC7IZFBD52
X-Message-ID-Hash: 5JO5XOFNAPJAUHMRMOXNVKLC7IZFBD52
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:51:25 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH][next] dma-buf: Fix NULL pointer dereference in dma_fence_enable_sw_signaling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5JO5XOFNAPJAUHMRMOXNVKLC7IZFBD52/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On 10/11/23 10:03, Kees Cook wrote:
> On Wed, Oct 11, 2023 at 08:03:43AM -0600, Gustavo A. R. Silva wrote:
>> Currently, a NULL pointer dereference will happen in function
>> `dma_fence_enable_sw_signaling()` (at line 615), in case `chain`
>> is not allocated in `mock_chain()` and this function returns
>> `NULL` (at line 86). See below:
>>
>> drivers/dma-buf/st-dma-fence-chain.c:
>>   86         chain = mock_chain(NULL, f, 1);
>>   87         if (!chain)
>>   88                 err = -ENOMEM;
>>   89
>>   90         dma_fence_enable_sw_signaling(chain);
> 
> Instead of the larger patch, should line 88 here just do a "return
> -ENOMEM" instead?

Nope. I would have to add a `goto` to skip `dma_fence_enable_sw_signaling(chain)`.

I originally thought of that, but as other _signaling() functions have
sanity-checks inside, I decided to go with that solution.

This bug has been there since Sep 2022. So, adding a sanity check inside that
function should prevent any other issue of this same kind to enter the codebase
and stay there for years.

--
Gustavo

> 
> -Kees
> 
>>
>> drivers/dma-buf/dma-fence.c:
>>   611 void dma_fence_enable_sw_signaling(struct dma_fence *fence)
>>   612 {
>>   613         unsigned long flags;
>>   614
>>   615         spin_lock_irqsave(fence->lock, flags);
>> 			       ^^^^^^^^^^^
>> 				    |
>> 			  NULL pointer reference
>> 			  if fence == NULL
>>
>>   616         __dma_fence_enable_signaling(fence);
>>   617         spin_unlock_irqrestore(fence->lock, flags);
>>   618 }
>>
>> Fix this by adding a NULL check before dereferencing `fence` in
>> `dma_fence_enable_sw_signaling()`. This will prevent any other NULL
>> pointer dereference when the `fence` passed as an argument is `NULL`.
>>
>> Addresses-Coverity: ("Dereference after null check")
>> Fixes: d62c43a953ce ("dma-buf: Enable signaling on fence for selftests")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>> ---
>>   drivers/dma-buf/dma-fence.c | 9 ++++++++-
>>   include/linux/dma-fence.h   | 2 +-
>>   2 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
>> index 8aa8f8cb7071..4d2f13560d0f 100644
>> --- a/drivers/dma-buf/dma-fence.c
>> +++ b/drivers/dma-buf/dma-fence.c
>> @@ -607,14 +607,21 @@ static bool __dma_fence_enable_signaling(struct dma_fence *fence)
>>    * This will request for sw signaling to be enabled, to make the fence
>>    * complete as soon as possible. This calls &dma_fence_ops.enable_signaling
>>    * internally.
>> + *
>> + * Returns 0 on success and a negative error value when @fence is NULL.
>>    */
>> -void dma_fence_enable_sw_signaling(struct dma_fence *fence)
>> +int dma_fence_enable_sw_signaling(struct dma_fence *fence)
>>   {
>>   	unsigned long flags;
>>   
>> +	if (!fence)
>> +		return -EINVAL;
>> +
>>   	spin_lock_irqsave(fence->lock, flags);
>>   	__dma_fence_enable_signaling(fence);
>>   	spin_unlock_irqrestore(fence->lock, flags);
>> +
>> +	return 0;
>>   }
>>   EXPORT_SYMBOL(dma_fence_enable_sw_signaling);
>>   
>> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
>> index ebe78bd3d121..1e4025e925e6 100644
>> --- a/include/linux/dma-fence.h
>> +++ b/include/linux/dma-fence.h
>> @@ -399,7 +399,7 @@ int dma_fence_add_callback(struct dma_fence *fence,
>>   			   dma_fence_func_t func);
>>   bool dma_fence_remove_callback(struct dma_fence *fence,
>>   			       struct dma_fence_cb *cb);
>> -void dma_fence_enable_sw_signaling(struct dma_fence *fence);
>> +int dma_fence_enable_sw_signaling(struct dma_fence *fence);
>>   
>>   /**
>>    * dma_fence_is_signaled_locked - Return an indication if the fence
>> -- 
>> 2.34.1
>>
>>
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
