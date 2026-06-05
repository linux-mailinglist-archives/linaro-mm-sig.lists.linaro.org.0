Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JoBGEmCBImraZAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Jun 2026 09:57:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A537F646321
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 05 Jun 2026 09:57:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=ud9TN26i;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCC6B40A00
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jun 2026 07:57:18 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 5BB5C4051A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 07:57:07 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gWv0c3R1Bz9tgY;
	Fri,  5 Jun 2026 09:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1780646224; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YZscO3yakbHdZc4j0RGnCdnyy50smezrqiuIpDYbTeI=;
	b=ud9TN26ikC4TheW87sW5sBb0y2fqqKzew5ee3W2uJP7eL0IRSx/XGRTNn5y9pkOecyS/RA
	K/7g4n+Do9YA3XS5TTP7T+S4TLlVSPWnYnOzde5LcsMROQMe90Tm96LylDf2b8x9VuQkZp
	qN3vsiXI30/uRjCLIoblFdNRbR2frgMsipUZg8qVTRTY8whn5tDu8Jq1sVSNwtq8ZCVnou
	CRNyO4ketnaWtSzGeGYji4nJfM/n4irESZmSi/vosa12sTW4nCsmiXR8qGjWrqAsWV5PHR
	W2uKePhv2y5CPa6GuTTA6MKwDkB/s/bhnE71Z8HtFvVpqmS2fMwJCQMne/9ECw==
Message-ID: <8ff2de94a50ed077a4cfe520a081f2b8b438a375.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Boris Brezillon <boris.brezillon@collabora.com>, Daniel Almeida
	 <dwlsalmeida@gmail.com>
Date: Fri, 05 Jun 2026 09:56:51 +0200
In-Reply-To: <20260604101552.4232733b@fedora-2.home>
References: <20260530143541.229628-2-phasta@kernel.org>
		<20260530143541.229628-5-phasta@kernel.org>
		<4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
		<20260603191405.4c75badb@fedora-2.home>
		<09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
	 <20260604101552.4232733b@fedora-2.home>
MIME-Version: 1.0
X-MBO-RS-ID: a672bee9a7bdcd496a0
X-MBO-RS-META: 5yqks91n4urtritwsng9kaxh7prq1gie
X-Spamd-Bar: ---
Message-ID-Hash: RX46LPTE6PHVJS3VAXZNTMF7WJLY2JHU
X-Message-ID-Hash: RX46LPTE6PHVJS3VAXZNTMF7WJLY2JHU
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@
 kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RX46LPTE6PHVJS3VAXZNTMF7WJLY2JHU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:boris.brezillon@collabora.com,m:dwlsalmeida@gmail.com,m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@ kernel.org,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:sh
 ankariak0208@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[38];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,linuxfoundation.org, kernel.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:from_mime,mailbox.org:mid,collabora.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A537F646321

