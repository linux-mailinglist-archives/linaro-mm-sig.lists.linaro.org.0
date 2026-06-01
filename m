Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBUKE5F8HWoSbQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 14:35:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD52861F54B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 14:35:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FB3D40985
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jun 2026 12:35:27 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id A34C84049E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 12:35:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=O2IPgqdG;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780317317;
	bh=eAUzv1oG+8VrLgTwvZZXP2w73GbBrRo2AMk8yHYYo/g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=O2IPgqdGjYBmcd1L8ay8IHaSnv7qhvvdT4jKgED96lL0CeEuqzwa8UxulhBaEbEX1
	 fwJ/W7WRpI+fOjAvM4T1OIM0hiBaO0H8aYaQwDmPbCYQkw8EakmamAibQFAsOCQAGO
	 FXcT+19Mru1h8WCVU5Z9gBvC+vP2YBFiWhoV1cEsyn4CTB6XGoNU7sOLfmE6LJ/KF1
	 Nal619P4ZV8I6dwW6ljfLyKXfKL1fXV2xHH/HbHh3SADwuMBKFq7EgM5NMKrOogfiL
	 CwUVcGF0lIWCoYSmbNc4ApuPsPqiMuJcd/nlk6UTSMUJI6Zn4Xjux4dEblglX5QGTX
	 eigc7sG8rcF5w==
Received: from fedora-2.home (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 628E217E052F;
	Mon,  1 Jun 2026 14:35:16 +0200 (CEST)
Date: Mon, 1 Jun 2026 14:35:12 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Philipp Stanner <phasta@mailbox.org>
Message-ID: <20260601143512.2d9de9c2@fedora-2.home>
In-Reply-To: <df2daf200c9a69f497f4285074d2a95425b3dbdd.camel@mailbox.org>
References: <20260530143541.229628-2-phasta@kernel.org>
	<20260530143541.229628-5-phasta@kernel.org>
	<ah1glmXDM-OAKa5h@google.com>
	<20260601125933.17ca4dd5@fedora-2.home>
	<df2daf200c9a69f497f4285074d2a95425b3dbdd.camel@mailbox.org>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: KU4ZBEGD3UYCXXH3AGRAPIWX53SE526L
X-Message-ID-Hash: KU4ZBEGD3UYCXXH3AGRAPIWX53SE526L
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: phasta@kernel.org, Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, 
 Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KU4ZBEGD3UYCXXH3AGRAPIWX53SE526L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.311];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: BD52861F54B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAwMSBKdW4gMjAyNiAxMzoxNzoyNyArMDIwMA0KUGhpbGlwcCBTdGFubmVyIDxwaGFz
