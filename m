Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGGSJPBi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E49431556
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 525ED404DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4E34F3F7D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 20:44:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=skL+bkV2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of dakr@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=dakr@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A4DFA40AFB;
	Fri, 27 Mar 2026 20:44:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB83C2BC86;
	Fri, 27 Mar 2026 20:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774644281;
	bh=pjtXtS4Kx1HfchVm/8WjMLE03rpfeGZ+zPWKpQMasjk=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To:From;
	b=skL+bkV2aB0KvWcJBOwBREVSIwrLBax9k1RDfFi2webQZzKwy2F7CY5MfU8uGwAlI
	 OgI5LnXoCigdAkh7QSEdsC0E2nEzUxLqZ12gKKsmtwNQ3idSwjHYdUN4V/ZrQtfsoW
	 bIk6k4X6rXZccNVJIkK1O2NQOpzm2065LEF3HO/gTtYahH2w7K3iECROEkpMvxbsj8
	 taj8vdbVpxuy6aHmILLO1erHo/6LWQPfkZoLD2jEPcZVWiv8+1cFTO2sJju2zaUvlE
	 XaqXMSjeM4yDaFYKMtJzW5UpSJUh5Q9t7QKL4gpjpjiU5YXW9Beenjlfrce8UnkorA
	 +rGkRWqd4mOcQ==
Mime-Version: 1.0
Date: Fri, 27 Mar 2026 21:44:35 +0100
Message-Id: <DHDUW55OWUU6.2YPVSZVHGYPI3@kernel.org>
To: "Lyude Paul" <lyude@redhat.com>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260316211646.650074-1-lyude@redhat.com>
In-Reply-To: <20260316211646.650074-1-lyude@redhat.com>
X-Spamd-Bar: ----
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4PRXQBADLQOMLUQ3QBRUSWSB6GMBUAZJ
X-Message-ID-Hash: 4PRXQBADLQOMLUQ3QBRUSWSB6GMBUAZJ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:54 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] (subset) Re: [PATCH v9 0/7] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4PRXQBADLQOMLUQ3QBRUSWSB6GMBUAZJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[572];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 50E49431556
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon Mar 16, 2026 at 10:16 PM CET, Lyude Paul wrote:

Applied to drm-rust-next, thanks!

> Asahi Lina (2):
>   rust: drm: gem: shmem: Add DRM shmem helper abstraction

    [ * DRM_GEM_SHMEM_HELPER is a tristate; when a module driver selects it,
        it becomes =m. The Rust kernel crate and its C helpers are always
        built into vmlinux and can't reference symbols from a module,
        causing link errors.

        Thus, add RUST_DRM_GEM_SHMEM_HELPER bool Kconfig that selects
        DRM_GEM_SHMEM_HELPER, forcing it built-in when Rust drivers need it;
        use cfg(CONFIG_RUST_DRM_GEM_SHMEM_HELPER) for the shmem module.

      * Add cfg_attr(not(CONFIG_RUST_DRM_GEM_SHMEM_HELPER), expect(unused))
        on pub(crate) use impl_aref_for_gem_obj and BaseObjectPrivate, so
        that unused warnings are suppressed when shmem is not enabled.

      * Enable const_refs_to_static (stabilized in 1.83) to prevent build
        errors with older compilers.

      * Use &raw const for bindings::drm_gem_shmem_vm_ops and add
        #[allow(unused_unsafe, reason = "Safe since Rust 1.82.0")].

      * Fix incorrect C Header path and minor spelling and formatting
        issues.

      * Drop shmem::Object::sg_table() as the current implementation is
        unsound.

        - Danilo ]

>
> Lyude Paul (5):
>   rust: drm: gem: Add raw_dma_resv() function

    [ Fix incorrect reference in safety comment. - Danilo ]
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