T24gVGh1LCAyMDI2LTA2LTA0IGF0IDEwOjE1ICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
DQo+IE9uIFdlZCwgMyBKdW4gMjAyNiAyMTo0MzowNSAtMDMwMA0KPiBEYW5pZWwgQWxtZWlkYSA8
ZHdsc2FsbWVpZGFAZ21haWwuY29tPiB3cm90ZToNCj4gDQo+ID4gPiBPbiAzIEp1biAyMDI2LCBh
dCAxNDoxNCwgQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4g
d3JvdGU6DQo+ID4gPiANCj4gPiA+IE9uIFdlZCwgMyBKdW4gMjAyNiAxMzo0MTowMiAtMDMwMA0K
PiA+ID4gRGFuaWVsIEFsbWVpZGEgPGR3bHNhbG1laWRhQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4g
PiDCoCANCj4gPiA+ID4gPiArwqDCoMKgIC8vLyBDYWxsZWQgd2hlbiB0aGUgZmVuY2UgaXMgc2ln
bmFsZWQuDQo+ID4gPiA+ID4gK8KgwqDCoCAvLy8NCj4gPiA+ID4gPiArwqDCoMKgIC8vLyBUaGlz
IGlzIGNhbGxlZCBmcm9tIHRoZSBmZW5jZSBzaWduYWxpbmcgcGF0aCwgd2hpY2ggbWF5IGJlIGlu
IGludGVycnVwdA0KPiA+ID4gPiA+ICvCoMKgwqAgLy8vIGNvbnRleHQgb3Igd2l0aCBsb2NrcyBo
ZWxkLCB3aGljaCBpcyB3aHkgYHNlbGZgIGlzIG9ubHkgYm9ycm93ZWQsIHNvIHRoYXQNCj4gPiA+
ID4gPiArwqDCoMKgIC8vLyBpdCBjYW5ub3QgZHJvcC4gSW1wbGVtZW50YXRpb25zIG11c3Qgbm90
IHNsZWVwIG9yIHBlcmZvcm0NCj4gPiA+ID4gPiArwqDCoMKgIC8vLyBsb25nLXJ1bm5pbmcgb3Bl
cmF0aW9ucy4NCj4gPiA+ID4gPiArwqDCoMKgIC8vLw0KPiA+ID4gPiA+ICvCoMKgwqAgLy8vIEFu
IGltcGxlbWVudGF0aW9uIGxpa2VseSB3YW50cyB0byBpbmZvcm0gaXRzZWxmIChlLmcuLCB0aHJv
dWdoIGEgd29yayBpdGVtKQ0KPiA+ID4gPiA+ICvCoMKgwqAgLy8vIHdpdGhpbiB0aGlzIGNhbGxi
YWNrIHRoYXQgdGhlIGFzc29jaWF0ZWQgW2BGZW5jZUNiUmVnaXN0cmF0aW9uYF0gY2FuIG5vdyBi
ZQ0KPiA+ID4gPiA+ICvCoMKgwqAgLy8vIGRyb3BwZWQuDQo+ID4gPiA+ID4gK8KgwqDCoCBmbiBj
YWxsZWQoJm11dCBzZWxmKTvCoMKgwqAgDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGlzIGEgY2Vu
dHJhbCBwb2ludC4gV2UgaWRlYWxseSB3b3VsZCB3YW50IHRoaXMgdG8gY29uc3VtZSBzZWxmLCBi
ZWNhdXNlIHdlDQo+ID4gPiA+IG1heSB3YW50IHRvIG1vdmUgdGhpbmdzIG91dCBvZiB0aGUgY2Fs
bGJhY2suwqDCoMKgIA0KPiA+ID4gDQo+ID4gPiBUaGlzIG9uZSBjb21lcyBmcm9tIG1lLiBUaGUg
cmF0aW9uYWxlIGJlaW5nIHRoYXQgOjpjYWxsZWQoKSBpcyBjYWxsZWQNCj4gPiA+IGZyb20gYW4g
YXRvbWljIGNvbnRleHQsIGFuZCB0aGUgcmVzb3VyY2VzIGF0dGFjaGVkIHRvIHRoZSBjYWxsYmFj
ayBkYXRhDQo+ID4gPiBtaWdodCByZXF1aXJlIGFjcXVpcmluZyBvdGhlciBzbGVlcGluZyBsb2Nr
cyB0byBiZSByZWxlYXNlZCwgYW5kDQo+ID4gPiBzb21ldGltZXMgeW91IGRvbid0IGV2ZW4gbm90
aWNlIGltbWVkaWF0ZWx5IGJlY2F1c2Ugc2FpZCByZXNvdXJjZXMgYXJlDQo+ID4gPiByZWZjb3Vu
dGVkLCBhbmQgdGhlIGxvY2sgaXMgb25seSBhY3F1aXJlZCB3aGVuIHlvdSBoYXBwZW4gdG8gYmUg
dGhlDQo+ID4gPiBsYXN0IG93bmVyLiBZZXMsIHRob3NlIGNhbiBiZSBjYXVnaHQgYXQgcnVudGlt
ZSBpZiB0aGUgQyBzaWRlIGlzDQo+ID4gPiBwcm9wZXJseSBhbm5vdGF0ZWQgd2l0aCBtaWdodF9z
bGVlcCgpLCBidXQgdGhhdCdzIG5vdCBhbHdheXMgdGhlIGNhc2UuDQo+ID4gPiANCj4gPiA+IElm
IHdlIGRlZmVyIHRoZSBkcm9wIG9mIHRoZSBkYXRhIG9ubHkgd2hlbiB0aGUgRmVuY2VDYiBpcw0K
PiA+ID4gZHJvcHBlZC9yZWN5Y2xlZCwgd2UncmUgYXQgbGVhc3Qgbm90IGNvbnN0cmFpbmVkIGJ5
IHRoaXMgInJ1bnMgaW4NCj4gPiA+IGF0b21pYyBjb250ZXh0IiB0aGluZy4NCj4gPiA+IMKgIA0K
PiA+IA0KPiA+IFRoaXMgZGVzaWduIGRvZXMgbm90IHNvbHZlIGl0LCBiZWNhdXNlIG9uZSBjYW4g
cXVpdGUgdHJpdmlhbGx5IGdldCBhcm91bmQgdGhpcw0KPiA+IHJlc3RyaWN0aW9uIHVzaW5nIE9w
dGlvbjxUPiBhcyBJIHNhaWQuIElmIHlvdXIgcG9pbnQgaXMg4oCcZG9u4oCZdCBydW4gYW55IGRy
b3AoKSBoZXJl4oCdLA0KPiA+IHRoZW4gJm11dCBzZWxmIGRvZXNu4oCZdCBkbyBpdC4NCj4gDQo+
IE15IGJhZCwgSSB0aG91Z2h0IHlvdSB3ZXJlIHRhbGtpbmcgYWJvdXQgc29tZSBPcHRpb248VD4g
aW4NCj4gRmVuY2VDYlJlZ2lzdHJhdGlvbjxUPiAodGhlcmUgd2FzIG9uZSBhdCBzb21lIHBvaW50
LCBidXQgaXQncyBnb25lIG5vdyksDQo+IGJ1dCB5b3UncmUgdGFsa2luZyBhYm91dCBoYXZpbmcg
YW4gT3B0aW9uPFg+IGluc2lkZSB0aGUgVC4gWWVzLCB0aGVyZSdzDQo+IGluZGVlZCBub3RoaW5n
IHByZXZlbnRpbmcgYSBkcm9wIG9uIFggaW4gdGhhdCBwYXRoLCBhbmQgaXQncyBqdXN0IGFzDQo+
IGJhZCBhcyBwYXNzaW5nIHRoZSBmZW5jZSBiYWNrIGFzIHZhbHVlIHRvIHRoZSBjYWxsYmFjayBp
biB0aGF0IGNhc2UuDQoNClRoZW4gbWF5YmUgd2Ugc2hvdWxkIGp1c3QgcGFzcyBpdCBieSB2YWx1
ZSBhbmQgcmVxdWlyZSBpbXBsZW1lbnRhdGlvbg0Kb2YgYW4gdW5zYWZlIHRyYWl0IG9uIGBUYCwg
d2hvc2Ugc2FmZXR5LXJlcXVpcmVtZW50cyBkZW1hbmQgdGhhdCB0aGlzDQptdXN0IGJlIHNhdmUg
dG8gZHJvcCBmcm9tIGF0b21pYyBjb250ZXh0Lg0KDQo+IA0KPiA+IA0KPiA+ID4gPiANCj4gPiA+
ID4gQ29uc2lkZXIgYSBmZW5jZSBkZXNpZ24gd2hlcmUgc2lnbmFsKCkgY29uc3VtZXMgc2VsZi4g
Tm93IGNvbnNpZGVyIHRoaXM6DQo+ID4gPiA+IA0KPiA+ID4gPiBgYGANCj4gPiA+ID4gaW1wbCBG
ZW5jZUNiIGZvciBNeUNhbGxiYWNrIHsNCj4gPiA+ID4gZm4gY2FsbGVkKCZtdXQgc2VsZikgew0K
PiA+ID4gPiDCoCAvLyBDYW4ndCBtb3ZlIHRoZSBmZW5jZSBvdXQsIHNvIHdlIGhhdmUgdG8gcHV0
IGFuIE9wdGlvbjxUPiBqdXN0IHRvIGJlIGFibGUNCj4gPiA+ID4gwqAgLy8gdG8gbW92ZS4NCj4g
PiA+ID4gwqAgaWYgbGV0IFNvbWUoZikgPSBzZWxmLnNvbWVfZmVuY2UudGFrZSgpIHsNCj4gPiA+
ID4gwqDCoMKgIGYuc2lnbmFsKCk7DQo+ID4gPiA+IMKgIH0NCj4gPiA+ID4gfQ0KPiA+ID4gPiBg
YGANCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgdXNlZCB0byBiZSB0aGUgY2FzZSB3aGVuIG91ciB2
ZXJzaW9uIG9mIHRoZSBqb2IgcXVldWUgdXNlZCB0aGUgInByb3h5DQo+ID4gPiA+IGZlbmNlIiBk
ZXNpZ246DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gYGBgDQo+ID4gPiA+IC8vIENhbGxi
YWNrIG9uIHRoZSBodyBmZW5jZQ0KPiA+ID4gPiBpbXBsIEZlbmNlQ2IgZm9yIE15Q2FsbGJhY2sg
ew0KPiA+ID4gPiBmbiBjYWxsZWQoJm11dCBzZWxmKSB7DQo+ID4gPiA+IMKgIGlmIGxldCBTb21l
KGYpID0gc2VsZi5zdWJtaXRfZmVuY2UudGFrZSgpIHsNCj4gPiA+ID4gwqDCoMKgIGYuc2lnbmFs
KCk7DQo+ID4gPiA+IMKgIH3CoCANCj4gPiA+IA0KPiA+ID4gSSdtIHByZXR0eSBzdXJlIGxvY2tk
ZXAgd29uJ3QgbGlrZSBpdCBhbnl3YXksIGJlY2F1c2UgdGhpcyBpcyBuZXN0ZWQNCj4gPiA+IGxv
Y2tpbmcgb2YgdGhlIHNhbWUgbG9jayBjbGFzcy4gRm9yIHN1Y2ggcHJveGllcywgd2UnbGwgbmVl
ZCB0byB0ZWFjaA0KPiA+ID4gbG9ja2RlcCBhYm91dCB0aGUgbmVzdGluZyBsaWtlIGhhcyBiZWVu
IHJlY2VudGx5IGRvbmUgb24NCj4gPiA+IGRtYV9mZW5jZV9hcnJheSAmIGNvLiBCdXQgSSdtIGRp
Z3Jlc3NpbmcuwqAgDQo+ID4gDQo+ID4gWWVhaCwgYnV0IHRoaXMgaXMgbW9yZSBhYm91dCByZXNv
dXJjZSB0cmFuc2ZlciBpbiBnZW5lcmFsLCBub3QNCj4gPiB0aGlzIHBhdHRlcm4gc3BlY2lmaWNh
bGx5Lg0KPiA+IA0KPiA+IEkgYWdyZWUgdGhhdCB0aGlzIGhhcyBpc3N1ZXMsIGFuZCB5ZXMsIGxv
Y2tkZXAgY29tcGxhaW5lZCBiYWNrDQo+ID4gdGhlbiA6KQ0KPiANCj4gVGhlIHRoaW5nIGlzLCB0
aGVyZSdzIHNvIG1hbnkgYXNwZWN0cyB0aGF0IGNvdWxkIGdvIHdyb25nIGJlY2F1c2Ugb2YgdGhl
DQo+IGNvbnRleHQgdGhpcyBjYWxsYmFjayBpcyBjYWxsZWQgaW4uIE5lc3RlZCBsb2NraW5nIGlz
IG9uZSBvZiB0aGVtLA0KPiB0aGUgZmFjdCB3ZSBjYW4ndCBzbGVlcCBpcyBhbm90aGVyLiBBbmQg
d2l0aCBydXN0IGl0J3MgZXZlbiB3b3JzZSwNCj4gYmVjYXVzZSBvZiB0aGUgaW1wbGljaXQgZHJv
cHMgdGhhdCB3aWxsIGhhcHBlbiB3aGVuIHlvdSB0YWtlIG93bmVyc2hpcA0KPiBvZiByZXNvdXJj
ZXMgKHRha2luZyBzbGVlcGluZyBsb2NrcyB0byByZW1vdmUgcmVzb3VyY2VzIGZyb20gYSBkYXRh
c2V0DQo+IGZvciBpbnN0YW5jZSkuDQoNCkRvZXNuJ3QgdGhhdCBoYXZlIHRvIGJlIGEgcHJvYmxl
bSBmb3IgbXVjaCBvZiBSdXN0IGluZnJhc3RydWN0dXJlPyBIb3cNCmRvIG90aGVyIHBhcnRpZXMg
c29sdmUgdGhhdD8NCg0KPiANCj4gU28sIGJ5IHBhc3Npbmcgc2VsZiBieSB2YWx1ZSB0byB0aGUg
OjpjYWxsYmFjaygpLCB5b3UncmUgYmFzaWNhbGx5DQo+IHRlbGxpbmcgdXNlcnMgImhleSwgQlRX
LCBkb24ndCBmb3JnZXQgdG8gZGVmZXIgdGhlIGRyb3AgdG8gc29tZQ0KPiB3b3JrcXVldWUgaWYg
eW91IHRoaW5rIGl0J3Mgbm90IGF0b21pYy1zYWZlIi4gQW5kIGhvdyBjYW4gdXNlcnMga25vdw0K
PiB0aGF0IHRoZSB0aGluZyB0aGV5J3JlIGFib3V0IHRvIGRyb3AgY2FuIGJlIGRyb3BwZWQgaW4g
YXRvbWljIGNvbnRleHQ/DQo+IFRoZXkgYmFzaWNhbGx5IGhhdmUgdG8gYXVkaXQgdGhlIDo6ZHJv
cCgpIG9mIGFsbCB0aGUgcmVzb3VyY2VzIHRoZXkNCj4gZW1iZWQgaW4gdGhlaXIgdHlwZSBpbXBs
ZW1lbnRpbmcgRmVuY2VDYi4gTm90IG9ubHkgdGhhdCwgYnV0IHRoZXkgYWxzbw0KPiBoYXZlIHRv
IGRlc2lnbiB0aGUgdGhpbmcgc28gdGhlIGRlZmVycmFsIG9mIHRoaXMgOjpkcm9wKCkgZG9lc24n
dA0KPiBhbGxvY2F0ZSwgYmVjYXVzZSwgb2J2aW91c2x5LCBhbGxvY2F0aW5nIGluIGF0b21pYyBj
b250ZXh0IGlzDQo+IHRyaWNreS9mYWxsaWJsZS4gQUZBSUssIG5vbmUgb2YgdGhpcyBjYW4gYmUg
c3BvdCBhdCBjb21waWxlLXRpbWUgKEkNCj4gcmVtZW1iZXIgR2FyeS9EYW5pbG8gbWVudGlvbmlu
ZyB0aGF0IHdlIGNvdWxkIHRlYWNoIHRoZSBrbGludCBhYm91dA0KPiBzb21lIG9mIHRoZXNlIHJ1
bGVzKS4gVGhpcyB3b3VsZCBsZWF2ZSB1cyB3aXRoIHJ1bnRpbWUgY2hlY2tzIGxpa2UNCj4gbWln
aHRfc2xlZXAoKSwgYnV0IG1vc3Qgb2YgdGhlIEMgcHV0dGVycyAoeHh4X3B1dChvYmplY3QpKSBk
b24ndCBoYXZlDQo+IG1pZ2h0X3NsZWVwKCkgaW4gdGhlIHBhdGggd2hlcmUgdGhlIGRlY3JlZiBk
b2Vzbid0IGxlYWQgdG8gYSByZWZjbnQ9MA0KPiBzaXR1YXRpb24uDQo+IA0KPiBUTERSOyBDYWxs
IHRoaXMgUFRTRCBpZiB5b3Ugd2FudCwgYnV0IHRoaXMgaXMgdGhlIHNvcnQgb2YgYnVncyBJDQo+
IHN0cnVnZ2xlZCB3aXRoIG9uIHRoZSBDIHNpZGUsIGFuZCBJIGNhbiBwcmVkaWN0IHRoYXQgdGhl
IGV4YWN0IHNhbWUNCj4gd2lsbCBoYXBwZW4gaW4gcnVzdCBkcml2ZXJzIGlmIHdlIGV4cG9zZSB0
aGUgRmVuY2VDYiBhcyBpdCBpcyBkZXNpZ25lZA0KPiBoZXJlIGFuZCB3ZSBkb24ndCBoYXZlIGEg
d2F5IHRvIGNoZWNrIHRoZSBzb3VuZG5lc3Mgb2YgdGhlIEZlbmNlQ2INCj4gaW1wbGVtZW50YXRp
b25zIGF0IGNvbXBpbGUgdGltZS4NCg0KTXkgZ3Vlc3Mgd291bGQgYmUgdGhhdCB0aGUgZXhpc3Rl
bmNlIG9mIHVuc2FmZS10cmFpdHMgaXMgdGhlIGFkbWlzc2lvbg0Kb2YgUnVzdCB0aGF0IHRoaXMg
anVzdCBjYW5ub3QgYmUgZ3VhcmFudGVlZCBieSBkZXNpZ24uDQoNCklmIGEgZHJpdmVyIGNhbm5v
dCBrbm93IHdoZXRoZXIgdGhpcyBvciB0aGF0IGlzIHNhZmUgdG8gZHJvcCwgdGhlbiBpdA0Kd291
bGQgaGF2ZSB0byBkZWZlciBpdCdzIGRyb3BwaW5nLiBPciB3b3VsZCB0aGVyZSBiZSBjYXNlcyB3
aGVyZSB0aGlzDQphbHNvIGRvZXNuJ3Qgd29yaz8NCg0KPiANCj4gVGhlIG90aGVyIG9wdGlvbiAo
dGhlIG9uZSBJJ3ZlIGJlZW4gYWR2b2NhdGluZyBmb3IgZnJvbSB0aGUgc3RhcnQpLCBpcw0KPiB0
byBub3QgbGV0IGRyaXZlcnMgaW1wbGVtZW50IEZlbmNlQ2IgKG1ha2UgaXQgcHJpdmF0ZSksIGJ1
dCBpbnN0ZWFkDQo+IGhhdmUgYSBidW5jaCBvZiBpbXBsZW1lbnRhdGlvbnMgdGhhdCB3ZSBrbm93
IGFyZSBzYWZlLiBIZXJlJ3MgYSBsaXN0IG9mDQo+IGltcGxlbWVudGF0aW9ucyB0aGF0IEkgdGhp
bmsgd291bGQgdW5ibG9jayBtb3N0IG9mIHRoZSBkcml2ZXJzIHVzZQ0KPiBjYXNlczoNCj4gDQo+
IC0gd2FrZXVwIGEgdGhyZWFkDQo+IC0gY29tcGxldGUgYSBjb21wbGV0aW9uIG9iamVjdA0KPiAt
IHNjaGVkdWxlIGEgV29ya0l0ZW0NCj4gLSBzY2hlZHVsZSBhIGt0aHJlYWRfd29ya2VyIChvbmNl
IHdlIGdldCBhIHByb3BlciBydXN0IGFic3RyYWN0aW9uIGZvcg0KPiDCoCB0aGF0KQ0KPiANCj4g
SXQgZG9lc24ndCBtZWFuIHdlIGNhbid0IGhhdmUgb3B0aW1pemVkIEZlbmNlQ2IgaW1wbGVtZW50
YXRpb25zIHRoYXQgZG8NCj4gYSBsb3QgbW9yZSBpbiB0aGUgY2FsbGJhY2soKSBwYXRoIGluc3Rl
YWQgb2YgZGVmZXJyaW5nIHRvIGENCj4gd29ya3F1ZXVlL3RocmVhZCwgYnV0IGF0IGxlYXN0IHRo
b3NlIHdvdWxkIGhhdmUgdG8gYmUgaW1wbGVtZW50ZWQgaW4NCj4gZG1hX2ZlbmNlLnJzLCBhbmQg
dGhlIGRtYV9mZW5jZS5ycyBtYWludGFpbmVycyBjYW4gdGhlbiBjYXJlZnVsbHkgYXVkaXQNCj4g
dGhlIGNvZGUgYXMgcGFydCBvZiB0aGUgcmV2aWV3IHByb2Nlc3MsIHdoaWNoIHdlIGtub3cgaXMg
bm90IHJlYWxseSB0aGUNCj4gY2FzZSB3aGVuIGNoYW5nZXMgdG91Y2ggZHJpdmVycyBjb2RlIG9u
bHkuDQoNClByYWdtYXRpY2FsbHkgc3BlYWtpbmcsIGlmIHRoZSBjb21tb24gY2FzZXMgYXJlIHRy
aXZpYWwsIHRoZW4gdGhlDQpkcml2ZXJzIHdpbGwgZ2V0IHRoZW0gcmlnaHQsIGJlY2F1c2UgdGhv
c2UgY3JpdGljYWwgcHJpbWl0aXZlcyBhcmUNCmFscmVhZHkgYXRvbWljLXNhZmUuDQoNCkFuZCBh
IG5vbi1jb21tb24gY2FzZSB3aWxsIGhhdmUgdG8gYmUgaW1wbGVtZW50ZWQgaW4gdGhlIGRyaXZl
cg0KYW55d2F5cywgc28gd2UnZCBoYXZlIHRvIGFsbG93IGZvciB0aGF0Lg0KDQoNCg0KUC4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