dGFAbWFpbGJveC5vcmc+IHdyb3RlOg0KDQo+IE9uIE1vbiwgMjAyNi0wNi0wMSBhdCAxMjo1OSAr
MDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+IE9uIE1vbiwgMSBKdW4gMjAyNiAxMDoz
NjowNiArMDAwMA0KPiA+IEFsaWNlIFJ5aGwgPGFsaWNlcnlobEBnb29nbGUuY29tPiB3cm90ZToN
Cj4gPiAgIA0KPiA+ID4gPiArfTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArdXNlIGJpbmRpbmdzOjpF
Q0FOQ0VMRUQ7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3VzZSBrZXJuZWw6OnN0cjo6Q1N0cmluZzsN
Cj4gPiA+ID4gK3VzZSBrZXJuZWw6OnN5bmM6OnsNCj4gPiA+ID4gK8KgwqDCoCBhcmVmOjp7DQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCBBUmVmLA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgQWx3
YXlzUmVmQ291bnRlZCwgLy8NCj4gPiA+ID4gK8KgwqDCoCB9LA0KPiA+ID4gPiArwqDCoMKgIEFy
YywNCj4gPiA+ID4gK8KgwqDCoCBBcmNCb3Jyb3csIC8vDQo+ID4gPiA+ICt9Ow0KPiA+ID4gPiAr
DQo+ID4gPiA+ICsvLy8gVlRhYmxlIGZvciBkbWFfZmVuY2UgYmFja2VuZF9vcHMgY2FsbGJhY2tz
Lg0KPiA+ID4gPiArLy8NCj4gPiA+ID4gKy8vIE1hbmRhdG9yeSBkbWFfZmVuY2UgYmFja2VuZF9v
cHMgYXJlIGltcGxlbWVudGVkIGltcGxpY2l0bHkgdGhyb3VnaA0KPiA+ID4gPiArLy8gW2BGZW5j
ZUN0eGBdLiBBZGRpdGlvbmFsIG9uZXMgc2hhbGwgZ2V0IGltcGxlbWVudGVkIG9uIHRoaXMgdHJh
aXQsIHdoaWNoIHRoZW4NCj4gPiA+ID4gKy8vIHNoYWxsIGJlIGRlbWFuZGVkIGZvciB0aGUgZmVu
Y2UgY29udGV4dCBkYXRhLg0KPiA+ID4gPiArcHViIHRyYWl0IEZlbmNlQ3R4T3BzIHt9wqAgICAN
Cj4gPiA+IA0KPiA+ID4gVGhpcyBlbXB0eSB0cmFpdCBpcyB1bnVzZWQuICANCj4gPiANCj4gPiBJ
IGhhZCBpbml0aWFsbHkgc3VnZ2VzdGVkIHRvIGFkZCB0aGUgRiB0eXBlIChBS0EgRmVuY2VEYXRh
KSBwYXNzZWQNCj4gPiBhcm91bmQgaW4gbXVsdGlwbGUgcGxhY2VzIHR5cGUgYXMgYW4gYXNzb2Np
YXRlZCB0eXBlDQo+ID4gDQo+ID4gcHViIHRyYWl0IEZlbmNlQ3R4T3BzIHsNCj4gPiDCoMKgIHR5
cGUgRmVuY2VEYXRhOiBTZW5kICsgU3luYzsNCj4gPiB9DQo+ID4gDQo+ID4gc28gd2UgZG9uJ3Qg
aGF2ZSB0byBwYXNzIGJvdGggRiBhbmQgQy4gVGhlIHJlYXNvbmluZyBoZXJlIGlzIHRoYXQ6DQo+
ID4gDQo+ID4gMS4gV2UgZXhwZWN0IHdlJ2xsIGhhdmUgdG8gZGVmaW5lIG1vcmUgbWV0aG9kcyB0
byB0aGUgRmVuY2VDdHhPcHMgdHJhaXQNCj4gPiBhdCBzb21lIHBvaW50LCBzbyBhZGRpbmcgaXQg
bm93IGtpbmRhIG1ha2VzIHNlbnNlLg0KPiA+IA0KPiA+IDIuIEluIHRoZSBjdXJyZW50IGRlc2ln
biwgd2UndmUgYXNzdW1lZCB0aGF0IGEgRmVuY2UgY2FuJ3QgbGl2ZS9iZQ0KPiA+IGNyZWF0ZWQg
b3V0c2lkZSBvZiBhIGdpdmVuIGNvbnRleHQsIHNvIHRoZXJlJ3Mgbm8gd29ybGQgd2hlcmUgdGhl
DQo+ID4gRmVuY2VEYXRhIHdvdWxkbid0IGJlIGtub3duIGJ5IHRoZSBGZW5jZUN0eCBpbXBsZW1l
bnRhdGlvbiwgYW5kIGZvcmNpbmcNCj4gPiB1c2VycyB0byBwYXNzIEYgYW5kIEMgYXJvdW5kIHNl
ZW1zIG5lZWRsZXNzbHkgdmVyYm9zZS4gIA0KPiANCj4gSSBoYWQgaW52ZXN0aWdhdGVkIHRoYXQs
IGJ1dCBmb3VuZCB0aGF0IHRoaXMgY2F1c2VzIHVzIHRvIHdyaXRlIHRoaW5ncw0KPiBsaWtlDQo+
IA0KPiBEcml2ZXJGZW5jZTxUPiAod2hlcmUgVCBpcyB0aGUgRmVuY0N0eCBnZW5lcmljKQ0KPiAN
Cj4gYW5kIHRoZW4gaW4gdGhlIGFjdHVhbCBpbXBsZW1lbnRhdGlvbiB1c2UNCj4gDQo+IFQ6OkZl
bmNlRGF0YQ0KPiANCj4gd2hpY2ggcmVhZHMgdmVyeSB3ZWlyZCBJTU8uIEJlY2F1c2Ugbm93IGZv
ciByZWFzb25zIGEgZmVuY2UncyBvd24gZGF0YQ0KPiBhcmUgbm90IHJlZmVycmVkIHRvIGluIGl0
cyBvd24gaW1wbGVtZW50YXRpb24sIGJ1dCB5b3UgZGVyaXZlIGl0IGZyb20NCj4gdGhlIGNvbnRl
eHQuDQoNCldlbGwsIEkgYWN0dWFsbHkgdGhpbmsgdGhhdCdzIGEgZ29vZCB0aGluZywgYmVjYXVz
ZSBEcml2ZXJGZW5jZSBhbmQNCkZlbmNlQ3R4IGFyZSB0aWdodGx5IHJlbGF0ZWQ6IEZlbmNlQ3R4
PEYsIEM+IGluc3RhbnRpYXRlcyBhbmQgbWFuYWdlcw0KRHJpdmVyRmVuY2U8RiwgQz4gZmVuY2Vz
LCBhbmQgRHJpdmVyRmVuY2VEYXRhPEYsIEM+IGhhcyBhbiBBcmMgdG8gYQ0KRmVuY2VDdHg8Riwg
Qz4uDQoNCj4gDQo+IEkgZG8gcHJlZmVyIGl0IGluIGEgd2F5IHdoZXJlIHRoZSBEcml2ZXJGZW5j
ZSBnZW5lcmljIGRvZXMgYXBwZWFyIGluDQo+IHNhaWQgZmVuY2UncyBhY3R1YWwgY29kZSwgb24g
ZXF1YWwgcmFuayB3aXRoIHRoZSBGZW5jZUN0eC4NCg0KUXVlc3Rpb24gaXMsIGNhbiB5b3UgcmVh
bGx5IGhhdmUgcmFuZG9tIDxGLCBDPiBjb21iaW5hdGlvbiBvciBpcyBDDQpkaWN0YXRpbmcgd2hp
Y2ggRiB5b3UnbGwgZ2V0IGF0dGFjaGVkIHRvIHRoZSBEcml2ZXJGZW5jZT8gSWYgYSBnaXZlbg0K
Y29udGV4dCBjYW4ndCBoYW5kbGUgbW9yZSB0aGFuIG9uZSB0eXBlIG9mIGZlbmNlLCBJIGRvbid0
IHJlYWxseSBzZWUgdGhlDQpwb2ludCBvZiBwYXNzaW5nIGJvdGggYXJvdW5kIHdoZW4gb25lIGNv
dWxkIGJlIGRpcmVjdGx5IGRlcml2ZWQgZnJvbSB0aGUNCm90aGVyLCBhbmQgc2luY2UgdGhlIHRy
YWl0IHdlIGNvbnNpZGVyIGRlZmluaW5nIGZvciB0aGUgZnV0dXJlIGlzIG9uIHRoZQ0KRmVuY2VD
dHggKEZlbmNlQ3R4T3BzKSwgaXQgbWFrZXMgc2Vuc2UgdG8gaGF2ZSBGZW5jZURhdGEgZGVmaW5l
ZCBhcyBhbg0KYXNzb2NpYXRlZCB0eXBlIG9mIEZlbmNlQ3R4Lg0KDQo+IA0KPiBJIHN1cHBvc2Ug
dGhhdCBpcyBhY3R1YWxseSBvbmUgdXNlIGNhc2UgZm9yIHdoaWNoIFBoYW50b21EYXRhIGRvZXMN
Cj4gZXhpc3QuDQoNClllYWgsIEkgZG9uJ3QsIGl0IGp1c3QgZmVlbHMgd2VpcmQgdG8gcGFzcyBi
b3RoIGFyb3VuZCwgYW5kIGl0IGRvZXNuJ3QNCnNlZW0gdG8gbWF0Y2ggd2hhdCB3ZSd2ZSBiZWVu
IGRvaW5nIGluIG90aGVyIHBsYWNlcyAoZHJtOjpEcml2ZXIsDQpkcm06Ok9iamVjdCwgLi4uKS4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
