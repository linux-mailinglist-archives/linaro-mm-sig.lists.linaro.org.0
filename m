Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL/lK7NzxmkCKgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:10:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A53E343FC3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:10:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 381E5402DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 12:10:26 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by lists.linaro.org (Postfix) with ESMTPS id A0CB33F9DC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:10:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=pNeCNyvl;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.174 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8cfcb045909so266678385a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 05:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1774613423; x=1775218223; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mfIjIsS8DDjImfR7uqLq3DxooHT40pwlydrjxj52iHU=;
        b=pNeCNyvl+p/wgbvlT5bxBtsuvgEVzaYoPPWFDz/RvE1yfrkxNprHyuA2HvrJsf+Kbn
         rrV6sNyi6GPSH6p/pCwNdy98LRl3QWDNDJQ1IFDGboirCu+rBGhcuSqKoK3K7hlFQYX9
         FTzsMWz2G3wXzPNDKpquZdWEb8+EZzO35EYaACbaow2DuLFGyzQcyjGk47mFItXZJfU3
         LN1drq+gO1AmgtkQuh0vP3DTuu5tYXVAYYTdWBpvCgto5yuZbQu6L4ddFP4FcSCYmkhO
         nEsfE7NV/u/kHwyBZeY4IZKFdmiblwB2AjQMEICS+yysKRuAZdz+5nrt3ZuW7TvI0QEy
         /rQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774613423; x=1775218223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mfIjIsS8DDjImfR7uqLq3DxooHT40pwlydrjxj52iHU=;
        b=llscrRI9uRSiEfdVjPiPsdljVkSjcyxD2yx0sxBluaE59uR7u+YP41IHOd8b74XQjS
         vcTwHYowJWncbYH3MayuZvpwJr6dCpWjjRjaIAL2YN7vv+bR0WR0CjqMcl/1lrYocm5D
         8rRkTDbW7hRoPjwjwXovZhH3UN1GWKPGQg152UPo8Le17V6Bt3y2RlPbI0ImVy65E9tl
         0uvLvzVb/bu7WDWNN95y6U/6CyE+T/Cs8i+hO5rqLZKj8NoQ83Jm5BzQEq6PuER5aq7a
         504NuND4XGlQBVglWvdbC8AHxyI0QB2+qFJhdKbF/ZoaDvjTURVy7RSXc9wkwgD42/ZW
         QLTA==
X-Forwarded-Encrypted: i=1; AJvYcCXxoJRFhK2DRbUghjJg4chlxN7pMTdeh1FDXnnAVjkqi2us0Gb3KUmGYbv+XSXhJN0rsP5fInYJ9ezVaN0P@lists.linaro.org
X-Gm-Message-State: AOJu0YwWq6vjFjHaHLHn9/IN1+3GU2pA+5/ou+aguL2l60a7JeeIB8JQ
	2ybJMg9ymkTdcfa5fgeQ6lpQDUkEgsEamRGEwp0T9cTTzkhCaDwk15cnJSAqyXEiseY=
X-Gm-Gg: ATEYQzypbky8ljDGcISQuvRgGOf/XyjqhfYHPtcCzgusbYmviHd1e0YuRrGQ562YXg7
	r1riQyOlBb+zEFYBNMjwVlvpVUgg3LeqZWmXwR8rlA6alI7wyoInrbiGi8noZ8tbeusxux0CzWj
	zoNGsj5jXLadtaLfHcBQ5MRkH6UwrWRIhhFyKgo9kXoDoRiOwGGr5SVsXNZJj3xTNiCWQTNXNzd
	KRmiVe2t2Sbb20GcqV5GtJTvfWQ6kZh290CVzl1pMzjNbbXeNHp51zF8wTDgT4btQ1Jx+droGH0
	qBDtab4Rd+W8i7vz5oqF45lUMKDTxpIxTvKELt4kMsA95r+vr8FHdRE9qglUspuRyvUTmKEWKsn
	iZbSWih2eTJZ0gvAasgNckIQR1EhPYxPiiNjGVVoLmVCGndHFqTyrMAk0/90B3q4g8JEeU5KIZu
	Zrb6oMOshKXzmeWtWiD7k+qQ+YBReWJLQT7KLAdizwoXq5am5E7wsqU9N7fLkxfZsB1ynqLg==
X-Received: by 2002:a05:620a:4589:b0:8cd:6175:9b17 with SMTP id af79cd13be357-8d01c5bf3ffmr259778785a.3.1774613423032;
        Fri, 27 Mar 2026 05:10:23 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8d00e3c3a0dsm507700285a.13.2026.03.27.05.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 05:10:22 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w6617-00000001CcJ-1QAP;
	Fri, 27 Mar 2026 09:10:21 -0300
Date: Fri, 27 Mar 2026 09:10:21 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
	"T.J. Mercier" <tjmercier@google.com>
Message-ID: <20260327121021.GB246076@ziepe.ca>
References: <CGME20260325192400eucas1p2ae38ff4c2b3ab35a7047cfd680d9fda3@eucas1p2.samsung.com>
 <20260325192352.437608-1-jiri@resnulli.us>
 <f2047cd7-91a8-4f6a-b6b9-0e4f143f6854@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2047cd7-91a8-4f6a-b6b9-0e4f143f6854@samsung.com>
X-Spamd-Bar: ---
Message-ID-Hash: V6QTEFIIUDJKZH4U76XE733DXYPJEGXB
X-Message-ID-Hash: V6QTEFIIUDJKZH4U76XE733DXYPJEGXB
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V6QTEFIIUDJKZH4U76XE733DXYPJEGXB/>
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
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 4A53E343FC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 10:38:10AM +0100, Marek Szyprowski wrote:
> On 25.03.2026 20:23, Jiri Pirko wrote:
> > From: Jiri Pirko <jiri@nvidia.com>
> >
> > Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
> > run with private/encrypted memory which creates a challenge
> > for devices that do not support DMA to it (no TDISP support).
> >
> > For kernel-only DMA operations, swiotlb bounce buffering provides a
> > transparent solution by copying data through shared memory.
> > However, the only way to get this memory into userspace is via the DMA
> > API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
> > the use of the memory to a single DMA device, and is incompatible with
> > pin_user_pages().
> >
> > These limitations are particularly problematic for the RDMA subsystem
> > which makes heavy use of pin_user_pages() and expects flexible memory
> > usage between many different DMA devices.
> >
> > This patch series enables userspace to explicitly request shared
> > (decrypted) memory allocations from new dma-buf system_cc_shared heap.
> > Userspace can mmap this memory and pass the dma-buf fd to other
> > existing importers such as RDMA or DRM devices to access the
> > memory. The DMA API is improved to allow the dma heap exporter to DMA
> > map the shared memory to each importing device.
> >
> > Based on dma-mapping-for-next e7442a68cd1ee797b585f045d348781e9c0dde0d
> 
> I would like to merge this to dma-mapping-next, but I feel a bit 
> uncomfortable with my lack of knowledge about CoCo and friends. Could 
> those who know a bit more about it provide some Reviewed-by tags?

I'm confident in the CC stuff, I was hoping to see someone from dmabuf
heap land ack that the uAPI design is OK.. TJ?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
