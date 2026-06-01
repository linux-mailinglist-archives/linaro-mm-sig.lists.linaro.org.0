Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMODH9RnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3965C628820
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 540CD409BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:19:15 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id E423A406F3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 11:17:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=cPbFnAeS;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gTWdw0pXfz9tZ4;
	Mon,  1 Jun 2026 13:17:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1780312660; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D04O1XsCuuemXbY2YVN0rSer7xhr48HKYGRqzuFlAPQ=;
	b=cPbFnAeSy9iiIQhi43evWGZcVGFHTXNPXi90ZHOokjf+XuWUCknF67LUcSNjDtcSTfW6J0
	M3Q7eVk0KtSZVwvmLiX0nE77hu9cIojWChsZv0J/XTVlU99Bi/9nfwZzkjJU42dVIXyMhG
	ZYdaq1qcoGXROeuiPa1vTaDuI0cgs4L9uEy5Gy9KNcrLJDBMUXa+aCuyBi5IhFo1kcgCfj
	0I8T3aZMcEXrHP4wdyYzMnr4wbIDJPYLp8MoDAuRCFstfuUs7HQb85JEOBjMt2uepu7+oB
	JELjiEK73LfBi3MjC4qn4bGNbFTYTBQtF4ABkbVVGotTOUTaoXz6SH6udW6HmA==
Message-ID: <df2daf200c9a69f497f4285074d2a95425b3dbdd.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Boris Brezillon <boris.brezillon@collabora.com>, Alice Ryhl
	 <aliceryhl@google.com>
Date: Mon, 01 Jun 2026 13:17:27 +0200
In-Reply-To: <20260601125933.17ca4dd5@fedora-2.home>
References: <20260530143541.229628-2-phasta@kernel.org>
		<20260530143541.229628-5-phasta@kernel.org>	<ah1glmXDM-OAKa5h@google.com>
	 <20260601125933.17ca4dd5@fedora-2.home>
