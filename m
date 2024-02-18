Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E65E68597AD
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Feb 2024 16:49:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 931F3446BF
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Feb 2024 15:49:34 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	by lists.linaro.org (Postfix) with ESMTPS id 75A543EFFE
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Feb 2024 15:49:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=HzQifcer;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 209.85.210.175 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e435542d41so11575b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Feb 2024 07:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708271355; x=1708876155; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HygTjwzdRXTfZJXPzKIecTHavlYq9dpN87Z53dyDVe4=;
        b=HzQifcerIsv1yI+xM8E9we4NJAF4JqCovXUZp8/Jrww3LORLOlDMQQfoiOC8Vv/Mju
         +khidR0q9dMqLGr1tyE+1kHIQARb1DLXcXuoVcvykxxjYdakFImhzRyPqung1XUA9H0C
         k8yhMnHpAo7xA3wI0kz0lC9DSctrttABvWYTk5oSlidqN3k4d/fPEW/TraQw/GZO66uP
         YZFuwbh/7jkkF5MbFOURgGSVPN5ZkN9azWmqUlFVRSjORsBmWXZteVGyRQNoD3+F7Txj
         PFAtC1glWA2TEe4rREiSU8BDI4tZs2zB43gW0v3IUaTU2XZb5KY9Mxsoi4SmIt050swn
         PNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708271355; x=1708876155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HygTjwzdRXTfZJXPzKIecTHavlYq9dpN87Z53dyDVe4=;
        b=MMQEKzpUNDdxWtHCRmnjF8HH4h3848H24dBPGbCdJTZ48ECNMffK3/eC0A9bt+geS8
         OnyqutkJyQJHmCBWTKTFvCcQLpajRdPH4CilXb0A2cXZzmHffg4/IzlWdmwjodY/DHBv
         pjF9w/t/dhjsxQtNRnD0OKmBDQrBOG1hJUEfQalpuz/+cDVTtWJqfjKpS3ktDahbK1FX
         ReXo8BZeJGa2UJIzG5mjDm72r7YazMBSDo8bVE1cTnqqs0T3KPqM9ylSPx3FMZXLRYey
         XgQbrizJjP5vVy7xtS1PEKLiL4TqAWwcdaozOFl00kymIFI+KHU5+idKFWWtuyXL1tEP
         R5GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmpFx/IvZZ+5tS2y10S7I8BVi2dyXviM2kllBxLMJuY4IEOkLavyhNPq6uLdREc7zqamOSktaTZ7SkJNxKLqRuJQJsv1VU/lwwW1JAjIk=
X-Gm-Message-State: AOJu0YzybsAkgSO0v3TlRsVKX6ZPN51Nc5EJfkFfTwooQ8cqbVyoPFHI
	Q7ZaLJoG0pVXs9ZZjs5cgtRCwJ92nQgrVpKU7ckTLQArfFdcgDnV
X-Google-Smtp-Source: AGHT+IGtFTeG1xqdQuslCfg46RlX50lmgmsSXRs+AAF00N8eLRLlV9eHfM6YvKpqSj14RdRN0G6Org==
X-Received: by 2002:a62:cec2:0:b0:6df:c3b1:1c2e with SMTP id y185-20020a62cec2000000b006dfc3b11c2emr8689930pfg.30.1708271355446;
        Sun, 18 Feb 2024 07:49:15 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x42-20020a056a0018aa00b006e144bac418sm3149232pfh.74.2024.02.18.07.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 07:49:14 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 18 Feb 2024 07:49:13 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <a45b796d-5e04-4eac-b5ba-ea6bb3b6131b@roeck-us.net>
References: <20231130171417.74162-1-marpagan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231130171417.74162-1-marpagan@redhat.com>
X-Rspamd-Queue-Id: 75A543EFFE
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[linux@roeck-us.net,groeck7@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.175:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,groeck7@gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.210.175:from,2600:1700:e321:62f0:329c:23ff:fee3:9d7c:received];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XWGUNCIS5G66LUJ6Y3YTLXMEEIJZBOJ5
X-Message-ID-Hash: XWGUNCIS5G66LUJ6Y3YTLXMEEIJZBOJ5
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XWGUNCIS5G66LUJ6Y3YTLXMEEIJZBOJ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Thu, Nov 30, 2023 at 06:14:16PM +0100, Marco Pagani wrote:
> This patch introduces an initial KUnit test suite for GEM objects
> backed by shmem buffers.
> 
> Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
> Signed-off-by: Marco Pagani <marpagan@redhat.com>

When running this in qemu, I get lots of warnings backtraces in the drm
core.

WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:327
WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:173
WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:385
WARNING: CPU: 0 PID: 1341 at drivers/gpu/drm/drm_gem_shmem_helper.c:211
WARNING: CPU: 0 PID: 1345 at kernel/dma/mapping.c:194
WARNING: CPU: 0 PID: 1347 at drivers/gpu/drm/drm_gem_shmem_helper.c:429
WARNING: CPU: 0 PID: 1349 at drivers/gpu/drm/drm_gem_shmem_helper.c:445 

It looks like dma_resv_assert_held() asserts each time it is executed.
The backtrace in kernel/dma/mapping.c is triggered by
	if (WARN_ON_ONCE(!dev->dma_mask))
		return 0;
in __dma_map_sg_attrs().

Is this a possible problem in the test code, or can it be caused by
some limitations or bugs in the qemu emulation ? If so, do you have any
thoughts or ideas what those limitations / bugs might be ? 

Thanks,
Guenter
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
