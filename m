Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456885FD16
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Feb 2024 16:52:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A812043CBA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Feb 2024 15:52:47 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id BC30143C77
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Feb 2024 15:52:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=UCYVeDPe;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2997c5fe6abso1447222a91.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Feb 2024 07:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708617151; x=1709221951; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=acEUAKerH6u/Pty/kZT9MouuZZClvd2ChedKeZNi+0w=;
        b=UCYVeDPeUibi3Ru0MHNSiEivVYsDJBfjUrNE3aypeOgQHeZLh1205nRcGCb4JpOqy+
         G1JIrh8SwZAlovC0dZuenxpoG0l6CoXUVjqABY0gy986nC6VVQiGk/eWxIHDpg2HiPEC
         vlkG74yvfcmOI5DGaqDbcsgALbVZ9QwX2KGRzxvPWqmXdr9VT9gXPA0J/JLde2SJ7sRx
         fPFarkya32rOM49Z+jJUi09PnN67Rb0yyzoK7Pl1PAO3k62XbMX9+DeEhuolmFtpI2+Y
         n8z/t1V9UtC4kpxaULlGRvnMZMwU77vj8eDKF1Y6ZMd26/cqrV/+bVDWOAXC9NejWpGh
         tHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708617151; x=1709221951;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=acEUAKerH6u/Pty/kZT9MouuZZClvd2ChedKeZNi+0w=;
        b=SFU8Tihxk7wjZWwq9x++cPqwufHmreG2dlG7JklSkGvLJjzpLjskC9BQZIng65EI4F
         XfaqdPsqUNeSzP8euw67eh+US9kVnZTtRLsOFHG8tm4zp/nGi0DS24dylQcD8YzN1f3O
         MZOW8RY1xt2G0wiMqnq1TSsb1XsM3OaNdDglYi9+FGBuAcBkQRNxpDDiCgKxD/NM/0Bs
         +vVRvYhZ+CI0aYIBNNxCJZL6yLwZL/qSnuqRxnsl9uCdil60bUPfpHDnybI4PA4aWLou
         L+kDS8ZkYiVknSQ2kQHnXhaKS2o8lUv/uV6PvaIZBMotFTAvbAzWoF78VtXHvBXiIBhx
         6W2g==
X-Forwarded-Encrypted: i=1; AJvYcCXnlP7JKE/cbqMwzDb4XMLb3tEcg8tOo6aujTmAhNG3DqdpgaEZ4S/GmhK/5QoAByOhPk1BBk2W3BKdk262GRpSbYEpIC45zF3B94V5dkY=
X-Gm-Message-State: AOJu0YyyUL5P04RY5Q3eXSHvGDjF6vAsFAkmTmz6RYrzL7hwkl5G6zaZ
	VRmmjext8EeV57svpGkIHIOE+UlBIVOPXRmMn8Me16buSG90iT3+
X-Google-Smtp-Source: AGHT+IGCzlwXgu8YVaMZ+m+7Kvgs800J1GdzbPKXXvO1tqGjOGUMFAYuRt/VIQi6Pgo50/PbmFYg6w==
X-Received: by 2002:a17:90a:460e:b0:29a:4f72:28d with SMTP id w14-20020a17090a460e00b0029a4f72028dmr1522156pjg.33.1708617150759;
        Thu, 22 Feb 2024 07:52:30 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9-20020a17090ad3c900b002998dbcf570sm9648815pjw.8.2024.02.22.07.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 07:52:28 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <fb2ac929-6650-444e-8f24-c9b1562d2bb3@roeck-us.net>
Date: Thu, 22 Feb 2024 07:52:26 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Pagani <marpagan@redhat.com>
References: <20231130171417.74162-1-marpagan@redhat.com>
 <a45b796d-5e04-4eac-b5ba-ea6bb3b6131b@roeck-us.net>
 <045bfb84-9833-442c-ac54-ed7a26451afa@redhat.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <045bfb84-9833-442c-ac54-ed7a26451afa@redhat.com>
X-Rspamd-Queue-Id: BC30143C77
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.29 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[13];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DMARC_NA(0.00)[roeck-us.net];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4D4WW5LPWM74SCXM7TBYQICSKEUWST3B
X-Message-ID-Hash: 4D4WW5LPWM74SCXM7TBYQICSKEUWST3B
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4D4WW5LPWM74SCXM7TBYQICSKEUWST3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Marco,

On 2/22/24 07:32, Marco Pagani wrote:
> 
> 
> On 2024-02-18 16:49, Guenter Roeck wrote:
>> Hi,
>>
>> On Thu, Nov 30, 2023 at 06:14:16PM +0100, Marco Pagani wrote:
>>> This patch introduces an initial KUnit test suite for GEM objects
>>> backed by shmem buffers.
>>>
>>> Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
>>> Signed-off-by: Marco Pagani <marpagan@redhat.com>
>>
>> When running this in qemu, I get lots of warnings backtraces in the drm
>> core.
>>
>> WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:327
>> WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:173
>> WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:385
>> WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:211
>> WARNING: CPU: 0 PID: 1345 at kernel/dma/mapping.c:194
>> WARNING: CPU: 0 PID: 1347 at drivers/gpu/drm/drm_gem_shmem_helper.c:429
>> WARNING: CPU: 0 PID: 1349 at drivers/gpu/drm/drm_gem_shmem_helper.c:445
>>
>> It looks like dma_resv_assert_held() asserts each time it is executed.
>> The backtrace in kernel/dma/mapping.c is triggered by
>> 	if (WARN_ON_ONCE(!dev->dma_mask))
>> 		return 0;
>> in __dma_map_sg_attrs().
>>
>> Is this a possible problem in the test code, or can it be caused by
>> some limitations or bugs in the qemu emulation ? If so, do you have any
>> thoughts or ideas what those limitations / bugs might be ?
> 
> Hi Guenter,
> 
> Thanks for reporting this issue. As you correctly noted, the warnings appear to
> be caused by the dma_mask in the mock device being uninitialized. I'll send a
> patch to fix it soon.
> 

Thanks a lot for the update.

In this context, the TTM unit tests fail as well in qemu, with worse result:
It seems there is some bad cleanup after a failed test case, causing list
corruptions in the drm core and ultimately a crash. I don't know if this
is also caused by the missing dma_mask initialization.

Thanks,
Guenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
