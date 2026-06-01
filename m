Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDQGOQdoHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F41B628846
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B949A40997
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:20:06 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 48B0F404A3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 13:24:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=gPF45CLn;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gTZRx32g1z9t5q;
	Mon,  1 Jun 2026 15:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1780320253; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JS+OPS7x1cO1PMKz8ZECCil0lEgdhEJIwO7HESt43MI=;
	b=gPF45CLnID21mTvUj8xYxRxQ4VVX63G+B/lBvLd79ubtNLtcW6sG3MBSAarTv0CJdDN4ia
	zxJh+aMNgCiC9PPihcVEtfE8QTdvHIDxquNne/sF9K+r1knfcjpHjMlCe3PADwg5/8iNb6
	2xuLHV35z+m1/IsS/rDoleuarPBUeDC3d9AQaj00AGVosGnwof08MGPHJlP/y5koXJq+PN
	4KzwD3KZqzalMOFuS6wfcvZUs9dLqoBCzCpidBaEBstyuBDJwUfKRKHLqBTFqPVml2RTxH
	fQpc6XSn5xXaKpZ5aIJ85yQDOfuwHvVh0qTCR/H4ts6fnHMOz081InXbqqcjpA==
Message-ID: <3829028571be1886b99018040782ef94369b9523.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Alice Ryhl <aliceryhl@google.com>, phasta@kernel.org
Date: Mon, 01 Jun 2026 15:23:58 +0200
In-Reply-To: <CAH5fLgiZb5fqfXGQMicPp+UbBi3JMN8ZNG_Ldt5KiSk+btVCSA@mail.gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
	 <20260530143541.229628-5-phasta@kernel.org> <ah1glmXDM-OAKa5h@google.com>
	 <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
	 <ah19ZVkr7b3m7V_u@google.com>
	 <3b216f24afb406b797b8bbb73b3f5c0eec2fdc6c.camel@mailbox.org>
	 <CAH5fLgiZb5fqfXGQMicPp+UbBi3JMN8ZNG_Ldt5KiSk+btVCSA@mail.gmail.com>
MIME-Version: 1.0
X-MBO-RS-ID: 500ef5b9c544510e11b
X-MBO-RS-META: rijzzpg3g9rqd1qiwy9fj7s3yrfy4jry
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3WLGWTGBTAZZONI7GSOLTXXNDHIUYP7E
X-Message-ID-Hash: 3WLGWTGBTAZZONI7GSOLTXXNDHIUYP7E
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:18:19 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Co
 urbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3WLGWTGBTAZZONI7GSOLTXXNDHIUYP7E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.929];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,zulipchat.com:url,linaro.org:email,mailbox.org:mid,mailbox.org:email]
