Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAf+N/fHrmlwIwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 14:15:35 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 507D123988F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 14:15:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 469463F702
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Mar 2026 13:15:34 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 190923F702
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 13:15:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=gwcuYzFO;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.176 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cd858e860aso143406985a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 06:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773062131; x=1773666931; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JEXl2Wcr1hEZjBx3v2qoobpIKwPw4w6oHEBSBd3/8YI=;
        b=gwcuYzFOuz4Fq7xGKoPpuc/bwmCYDuXCgr1P/VaIwlKC3iRbPl8ar89RRp+/v3PV/3
         +8amf0Kn/wy8VkycNMY4uKPgZCfbNLgXleaQWF/LO+ukwPcJ8FniyGa5LP5FpuM3OdJS
         lvD8gIAN59uqq/7TzaTZWYtLzzuFIQjZX6EQBvVeOpDhUZfdb9oKQ8LWumZqQnZ3vfu+
         oRCuslP1R/8Il6QjPHXwOtSgoxow74rLW5clpWscsoERoxFomLW97p3PxqSUuYWpaQ+i
         k8U7T0OtLF/3/0OunbVmBRvLVM2rZJQ/L3GTE1xR1wWPD8GGz/P02ZRLhI2BXnCPr8Px
         Mz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773062131; x=1773666931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JEXl2Wcr1hEZjBx3v2qoobpIKwPw4w6oHEBSBd3/8YI=;
        b=Q2vwy3g3lC9Hz20yi0SxPyc+k7F6iZIYX4FT/mXDP8lsG5W3c2IGRARozA/l6gjZUU
         LKYj8PsOQI33lfmhaj9aHJ9IAzEQWi5aVY7cmlJgRU9OOb3Jhmdi3xCFLt8Mn1UMLQPp
         /LJh57xOjTFCqJweWoacvGwR1GVob55O6aCs6pZ2tKg7Gn8xVDvaVrhcZt3Cmn4pWsqi
         A3ZohHGcxIYf0ZHK3sAsfrXRBexx1sbFZ085OzHdmu+AS3gp6lGoV4KlCGd0hA8ihzFT
         C0Z2tPW11fe4ik6b8oZcNjjHfuaEXBbkZCD8iqNPgiS3e0pMKPqQqsBoRCaBAYleIsh5
         +n0A==
X-Forwarded-Encrypted: i=1; AJvYcCX0XsTxhFHE7+kGCxaKWxmrS0oDesDUNNfE/E23zyvqt0av5YOtE602piOZa6rQUPakMLq8kQHDM5UHeKoz@lists.linaro.org
X-Gm-Message-State: AOJu0YzIoXHx7NifSaDV/oSTf1iSsRfPW98YiG78FV966etUisDXkM5x
	Fe7d02MhS4D+5lV8817S2T7R6dt6oixjypSpyj9QKMLWdyWkB/RQhhS4aEw5SITxTfI=
X-Gm-Gg: ATEYQzyyBC528RwFbyMWUnEGY9bukoW9Pps8OB4xq9vnS+As7c8jT7H1owhIJ7WOtwO
	kGot0Gs3RvsIQP0PUVQsCMVOT2WvKHvwhy1/TIkJIHEchqf9988Hm467laRPmihdrhNyIO9celT
	Xj0SypjD6OXVWyYmFZ7kqASvEeEqpSItAZqhBfu+0ptfuaa7jVcpyWZnE1kQ0rRpVqgkIm1WwZz
	cKr/WokZoUZkm9glttrZO916Xye91/D3rrrBLbhqhxAZoPd7NrQXYDqHJcANbaSyr51jSwscY4O
	QEWtiFrNeJ5QhEF3fXtV0rukDA4uoaAEairJDTkVI7PMl3CvfuF4y1lXYUU1vpuB0hIYUUJtxel
	uePMHUEB3qnNP2xQxkZA55aLarzOt2br/Amjup8N6u1YR8efncbhmM34PRMZi19+bfpMcInZmjX
	jgmdYCatWA0Y7q975Zd9e6IwEmK9YUj8Ggu0wmkirlzgx47PAhURlP/tcCNEk44ztB5huBZEZGi
	KHSwjkW
X-Received: by 2002:a05:620a:4381:b0:8cd:76fa:1be1 with SMTP id af79cd13be357-8cd76fa1ff3mr1023224185a.14.1773062131558;
        Mon, 09 Mar 2026 06:15:31 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd7e857037sm378431585a.20.2026.03.09.06.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 06:15:31 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vzaSI-0000000G6JW-1RIq;
	Mon, 09 Mar 2026 10:15:30 -0300
Date: Mon, 9 Mar 2026 10:15:30 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260309131530.GJ1687929@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260308101948.GO12611@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: 43NOYLH6HLIWIBROV622MSBRPFHADCXO
X-Message-ID-Hash: 43NOYLH6HLIWIBROV622MSBRPFHADCXO
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/43NOYLH6HLIWIBROV622MSBRPFHADCXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 507D123988F
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
	NEURAL_SPAM(0.00)[0.605];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:

> > +/*
> > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
> > + * (shared) for confidential computing guests. The caller must have
> > + * called set_memory_decrypted(). A struct page is required.
> > + */
> > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
> 
> While adding the new attribute is fine, I would expect additional checks in
> dma_map_phys() to ensure the attribute cannot be misused. For example,
> WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
> that we are taking the direct path only.

DECRYPYED and MMIO is something that needs to work, VFIO (inside a
TVM) should be using that combination.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
