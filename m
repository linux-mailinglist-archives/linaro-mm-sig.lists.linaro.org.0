Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PQqMrxnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:18:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 638F6628811
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:18:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7644A4098B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:18:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id DE92F3F6E1
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 10:13:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pd8ZT5BK;
	spf=pass (lists.linaro.org: domain of dakr@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=dakr@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 59E0743E36;
	Mon,  1 Jun 2026 10:13:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 425C21F00893;
	Mon,  1 Jun 2026 10:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780308827;
	bh=3Ts6lB+NKnhLtXYHmT257yvnWMD6Ph1yqe+TlwPK+oM=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To;
	b=Pd8ZT5BK2RvzgTUlsXOQVBEiMwZGkMyUoMd8Lx5ODzTdFIWZswBajI/tODyqROqWT
	 to5Yfm2ruJGsFd7Aaqg5YI78s6jRh8vdyPShR3BzPDi0KAtBFul22aTc8Gw2fRrPyU
	 415n2lb7D2q/yed7aDWBBAXuFXxW8frBXPM1v6tiAg9tphhbwFI8zO4a0Z8dtR2zDI
	 vsoh7J7e32jR6yQKssPu7IRwWXZNZ3yCtIwpB4nto02HbgaYuXtIWLC5SNmvl/u1eu
	 Nw//bc5n+3e3w5IED5m33qGD9XEW0gruuh669lKpNd15WbUaIAG0a70JOKA5dT7gd8
	 VGaNX/Kx7TrDg==
Mime-Version: 1.0
Date: Mon, 01 Jun 2026 12:13:38 +0200
Message-Id: <DIXMT0KKU8D9.2XLDHIGBCM1PZ@kernel.org>
To: "Philipp Stanner" <phasta@mailbox.org>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
 <DIW3ZK5NLKU3.1QYMQB0ISHFBG@kernel.org>
 <08b87b07279e7774c76c0267b1d6c337f705acda.camel@mailbox.org>
In-Reply-To: <08b87b07279e7774c76c0267b1d6c337f705acda.camel@mailbox.org>
X-Spamd-Bar: ---
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HWK75PFP6FDJF7V37RJPU4L6WKS7AZEW
X-Message-ID-Hash: HWK75PFP6FDJF7V37RJPU4L6WKS7AZEW
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:17:59 +0000
CC: phasta@kernel.org, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>
 , Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HWK75PFP6FDJF7V37RJPU4L6WKS7AZEW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 638F6628811
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uIEp1biAxLCAyMDI2IGF0IDEwOjQ2IEFNIENFU1QsIFBoaWxpcHAgU3Rhbm5lciB3cm90
ZToNCj4gT24gU2F0LCAyMDI2LTA1LTMwIGF0IDE3OjE2ICswMjAwLCBEYW5pbG8gS3J1bW1yaWNo
IHdyb3RlOg0KPj4gKE5vdCBhIGZ1bGwgcmV2aWV3LCBidXQgYSBmZXcgZHJpdmUtYnkgY29tbWVu
dHMuKQ0KPj4gDQo+PiBPbiBTYXQgTWF5IDMwLCAyMDI2IGF0IDQ6MzUgUE0gQ0VTVCwgUGhpbGlw
cCBTdGFubmVyIHdyb3RlOg0KPj4gPiArI1thbGxvdyh1bnVzZWRfdW5zYWZlKV0NCj4+IA0KPj4g
V2hhdCBpcyB0aGlzIG5lZWRlZCBmb3I/DQo+DQo+IFlvdSBrbm93IHRoYXQgOi1QDQoNCkkgZG9u
J3QsIGl0J3MgYSBzZXJpb3VzIHF1ZXN0aW9uLg0KDQo+PiA+ICvCoMKgwqDCoMKgwqDCoCAvLyBT
QUZFVFk6IE9uY2UgYSBgRHJpdmVyRmVuY2VgIGlzIGluaXRpYWxpemVkLCB0aGUgaW5uZXIgYGZl
bmNlYCBpcw0KPj4gPiArwqDCoMKgwqDCoMKgwqAgLy8gdmFsaWQgYW5kIGluaXRpYWxpemVkLiBJ
dCBpcyB2YWxpZCB1bnRpbCB0aGUgcmVmY291bnQgZHJvcHMNCj4+ID4gK8KgwqDCoMKgwqDCoMKg
IC8vIHRvIDAsIHdoaWNoIGNhbiBlYXJsaWVzdCBoYXBwZW4gb25jZSB0aGUgYERyaXZlckZlbmNl
YCBoYXMgYmVlbiBkcm9wcGVkLg0KPj4gPiArwqDCoMKgwqDCoMKgwqAgdW5zYWZlIHsNCj4+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmluZGluZ3M6OmRtYV9mZW5jZV9sb2NrX2lycXNhdmUo
ZmVuY2UsIGZsYWdfcHRyKTsNCj4+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgIWJpbmRp
bmdzOjpkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZlbmNlKSB7DQo+PiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgbGV0IEVycihlcnIpID0gcmVzIHsNCj4+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJpbmRpbmdzOjpkbWFfZmVuY2Vf
c2V0X2Vycm9yKGZlbmNlLCBlcnIudG9fZXJybm8oKSk7DQo+PiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfQ0KPj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJp
bmRpbmdzOjpkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7DQo+PiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH0NCj4+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmluZGluZ3M6OmRt
YV9mZW5jZV91bmxvY2tfaXJxcmVzdG9yZShmZW5jZSwgZmxhZ19wdHIpOw0KPj4gPiArwqDCoMKg
wqDCoMKgwqAgfQ0KPj4gDQo+PiBQbGVhc2UgdXNlIGEgc2luZ2xlIHVuc2FmZSBibG9jayBwZXIg
dW5zYWZlIGZ1bmN0aW9uIGNhbGwsIGhlcmUgYW5kIGluIGEgZmV3DQo+PiBvdGhlciBwbGFjZXMu
DQo+DQo+IElzIHRoYXQgYW4gb2ZmaWNpYWwgcnVsZT8gSWYgc28sIHRoZSBsaW50ZXJzIHNob3Vs
ZCBpbmZvcm0gYWJvdXQgaXQuDQo+DQo+IEF0IGZpcnN0IGdsYW5jZSwgSSBkb24ndCBzZWUgYW55
IGFkdmFudGFnZSB0byBpdCBhbmQgdGhlIGRpc2FkdmFudGFnZQ0KPiBvZiBncmVhdGx5IHJlZHVj
aW5nIHJlYWRhYmlsaXR5Lg0KDQpUaGUgYWR2YW50YWdlIGlzIHRoYXQgaXQgc2VwYXJhdGVzIHRo
ZSBzYWZldHkganVzdGlmaWNhdGlvbnMgcGVyIHVuc2FmZSBjYWxsLA0Kd2hpY2ggaW5jcmVhc2Vz
IHRoZSBjaGFuY2VzIG9mIGNhdGNoaW5nIGEgYnVnLCBtYWtlcyBpdCBlYXNpZXIgZm9yIHRoZSBy
ZWFkZXIgdG8NCm1hdGNoIHJlcXVpcmVtZW50cyBhZ2FpbnN0IGp1c3RpZmljYXRpb25zIGFuZCBw
b3RlbnRpYWxseSBhbGxvd3MgdG9vbGluZyB0bw0KcGVyZm9ybSBjaGVja3Mgb2YgdGhlIGp1c3Rp
ZmljYXRpb24gYWdhaW5zdCB0aGUgcmVxdWlyZW1lbnQuDQoNCkZvciB0aGUgc3BlY2lmaWMgY2Fz
ZSBhYm92ZSwgdGhlcmUncyBubyBkb2N1bWVudGVkIHJlcXVpcmVtZW50cyBpbiB0aGUgc2Vuc2Ug
b2YNClJ1c3Qgc2FmZXR5IHJlcXVpcmVtZW50cyBvZiBjb3Vyc2UsIGFzIHRoZXkgYXJlIGFsbCBG
RkkgY2FsbHMsIGJ1dA0KZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoKSBmb3IgaW5zdGFuY2UgaGFz
IHRoZSBvYnZpb3VzIHJlcXVpcmVtZW50IHRoYXQgaXQgbXVzdA0Kb25seSBiZSBjYWxsZWQgd2l0
aCB0aGUgZmVuY2UgbG9jayBoZWxkIGFuZCBkbWFfZmVuY2Vfc2V0X2Vycm9yKCkgbXVzdCBvbmx5
IGJlDQpjYWxsZWQgd2hlbiB0aGUgZmVuY2UgaXMgYWN0dWFsbHkgc2lnbmFsZWQuDQoNCkJlc2lk
ZXMgdGhhdCwgc2luY2UgdGhpcyBwYXR0ZXJuIHNlZW1zIHRvIG9jY3VyIGF0IGxlYXN0IHR3aWNl
LCB5b3UgY291bGQgYWxzbw0KY29uc2lkZXIgYWRkaW5nIGEgbG9jayBndWFyZC4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
