Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hr6tH/xKKWr0TwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1376F668D23
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=zohomail header.b=kZOwsiH2;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28C6740A49
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:31:07 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id E0EBB40A0D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 00:20:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781050811; cv=none;
	d=zohomail.com; s=zohoarc;
	b=Md6nNVHOEmyf92T+nDS9CJqqPti1DRSk4EGTpu6C0HNPBqi7DA1DYIbBx6XVRwZKGYg+7FAMp+zRe7yCffEmmdzShm8ChVUIErNYfWJ2C0Z5rs+Jr8hsTWIn9J8BQuxRZb4sbMgl4VDNNe+Fp/YF9+TLnLcWHr/2HsETWIA/0Fs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1781050811; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=O9fNTHv6wbBG42jHa8mAw6pvJNsDpQ9M5O3qhn0l1Vo=;
	b=CtLCFoN/HUmgdMdaKxivguNvewtVOqnOf/GU04aTbIVSPmsAiqq9UfL62Sh1qJdTXzHGhlCky8R8LX2pYa39GqhrE6Q5y6NWBjh3JAboYzSpnuOv/I0JcGJ2wxwR6L9BGZsTO/owZFYHVWFWX4701w6nqoN2HlVw+vD+Fu7sY3Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=deborah.brouwer@collabora.com;
	dmarc=pass header.from=<deborah.brouwer@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781050811;
	s=zohomail; d=collabora.com; i=deborah.brouwer@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=O9fNTHv6wbBG42jHa8mAw6pvJNsDpQ9M5O3qhn0l1Vo=;
	b=kZOwsiH29/dAC81lSN65kYEuoTOcxiFWnRZI3eUfAzUyKksZvENO4jOoeUKfRUoY
	DRrLnkZ+tvZiLYP+qTTiiMl8pibUI+SDHnj/H9Qez+JfTBfn21bbtaEiqZZVW628ZQS
	t+lDFRobsq/ZdrPqaZCGglTpHn7wVk4iLg/THklE=
Received: by mx.zohomail.com with SMTPS id 1781050810087120.3536602556942;
	Tue, 9 Jun 2026 17:20:10 -0700 (PDT)
Date: Tue, 9 Jun 2026 17:20:09 -0700
From: Deborah Brouwer <deborah.brouwer@collabora.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <aiituaFg3i4Qpb-a@um790>
References: <20260608183057.2001376-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608183057.2001376-1-lyude@redhat.com>
X-Spamd-Bar: ----
X-MailFrom: deborah.brouwer@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GZNLXTKZSSTMQZ6EXCMOWDJGLPF353LQ
X-Message-ID-Hash: GZNLXTKZSSTMQZ6EXCMOWDJGLPF353LQ
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:03 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v19 0/4] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZNLXTKZSSTMQZ6EXCMOWDJGLPF353LQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[deborah.brouwer@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deborah.brouwer@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,patchwork.freedesktop.org:url,collabora.com:from_mime,collabora.com:email,gitlab.freedesktop.org:url,linaro.org:email,um790:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1376F668D23

On Mon, Jun 08, 2026 at 02:29:00PM -0400, Lyude Paul wrote:
> Most of this patch series has already been pushed upstream, this is just
> the second half of the patch series that has not been pushed yet + some
> additional changes which were required to implement changes requested by
> the mailing list. This patch series is originally from Asahi, previously
> posted by Daniel Almeida.
> 
> The previous version of the patch series can be found here:
> 
> 	https://patchwork.freedesktop.org/series/164580/
> 
> Branch with patches applied available here:
> 
> 	https://gitlab.freedesktop.org/lyudess/linux/-/commits/rust/gem-shmem
> 
> This patch series applies on top of drm-rust-next
> 
> Patch-series wide changes since V15:
> * Fix some major rebasing errors I somehow didn't notice :(
> * Drop the dependency on LazyInit, use the trick that Alice suggested
>   instead.
> * Fix dependency ordering so that Tyr can get the vmap stuff first
>   without the other bits.
> Patch-series wide changes since V16:
> * Fix ordering one more time (SetOnce::reset() doesn't need to come
>   before adding vmap functions)
> * Rebase against the latest DeviceContext changes from me that got
>   pushed.
> 
> Lyude Paul (4):
>   rust: drm: gem: shmem: Add DmaResvGuard helper
>   rust: drm: gem: shmem: Add vmap functions
>   rust: faux: Allow retrieving a bound Device
>   rust: drm: gem: Introduce shmem::Object::sg_table()
> 
>  rust/kernel/drm/gem/shmem.rs | 524 ++++++++++++++++++++++++++++++++++-
>  rust/kernel/faux.rs          |  16 +-
>  2 files changed, 524 insertions(+), 16 deletions(-)
> 
> 
> base-commit: fea3a2dd7d3fc1936211ced5f84420e610435730
> -- 
> 2.54.0
> 
Thanks, it's working nicely with Tyr. To make this work with [1] I did
have to make a few changes to the KunitDriver and tests, but that
is a separate issue.

[1] [PATCH v2 0/7] rust: drm: Higher-Ranked Lifetime private data
https://lore.kernel.org/rust-for-linux/20260603011711.2077361-1-dakr@kernel.org/

Tested-by: Deborah Brouwer <deborah.brouwer@collabora.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
