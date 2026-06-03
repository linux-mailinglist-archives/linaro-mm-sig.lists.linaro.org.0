Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6GU1FgpIIGpP0AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 17:28:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BABE46392D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 17:28:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=YTG3XiIA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8F6040A33
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 15:28:08 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 641C63F756
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 15:27:57 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CBF544097F;
	Wed,  3 Jun 2026 15:27:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D72671F00898;
	Wed,  3 Jun 2026 15:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500476;
	bh=K+bfaBhhfVxJ+5PosWIBpa30vhMSj2ZrC2KP9ibybps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YTG3XiIA4lEkW6USncgIYJGRHNpQDPLciLotkx2Wnu9D5uPLatoR7F9iPzIY+jjLc
	 synIEaA9022E+tQ7B11Pd6eumHT22IiKPiL8eU7VRdgBocGZH8FntLeiRzaXTUBujG
	 xqcB8V9UvPMYamQ5BRCka8mBn5hVd2OvTBzCcLlAjXDqjbrI0q4KXPEi5xC5REIuTm
	 SOOzjBK2NImrWvR1/W4f/m0ucPtprM9EP4bsdbTT62YoPpEj3BnYxxSEOlJA1ydDgk
	 fQpbToVNKJCJAda6LL/L3HOKp8uxZpaIsKSDDDDx5JMJHjC1FOODRn3vmZlAkZ2CtS
	 /sJZA8v616kkQ==
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfauth.phl.internal (Postfix) with ESMTP id 18696F4006B;
	Wed,  3 Jun 2026 11:27:55 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Wed, 03 Jun 2026 11:27:55 -0400
X-ME-Sender: <xms:-kcgag28QaxgoFEtnI1MM3lEiAOF5YRzeUxOGIzVFzHxAxVq7ff6UQ>
    <xme:-kcgan3pUacMK7IS0HEccWpLRK9oQQjelrBdkU4ClsTYE-DjYxZce2-cpj0S5-buW
    70KyH_L2GP4KvNxi4TYu2BL3evalYIcGF-YVgsdzz1oH0AyfqShvA>
X-ME-Received: <xmr:-kcgaoeCBEMffASuQAA3Add7q83W99Rd8iHEaPwxI6GnPjDzL5OQ0yWspuo>
X-ME-Proxy-Cause: dmFkZTFQXNCvmOzgkX75TjCKgGMKfTtH3s/7r74Ezl2XZ5yvsEMt8Ui7QAFfwJza3HYn0J
    2C2S295tge/p0vK7WXqUKkqMcrUWGBIYguRWCGr+MnKBMzNtI6UQRqXF5AlLH9ltoqm+GC
    FCkGmZ8LRYfnmLXOHQVI/9BOmNFSZ1UWCv5DIbhZUqLBsXQ1NI3ul6h6/a1AS39xF8v3l+
    XVYnONAelNCIDQki2r16u88xtIJ5nIddoJ6fued53Zhd4jZbm3CSnk8QDm+uzZXjRfbtUR
    Hz7L82eI/aV5v9pcrakU2WlFx4e2rNcXjSS8N2znD3YJPelbPYAdTKKB8aa77VVxK6CkMK
    zqHwVwFfXuGrvWzgeP/MhSwN5OD5A/NcWB8N2Wwu7zLOypszKRQoh6yRUZAHltAMrtVM4F
    ehXmK/PSRYtGAvPL0tgQAIjY9I7dX+oSflFsKCji4cj5+uf+ToGoNHA9rEEY9OUfF/VS2F
    QopTxqYY/UZxEjjJ4+ebKZvBtbeEVJ7KxVWaxhy8vGK6FqSmHbBePswBr+gpKo+KYo8bGI
    SieMa/bynUC5Tcaf4/HU8/hK4gP69ALsRCAytDCBov0lA2qPnFJpA13Rs+NIoy25iIxlt3
    2nc5gqUhMjgshlCmgTBoysOUZQu3F2QBwcxCwVYqqb3L8hlRgTf1H7/dSjQg
X-ME-Proxy: <xmx:-kcgaic4CdAoBGQtkuBJWb_SdlBOwFG7P_DWfjPTs7FRK-JzDwlj9g>
    <xmx:-0cganVVvvmgmFEFepBpmN1EzAQNMXWnGJeRDhpAHUP_XFDGWX-iOQ>
    <xmx:-0cgai7Fhuku_eLsxja1_NdJCdz5s-Jc49WMFaBqAcTfeKfCWiJP9g>
    <xmx:-0cgavM2gyQryNA5doZ0VSn-ydjKqDn3jmFfkYTlCziSdobpxjuoew>
    <xmx:-0cgalhheN81mBJZV_y6XmJAJ45NThKHACmq70FWN0CqDkkowUqgo-gA>
Feedback-ID: i8dbe485b:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jun 2026 11:27:54 -0400 (EDT)
Date: Wed, 3 Jun 2026 08:27:51 -0700
From: Boqun Feng <boqun@kernel.org>
To: phasta@kernel.org
Message-ID: <aiBH95n4HqrNtgtz@tardis-2.local>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-4-phasta@kernel.org>
 <ahr9gtzQLSbPeBx_@tardis.local>
 <e8b16f3b40d42f3b0a8814180fa9b06f82c9d901.camel@mailbox.org>
 <ah2L-TMT5UHSd_Hs@tardis-2.local>
 <441fccce521857ab82b84bb8e5ab539ee3810a36.camel@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <441fccce521857ab82b84bb8e5ab539ee3810a36.camel@mailbox.org>
X-Spamd-Bar: -
Message-ID-Hash: Z45K3IMLZ2S2YGCXZOPMURQHDG6GX25W
X-Message-ID-Hash: Z45K3IMLZ2S2YGCXZOPMURQHDG6GX25W
X-MailFrom: boqun@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Miguel Ojeda <ojeda@kernel.org>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandr
 e Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] rust: rcu: add RcuBox type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z45K3IMLZ2S2YGCXZOPMURQHDG6GX25W/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp];
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
X-Rspamd-Queue-Id: BABE46392D6

On Wed, Jun 03, 2026 at 11:33:27AM +0200, Philipp Stanner wrote:
> > > > and Philipp can use the `RcuKBox` in this patchset. We also need to impl
> > > > InPlaceInit for RcuBox, but that can be added later.
> > > 
> > > So shall we merge my series with Alice's patch, and later we add your
> > > patch and other features, or would you prefer to have the additional
> > > boxes from your patch from the get-go?
> > > 
> > 
> > I would like to have it from the get-go mainly because of RcuBox vs
> > RcuKBox naming. Thank you!
> 
> Fine by me. Just process-wise: how should we do it?
> 
> I could include your patch on top of Alice's. Would be a bit more
> consistent regarding the git-workflow if we'd squash the two patches,
> but then you two would have to agree on authorship.
> 

Keeping it as a separate patch is fine by me.

Regards,
Boqun

> All is fine by me, but I wanted to ask instead of just do A or B.
> 
> 
[...]
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
