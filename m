Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w1EpCiBmIGrh2gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 19:36:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A704163A33E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 19:36:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=k6GuzLHo;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0EF53F757
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 17:36:30 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B57753F756
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 17:36:21 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 16F9B44679;
	Wed,  3 Jun 2026 17:36:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B67511F00898;
	Wed,  3 Jun 2026 17:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780508181;
	bh=W0atkC16En4IZdbZdsjQCqRJTQ/DFbwkWu7nB7JU7rQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k6GuzLHolszMng3zvvnj4ig6KsyEe8YZ3G6TWu8AXbevwaxGf1jdLgsI6Glnb+I2j
	 6JKSUTaZeowY4BfMH2885Wkjkq8HGg/fdRgzVLrKPEW3XhBfKCIOYRRBD90HI4AAkl
	 gBjzAnQFxnqr0RZQFvfzT+XYhRnK5nmWmkdl/+5JYMKhLF8PiR8hNbHpPL7PwZLTaL
	 HVyu5BL97LiCX57JyNgvwP9N3+niNQahQCw3DS5xoca7CBJq8lbZZLdjURglHHgDps
	 J/jQ3HPlWkofs7MeYjgk82JG/Bgf45CmMz0Tyd9ZN+lImR9rfSmcgLjGBVUj7UT4gn
	 alqB968aJdIaA==
Received: from phl-compute-07.internal (phl-compute-07.internal [10.202.2.47])
	by mailfauth.phl.internal (Postfix) with ESMTP id 00F26F40076;
	Wed,  3 Jun 2026 13:36:19 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-07.internal (MEProxy); Wed, 03 Jun 2026 13:36:19 -0400
X-ME-Sender: <xms:EmYgakmDEdhpTVl_WevR5FD2XgK8yHnavi6_-lejRvlqtVxcyrD34A>
    <xme:EmYgagmmGa__kdlLlByW8q9iaLSrjoYHsMhpnRzkuG7P0k6XN_CFBBvKbU1s0TSeL
    CaIc_OYk7q_w-GpKeUVhe6xLQf25U34QEpZpAOdZ5bBhtaadDL-7A>
X-ME-Received: <xmr:EmYgaiOShT93iIwSlKdA5xiXK4_XcvBxd28PYRZ8vs5RYoKsNuacHoO-Fvo>
X-ME-Proxy-Cause: dmFkZTExiAM4S4b6rbDBhYcsipt+WIcQ6U92Lpa8QXEozbKBUuNKniuqF8nLee6VGz/1IM
    wH6MVeq3StWv5bWz4ExZ/72JO0pdsE/ERKzl1Iak6MH3IHVKCisb2zKFOiWyK1VU3RoKDM
    9OnABto/ClwFrxe0LbbCc/Urw/R6p8Xjq28WIPem4wxbpq1/FJ3pE+iZS5/fH9BBNpEK0k
    Py0InZHQ+GCPlEffJv06Lhqaxtlhb82z+KTZACF67znSkQXHpsH9PhF/f5iO6JCaXaJL9C
    mfpvi8h/iV12rJIfTbMWXQgJ8TrK2rnhiX7vmT/FZMuXUIsxVNaxup2eCLx9K5GzlGY9bq
    7W0aE11bk31uSLtt0kamnoXI/FseX6YWbA0HCpgFi/yp2k1iT5hz5rZQVW/vNPaHZsa+Gk
    Gi2rQ1Pjw/iWKAb0VSccByuRxHo58Y0r4u6Ra9htuCzrz7kflCTBMjnwhg88aPL4AHDFSM
    UxNFI3WeQPpPzCEzDf2pOCWqB475UqLzKUu7a9dVnSOX2v/yF87QF3iLuhU45iwjLslLkY
    EdkAKhG5/QK/aWZjzR0NQ+M6lBaaPVpzjcr+q+RfYtHue87beXg7Q2cOJeZYMpL+Sdc5EX
    pFXxEXoo5A6YDWE1fAsvBcpZQigub9OcACkAIUgZPkJJnKUqWpchmmlv5KuQ
X-ME-Proxy: <xmx:EmYgapMF0_L7rcF8njCmaB8Np2WhsRwIUyPwh8tsG9nkbplnj7HguQ>
    <xmx:EmYganHUyR9F7eLuQ6I1T3DUUgWD3flki5o_JNttRj4Jaqqc0WelqQ>
    <xmx:EmYgano-0gjNnHZcUEHJRktEzt6deD11ds10nYaz0fK8UP8h29_wNQ>
    <xmx:EmYgak8ksADbxYFMj44ImNygib9jFYCpnzUlT_eoPSlHJWElAY9pEg>
    <xmx:EmYgaoQZqpT6gnp3USQITMG_I8BoTGRAa-cNGbBns6qS8R3RaX6VCDT7>
Feedback-ID: i8dbe485b:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jun 2026 13:36:18 -0400 (EDT)
Date: Wed, 3 Jun 2026 10:36:16 -0700
From: Boqun Feng <boqun@kernel.org>
To: phasta@kernel.org
Message-ID: <aiBmELaetTWXcmhu@tardis-2.local>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-4-phasta@kernel.org>
 <ahr9gtzQLSbPeBx_@tardis.local>
 <e8b16f3b40d42f3b0a8814180fa9b06f82c9d901.camel@mailbox.org>
 <ah2L-TMT5UHSd_Hs@tardis-2.local>
 <441fccce521857ab82b84bb8e5ab539ee3810a36.camel@mailbox.org>
 <aiBH95n4HqrNtgtz@tardis-2.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aiBH95n4HqrNtgtz@tardis-2.local>
X-Spamd-Bar: ---
Message-ID-Hash: WXWXE7JIHYGQSW7OYCDEV6QUWFWX4IFK
X-Message-ID-Hash: WXWXE7JIHYGQSW7OYCDEV6QUWFWX4IFK
X-MailFrom: boqun@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Miguel Ojeda <ojeda@kernel.org>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandr
 e Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] rust: rcu: add RcuBox type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WXWXE7JIHYGQSW7OYCDEV6QUWFWX4IFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[37];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:ojeda@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kernel.org,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:boris.brezillon@collabora.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@
 gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[boqun@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tardis-2.local:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boqun@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A704163A33E

On Wed, Jun 03, 2026 at 08:27:51AM -0700, Boqun Feng wrote:
> On Wed, Jun 03, 2026 at 11:33:27AM +0200, Philipp Stanner wrote:
> > > > > and Philipp can use the `RcuKBox` in this patchset. We also need to impl
> > > > > InPlaceInit for RcuBox, but that can be added later.
> > > > 
> > > > So shall we merge my series with Alice's patch, and later we add your
> > > > patch and other features, or would you prefer to have the additional
> > > > boxes from your patch from the get-go?
> > > > 
> > > 
> > > I would like to have it from the get-go mainly because of RcuBox vs
> > > RcuKBox naming. Thank you!
> > 
> > Fine by me. Just process-wise: how should we do it?
> > 
> > I could include your patch on top of Alice's. Would be a bit more
> > consistent regarding the git-workflow if we'd squash the two patches,
> > but then you two would have to agree on authorship.
> > 
> 
> Keeping it as a separate patch is fine by me.
> 

So is squashing ;-) Whichever is easy for you.

Regards,
Boqun

> Regards,
> Boqun
> 
> > All is fine by me, but I wanted to ask instead of just do A or B.
> > 
> > 
> [...]
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
