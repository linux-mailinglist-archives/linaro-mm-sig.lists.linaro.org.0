Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBDVKNn062mcTQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2026 00:55:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 24465463EDC
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2026 00:55:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1992B40692
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 22:55:20 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by lists.linaro.org (Postfix) with ESMTPS id 36BCB40476
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 22:55:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=T9Oot3Z6;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.51 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8a5800772f3so62280626d6.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 15:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1777071316; x=1777676116; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dw33gELuGUNq59I/OY2f7G4Yqpl4DyjVQaY1TU/E47I=;
        b=T9Oot3Z6kvt29EsA6SzKeFPwrTyogusnE6b6l7UqzSKvrbe+VljttllSOSMplNWw4k
         opDSEcNTmHqTNGxPPixjt6TgyR/or9rCKNQ2CkDVH+eIQmvO1eFFuV1qUenQreEojcZB
         lw5wrXWRRWAc5lWEoMGMlMH6xOdjVYLau+SxyMZJl1ojh0jGaT6P+ZydSKqxOTf0ZuD3
         bfslXzdQM8/je5jlXULfRSgvCv5eiTu+ytLlPCz4gHxJhdL8T0O325eLcWh5dcSaSmHU
         Wrz/WiQvoQZz+PDpnr+fQjyA7XVLHvPbKWeBk2I4q1cRLzLcVxdqBmo6nAcC3vQ/RiwE
         llow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777071316; x=1777676116;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dw33gELuGUNq59I/OY2f7G4Yqpl4DyjVQaY1TU/E47I=;
        b=irb8its9Zp0Q0syscxUonYT+wrZQbp9cn2wqNDLK8sA7sIgjCitPODIYq9Sw2caN/Y
         L+ZtX5gtZsqfJTTp12Y9RClNxsq3ngampYhBEd0eTy+SOcm2rL07N++UFnfZeS8J1z6p
         rYukChkREQ0O9PWUvass5IH8oby4II4/Re+B3nLAS20NOtUmETna9a2B8Jrvgy0S4a4P
         DVxjy+h/Cz2Wv+eBP6obfDpLBiT6lgLAT2Yp+FBqcN9defqYXRDKSjEUswfzTB5TylXZ
         PanwSw3RNJhnKcgiKqkMBglKTL34KqCUEq2CfUUqzNChTe24AfDrkAQn7Quix63tSvAq
         t5ZA==
X-Forwarded-Encrypted: i=1; AFNElJ99v/wV4zOEkejrNIEYPeWgGvajj8Z0CS9uAnZsmkAtruGsgOp7WURGAvYXvf4ELTjKocQEUHQvLOcnD3Ps@lists.linaro.org
X-Gm-Message-State: AOJu0YwJq8uOceNNadlCPEpbN5QxW08QUNv2lqkk0GnKDVMamDTtDMGR
	E2mDK7jmYHhBwmuxYbMbGWOemDg8zU9On0jZJaXiWoL7/ew/Yl8pRQPqUUCvy5thPoY=
X-Gm-Gg: AeBDievf/jAa1H+tMmOhsqND8H49P8MHKQP0vDcv8H9aME8DfeJcOA7A6SHsQdJWWbU
	R6SwOrA3RVeN4MhAFkE8JOtgCgpWKxrJeiLePfJY+yssco/aPC9ImHS+pd65/+4Jq2fJ9F00LnJ
	+j1rp32fxLB2exnHY+2o8GLiQv3Bym3zGj5eI67vOtXUpraSQnp4nqoImigldcwfahIE4wYfEkx
	Nn1FZPGcWii2hQQO+MYl00MGHtxQZOu59QC60PtzcP/3OYp0Zpeq1JEzbpIGpJVtyXwFD5kdsMe
	FlRXlvbweayfR1T6A2lQv1RT8zWdqGUc3vrO3kvwqHpPZBAWPKXuv+GtqXJN/ScOBTK1aqhZAe2
	mho+QnhkETNEyTpH+cOpKUkTW1iVHwZ1K5x9E8oJVQRRjbMAON/O9iaPYyYK/eeS4z+r59nP8A5
	G0qpOCTSdZ7ejjKQcw6qPRvg6FdRdPiy1W4zDHSPtLgb+X3tXKuV3DL2Wzqs2DMFdJ0GvmX9cfs
	2Pi/PfnyGQdysq3
