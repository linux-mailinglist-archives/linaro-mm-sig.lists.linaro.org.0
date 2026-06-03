Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ei0+Ju9gIGr22AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 19:14:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3B263A170
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 19:14:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=mail header.b=axVI2v1o;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28C0D40A0B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 17:14:22 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id DED313F757
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 17:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780506850;
	bh=TLmekHM3EmmxpFvVf0s2ub+Xb1oU8p/GBNRtuqGNaWI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=axVI2v1oU/IIMKtn8X01EBEvuFuOLnOM54apTBHtHP2lQNaDvDltdf3Mde3xDboLu
	 5PF0kH4s8L9VjNDKIawb74LfJJWXmGaOzeF1zLQf4paiY1MU9Fg48onr55L+Ak3C8G
	 mLbg4vgV0L5ufHjNtLWU3GzDo6UkwI9PvIt+0xKtW27/6moaWiv9Qo5SkzMTQHK52Y
	 O32VNGIJ/wbtBBB+ckEX1eAnQHOFLsSxhilyZSaDEAE2C/GvXsM7p35rQDSGVxOI57
	 xFXL5sgkzS5K99/iAAf5x62loT1VeTEz8pFwcAjtBNpiPOAnYassMd6yX+qgWAQAwS
	 Vnti14waWdv6w==
Received: from fedora-2.home (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 57F2317E05FC;
	Wed,  3 Jun 2026 19:14:09 +0200 (CEST)
Date: Wed, 3 Jun 2026 19:14:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Almeida <dwlsalmeida@gmail.com>
Message-ID: <20260603191405.4c75badb@fedora-2.home>
In-Reply-To: <4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
References: <20260530143541.229628-2-phasta@kernel.org>
	<20260530143541.229628-5-phasta@kernel.org>
	<4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: HJSMCTSZXL3EMYUK6EJZCO4BKLUDVKI2
X-Message-ID-Hash: HJSMCTSZXL3EMYUK6EJZCO4BKLUDVKI2
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.o
 rg>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HJSMCTSZXL3EMYUK6EJZCO4BKLUDVKI2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_RECIPIENTS(0.00)[m:dwlsalmeida@gmail.com,m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kernel.o rg,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@l
 fdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,linuxfoundation.org,kernel.o rg,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F3B263A170

On Wed, 3 Jun 2026 13:41:02 -0300
Daniel Almeida <dwlsalmeida@gmail.com> wrote:

> > +    /// Called when the fence is signaled.
> > +    ///
> > +    /// This is called from the fence signaling path, which may be in interrupt
> > +    /// context or with locks held, which is why `self` is only borrowed, so that
> > +    /// it cannot drop. Implementations must not sleep or perform
> > +    /// long-running operations.
> > +    ///
> > +    /// An implementation likely wants to inform itself (e.g., through a work item)
> > +    /// within this callback that the associated [`FenceCbRegistration`] can now be
> > +    /// dropped.
> > +    fn called(&mut self);  
> 
> This is a central point. We ideally would want this to consume self, because we
> may want to move things out of the callback.  

This one comes from me. The rationale being that ::called() is called
from an atomic context, and the resources attached to the callback data
might require acquiring other sleeping locks to be released, and
sometimes you don't even notice immediately because said resources are
refcounted, and the lock is only acquired when you happen to be the
last owner. Yes, those can be caught at runtime if the C side is
properly annotated with might_sleep(), but that's not always the case.

If we defer the drop of the data only when the FenceCb is
dropped/recycled, we're at least not constrained by this "runs in
atomic context" thing.

> 
> Consider a fence design where signal() consumes self. Now consider this:
> 
> ```
> impl FenceCb for MyCallback {
>  fn called(&mut self) {
>    // Can't move the fence out, so we have to put an Option<T> just to be able
>    // to move.
>    if let Some(f) = self.some_fence.take() {
>      f.signal();
>    }
> }
> ```
> 
> This used to be the case when our version of the job queue used the "proxy
> fence" design:
> 
> 
> ```
> // Callback on the hw fence
> impl FenceCb for MyCallback {
>  fn called(&mut self) {
>    if let Some(f) = self.submit_fence.take() {
>      f.signal();
>    }

I'm pretty sure lockdep won't like it anyway, because this is nested
locking of the same lock class. For such proxies, we'll need to teach
lockdep about the nesting like has been recently done on
dma_fence_array & co. But I'm digressing.

> }
> ```
> 
> Although this is not the case anymore, since we phased out this design given
> Christian's recent work. Still, we should ideally not require Option<T> here in
> general just to make resource transfer possible.

I see. OTOH, don't we need to make this inner data movable if we want
to cancel the FenceCb before the fence is signaled anyway? And that's
most certainly a case we have in the teardown path.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
