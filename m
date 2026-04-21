Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLoIACRp52ke8AEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2026 14:10:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F4D43A754
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2026 14:10:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17070404D0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2026 12:10:10 +0000 (UTC)
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	by lists.linaro.org (Postfix) with ESMTPS id 1D8C1401DB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 12:10:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=lSJIvzpS;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 74.125.82.45 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-12c7212836bso10854239c88.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 05:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1776773406; x=1777378206; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HpS1oVTR3rIZCafWVa+4FbkfcJKXjhWy8xb1rynP1OU=;
        b=lSJIvzpS+sJ8vCshy6mjzjRYr6fiQTXZj2icoNbkkf1PoT6h7XUDGSScmZfx8OhKBA
         D9bIcPgriLz/G3/gTbmjD8KtpHIFrqxUB5xwtoBUozP8IlNqduZzeDZq9u/E4oDRZ/WU
         v+lVFsJfXd/HkivYgtu2yUiRYvsQEbZ7zwJGYzz9FlZlN83ufbaKag5VvPA+yXxFQwdR
         81DN+WCiZIk6jg+6V/RmiP0pLV0YPBEmZb4oOgf+yQo1jzeCf3YMrDXKVRYBJukU9uek
         KC+b2ULbjki3LuDfKXtQtTeginZM9g/oKOUqyYIFTrs2rLdcOFPbS5FgiJkWfw3f0cix
         rQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776773406; x=1777378206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HpS1oVTR3rIZCafWVa+4FbkfcJKXjhWy8xb1rynP1OU=;
        b=jSjjIyMw+epM+ip/oOlcp9067D/04D1M/2pTPZ2rIug+pigZLl4b7HRj/wIXS3iPzx
         FKWIhRh7uKVA7963UJ2ni1xNP8wgWrhIw44aTK/COitd9MkgtN+oZ1VDLOfW4L1/SQfQ
         RF9Zf07r3WSk8kxDV8LFG3HnAZ3AxUAqM3xyEcUyEz5lqkE/+vCenjgN626QE38m/RRD
         xk+LNmveXkQBSepTHI/JSXNxEoqO48EEz8e4ujlbO69z1pJ05QQB4e+hWXgNe5+aKnXg
         YI9ByURglGBGkUPrbB3NSO2orrEEhlJWCCtgFAZgv/cxeWemFPGFxkGUVQxSgsS6VkOw
         ej2Q==
X-Forwarded-Encrypted: i=1; AFNElJ/tb/91T7WdWsOrbDqIP56rqZ8ufX/mpCbb3w+x6J1AFrwvu1WI3kFwxFeM6WNMR9R0EaIpkprZ69VdeYtA@lists.linaro.org
X-Gm-Message-State: AOJu0YxFp4gCZ6dWmvxEhECijwnGx8OKUbEA0G088qHJ64amKmtVDRPX
	lOD5Jzt7JawyF0weEOFoFTommIy48YabBXjCL0CHfTCryS3dmyzcqex92t7zhCFX7tg=
X-Gm-Gg: AeBDievn1nEKfqev7R8ckQ5IX+gmdGxP7XgiZblirwJtBA/e1h1a0+n9vgdA2Q107PE
	dbul44M7TDZjYgobSIk+WJtPAh6bZQMOhJNNzWnXL5I8C0T3ILpVZd46Qs8DiDllQJBqrkFkJC8
	X13dplQuMtJ1txPzTlmxMSFWQq7+AMW6YswjWHlfkF2yEDFoVcerUXBXjJGND3mX0EniCzcyVf0
	z72Otvap0BnZ8Rq/f7fqNSaqoSOG8R9qVM0SHF4pmLY427dYkrVrfoTtfgQpqO9UNvHKHk7ZGX/
	AxSbmYZReRzh1yw7N4d3zApAzXL2q8xR81vXtMQVs02ZDMDpm/PgBla488TQ1JZ3IwnepPd39nG
	OI9LReQL5B8EqI+6aWrb0+kdzV83kM1Kv4kTqcjGHxlLmY/BTWnNhXB3uLkVzBR8yOji2HkbBvc
	FYk1x3SYPDzxHmWi4NQr0=
X-Received: by 2002:a05:7022:ff45:b0:128:ca6f:adf2 with SMTP id a92af1059eb24-12c73fae276mr12134183c88.32.1776773406031;
        Tue, 21 Apr 2026 05:10:06 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12c74a2ac32sm19260013c88.15.2026.04.21.05.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 05:10:05 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wF9vY-00000001ErI-0ePf;
	Tue, 21 Apr 2026 09:10:04 -0300
Date: Tue, 21 Apr 2026 09:10:04 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260421121004.GA3611611@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
X-Spamd-Bar: ---
Message-ID-Hash: IE2TNMXVKG7F4GPGQRUIMGGAOPOWHQW5
X-Message-ID-Hash: IE2TNMXVKG7F4GPGQRUIMGGAOPOWHQW5
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IE2TNMXVKG7F4GPGQRUIMGGAOPOWHQW5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 69F4D43A754
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 01:53:31PM +0200, Jiri Pirko wrote:
> >> You reach there when is_swiotlb_force_bounce(dev) is true and
> >> DMA_ATTR_CC_SHARED is set. What am I missing?
> >>
> >
> >So a swiotlb_force_bounce will not use swiotlb bouncing if
> >DMA_ATTR_CC_SHARED is set ? 
> 
> Correct. Bouncing does not make sense in this case, as shared memory is
> already being mapped.

It is a little bit mangled, there are many reasons force_swiotlb can
be set, but we loose them as it flows through - swiotlb_init()
just has a simple SWIOTLB_FORCE

Ideally DMA_ATTR_CC_SHARED would skip swiotlb only if it is being
selected for CC reasons. For instance if you have the swiotlb force
command line parameter I would still expect it bounce shared memory.

Arguably I think this arch flow is misdesigned, the
is_swiotlb_force_bounce() should not be used for CC. dma_capable() is
the correct API to check if the device can DMA to the presented
address, and it will trigger swiotlb_map() just the same without
creating this gap.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