MIME-Version: 1.0
X-MBO-RS-META: e4utjoyocfe4p1fqaetun1euskdi8cyn
X-MBO-RS-ID: b921df505de11e783e6
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CTPLNLJ2CCYDPHVCGWVDTHRF6T7FHJDX
X-Message-ID-Hash: CTPLNLJ2CCYDPHVCGWVDTHRF6T7FHJDX
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:17:59 +0000
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo S
 toakes <ljs@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CTPLNLJ2CCYDPHVCGWVDTHRF6T7FHJDX/>
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[mailbox.org:-];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.054];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,mailbox.org:mid]
X-Rspamd-Queue-Id: 3965C628820
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA2LTAxIGF0IDEyOjU5ICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
DQo+IE9uIE1vbiwgMSBKdW4gMjAyNiAxMDozNjowNiArMDAwMA0KPiBBbGljZSBSeWhsIDxhbGlj
ZXJ5aGxAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+IA0KPiA+ID4gK307DQo+ID4gPiArDQo+ID4gPiAr
dXNlIGJpbmRpbmdzOjpFQ0FOQ0VMRUQ7DQo+ID4gPiArDQo+ID4gPiArdXNlIGtlcm5lbDo6c3Ry
OjpDU3RyaW5nOw0KPiA+ID4gK3VzZSBrZXJuZWw6OnN5bmM6OnsNCj4gPiA+ICvCoMKgwqAgYXJl
Zjo6ew0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgIEFSZWYsDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAg
QWx3YXlzUmVmQ291bnRlZCwgLy8NCj4gPiA+ICvCoMKgwqAgfSwNCj4gPiA+ICvCoMKgwqAgQXJj
LA0KPiA+ID4gK8KgwqDCoCBBcmNCb3Jyb3csIC8vDQo+ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+
ICsvLy8gVlRhYmxlIGZvciBkbWFfZmVuY2UgYmFja2VuZF9vcHMgY2FsbGJhY2tzLg0KPiA+ID4g
Ky8vDQo+ID4gPiArLy8gTWFuZGF0b3J5IGRtYV9mZW5jZSBiYWNrZW5kX29wcyBhcmUgaW1wbGVt
ZW50ZWQgaW1wbGljaXRseSB0aHJvdWdoDQo+ID4gPiArLy8gW2BGZW5jZUN0eGBdLiBBZGRpdGlv
bmFsIG9uZXMgc2hhbGwgZ2V0IGltcGxlbWVudGVkIG9uIHRoaXMgdHJhaXQsIHdoaWNoIHRoZW4N
Cj4gPiA+ICsvLyBzaGFsbCBiZSBkZW1hbmRlZCBmb3IgdGhlIGZlbmNlIGNvbnRleHQgZGF0YS4N
Cj4gPiA+ICtwdWIgdHJhaXQgRmVuY2VDdHhPcHMge33CoCANCj4gPiANCj4gPiBUaGlzIGVtcHR5
IHRyYWl0IGlzIHVudXNlZC4NCj4gDQo+IEkgaGFkIGluaXRpYWxseSBzdWdnZXN0ZWQgdG8gYWRk
IHRoZSBGIHR5cGUgKEFLQSBGZW5jZURhdGEpIHBhc3NlZA0KPiBhcm91bmQgaW4gbXVsdGlwbGUg
cGxhY2VzIHR5cGUgYXMgYW4gYXNzb2NpYXRlZCB0eXBlDQo+IA0KPiBwdWIgdHJhaXQgRmVuY2VD
dHhPcHMgew0KPiDCoMKgIHR5cGUgRmVuY2VEYXRhOiBTZW5kICsgU3luYzsNCj4gfQ0KPiANCj4g
c28gd2UgZG9uJ3QgaGF2ZSB0byBwYXNzIGJvdGggRiBhbmQgQy4gVGhlIHJlYXNvbmluZyBoZXJl
IGlzIHRoYXQ6DQo+IA0KPiAxLiBXZSBleHBlY3Qgd2UnbGwgaGF2ZSB0byBkZWZpbmUgbW9yZSBt
ZXRob2RzIHRvIHRoZSBGZW5jZUN0eE9wcyB0cmFpdA0KPiBhdCBzb21lIHBvaW50LCBzbyBhZGRp
bmcgaXQgbm93IGtpbmRhIG1ha2VzIHNlbnNlLg0KPiANCj4gMi4gSW4gdGhlIGN1cnJlbnQgZGVz
aWduLCB3ZSd2ZSBhc3N1bWVkIHRoYXQgYSBGZW5jZSBjYW4ndCBsaXZlL2JlDQo+IGNyZWF0ZWQg
b3V0c2lkZSBvZiBhIGdpdmVuIGNvbnRleHQsIHNvIHRoZXJlJ3Mgbm8gd29ybGQgd2hlcmUgdGhl
DQo+IEZlbmNlRGF0YSB3b3VsZG4ndCBiZSBrbm93biBieSB0aGUgRmVuY2VDdHggaW1wbGVtZW50
YXRpb24sIGFuZCBmb3JjaW5nDQo+IHVzZXJzIHRvIHBhc3MgRiBhbmQgQyBhcm91bmQgc2VlbXMg
bmVlZGxlc3NseSB2ZXJib3NlLg0KDQpJIGhhZCBpbnZlc3RpZ2F0ZWQgdGhhdCwgYnV0IGZvdW5k
IHRoYXQgdGhpcyBjYXVzZXMgdXMgdG8gd3JpdGUgdGhpbmdzDQpsaWtlDQoNCkRyaXZlckZlbmNl
PFQ+ICh3aGVyZSBUIGlzIHRoZSBGZW5jQ3R4IGdlbmVyaWMpDQoNCmFuZCB0aGVuIGluIHRoZSBh
Y3R1YWwgaW1wbGVtZW50YXRpb24gdXNlDQoNClQ6OkZlbmNlRGF0YQ0KDQp3aGljaCByZWFkcyB2
ZXJ5IHdlaXJkIElNTy4gQmVjYXVzZSBub3cgZm9yIHJlYXNvbnMgYSBmZW5jZSdzIG93biBkYXRh
DQphcmUgbm90IHJlZmVycmVkIHRvIGluIGl0cyBvd24gaW1wbGVtZW50YXRpb24sIGJ1dCB5b3Ug
ZGVyaXZlIGl0IGZyb20NCnRoZSBjb250ZXh0Lg0KDQpJIGRvIHByZWZlciBpdCBpbiBhIHdheSB3
aGVyZSB0aGUgRHJpdmVyRmVuY2UgZ2VuZXJpYyBkb2VzIGFwcGVhciBpbg0Kc2FpZCBmZW5jZSdz
IGFjdHVhbCBjb2RlLCBvbiBlcXVhbCByYW5rIHdpdGggdGhlIEZlbmNlQ3R4Lg0KDQpJIHN1cHBv
c2UgdGhhdCBpcyBhY3R1YWxseSBvbmUgdXNlIGNhc2UgZm9yIHdoaWNoIFBoYW50b21EYXRhIGRv
ZXMNCmV4aXN0Lg0KDQoNClAuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
