Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ2HKx333Gl/YgkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 16:01:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B63ECE2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 16:00:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 217D13F8E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 14:00:53 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by lists.linaro.org (Postfix) with ESMTPS id 6631E3F8E9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 14:00:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UJRCymWi;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.219.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8a0323830beso37722996d6.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 07:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776088846; x=1776693646; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=17vzIRu9LWKDoVYHul0BINcHWZhdKsnTwSxfRfb16Bs=;
        b=UJRCymWiZK7sfQSFUpXRV5faAMAzNF5P/NTk8sQsqGZBPxSlullkoHhImqiX/ND3F6
         tAr1fP6YhMHDgfeU1j2egHRsLgbsi2iFEyEfKWkRu+tVmuFxUrgXJXiJ0fAjqiYuGjcs
         mIv/L/GaiDubo/yBdyqVVo6Nes6RAUKQnhMUqTQW9M8wVVIQJouqqyG72ozhV21Ztsno
         FT/KWfgkzScGoARcCVxYapm8r4UQOv6i89l+KgpigMukNtXXDI4XEPTsFQOgMQxHXUWN
         k6q8FwCv68h2qHKfm0YPyeDCwjiUjNEqaMitoQRGkrooKfL82Bdo4/LgdxyOY5RKB0c9
         U+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776088846; x=1776693646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17vzIRu9LWKDoVYHul0BINcHWZhdKsnTwSxfRfb16Bs=;
        b=TjS5BimdaH+m2BSzhiiCosMnIFHtZlUr9lN1DgEEo+f4vqmH2djxNT+AQVCAT0l7xb
         8v6vcKGswkPSbQ6UTvVL7DTDEb4I9RffFePyb2+VupRsXHR7ilsiccGWTzgjRtTH2TA8
         JMLfwgTYYUHz5ifZKxbmQe4wloYqwXD3oswTyjVcKrt2/H8N/CbYYA417FhyLjsN7XSM
         JPyrNXYAlcwAw3amP7FUxg4ThwMv6FBzRiXPXA9DQB1iEWNAME6/VLwNcTJ4Sstj/mJM
         tKgI5x16SlY6QbLFw6Iiydvq7KMUBq57aq8IaxT6tRmF78hYvvhek9ZO2TS1/h8ACOUy
         E4kg==
X-Forwarded-Encrypted: i=1; AFNElJ+3KRNtG7eEH91dhHxLv7olEdnhSJ5AxJW7B/zOX1UnFmgDhJOfQ8B2K59bS9cVnWkv2IrE81Zh2APY2dAS@lists.linaro.org
X-Gm-Message-State: AOJu0YwTqB0ZUjYRHz2qeeU5jVMP97PWjTh4S7oo9eXdORtb0H7a8JV7
	vXkLC4XwA8OJGaK7L48/4FFV1Q+5BJV47lfSOuD5/gavpqaBcXWLGpQQ
X-Gm-Gg: AeBDiesnHa+BDcgX6K2NOOfptAIrHB7eTqbN3yxhzG651rUbuOQn0s0dfOihc8da7XV
	ckMnEGwwptWvdJlz2P5LNGzwdklOApZQ1Y7MDDy30GsZ3H0oEyBMSPqudAeXwEjHzZVqG0zd8f7
	LX6xFqbJ4I6E/hQeI4b93eBi3i05FiexcHIpuU/h3ozbLwF34Navv4pS64FaIDgvM5hvXfermq5
	1+F2Xd06fr7jZHG1x0hmboE7ZIxI5YsXs4cBhyH+/BaTv7q5LTz3QEn9xBReCP919iXU32R7Lx8
	PxjRczePKpJi3VZTmshSpb+4AKZ5x11cTLI/p2MfzN+jAW8vLBQ3zoXOP1HlfLoA1ODIJTPmGsE
	znH43phTBwaKzpYUoGkQZDn6vKM+7uGEGh/R+ViZ89iLey4jPXc0wWTuDf0hYr0x0Bhrneenfxn
	lVpmpup03u0sBC6sW3KJ4SKxZcgL+tKkBH04X/cy48nxHTgnCoCKopXbY=
X-Received: by 2002:a05:6214:8004:b0:89c:5e33:2cc5 with SMTP id 6a1803df08f44-8ac860f3799mr187437446d6.20.1776088845326;
        Mon, 13 Apr 2026 07:00:45 -0700 (PDT)
Received: from [10.254.121.178] (mkmvpn.amd.com. [165.204.54.211])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ac849db735sm117139006d6.2.2026.04.13.07.00.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2026 07:00:44 -0700 (PDT)
Message-ID: <6bf9b402-fa60-4ed9-9c36-7a1c783d0000@gmail.com>
Date: Mon, 13 Apr 2026 16:00:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andi Shyti <andi.shyti@kernel.org>
References: <20260408122437.1364-1-christian.koenig@amd.com>
 <adedTCplYHeJPVKP@zenone.zhora.eu>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <adedTCplYHeJPVKP@zenone.zhora.eu>
X-Spamd-Bar: ---
Message-ID-Hash: 2J4S7TOFKM4U7QHGHG6WVC5W2WSAUMXL
X-Message-ID-Hash: 2J4S7TOFKM4U7QHGHG6WVC5W2WSAUMXL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: janusz.krzysztofik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, gaoxiang17@xiaomi.com, sumit.semwal@linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix order of trace and fput
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2J4S7TOFKM4U7QHGHG6WVC5W2WSAUMXL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.956];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 4A9B63ECE2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 14:38, Andi Shyti wrote:
> Hi Christian,
> 
>> @@ -845,9 +845,8 @@ void dma_buf_put(struct dma_buf *dmabuf)
>>  	if (WARN_ON(!dmabuf || !dmabuf->file))
>>  		return;
>>  
>> -	fput(dmabuf->file);
>> -
>>  	DMA_BUF_TRACE(trace_dma_buf_put, dmabuf);
>> +	fput(dmabuf->file);
> 
> funny, I just found out I sent the exact same patch, just few
> minutes later :-) [*]

I liked your patch better since it has more accurate tags.

Just reviewed and pushed that one to drm-misc-fixes, should land upstream by the end of the week.

Regards,
Christian.

> 
> Andi
> 
>>  }
> 
> [*] https://lore.kernel.org/all/20260408123916.2604101-2-andi.shyti@kernel.org/

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
