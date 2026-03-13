Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFroHg9g5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F5C430FD4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 232DB3F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:19:10 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 91BA240303
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2026 19:32:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=LOBh1++9;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of deborah.brouwer@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=deborah.brouwer@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1773430314; cv=none;
	d=zohomail.com; s=zohoarc;
	b=dCtUpA72DgbuIKL9O7k3iED2EbGaiPwO9BxA6LdOfoB/F97l94vVIP0Id7M+943c29i9x5tMSjBTYiMlZY3tJXMrh39avPYcC6lBxbwKcSjfpRhNM/tHuHyeTFl7JdxVhU4Niz0NdigkWg2GKklugebiRHyDSGEv2B962Trl1IA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1773430314; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=j8NYgTjqm5J8YGPNrQsUQ8qlvCL3SU/ajcRLywCawTY=;
	b=mF7bg6oiim1URAFIUb6sIoHVXdrQ1AABGBm7LtkZVqne5KMq8E3vs49jB2vHYxJQOdelqVQfAqOxScOfgMbYZ4wnrGnN2ITQ48/efPdpevgjXIECf+9dLJA8lNrZxmv+MEjw4znCEo2lAxySf1VMWN6+SIOQUnbIhfdZSx46b6A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=deborah.brouwer@collabora.com;
	dmarc=pass header.from=<deborah.brouwer@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773430314;
	s=zohomail; d=collabora.com; i=deborah.brouwer@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=j8NYgTjqm5J8YGPNrQsUQ8qlvCL3SU/ajcRLywCawTY=;
	b=LOBh1++932WGWkRuCEzr5sH0ch8ZTY8I10e8moTY16JCJ7VRSV5oSTmJXiQqpree
	FOuxZ4IjYelwsAI0I+c3G8VuqC0QshLGRwqBUG2U4inOSqDIyGxZI9T1k0x2PcRNZjW
	JroBwAFRsvXcGLxRTgKaPkjB7AeG1G5PYn+E6UZk=
Received: by mx.zohomail.com with SMTPS id 1773430313153333.71971598965956;
	Fri, 13 Mar 2026 12:31:53 -0700 (PDT)
Date: Fri, 13 Mar 2026 12:31:52 -0700
From: Deborah Brouwer <deborah.brouwer@collabora.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <abRmKGUFas8rC_w6@um790>
References: <20260311195246.2439593-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260311195246.2439593-1-lyude@redhat.com>
X-Spamd-Bar: ----
X-MailFrom: deborah.brouwer@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P4TAHXRYDFB44DW2OWO334TRIQBBWKM4
X-Message-ID-Hash: P4TAHXRYDFB44DW2OWO334TRIQBBWKM4
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:20 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 0/7] Rust bindings for gem shmem + iosys_map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P4TAHXRYDFB44DW2OWO334TRIQBBWKM4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[909];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.713];
	FROM_NEQ_ENVFROM(0.00)[deborah.brouwer@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 18F5C430FD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:52:39PM -0400, Lyude Paul wrote:
> This is the next version of the shmem backed GEM objects series
> originally from Asahi, previously posted by Daniel Almeida.
> 
> One of the major changes in this patch series is a much better interface
> around vmaps, which we achieve by introducing a new set of rust bindings
> for iosys_map.
> 
> The previous version of the patch series can be found here:
> 
> https://patchwork.freedesktop.org/series/156093/
> 
> This patch series may be applied on top of the
> driver-core/driver-core-testing branch:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/driver-core/driver-core.git/log/?h=driver-core-testing

Hi Lyude,
I rebased the tyr firmware boot series on v8 of this series and it
works without issue. Thanks for this!

Tested-by: Deborah Brouwer <deborah.brouwer@collabora.com>

> 
> Changelogs are per-patch
> 
> Asahi Lina (2):
>   rust: helpers: Add bindings/wrappers for dma_resv_lock
>   rust: drm: gem: shmem: Add DRM shmem helper abstraction
> 
> Lyude Paul (5):
>   rust: drm: Add gem::impl_aref_for_gem_obj!
>   rust: drm: gem: Add raw_dma_resv() function
>   rust: gem: Introduce DriverObject::Args
>   rust: drm: gem: Introduce shmem::SGTable
>   rust: drm/gem: Add vmap functions to shmem bindings
> 
>  drivers/gpu/drm/nova/gem.rs     |   5 +-
>  drivers/gpu/drm/tyr/gem.rs      |   3 +-
>  rust/bindings/bindings_helper.h |   3 +
>  rust/helpers/dma-resv.c         |  13 +
>  rust/helpers/drm.c              |  56 +++-
>  rust/helpers/helpers.c          |   1 +
>  rust/kernel/drm/gem/mod.rs      |  79 +++--
>  rust/kernel/drm/gem/shmem.rs    | 529 ++++++++++++++++++++++++++++++++
>  8 files changed, 667 insertions(+), 22 deletions(-)
>  create mode 100644 rust/helpers/dma-resv.c
>  create mode 100644 rust/kernel/drm/gem/shmem.rs
> 
> -- 
> 2.53.0
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
