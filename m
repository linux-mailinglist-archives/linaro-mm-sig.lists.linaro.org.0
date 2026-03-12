Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ej7DQcKsmlnIAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 01:34:15 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AD83226BB3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 01:34:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C9E93F6A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 00:34:13 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by lists.linaro.org (Postfix) with ESMTPS id DC47B3F6A0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 00:34:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=UaW8jveg;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.178 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8cd847b4b23so39465185a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 17:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773275650; x=1773880450; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oVlsIEeUlShNo2vVDcti72NQw3N4AQ0tu/N5/EFylTo=;
        b=UaW8jvegIFVPttj17sE42SIES+7jNWUmjiMuT3TXeEhuopPcy7V8x4WmHWdIte3/Wb
         ONvYsZVI4i1yVXjGSCPQgkwi6mvzlIEsGjBLyPdN8iVRYm4U0nAJL7Qz7HtSOek4CqI+
         nsROxvxafmpnzfKS/umL+1pG6n25gIbW4oLzER6RKnblQ0TrB0eSJxPfReVIwMTAhw5C
         IdOvs/urJ++9tz3lVZcTfpS5eHuq3lQBZJgy4RMnVASR5z5oP9D24WnP6+4b2hWEF8uQ
         LGOQIHrkysTtVbBByrf//hz1nMq78nwU8UO9rf2lIhVHCxOvwRlErYWu4jW6VVOQVxib
         +rGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773275650; x=1773880450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVlsIEeUlShNo2vVDcti72NQw3N4AQ0tu/N5/EFylTo=;
        b=dafEC41OrgYW/pAwSwWAmfMVbvxkd2EHX3IX5Hu9BqHanLsKFmthnUYYqm0P8PVzoe
         1qmpQyRE4/NQGW+cKcz7ORSU8TwrtXfRKjZ4BsXtPA5Clb0Yuv1P6lWRt+y2hH+7Uc43
         ERkSqIcmAgcaSAkANYj5ZCCv8J40pFoB4fZqlORq3/WUiFRGa1AqUABIMWRXa+bN4z2g
         vuwbrl58j/JUJL8yIpLnGrE8fJCrbP1BAL9GemhWpNSt+yBsrA3zB1cmIoxTdGbA6yVx
         fgY74/rCh3oXnS1Q3t/uBxH+fFv+JyNru0t85V3DX1aC/hHLVUxVxisxgAgkmIRYf1uL
         zQrA==
X-Forwarded-Encrypted: i=1; AJvYcCWBb2uCbZRcZ2KS3pvYAT7/zIkJ2qECU8vO0ANLxGkn6zXJR7FI41X8kQKL0PnRdM1Ee+gFS2l+J60uhzKz@lists.linaro.org
X-Gm-Message-State: AOJu0YzOxv1F0LtV57/wyBgoJu9dVKK6az/mTztepdJboH0n8mjybzbU
	bKGgFXLsLCuchP7Ov5zFOSRUElFMr4AXXgmwKSn0LGl2mH1Zu8tlFDjxxgTJtTRVKfM=
X-Gm-Gg: ATEYQzzeE5mShd82XCQtLRjwOE53xtDJ+JsWA7s5OlZKUxuIXuXVV6ql1W+px1ZsfUL
	UhhivuVLU2uaIYS8Zgk4lQjeeFkhj/jJ62bbaFHaGnT8hbcmXxsKACVCN43UClIjG1JhlL8kVfW
	fDkCIdtD9Fhul0yYQzvbl5RgSl9iRUM4SHvpXCymxQ/jV+JCWJyGY3jfh05H18i4sbtE7k12eLt
	dkhztHd9Vu0A8VscaEPYegG3C0klPgqic3VoMQAoZGxKJd1Thn19XCFucN2weEyUovmASyrBbqf
	7srY2VUZx8RdtX1MpwNdbxcBXlfhrcRky6MbRQmC1kNKe0tcvzjEK9hiPx2M9L7Igfgfo1HRpYq
	iVckU/65kv+JXiF78Gw6xbNtwrh3A1mkaNg8IBvTulsNGh3q7ncZVvSleIv03wBIvaL1tGo2D3F
	hkRR+DIn4WI6FX3VqzpwjI1sRTMSWTBE/Jg2dY1SC5cFSfjD+86oW2vszMsXhhAN6VIoQQMbNVx
	EKvNjhf
X-Received: by 2002:a05:620a:298e:b0:8ca:305b:749b with SMTP id af79cd13be357-8cda1ac2072mr553438885a.60.1773275650360;
        Wed, 11 Mar 2026 17:34:10 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda212cac1sm263453685a.33.2026.03.11.17.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 17:34:09 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0U08-00000006Zyx-3dXg;
	Wed, 11 Mar 2026 21:34:08 -0300
Date: Wed, 11 Mar 2026 21:34:08 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260312003408.GA1469476@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
 <20260309151857.GO1687929@ziepe.ca>
 <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
X-Spamd-Bar: ---
Message-ID-Hash: QGTORGDLVFJI7TUGPPAFIP7BRV226Z5D
X-Message-ID-Hash: QGTORGDLVFJI7TUGPPAFIP7BRV226Z5D
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QGTORGDLVFJI7TUGPPAFIP7BRV226Z5D/>
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
	NEURAL_HAM(-0.00)[-0.835];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,ziepe.ca:mid]
X-Rspamd-Queue-Id: AD83226BB3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 09, 2026 at 06:51:21PM +0100, Jiri Pirko wrote:
> Mon, Mar 09, 2026 at 04:18:57PM +0100, jgg@ziepe.ca wrote:
> >On Mon, Mar 09, 2026 at 04:02:33PM +0200, Leon Romanovsky wrote:
> >> On Mon, Mar 09, 2026 at 10:15:30AM -0300, Jason Gunthorpe wrote:
> >> > On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:
> >> > 
> >> > > > +/*
> >> > > > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
> >> > > > + * (shared) for confidential computing guests. The caller must have
> >> > > > + * called set_memory_decrypted(). A struct page is required.
> >> > > > + */
> >> > > > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
> >> > > 
> >> > > While adding the new attribute is fine, I would expect additional checks in
> >> > > dma_map_phys() to ensure the attribute cannot be misused. For example,
> >> > > WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
> >> > > that we are taking the direct path only.
> >> > 
> >> > DECRYPYED and MMIO is something that needs to work, VFIO (inside a
> >> > TVM) should be using that combination.
> >> 
> >> So this sentence "A struct page is required" from the comment above is
> >> not accurate.
> >
> >It would be clearer to say "Unless DMA_ATTR_MMIO is provided a struct
> >page is required"
> >
> >We need to audit if that works properly, IIRC it does, but I don't
> >remember.. Jiri?
> 
> How can you do set_memory_decrypted if you don't have page/folio ?

Alot of device MMIO is decrypted by nature and can't be encrypted, so
you'd have to use both flags. eg in VFIO we'd want to do this.

Jason

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