X-Rspamd-Queue-Id: 9F41B628846
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA2LTAxIGF0IDE1OjIyICswMjAwLCBBbGljZSBSeWhsIHdyb3RlOg0KPiBP
biBNb24sIEp1biAxLCAyMDI2IGF0IDI6NDfigK9QTSBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBt
YWlsYm94Lm9yZz4gd3JvdGU6DQo+ID4gDQo+ID4gT24gTW9uLCAyMDI2LTA2LTAxIGF0IDEyOjM5
ICswMDAwLCBBbGljZSBSeWhsIHdyb3RlOg0KPiA+ID4gT24gTW9uLCBKdW4gMDEsIDIwMjYgYXQg
MDI6MjY6MTdQTSArMDIwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gPiBPbiBNb24s
IDIwMjYtMDYtMDEgYXQgMTA6MzYgKzAwMDAsIEFsaWNlIFJ5aGwgd3JvdGU6DQo+ID4gPiA+ID4g
T24gU2F0LCBNYXkgMzAsIDIwMjYgYXQgMDQ6MzU6MTFQTSArMDIwMCwgUGhpbGlwcCBTdGFubmVy
IHdyb3RlOg0KPiA+ID4gPiA+ID4gKy8vLyBBIHRyYWl0IHRvIGVuZm9yY2UgdGhhdCBhbGwgZGF0
YSBpbiBhIFtgRHJpdmVyRmVuY2VgXSBlaXRoZXIgZG9lcyBub3QgbmVlZA0KPiA+ID4gPiA+ID4g
Ky8vLyBkcm9wLCBvciBsaXZlcyBpbiBhIFtgUmN1Qm94YF0uDQo+ID4gPiA+ID4gPiArcHViIHRy
YWl0IERyaXZlckZlbmNlQWxsb3dlZERhdGE6IHByaXZhdGU6OlNlYWxlZCB7fQ0KPiA+ID4gPiA+
ID4gKw0KPiA+ID4gPiA+ID4gK21vZCBwcml2YXRlIHsNCj4gPiA+ID4gPiA+ICvCoMKgwqAgcHVi
IHRyYWl0IFNlYWxlZCB7fQ0KPiA+ID4gPiA+ID4gK30NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiA+ICtpbXBsPEY6IENvcHk+IERyaXZlckZlbmNlQWxsb3dlZERhdGEgZm9yIEYge30NCj4gPiA+
ID4gPiA+ICtpbXBsPEY6IFNlbmQ+IERyaXZlckZlbmNlQWxsb3dlZERhdGEgZm9yIFJjdUJveDxG
PiB7fQ0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK2ltcGw8RjogQ29weT4gcHJpdmF0ZTo6
U2VhbGVkIGZvciBGIHt9DQo+ID4gPiA+ID4gPiAraW1wbDxGOiBTZW5kPiBwcml2YXRlOjpTZWFs
ZWQgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFdoeSBzZWFsZWQ/IEp1
c3QgbWFrZSB0aGUgdHJhaXQgdW5zYWZlIGFuZCByZXF1aXJlIHRoZSB0aGluZ3MgeW91DQo+ID4g
PiA+ID4gcmVxdWlyZSBmcm9tIHRoZSB1c2VyLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhpcyBpcyBm
YXIgYmV0dGVyLiBXZSBkZWZpbml0ZWx5IG9ubHkgYWxsb3cgdGhlIHVzZXIgdG8gcGFzcyBBIG9y
IEIsDQo+ID4gPiA+IGFuZCBvbmx5IHRoZW4gaXQgY29tcGlsZXMuDQo+ID4gPiANCj4gPiA+IFdo
YXQgaWYgSSBoYXZlIGFub3RoZXIgdHlwZSB0aGF0IEkgd2FudCB0byB1c2UgaGVyZT8gRm9yIGV4
YW1wbGUsIG1heWJlDQo+ID4gPiBJIGhhdmUgYSBzdHJ1Y3QgY29udGFpbmluZyBhIGNvcHkgZmll
bGQgYW5kIGFuIFJjdUJveC4gT3IgbWF5YmUgSSBoYXZlDQo+ID4gPiBhbiBBUmVmPF8+IG9mIHNv
bWUgQyB0eXBlIHRoYXQgdXNlcyByY3UgZm9yIGNsZWFudXAuIFRoZW4gSSBtdXN0IGVkaXQNCj4g
PiA+IHRoaXMgZmlsZSB0byBhZGQgc3VwcG9ydCBmb3IgaXQ/DQo+ID4gPiANCj4gPiA+ID4gVGhl
IHVuc2FmZSBpbXBsZW1lbnRhdGlvbiBjb3VsZCBiZSBtZXNzZWQgdXAuDQo+ID4gPiA+IA0KPiA+
ID4gPiBJIHRob3VnaHQgdGhhdCdzIHdoYXQgU2VhbGVkIGlzIGZvci4gT3IgaXNuJ3QgaXQ/DQo+
ID4gPiANCj4gPiA+IFNlYWxlZCBpcyBmb3IgbWFraW5nIDEwMCUgc3VyZSB0aGF0IGRvd25zdHJl
YW0gY3JhdGVzL2RyaXZlcnMgY2Fubm90DQo+ID4gPiBwcm92aWRlIHRoZWlyIG93biBpbXBsZW1l
bnRhdGlvbnMuIEJ1dCBJIGRvbid0IHNlZSB3aHkgeW91IG5lZWQgdGhhdC4NCj4gPiA+IEFsbCB5
b3UgcmVxdWlyZSBpcyB0aGF0IHRoZSB2YWx1ZSByZW1haW5zIHZhbGlkIGZvciBvbmUgZ3JhY2Ug
cGVyaW9kDQo+ID4gPiBhZnRlciBjbGVhbnVwIGJlZ2lucy4gQXMgbG9uZyBhcyB0aGUgdHlwZSBz
YXRpc2ZpZXMgdGhhdCwgeW91IGFyZSBoYXBweS4NCj4gPiA+IEFuIHVuc2FmZSB0cmFpdCBjYW4g
cmVxdWlyZSB0aGF0IHNvcnQgb2YgcmVxdWlyZW1lbnQgZnJvbSB0aGUgdXNlci4NCj4gPiA+IA0K
PiA+ID4gSSB0aGluayB3aGF0IHlvdSB3YW50IGlzIGV4cHJlc3NlZCB3ZWxsIGJ5IGBSY3VGcmVl
U2FmZWAgZnJvbSB0aGlzDQo+ID4gPiB0aHJlYWQ6DQo+ID4gPiBodHRwczovL3J1c3QtZm9yLWxp
bnV4Lnp1bGlwY2hhdC5jb20vI25hcnJvdy9jaGFubmVsLzI5MTU2Ni1MaWJyYXJ5L3RvcGljL0Nv
bnNvbGlkYXRlLjIwLjYwUG9sbENvbmRWYXJCb3guNjAuMjBpbnRvLjIwLjYwUmN1LjJBQm94LjYw
L25lYXIvNTk4NzI2NzI0DQo+ID4gPiANCj4gPiANCj4gPiBJIGd1ZXNzIHRoaXMgaXMgYSBxdWVz
dGlvbiBvZiBkZXNpZ24gcHJpbmNpcGxlcy4gSWYgeW91IGRlbWFuZCBhbg0KPiA+IFJjdUJveCwg
eW91IGhhdmUgYSBndWFyYW50ZWUgdGhhdCBpdCdzIHNhZmUuDQo+ID4gDQo+ID4gSWYgeW91IGRl
bWFuZCBhbiB1bnNhZmUgdHJhaXQsIHlvdSBvcGVuIHRoZSBwb3NzaWJpbGl0eSBmb3IgcGVvcGxl
DQo+ID4gbWVzc2luZyB1cC4NCj4gPiANCj4gPiBEdWUgdG8gdGhlIHVuc2FmZS1jb250cmFjdCB5
b3UnZCBoYXZlIG1vdmVkIHRoZSByZXNwb25zaWJpbGl0eSBmb3IgdGhlDQo+ID4gc291bmRuZXNz
IHRvIHRoZSBkcml2ZXIuDQo+ID4gDQo+ID4gSSB3b3VsZCBub3Qgd2FudCB0byBibG9jayB5b3Vy
IHN1Z2dlc3Rpb24sIGJ1dCBJIGFtIG5vdCBzdXJlIHdoZXRoZXINCj4gPiB0aGF0J3MgcmVhbGx5
IHRoZSBiZXR0ZXIgZGVzaWduIGlkZWEuDQo+IA0KPiBZZXMsIGl0J3MgYSBkZXNpZ24gcHJpbmNp
cGxlLiBZb3UgYXJlIHNheWluZyB0aGF0IGlmIHNvbWVvbmUgbmVlZHMgdG8NCj4gZG8gWCBidXQg
bWlnaHQgZ2V0IGl0IHdyb25nLCB3ZSBzaG91bGQgdGFrZSBhd2F5IHRoZSBhYmlsaXR5IHRvIGRv
IFg/DQo+IEkgZnVuZGFtZW50YWxseSBkaXNhZ3JlZSB3aXRoIHRoYXQgcHJpbmNpcGxlLiBVbnNh
ZmUgdHJhaXRzIGlzIHRoZQ0KPiB0b29sIFJ1c3QgY3JlYXRlZCBmb3IgdGhlIGV4YWN0IHByb2Js
ZW0geW91IGhhdmU7IG1hcmtpbmcgcGxhY2VzIHdoZXJlDQo+IHlvdSBzaG91bGQgYmUgY2FyZWZ1
bCBpcyB0aGUgZW50aXJlIHBvaW50IG9mICd1bnNhZmUnLg0KDQpJIG1lYW4sIGZpbmUgYnkgbWUg
aWYgdGhlIG90aGVycyBkb24ndCBkaXNhZ3JlZS4NCg0KQnV0IHdoZW4gdGhlbiBkbyB5b3UgZXZl
ciByZWFsbHkgd2FudCBhIFNlYWxlZCB0cmFpdD8NCg0KUC4NCg0KPiANCj4gQWxpY2UNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
