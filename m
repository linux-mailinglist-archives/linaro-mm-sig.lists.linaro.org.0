Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D56E263EA81
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 08:48:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AE183EA4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 07:48:46 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by lists.linaro.org (Postfix) with ESMTPS id C09343EA4D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 07:48:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kapsi.fi header.s=20161220 header.b=rtDaLkzT;
	spf=pass (lists.linaro.org: domain of cyndis@kapsi.fi designates 91.232.154.25 as permitted sender) smtp.mailfrom=cyndis@kapsi.fi;
	dmarc=pass (policy=none) header.from=kapsi.fi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=INyxVWTl5V40Q4m8iuk6nyPL6/SVXAaVTfMABtgODPU=; b=rtDaLkzT4z+MKduPKz0zQkPZRM
	HOkXBiv54Lmek4TrfuSnFPduUbrMCNuJNwDJ8/7X7LU+wOJPdb7E0HO7aZLxVidAol4uUyRmShkdP
	SwkR6K6VlwZ5ycDUR/4GyXuTFoE5tV6wICR67XkwHzvIhziWbmFxavkSE0NwGl/cXmPAeDGIHqtSY
	JcinySJ3nzMlxkD1Z2GY/S5bTNxIfF47mPMFivIdDn2VCPtfbHd8faQb8hGO1uozAvPYaYd1FgFnk
	R+m5se88hCaAEWpt5S2JalLCq7gkPom9hti4YVk27Mt99bpGk3ceHxXUk9jb6EF3BTdJeOZ9JP25q
	iEKRznkQ==;
Received: from 91-158-25-70.elisa-laajakaista.fi ([91.158.25.70] helo=[192.168.1.10])
	by mail.kapsi.fi with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <cyndis@kapsi.fi>)
	id 1p0eIv-0044k7-K5; Thu, 01 Dec 2022 09:48:21 +0200
Message-ID: <e46598e5-d680-5ae3-3e4a-ec6e5be5090b@kapsi.fi>
Date: Thu, 1 Dec 2022 09:48:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: zys.zljxml@gmail.com, thierry.reding@gmail.com, airlied@gmail.com,
 daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20221201015522.38163-1-zys.zljxml@gmail.com>
From: Mikko Perttunen <cyndis@kapsi.fi>
In-Reply-To: <20221201015522.38163-1-zys.zljxml@gmail.com>
X-SA-Exim-Connect-IP: 91.158.25.70
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Rspamd-Queue-Id: C09343EA4D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[91.232.154.25:from,91.158.25.70:received];
	DWL_DNSWL_LOW(-1.00)[kapsi.fi:dkim];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kapsi.fi,none];
	R_DKIM_ALLOW(-0.20)[kapsi.fi:s=20161220];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.kapsi.fi:rdns,mail.kapsi.fi:helo,kapsi.fi:dkim];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	URIBL_BLOCKED(0.00)[kapsi.fi:dkim,mail.kapsi.fi:rdns,mail.kapsi.fi:helo];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org,amd.com];
	DKIM_TRACE(0.00)[kapsi.fi:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:57692, ipnet:91.232.154.0/24, country:FI];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XN3YDCHNXF774JHL6VNSIC636MB6LVDZ
X-Message-ID-Hash: XN3YDCHNXF774JHL6VNSIC636MB6LVDZ
X-MailFrom: cyndis@kapsi.fi
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Yushan Zhou <katrinzhou@tencent.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] gpu: host1x: Remove redundant null checks before kfree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XN3YDCHNXF774JHL6VNSIC636MB6LVDZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 12/1/22 03:55, zys.zljxml@gmail.com wrote:
> From: Yushan Zhou <katrinzhou@tencent.com>
> 
> Fix the following coccicheck warning:
> ./drivers/gpu/host1x/fence.c:97:2-7: WARNING:
> NULL check before some freeing functions is not needed.
> 
> Signed-off-by: Yushan Zhou <katrinzhou@tencent.com>
> ---
>   drivers/gpu/host1x/fence.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/host1x/fence.c b/drivers/gpu/host1x/fence.c
> index ecab72882192..05b36bfc8b74 100644
> --- a/drivers/gpu/host1x/fence.c
> +++ b/drivers/gpu/host1x/fence.c
> @@ -93,8 +93,7 @@ static void host1x_syncpt_fence_release(struct dma_fence *f)
>   {
>   	struct host1x_syncpt_fence *sf = to_host1x_fence(f);
>   
> -	if (sf->waiter)
> -		kfree(sf->waiter);
> +	kfree(sf->waiter);
>   
>   	dma_fence_free(f);
>   }

I disagree with this coccinelle rule; I think it obfuscates from the 
reader the fact that the pointer could be NULL.

Mikko
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
