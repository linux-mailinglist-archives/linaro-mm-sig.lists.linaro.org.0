Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOAdBQLTrmlhJAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 15:02:42 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 951E923A398
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Mar 2026 15:02:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D4D43F702
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Mar 2026 14:02:40 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7617C3F702
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 14:02:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mFE88Eji;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF4F2439F4;
	Mon,  9 Mar 2026 14:02:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEADFC4CEF7;
	Mon,  9 Mar 2026 14:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773064957;
	bh=SEe9AcDd4ntguFWkVF0XZ6xYXFWlhPkDwFkvUnAI4tU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mFE88EjioB4ri1nLF+1vx5qcRcBgb8j7Ub/WVDb/xg8T8f2cI8Ax0E3o+G+RwlVkg
	 lZRrk5z5Yhuh4u2NSq7wgOAO86myJk/UwehUGeblGzJJOzUbQ119fKgDrqVFeWnQvr
	 3/bxDqQiy0rlrUkca4bCzmOmm3TiwngjHQiGqMoxgueIzf9DCR6fadme74JHmRE5/U
	 4wMPDfhG5xMHmahG4jrEfAKexnlSrVk7eMJTs3WPOuGA8CSr88NHVa802tpk63JWfP
	 NdPcWZN9UPkoqVNcCarjN37V24lOjTkISEalk9fmTXwCcsM9lC7w2vMLo0hdykgyLu
	 JdjmgJt/KmuhQ==
Date: Mon, 9 Mar 2026 16:02:33 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260309140233.GW12611@unreal>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309131530.GJ1687929@ziepe.ca>
X-Spamd-Bar: ----
Message-ID-Hash: Y6UPPSN6H4OERLHCABNG5FKAPDNCPFCT
X-Message-ID-Hash: Y6UPPSN6H4OERLHCABNG5FKAPDNCPFCT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y6UPPSN6H4OERLHCABNG5FKAPDNCPFCT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 951E923A398
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_SPAM(0.00)[0.658];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 10:15:30AM -0300, Jason Gunthorpe wrote:
> On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:
> 
> > > +/*
> > > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
> > > + * (shared) for confidential computing guests. The caller must have
> > > + * called set_memory_decrypted(). A struct page is required.
> > > + */
> > > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
> > 
> > While adding the new attribute is fine, I would expect additional checks in
> > dma_map_phys() to ensure the attribute cannot be misused. For example,
> > WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
> > that we are taking the direct path only.
> 
> DECRYPYED and MMIO is something that needs to work, VFIO (inside a
> TVM) should be using that combination.

So this sentence "A struct page is required" from the comment above is
not accurate.

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
