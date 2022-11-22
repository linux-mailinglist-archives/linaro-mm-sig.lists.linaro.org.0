Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F72E63432F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:04:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 824EE3ED90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 18:04:10 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by lists.linaro.org (Postfix) with ESMTPS id 720763EBB6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 18:04:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=hxxP9fZ6;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.42 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f42.google.com with SMTP id h10so10596678qvq.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 10:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W7bbvg502GJyTi71welT8fT4qCp26MYzBqtmzcFheTI=;
        b=hxxP9fZ62k/WHlETcVnpO383tcNmRuS7yIx/IpNDUCXAWScuWBJNaAC2vxcDJQhhj5
         +1LaEX37jCer4UQZaGjPADUTUunxG8JLJWtZ4fXZkq1T1vSelmhQcOoaiy0KrstV3AYd
         HjoRnTNrheWMNe6tU682RoIXTv7EH90llcP2Z5W62dMKqkF6zmHG3k94cdmg4ysjUrn+
         qChMzjNimzH5EwpYaivhb4OaFjP9d+ZZWghVvLH5ndeAU0xk9TVLh+Ql5MAZqVwzy4TX
         fscgFDeo4bUZZmPTQFxPHAf1QR9XhOwMtEOyQ7XU+xQTE2Sh5q1PYMMR5YfORC6JJSXz
         VpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W7bbvg502GJyTi71welT8fT4qCp26MYzBqtmzcFheTI=;
        b=ziTm3067uPqc3Z8C5craA3crx5Gcxz81sIUU7l9tPji5E53n856tSkmhYy+5uFu+BJ
         gnpVNMJus+0LNQUVal6H6WgfEg+xBegMCk4IIS8cC9matyM7FDvEYpAIR3DJXOfrqih+
         JOnai+1eK5qMKhNPUJp3l7eyHiY6QGlHbX8LVEeirH8MAcB5gprevjJjjhef4kRIV4U2
         p/uPOhYrskfHs0gSyvW1fy1/zBL3j6cjk85SRdzEO3CDok3umLvAWLTfTBxDTHpkkyY/
         KL/tIfOF+ubKu/rP4Gs/T6rzPN27FEfEKZ4wMHVOG0ZWydEXm5zB2/cXcBl4T5PB6Kkg
         NQYA==
X-Gm-Message-State: ANoB5pkZ+M9u7bnnh3NSF+K5xwpjPY2BfNkQFpZBNxJjNcWRqh/lCzzP
	hHW1jG0E6s53SfOc8t6n5uj2Fw==
X-Google-Smtp-Source: AA0mqf7pUdu4FJ8e+r980JSI/AIM2yP3chEuRqiXapxgcE+JycWP3gFdESoy8ic1cf1zQoje4UGVKw==
X-Received: by 2002:ad4:4082:0:b0:4bb:6a11:9418 with SMTP id l2-20020ad44082000000b004bb6a119418mr6545993qvp.70.1669140240503;
        Tue, 22 Nov 2022 10:04:00 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id ff22-20020a05622a4d9600b003a5416da03csm8615171qtb.96.2022.11.22.10.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 10:03:58 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxXcj-009wAz-UQ;
	Tue, 22 Nov 2022 14:03:57 -0400
Date: Tue, 22 Nov 2022 14:03:57 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y30PDdsvHIJo5YHR@ziepe.ca>
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
X-Rspamd-Queue-Id: 720763EBB6
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qv1-f42.google.com:rdns,mail-qv1-f42.google.com:helo];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.42:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TUP4AHD7EXBJ4UW4FJLM6R2GH76LR2JV
X-Message-ID-Hash: TUP4AHD7EXBJ4UW4FJLM6R2GH76LR2JV
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TUP4AHD7EXBJ4UW4FJLM6R2GH76LR2JV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 22, 2022 at 06:08:00PM +0100, Daniel Vetter wrote:
> tldr; DMA buffers aren't normal memory, expecting that you can use
> them like that (like calling get_user_pages works, or that they're
> accounting like any other normal memory) cannot be guaranteed.
> 
> Since some userspace only runs on integrated devices, where all
> buffers are actually all resident system memory, there's a huge
> temptation to assume that a struct page is always present and useable
> like for any more pagecache backed mmap. This has the potential to
> result in a uapi nightmare.
> 
> To stop this gap require that DMA buffer mmaps are VM_PFNMAP, which
> blocks get_user_pages and all the other struct page based
> infrastructure for everyone. In spirit this is the uapi counterpart to
> the kernel-internal CONFIG_DMABUF_DEBUG.
> 
> Motivated by a recent patch which wanted to swich the system dma-buf
> heap to vm_insert_page instead of vm_insert_pfn.
> 
> v2:
> 
> Jason brought up that we also want to guarantee that all ptes have the
> pte_special flag set, to catch fast get_user_pages (on architectures
> that support this). Allowing VM_MIXEDMAP (like VM_SPECIAL does) would
> still allow vm_insert_page, but limiting to VM_PFNMAP will catch that.
> 
> From auditing the various functions to insert pfn pte entires
> (vm_insert_pfn_prot, remap_pfn_range and all it's callers like
> dma_mmap_wc) it looks like VM_PFNMAP is already required anyway, so
> this should be the correct flag to check for.

I didn't look at how this actually gets used, but it is a bit of a
pain to insert a lifetime controlled object like a struct page as a
special PTE/VM_PFNMAP

How is the lifetime model implemented here? How do you know when
userspace has finally unmapped the page?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