X-Received: by 2002:ad4:5f0e:0:b0:8b2:2474:8f3a with SMTP id 6a1803df08f44-8b224749034mr37604816d6.25.1777071315667;
        Fri, 24 Apr 2026 15:55:15 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac78513sm198480506d6.19.2026.04.24.15.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 15:55:15 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wGPQY-00000004wIG-2XfJ;
	Fri, 24 Apr 2026 19:55:14 -0300
Date: Fri, 24 Apr 2026 19:55:14 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>
Message-ID: <20260424225514.GE804026@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
 <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
 <yq5awly0d504.fsf@kernel.org>
 <tteiecxfqy4k24wnzvp6ocxnuopyhmqtne2xwh5htwldlbzjnp@o6cbzdlurxld>
 <20260421121004.GA3611611@ziepe.ca>
 <yq5aik9jcpzm.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq5aik9jcpzm.fsf@kernel.org>
X-Spamd-Bar: ---
Message-ID-Hash: PSBOK3NKPH33MZ6E6ONWOEEOG34ZLTML
X-Message-ID-Hash: PSBOK3NKPH33MZ6E6ONWOEEOG34ZLTML
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PSBOK3NKPH33MZ6E6ONWOEEOG34ZLTML/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 24465463EDC
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

On Wed, Apr 22, 2026 at 02:48:37PM +0530, Aneesh Kumar K.V wrote:
> Jason Gunthorpe <jgg@ziepe.ca> writes:
> 
> > On Tue, Apr 21, 2026 at 01:53:31PM +0200, Jiri Pirko wrote:
> >> >> You reach there when is_swiotlb_force_bounce(dev) is true and
> >> >> DMA_ATTR_CC_SHARED is set. What am I missing?
> >> >>
> >> >
> >> >So a swiotlb_force_bounce will not use swiotlb bouncing if
> >> >DMA_ATTR_CC_SHARED is set ? 
> >> 
> >> Correct. Bouncing does not make sense in this case, as shared memory is
> >> already being mapped.
> >
> > It is a little bit mangled, there are many reasons force_swiotlb can
> > be set, but we loose them as it flows through - swiotlb_init()
> > just has a simple SWIOTLB_FORCE
> >
> > Ideally DMA_ATTR_CC_SHARED would skip swiotlb only if it is being
> > selected for CC reasons. For instance if you have the swiotlb force
> > command line parameter I would still expect it bounce shared memory.
> >
> > Arguably I think this arch flow is misdesigned, the
> > is_swiotlb_force_bounce() should not be used for CC. dma_capable() is
> > the correct API to check if the device can DMA to the presented
> > address, and it will trigger swiotlb_map() just the same without
> > creating this gap.
> >
> > Jason
> 
> Something like this?

Yeah that reads pretty sanely.

> static inline dma_addr_t dma_direct_map_phys(struct device *dev,
> 		phys_addr_t phys, size_t size, enum dma_data_direction dir,
> 		unsigned long attrs, bool flush)
> {
> 	dma_addr_t dma_addr;
> 
> 	if (is_swiotlb_force_bounce(dev)) {
> 		if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
> 			return DMA_MAPPING_ERROR;
> 
> 		return swiotlb_map(dev, phys, size, dir, attrs);
> 	}
> 
> 	if (attrs & DMA_ATTR_MMIO) {
> 		dma_addr = phys;
> 		if (unlikely(!dma_capable(dev, dma_addr, size, false, attrs)))
> 			goto err_overflow;
> 		goto dma_mapped;

I suspect P2P is probably broken on CC because this doesn't make
sense..

This should flow into the
phys_to_dma_unencrypted/phys_to_dma_encrypted block as well AFAICT, it
shouldn't just assign phys. Assigning phys to dma on a CC system is
always wrong, right?

It is is more like

        /* To be updated, callers should specify MMIO | CC_SHARED instead of
	 * implying it. */
        if (attrs & DMA_ATTR_MMIO)
	   attrs |= DMA_ATTR_CC_SHARED;

        if (attrs & DMA_ATTR_CC_SHARED) {
 		dma_addr = phys_to_dma_unencrypted(dev, phys);
 	} else {
 		dma_addr = phys_to_dma_encrypted(dev, phys);
 	}

        if (!dma_capable()) {
            if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT)
	       fail
        }

> and dma_capable() now does
> static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size,
> 		bool is_ram, unsigned long attrs)
> {
> ....
> 
> 	/*
> 	 * if phys addr attribute is encrypted but the
> 	 * device is forcing an encrypted dma addr
> 	 */
> 	if (!(attrs & DMA_ATTR_CC_SHARED) && force_dma_unencrypted(dev))
> 		return false;

Yeah

And with the above little edits it works for MMIO now too.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
