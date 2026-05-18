Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P+AEofUCmpK8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:57:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F62569391
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:57:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B6F0406AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 08:57:41 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 1C2C740475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 08:57:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=pwwmVtLh;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779094646;
	bh=2qTLaW/COV+GfxNT+S1Mi+IrpTKOlvQB9ZJrbZDjHvI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pwwmVtLhoMYQTahDd2zJsjpmIP5OzRDUKAElxBRbyqPqhFEwXyQkDtRrG0LxRQgI5
	 wF9B8xvYuSvSdD6HcplGKMY+AxD+Dd3nUeGfwtc/0ETVDauGIuE2fkRB30chfo/GrR
	 qUMrZDKkO04TeIYAle5Cgbvvkc7KiAsC/S2d53WSQoF6wbOUSAt/2b09UG1lY4fyQf
	 J74eyWJIz9tMYQU6K1fLG8IAgD9A10Q7P+RG4q7DS26UxuWdgnvvXRLIn4CCACWuGO
	 8MpaFvFYZPa6tbPLkRlP2CzjqnY+UymXtRmFzPkGG7e3hLDN35U7H/pH093EPXUJ09
	 O657R13F7DLaw==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 419D217E0443;
	Mon, 18 May 2026 10:57:26 +0200 (CEST)
Date: Mon, 18 May 2026 10:57:21 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Steven Price <steven.price@arm.com>
Message-ID: <20260518105721.42ffa64c@fedora>
In-Reply-To: <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
	<5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: U4ZX4C5TDSEUEOG47SE243HTCJ5OGADP
X-Message-ID-Hash: U4ZX4C5TDSEUEOG47SE243HTCJ5OGADP
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4ZX4C5TDSEUEOG47SE243HTCJ5OGADP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D5F62569391
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.09 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-0.959];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu, 14 May 2026 14:16:37 +0100
Steven Price <steven.price@arm.com> wrote:

> On 13/05/2026 17:58, Boris Brezillon wrote:
> > Right now panthor is mixed bag of manual locks and guards. Let's
> > make that more consitent and thus encourage new submissions to go
> > for guards.  
> 
> I'm fine with encouraging guards for future code - but I'm a little wary
> of a big change like this - it's hard to review it and check that
> everything works the same.

I can try to split that up, but even after the split, it will still be
a pain to review.

> And it's a little dubious that the mechanical
> refactoring produces more readable code in some cases.

I agree, though the mix of guard()s and manual locks makes things even
harder to reason about, especially when they appear in the same
function/block. The very reason I ended up sending this series is
because, as part of the IRQ refactor, I decided to be a good citizen
and use guards when I could, and I realized how bad the partial
transition was in term of ergonomics: not only you have to think about
whether the function/block scope is what you want (that's basically
what guard provides, unless you used explicit scoped_guard()), but you
also have to think about the interactions with your other manual locks.

TLDR; I'd rather switch over to guards entirely, or go back to manual
locks, but the mix we have right now is far from ideal.

> 
> That said I asked my friendly AI bot...
> 
> [...]
> 
> > @@ -3142,48 +3126,44 @@ panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
> >  	LIST_HEAD(remaining_vms);
> >  	LIST_HEAD(vms);
> >  
> > -	mutex_lock(&ptdev->reclaim.lock);
> > -	list_splice_init(&ptdev->reclaim.vms, &vms);
> > +	scoped_guard(mutex, &ptdev->reclaim.lock)
> > +		list_splice_init(&ptdev->reclaim.vms, &vms);
> >  
> >  	while (freed < nr_to_scan) {
> >  		struct panthor_vm *vm;
> >  
> > -		vm = list_first_entry_or_null(&vms, typeof(*vm),
> > -					      reclaim.lru_node);
> > -		if (!vm)
> > -			break;
> > -
> > -		if (!kref_get_unless_zero(&vm->base.kref)) {
> > -			list_del_init(&vm->reclaim.lru_node);
> > -			continue;
> > +		scoped_guard(mutex, &ptdev->reclaim.lock) {
> > +			vm = list_first_entry_or_null(&vms, typeof(*vm),
> > +						      reclaim.lru_node);
> > +			if (vm && !kref_get_unless_zero(&vm->base.kref)) {
> > +				list_del_init(&vm->reclaim.lru_node);
> > +				vm = NULL;
> > +			}
> >  		}
> >  
> > -		mutex_unlock(&ptdev->reclaim.lock);
> > +		if (!vm)
> > +			break;  
> 
> ... and it said the above has changed behaviour.
> 
> In the !kref_get_unless_zero() case you now assign vm = NULL which then
> leads to the 'break' case above. Previously we 'continue'd.

Oops, that one wasn't intended, indeed.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
