Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fESdGVA0IWpaAwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 10:16:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C637063DEC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 10:16:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=mail header.b=ZNinGa1J;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B86E1409A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 08:16:14 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id E55BA3F6B6
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 08:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780560963;
	bh=0Y7Wgjd+88mbx6eBRrnHlgMIRq18/ldRsZrp3x6grII=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZNinGa1J0lLXQYyrBJR0buj+EVTZ80+2Uuh9nZXqO5DlLo5sEXIgohmA8VDsKAtoz
	 UvCqtRX47RtYpxgOHrWo8+vktVHLFvnBvDW+E8Ko4K+xhPvTaH/nI/lejQf80lbqWm
	 Qf9POeDLzHkMsjucLQavTvPNYR8Tr3Jlr6KSD2or4e8PqPTGjgy6DrUgHQIuUL3B+q
	 JzkgS9DOAEszq/R8nHmx76Yu6iVGRNez/yOJPiT4sseUIitOTj/fezTTaeFWg6GsAc
	 oMAUvO7JH3MpB05Q9sDx1vkCEmwLYRlQG801pUppqED/pS+btzqljwhf8djFJ1x0NG
	 eZyz35pp1VL0A==
Received: from fedora-2.home (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E820317E0979;
	Thu,  4 Jun 2026 10:16:01 +0200 (CEST)
Date: Thu, 4 Jun 2026 10:15:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Almeida <dwlsalmeida@gmail.com>
Message-ID: <20260604101552.4232733b@fedora-2.home>
In-Reply-To: <09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
	<20260530143541.229628-5-phasta@kernel.org>
	<4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
	<20260603191405.4c75badb@fedora-2.home>
	<09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: JLG2PFPO2MUY7HCFLTDUMNNV2WQ265SA
X-Message-ID-Hash: JLG2PFPO2MUY7HCFLTDUMNNV2WQ265SA
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.o
 rg>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLG2PFPO2MUY7HCFLTDUMNNV2WQ265SA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_RECIPIENTS(0.00)[m:dwlsalmeida@gmail.com,m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kernel.o rg,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@l
 fdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,linuxfoundation.org,kernel.o rg,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dma_fence.rs:url,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C637063DEC8

T24gV2VkLCAzIEp1biAyMDI2IDIxOjQzOjA1IC0wMzAwDQpEYW5pZWwgQWxtZWlkYSA8ZHdsc2Fs
bWVpZGFAZ21haWwuY29tPiB3cm90ZToNCg0KPiA+IE9uIDMgSnVuIDIwMjYsIGF0IDE0OjE0LCBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4g
PiANCj4gPiBPbiBXZWQsIDMgSnVuIDIwMjYgMTM6NDE6MDIgLTAzMDANCj4gPiBEYW5pZWwgQWxt
ZWlkYSA8ZHdsc2FsbWVpZGFAZ21haWwuY29tPiB3cm90ZToNCj4gPiAgIA0KPiA+Pj4gKyAgICAv
Ly8gQ2FsbGVkIHdoZW4gdGhlIGZlbmNlIGlzIHNpZ25hbGVkLg0KPiA+Pj4gKyAgICAvLy8NCj4g
Pj4+ICsgICAgLy8vIFRoaXMgaXMgY2FsbGVkIGZyb20gdGhlIGZlbmNlIHNpZ25hbGluZyBwYXRo
LCB3aGljaCBtYXkgYmUgaW4gaW50ZXJydXB0DQo+ID4+PiArICAgIC8vLyBjb250ZXh0IG9yIHdp
dGggbG9ja3MgaGVsZCwgd2hpY2ggaXMgd2h5IGBzZWxmYCBpcyBvbmx5IGJvcnJvd2VkLCBzbyB0
aGF0DQo+ID4+PiArICAgIC8vLyBpdCBjYW5ub3QgZHJvcC4gSW1wbGVtZW50YXRpb25zIG11c3Qg
bm90IHNsZWVwIG9yIHBlcmZvcm0NCj4gPj4+ICsgICAgLy8vIGxvbmctcnVubmluZyBvcGVyYXRp
b25zLg0KPiA+Pj4gKyAgICAvLy8NCj4gPj4+ICsgICAgLy8vIEFuIGltcGxlbWVudGF0aW9uIGxp
a2VseSB3YW50cyB0byBpbmZvcm0gaXRzZWxmIChlLmcuLCB0aHJvdWdoIGEgd29yayBpdGVtKQ0K
PiA+Pj4gKyAgICAvLy8gd2l0aGluIHRoaXMgY2FsbGJhY2sgdGhhdCB0aGUgYXNzb2NpYXRlZCBb
YEZlbmNlQ2JSZWdpc3RyYXRpb25gXSBjYW4gbm93IGJlDQo+ID4+PiArICAgIC8vLyBkcm9wcGVk
Lg0KPiA+Pj4gKyAgICBmbiBjYWxsZWQoJm11dCBzZWxmKTsgICAgDQo+ID4+IA0KPiA+PiBUaGlz
IGlzIGEgY2VudHJhbCBwb2ludC4gV2UgaWRlYWxseSB3b3VsZCB3YW50IHRoaXMgdG8gY29uc3Vt
ZSBzZWxmLCBiZWNhdXNlIHdlDQo+ID4+IG1heSB3YW50IHRvIG1vdmUgdGhpbmdzIG91dCBvZiB0
aGUgY2FsbGJhY2suICAgIA0KPiA+IA0KPiA+IFRoaXMgb25lIGNvbWVzIGZyb20gbWUuIFRoZSBy
YXRpb25hbGUgYmVpbmcgdGhhdCA6OmNhbGxlZCgpIGlzIGNhbGxlZA0KPiA+IGZyb20gYW4gYXRv
bWljIGNvbnRleHQsIGFuZCB0aGUgcmVzb3VyY2VzIGF0dGFjaGVkIHRvIHRoZSBjYWxsYmFjayBk
YXRhDQo+ID4gbWlnaHQgcmVxdWlyZSBhY3F1aXJpbmcgb3RoZXIgc2xlZXBpbmcgbG9ja3MgdG8g
YmUgcmVsZWFzZWQsIGFuZA0KPiA+IHNvbWV0aW1lcyB5b3UgZG9uJ3QgZXZlbiBub3RpY2UgaW1t
ZWRpYXRlbHkgYmVjYXVzZSBzYWlkIHJlc291cmNlcyBhcmUNCj4gPiByZWZjb3VudGVkLCBhbmQg
dGhlIGxvY2sgaXMgb25seSBhY3F1aXJlZCB3aGVuIHlvdSBoYXBwZW4gdG8gYmUgdGhlDQo+ID4g
bGFzdCBvd25lci4gWWVzLCB0aG9zZSBjYW4gYmUgY2F1Z2h0IGF0IHJ1bnRpbWUgaWYgdGhlIEMg
c2lkZSBpcw0KPiA+IHByb3Blcmx5IGFubm90YXRlZCB3aXRoIG1pZ2h0X3NsZWVwKCksIGJ1dCB0
aGF0J3Mgbm90IGFsd2F5cyB0aGUgY2FzZS4NCj4gPiANCj4gPiBJZiB3ZSBkZWZlciB0aGUgZHJv
cCBvZiB0aGUgZGF0YSBvbmx5IHdoZW4gdGhlIEZlbmNlQ2IgaXMNCj4gPiBkcm9wcGVkL3JlY3lj
bGVkLCB3ZSdyZSBhdCBsZWFzdCBub3QgY29uc3RyYWluZWQgYnkgdGhpcyAicnVucyBpbg0KPiA+
IGF0b21pYyBjb250ZXh0IiB0aGluZy4NCj4gPiAgIA0KPiANCj4gVGhpcyBkZXNpZ24gZG9lcyBu
b3Qgc29sdmUgaXQsIGJlY2F1c2Ugb25lIGNhbiBxdWl0ZSB0cml2aWFsbHkgZ2V0IGFyb3VuZCB0
aGlzDQo+IHJlc3RyaWN0aW9uIHVzaW5nIE9wdGlvbjxUPiBhcyBJIHNhaWQuIElmIHlvdXIgcG9p
bnQgaXMg4oCcZG9u4oCZdCBydW4gYW55IGRyb3AoKSBoZXJl4oCdLA0KPiB0aGVuICZtdXQgc2Vs
ZiBkb2VzbuKAmXQgZG8gaXQuDQoNCk15IGJhZCwgSSB0aG91Z2h0IHlvdSB3ZXJlIHRhbGtpbmcg
YWJvdXQgc29tZSBPcHRpb248VD4gaW4NCkZlbmNlQ2JSZWdpc3RyYXRpb248VD4gKHRoZXJlIHdh
cyBvbmUgYXQgc29tZSBwb2ludCwgYnV0IGl0J3MgZ29uZSBub3cpLA0KYnV0IHlvdSdyZSB0YWxr
aW5nIGFib3V0IGhhdmluZyBhbiBPcHRpb248WD4gaW5zaWRlIHRoZSBULiBZZXMsIHRoZXJlJ3MN
CmluZGVlZCBub3RoaW5nIHByZXZlbnRpbmcgYSBkcm9wIG9uIFggaW4gdGhhdCBwYXRoLCBhbmQg
aXQncyBqdXN0IGFzDQpiYWQgYXMgcGFzc2luZyB0aGUgZmVuY2UgYmFjayBhcyB2YWx1ZSB0byB0
aGUgY2FsbGJhY2sgaW4gdGhhdCBjYXNlLg0KDQo+IA0KPiA+PiANCj4gPj4gQ29uc2lkZXIgYSBm
ZW5jZSBkZXNpZ24gd2hlcmUgc2lnbmFsKCkgY29uc3VtZXMgc2VsZi4gTm93IGNvbnNpZGVyIHRo
aXM6DQo+ID4+IA0KPiA+PiBgYGANCj4gPj4gaW1wbCBGZW5jZUNiIGZvciBNeUNhbGxiYWNrIHsN
Cj4gPj4gZm4gY2FsbGVkKCZtdXQgc2VsZikgew0KPiA+PiAgIC8vIENhbid0IG1vdmUgdGhlIGZl
bmNlIG91dCwgc28gd2UgaGF2ZSB0byBwdXQgYW4gT3B0aW9uPFQ+IGp1c3QgdG8gYmUgYWJsZQ0K
PiA+PiAgIC8vIHRvIG1vdmUuDQo+ID4+ICAgaWYgbGV0IFNvbWUoZikgPSBzZWxmLnNvbWVfZmVu
Y2UudGFrZSgpIHsNCj4gPj4gICAgIGYuc2lnbmFsKCk7DQo+ID4+ICAgfQ0KPiA+PiB9DQo+ID4+
IGBgYA0KPiA+PiANCj4gPj4gVGhpcyB1c2VkIHRvIGJlIHRoZSBjYXNlIHdoZW4gb3VyIHZlcnNp
b24gb2YgdGhlIGpvYiBxdWV1ZSB1c2VkIHRoZSAicHJveHkNCj4gPj4gZmVuY2UiIGRlc2lnbjoN
Cj4gPj4gDQo+ID4+IA0KPiA+PiBgYGANCj4gPj4gLy8gQ2FsbGJhY2sgb24gdGhlIGh3IGZlbmNl
DQo+ID4+IGltcGwgRmVuY2VDYiBmb3IgTXlDYWxsYmFjayB7DQo+ID4+IGZuIGNhbGxlZCgmbXV0
IHNlbGYpIHsNCj4gPj4gICBpZiBsZXQgU29tZShmKSA9IHNlbGYuc3VibWl0X2ZlbmNlLnRha2Uo
KSB7DQo+ID4+ICAgICBmLnNpZ25hbCgpOw0KPiA+PiAgIH0gIA0KPiA+IA0KPiA+IEknbSBwcmV0
dHkgc3VyZSBsb2NrZGVwIHdvbid0IGxpa2UgaXQgYW55d2F5LCBiZWNhdXNlIHRoaXMgaXMgbmVz
dGVkDQo+ID4gbG9ja2luZyBvZiB0aGUgc2FtZSBsb2NrIGNsYXNzLiBGb3Igc3VjaCBwcm94aWVz
LCB3ZSdsbCBuZWVkIHRvIHRlYWNoDQo+ID4gbG9ja2RlcCBhYm91dCB0aGUgbmVzdGluZyBsaWtl
IGhhcyBiZWVuIHJlY2VudGx5IGRvbmUgb24NCj4gPiBkbWFfZmVuY2VfYXJyYXkgJiBjby4gQnV0
IEknbSBkaWdyZXNzaW5nLiAgDQo+IA0KPiBZZWFoLCBidXQgdGhpcyBpcyBtb3JlIGFib3V0IHJl
c291cmNlIHRyYW5zZmVyIGluIGdlbmVyYWwsIG5vdA0KPiB0aGlzIHBhdHRlcm4gc3BlY2lmaWNh
bGx5Lg0KPiANCj4gSSBhZ3JlZSB0aGF0IHRoaXMgaGFzIGlzc3VlcywgYW5kIHllcywgbG9ja2Rl
cCBjb21wbGFpbmVkIGJhY2sNCj4gdGhlbiA6KQ0KDQpUaGUgdGhpbmcgaXMsIHRoZXJlJ3Mgc28g
bWFueSBhc3BlY3RzIHRoYXQgY291bGQgZ28gd3JvbmcgYmVjYXVzZSBvZiB0aGUNCmNvbnRleHQg
dGhpcyBjYWxsYmFjayBpcyBjYWxsZWQgaW4uIE5lc3RlZCBsb2NraW5nIGlzIG9uZSBvZiB0aGVt
LA0KdGhlIGZhY3Qgd2UgY2FuJ3Qgc2xlZXAgaXMgYW5vdGhlci4gQW5kIHdpdGggcnVzdCBpdCdz
IGV2ZW4gd29yc2UsDQpiZWNhdXNlIG9mIHRoZSBpbXBsaWNpdCBkcm9wcyB0aGF0IHdpbGwgaGFw
cGVuIHdoZW4geW91IHRha2Ugb3duZXJzaGlwDQpvZiByZXNvdXJjZXMgKHRha2luZyBzbGVlcGlu
ZyBsb2NrcyB0byByZW1vdmUgcmVzb3VyY2VzIGZyb20gYSBkYXRhc2V0DQpmb3IgaW5zdGFuY2Up
Lg0KDQpTbywgYnkgcGFzc2luZyBzZWxmIGJ5IHZhbHVlIHRvIHRoZSA6OmNhbGxiYWNrKCksIHlv
dSdyZSBiYXNpY2FsbHkNCnRlbGxpbmcgdXNlcnMgImhleSwgQlRXLCBkb24ndCBmb3JnZXQgdG8g
ZGVmZXIgdGhlIGRyb3AgdG8gc29tZQ0Kd29ya3F1ZXVlIGlmIHlvdSB0aGluayBpdCdzIG5vdCBh
dG9taWMtc2FmZSIuIEFuZCBob3cgY2FuIHVzZXJzIGtub3cNCnRoYXQgdGhlIHRoaW5nIHRoZXkn
cmUgYWJvdXQgdG8gZHJvcCBjYW4gYmUgZHJvcHBlZCBpbiBhdG9taWMgY29udGV4dD8NClRoZXkg
YmFzaWNhbGx5IGhhdmUgdG8gYXVkaXQgdGhlIDo6ZHJvcCgpIG9mIGFsbCB0aGUgcmVzb3VyY2Vz
IHRoZXkNCmVtYmVkIGluIHRoZWlyIHR5cGUgaW1wbGVtZW50aW5nIEZlbmNlQ2IuIE5vdCBvbmx5
IHRoYXQsIGJ1dCB0aGV5IGFsc28NCmhhdmUgdG8gZGVzaWduIHRoZSB0aGluZyBzbyB0aGUgZGVm
ZXJyYWwgb2YgdGhpcyA6OmRyb3AoKSBkb2Vzbid0DQphbGxvY2F0ZSwgYmVjYXVzZSwgb2J2aW91
c2x5LCBhbGxvY2F0aW5nIGluIGF0b21pYyBjb250ZXh0IGlzDQp0cmlja3kvZmFsbGlibGUuIEFG
QUlLLCBub25lIG9mIHRoaXMgY2FuIGJlIHNwb3QgYXQgY29tcGlsZS10aW1lIChJDQpyZW1lbWJl
ciBHYXJ5L0RhbmlsbyBtZW50aW9uaW5nIHRoYXQgd2UgY291bGQgdGVhY2ggdGhlIGtsaW50IGFi
b3V0DQpzb21lIG9mIHRoZXNlIHJ1bGVzKS4gVGhpcyB3b3VsZCBsZWF2ZSB1cyB3aXRoIHJ1bnRp
bWUgY2hlY2tzIGxpa2UNCm1pZ2h0X3NsZWVwKCksIGJ1dCBtb3N0IG9mIHRoZSBDIHB1dHRlcnMg
KHh4eF9wdXQob2JqZWN0KSkgZG9uJ3QgaGF2ZQ0KbWlnaHRfc2xlZXAoKSBpbiB0aGUgcGF0aCB3
aGVyZSB0aGUgZGVjcmVmIGRvZXNuJ3QgbGVhZCB0byBhIHJlZmNudD0wDQpzaXR1YXRpb24uDQoN
ClRMRFI7IENhbGwgdGhpcyBQVFNEIGlmIHlvdSB3YW50LCBidXQgdGhpcyBpcyB0aGUgc29ydCBv
ZiBidWdzIEkNCnN0cnVnZ2xlZCB3aXRoIG9uIHRoZSBDIHNpZGUsIGFuZCBJIGNhbiBwcmVkaWN0
IHRoYXQgdGhlIGV4YWN0IHNhbWUNCndpbGwgaGFwcGVuIGluIHJ1c3QgZHJpdmVycyBpZiB3ZSBl
eHBvc2UgdGhlIEZlbmNlQ2IgYXMgaXQgaXMgZGVzaWduZWQNCmhlcmUgYW5kIHdlIGRvbid0IGhh
dmUgYSB3YXkgdG8gY2hlY2sgdGhlIHNvdW5kbmVzcyBvZiB0aGUgRmVuY2VDYg0KaW1wbGVtZW50
YXRpb25zIGF0IGNvbXBpbGUgdGltZS4NCg0KVGhlIG90aGVyIG9wdGlvbiAodGhlIG9uZSBJJ3Zl
IGJlZW4gYWR2b2NhdGluZyBmb3IgZnJvbSB0aGUgc3RhcnQpLCBpcw0KdG8gbm90IGxldCBkcml2
ZXJzIGltcGxlbWVudCBGZW5jZUNiIChtYWtlIGl0IHByaXZhdGUpLCBidXQgaW5zdGVhZA0KaGF2
ZSBhIGJ1bmNoIG9mIGltcGxlbWVudGF0aW9ucyB0aGF0IHdlIGtub3cgYXJlIHNhZmUuIEhlcmUn
cyBhIGxpc3Qgb2YNCmltcGxlbWVudGF0aW9ucyB0aGF0IEkgdGhpbmsgd291bGQgdW5ibG9jayBt
b3N0IG9mIHRoZSBkcml2ZXJzIHVzZQ0KY2FzZXM6DQoNCi0gd2FrZXVwIGEgdGhyZWFkDQotIGNv
bXBsZXRlIGEgY29tcGxldGlvbiBvYmplY3QNCi0gc2NoZWR1bGUgYSBXb3JrSXRlbQ0KLSBzY2hl
ZHVsZSBhIGt0aHJlYWRfd29ya2VyIChvbmNlIHdlIGdldCBhIHByb3BlciBydXN0IGFic3RyYWN0
aW9uIGZvcg0KICB0aGF0KQ0KDQpJdCBkb2Vzbid0IG1lYW4gd2UgY2FuJ3QgaGF2ZSBvcHRpbWl6
ZWQgRmVuY2VDYiBpbXBsZW1lbnRhdGlvbnMgdGhhdCBkbw0KYSBsb3QgbW9yZSBpbiB0aGUgY2Fs
bGJhY2soKSBwYXRoIGluc3RlYWQgb2YgZGVmZXJyaW5nIHRvIGENCndvcmtxdWV1ZS90aHJlYWQs
IGJ1dCBhdCBsZWFzdCB0aG9zZSB3b3VsZCBoYXZlIHRvIGJlIGltcGxlbWVudGVkIGluDQpkbWFf
ZmVuY2UucnMsIGFuZCB0aGUgZG1hX2ZlbmNlLnJzIG1haW50YWluZXJzIGNhbiB0aGVuIGNhcmVm
dWxseSBhdWRpdA0KdGhlIGNvZGUgYXMgcGFydCBvZiB0aGUgcmV2aWV3IHByb2Nlc3MsIHdoaWNo
IHdlIGtub3cgaXMgbm90IHJlYWxseSB0aGUNCmNhc2Ugd2hlbiBjaGFuZ2VzIHRvdWNoIGRyaXZl
cnMgY29kZSBvbmx5Lg0KDQpGV0lXLCBJIHRoaW5rIHRoZSBGZW5jZVByb3h5IGRlc2lnbiB5b3Ug
d2VyZSBkZXNjcmliaW5nIGZhbGxzIGludG8NCnRoaXMgIm11c3QgYmUgY2FyZWZ1bGx5IGF1ZGl0
ZWQiIGJ1Y2tldCwgYW5kIHNob3VsZCBiZSBpbXBsZW1lbnRlZCBpbg0KZG1hX2ZlbmNlLnJzLg0K
DQo+IA0KPiA+ICAgDQo+ID4+IH0NCj4gPj4gYGBgDQo+ID4+IA0KPiA+PiBBbHRob3VnaCB0aGlz
IGlzIG5vdCB0aGUgY2FzZSBhbnltb3JlLCBzaW5jZSB3ZSBwaGFzZWQgb3V0IHRoaXMgZGVzaWdu
IGdpdmVuDQo+ID4+IENocmlzdGlhbidzIHJlY2VudCB3b3JrLiBTdGlsbCwgd2Ugc2hvdWxkIGlk
ZWFsbHkgbm90IHJlcXVpcmUgT3B0aW9uPFQ+IGhlcmUgaW4NCj4gPj4gZ2VuZXJhbCBqdXN0IHRv
IG1ha2UgcmVzb3VyY2UgdHJhbnNmZXIgcG9zc2libGUuICANCj4gPiANCj4gPiBJIHNlZS4gT1RP
SCwgZG9uJ3Qgd2UgbmVlZCB0byBtYWtlIHRoaXMgaW5uZXIgZGF0YSBtb3ZhYmxlIGlmIHdlIHdh
bnQNCj4gPiB0byBjYW5jZWwgdGhlIEZlbmNlQ2IgYmVmb3JlIHRoZSBmZW5jZSBpcyBzaWduYWxl
ZCBhbnl3YXk/IEFuZCB0aGF0J3MNCj4gPiBtb3N0IGNlcnRhaW5seSBhIGNhc2Ugd2UgaGF2ZSBp
biB0aGUgdGVhcmRvd24gcGF0aC4gIA0KPiANCj4gQ2FuIHlvdSBleHBhbmQgYSBiaXQgb24gd2hh
dCB5b3UgbWVhbiBoZXJlPw0KDQpOZXZlciBtaW5kLCBJIHdhcyBjb25mdXNpbmcgdHdvIGRpZmZl
cmVudCBpdGVyYXRpb25zIG9mIHRoZSBjb2RlIGhlcmUuDQpJIHRob3VnaHQgdGhlIE9wdGlvbjxU
PiB5b3Ugd2VyZSBtZW50aW9uaW5nIHdhcyBpbg0KRmVuY2VDYlJlZ2lzdHJhdGlvbjxUPiwgd2l0
aCBzb21lIGV4cGxpY2l0IDo6Y2FuY2VsKCkgZnVuY3Rpb24gdGhhdA0Kd291bGQgcmV0dXJuIE9w
dGlvbjxUPiBzbyB0aGUgdXNlciBjYW4gZ2V0IGl0cyByZXNvdXJjZXMgYmFjayB3aGVuIGl0DQpj
YW5jZWxzIHRoZSByZWdpc3RyYXRpb24sIGFuZCBhbHNvIGtub3cgd2hldGhlciB0aGUgY2FsbGJh
Y2sgd2FzIGNhbGxlZA0Kb3Igbm90LiBCdXQgdGhpcyBpcyBhbGwgZ29uZSBub3csIGFuZCBhbGwg
d2UgY2FuIGRvIGlzIGRyb3AgdGhlDQpyZWdpc3RyYXRpb24sIHdoaWNoIHdpbGwgYXV0b21hdGlj
YWxseSBkcm9wIHRoZSBpbm5lciBULg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
