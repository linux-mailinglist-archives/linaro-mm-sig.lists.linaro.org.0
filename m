Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANeVOObkrmmsJwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 16:19:02 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 614BA23B843
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 16:19:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5798B3F702
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Mar 2026 15:19:01 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by lists.linaro.org (Postfix) with ESMTPS id DDE2C3F702
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 15:18:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="KyhnFl/f";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.53 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-89a0d53f3d1so73225786d6.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 08:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773069538; x=1773674338; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oQoTcBcgSknYFDDhFBTqv/EpNp1AB8jH1zi0Ovpsfro=;
        b=KyhnFl/fh5FD5jYLHM5yAXb7VV4WAY9HymgbVgrzL9VwhvIagRyckJ0SPNY+yJeC1j
         T7PDkBEjN52YHqqocuvksC65ELD3woo7EG5jq4X7TOmf8zVHyMrdwjwdGk6Z/kcEZ8MV
         rAfGNLvdrCHpmS1iOhI4/SwUk+fswLKQO559HcAPVpTodPsZd+Xpf1mYYFAhetbb/jp+
         I/hZKSLsOPu2zNQ5yGIkkvjyK3lGRiLZXia41db/vtLPFonuWVNoiEwZZTQXHCZvIeD0
         N4h6tq7/c1K4hQ6rIwGkRq+np35rtQStpKdWu39gIpFQsFdpV8yMBg2WzCMK4Q6n35mx
         AJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069538; x=1773674338;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQoTcBcgSknYFDDhFBTqv/EpNp1AB8jH1zi0Ovpsfro=;
        b=kd+9OCLhYLyqEWhKbt16naqJIkI5JdJDzBCB9vibKO2UgPYh+cvFKgJpXCBdrekjmT
         citWfgi7KsZy3MrcbwuQM+rglA5S4PjDqVbbXBL4NZ8sSHEsyUHKJ8lHPBlwVEDjJsEv
         PrzXuTHIruvflzfw1FmPz2wW6vOvdWW6EGAdTwrF0H+id4dBXqa5W3RMDYzLFNP5dzDE
         m7x8D5DUHO9AxvyQAaQsq/KXciCdV1rqNHcl6SxS9HFYAG7cmZaZoumlOZnawv88XrRK
         zfq6D+CaxeEDXcgxw0ENftxsxy0RjZpjw9mPNqxmziFKpo669MGRjc2hNN0t+Y8lC3Wp
         AfwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxiQAE4HWnNWQaHf42HCYmeLcHs0TegPHOh3iu9iw1EBpu8OLfEm8v90iD9bHWUt+Pi3UEKxSV9GX65QiW@lists.linaro.org
X-Gm-Message-State: AOJu0YxchSdxaetysePly52aQZ3S4eZA4MfZktLNBsiIalRzo91Uq+At
	DLyOfI8H761J15+om5JIWfukzRCFLKe0rBbWsL4M/asyotGRDa/6TkfsXvG3+vPzffs=
X-Gm-Gg: ATEYQzyVjgbk+m5YFQ8AzA2mJM/SOf3Gm6j9b+TParmOCJ5MMuqIrobfAFjgbaTj9WE
	e/xCyTJuj5t7HHduYla2VHaT43UQV1SfXaJ9cAumv2199SbKkQ6xmufYwuuYN6Ye6jtyQp9S4pn
	NNkuAiVBC+0ZknN7t/iX9QbyYSD/3BfVmQ2huA6UvPe/vhXJUO2G4pjJSast7CXujjSZ9rkTrIa
	LBMiBmjLM98ZlmQ7dbvnO2Ulch2Xh8Q7uK7GsKWkSxdnFpRaYVajOncsrhXLKzqj1cGzfIjhnwp
	YvnAkV01wuxS76iJ/UFNNgDItI0GZqQyFDLM0qo3rtRW0380yfZWRQ6es7I+qTWHWsMPLPUFH67
	bK3T7NpEage3K/9mor/d2fRum+P5kiRQ/B0LJFGukC0PH0OOj1w/dJMN+kj83UjOaOa4BIrYg9A
	YQOBW0nsSucRYnTdFTQZyQLLk0crYYU1eaniyxEkhRD8ccKqKPcGFlLzYT4hX/CBjoeune8bFga
	1+l5IyA
X-Received: by 2002:a05:6214:3019:b0:89a:502:6054 with SMTP id 6a1803df08f44-89a30a2b5c5mr162839796d6.8.1773069538417;
        Mon, 09 Mar 2026 08:18:58 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a316ec570sm80067436d6.39.2026.03.09.08.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:18:57 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vzcNl-0000000Giv6-151p;
	Mon, 09 Mar 2026 12:18:57 -0300
Date: Mon, 9 Mar 2026 12:18:57 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260309151857.GO1687929@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309140233.GW12611@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: KZXTM426PGS5P4P5W4AFP3UU6LGKMBOM
X-Message-ID-Hash: KZXTM426PGS5P4P5W4AFP3UU6LGKMBOM
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KZXTM426PGS5P4P5W4AFP3UU6LGKMBOM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 614BA23B843
X-Rspamd-Server: lfdr
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
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.579];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:mid]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 04:02:33PM +0200, Leon Romanovsky wrote:
> On Mon, Mar 09, 2026 at 10:15:30AM -0300, Jason Gunthorpe wrote:
> > On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:
> > 
> > > > +/*
> > > > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
> > > > + * (shared) for confidential computing guests. The caller must have
> > > > + * called set_memory_decrypted(). A struct page is required.
> > > > + */
> > > > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
> > > 
> > > While adding the new attribute is fine, I would expect additional checks in
> > > dma_map_phys() to ensure the attribute cannot be misused. For example,
> > > WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
> > > that we are taking the direct path only.
> > 
> > DECRYPYED and MMIO is something that needs to work, VFIO (inside a
> > TVM) should be using that combination.
> 
> So this sentence "A struct page is required" from the comment above is
> not accurate.

It would be clearer to say "Unless DMA_ATTR_MMIO is provided a struct
page is required"

We need to audit if that works properly, IIRC it does, but I don't
remember.. Jiri?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
