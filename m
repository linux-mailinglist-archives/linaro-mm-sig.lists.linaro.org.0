Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD4cHKJi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 509B14314AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E88B405D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:09 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2EA793F783
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 01:15:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IENkgTmB;
	spf=pass (lists.linaro.org: domain of dakr@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=dakr@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9FDFA43717;
	Thu, 26 Mar 2026 01:15:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD11EC4CEF7;
	Thu, 26 Mar 2026 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774487704;
	bh=pJd7VIu8T6ytuoYLU/8L0M4NqwWqvsF6jINIz+xx8VM=;
	h=Date:Cc:To:From:Subject:References:In-Reply-To:From;
	b=IENkgTmBdlGYDsdhZ2+n86H8WxEnX8RMJTrItqqIB4CKZX7dNlnWtvzY1d2W8TetG
	 f3p8OJRu5GHncpxVRmWKHWj9zcqWcfpqU5aqXT1PXVlgWFjfX8Og7Y7S0I6F+NlktO
	 eFMi11p4N0gl+u4Yierf74zaHRoHQfki1jL0/k+UttyLSd5kSFZrGPgqp6oAYVIW9q
	 U0edh3Be6NvioY1wdOvDuFcQZ3LRcQbzi+pLhTfzLJ36tnTr8DPYsR+m3hIBhgcGOe
	 xV8W8m7GoZ3D5DxzkoBQGSiSPOFR87yNUORWP7daYP2B0PGuLw9thcSH9sRag3y1Oz
	 DYspZL5EhsJoA==
Mime-Version: 1.0
Date: Thu, 26 Mar 2026 02:14:58 +0100
Message-Id: <DHCBE2PV3C2G.O9UJNFQX7E5P@kernel.org>
To: "Lyude Paul" <lyude@redhat.com>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260316211646.650074-1-lyude@redhat.com>
 <20260316211646.650074-6-lyude@redhat.com>
In-Reply-To: <20260316211646.650074-6-lyude@redhat.com>
X-Spamd-Bar: ----
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6IFJN525JVGVYEMCRLSGYJHPUCWZ2IOF
X-Message-ID-Hash: 6IFJN525JVGVYEMCRLSGYJHPUCWZ2IOF
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:44 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 5/7] rust: drm: gem: shmem: Add DRM shmem helper abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6IFJN525JVGVYEMCRLSGYJHPUCWZ2IOF/>
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
	DATE_IN_PAST(1.00)[616];
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
	NEURAL_HAM(-0.00)[-0.964];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 509B14314AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon Mar 16, 2026 at 10:16 PM CET, Lyude Paul wrote:
> +    /// Creates (if necessary) and returns an immutable reference to a scatter-gather table of DMA
> +    /// pages for this object.
> +    ///
> +    /// This will pin the object in memory.
> +    #[inline]
> +    pub fn sg_table(&self) -> Result<&scatterlist::SGTable> {
> +        // SAFETY:
> +        // - drm_gem_shmem_get_pages_sgt is thread-safe.
> +        // - drm_gem_shmem_get_pages_sgt returns either a valid pointer to a scatterlist, or an
> +        //   error pointer.
> +        let sgt =
> +            from_err_ptr(unsafe { bindings::drm_gem_shmem_get_pages_sgt(self.as_raw_shmem()) })?;

This is unsound as nothing guarantees that the device used by
drm_gem_shmem_get_pages_sgt() is actually bound to the calling driver. It is
also not guaranteed that the DMA mapping within the returned &SGTable does not
out-live driver unbind.

There are two possible solutions.

  (1) Change drm_gem_shmem_get_pages_sgt() to provide this guarantee.

  (2) Don't use drm_gem_shmem_get_pages_sgt() in the first place and instead use
      SGTable::new(), which guarantees to destroy the backing DMA mapping on
      driver unbind.

In any case, this function needs to take a &Device<Bound> argument that matches
the bus devices stored in the backing GEM object.

> +
> +        // SAFETY: We checked above that `sgt` is not an error pointer, so it must be a valid
> +        // pointer to a scatterlist
> +        Ok(unsafe { scatterlist::SGTable::from_raw(sgt) })
> +    }
> +}
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
