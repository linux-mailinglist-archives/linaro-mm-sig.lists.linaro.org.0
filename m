Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJhsM/JnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A61F1628836
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D0E40993
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:19:45 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 1C53A4049E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 12:47:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=JG6hvLtd;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gTYdx5kN3z9svK;
	Mon,  1 Jun 2026 14:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1780318069; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5YOffrb6TuISTmHSo0qRYfjsVC3kJaH+9CwYeMAL1Oc=;
	b=JG6hvLtdgAJuiXUOzLhugnRCckVKHn4IG120YlvzT92cVxFT5/AynE7XGq4r1kGzAAE8mq
	SJVoCZJ/wt05vCn324jWIGjDg6Xs32LVjBKk+scs4B1Rv2UXckNg/ZBgUNK2JsrQz9XpFo
	nhYaeXhmvi7qhCjAcNx+nQFXm4DnmJr5mfbyhiZ06oaK2RTSPliLhsvH66i8ba8DJahHo+
	5xXrVvEZogcNtJRjwmVq9Qd1FKhKI/ZxBo3ZIiDQLGOkskEfse3i7Q99dTCQYJ3aHguTtE
	FzDxZeXbI8StRbe6a5MXWLP//c+SgmyEO9imq7DCxco4h0IaCTbpD7iQwZKmhg==
Message-ID: <3b216f24afb406b797b8bbb73b3f5c0eec2fdc6c.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Alice Ryhl <aliceryhl@google.com>, phasta@kernel.org
Date: Mon, 01 Jun 2026 14:47:37 +0200
In-Reply-To: <ah19ZVkr7b3m7V_u@google.com>
References: <20260530143541.229628-2-phasta@kernel.org>
	 <20260530143541.229628-5-phasta@kernel.org> <ah1glmXDM-OAKa5h@google.com>
	 <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
	 <ah19ZVkr7b3m7V_u@google.com>
MIME-Version: 1.0
X-MBO-RS-META: bspshuqdn1yjkm5ampzssxemt6wdpphn
X-MBO-RS-ID: 3aa08b834777349d892
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2CTCZCPSIMQNMULXFOQHKVDJSMPHWI3W
X-Message-ID-Hash: 2CTCZCPSIMQNMULXFOQHKVDJSMPHWI3W
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:17:59 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Co
 urbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2CTCZCPSIMQNMULXFOQHKVDJSMPHWI3W/>
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
	NEURAL_SPAM(0.00)[0.931];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,mailbox.org:mid,linaro.org:email,zulipchat.com:url]
X-Rspamd-Queue-Id: A61F1628836
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA2LTAxIGF0IDEyOjM5ICswMDAwLCBBbGljZSBSeWhsIHdyb3RlOg0KPiBP
biBNb24sIEp1biAwMSwgMjAyNiBhdCAwMjoyNjoxN1BNICswMjAwLCBQaGlsaXBwIFN0YW5uZXIg
d3JvdGU6DQo+ID4gT24gTW9uLCAyMDI2LTA2LTAxIGF0IDEwOjM2ICswMDAwLCBBbGljZSBSeWhs
IHdyb3RlOg0KPiA+ID4gT24gU2F0LCBNYXkgMzAsIDIwMjYgYXQgMDQ6MzU6MTFQTSArMDIwMCwg
UGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgdW5zYWZlIHsN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmluZGluZ3M6OmRtYV9mZW5jZV9yZW1v
dmVfY2FsbGJhY2soc2VsZi5mZW5jZS5hc19yYXcoKSwgc2VsZi5jYi5nZXQoKSk7DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoCB9DQo+ID4gPiANCj4gPiA+IEZvcm1hdHRpbmcgbml0OiBVc3VhbGx5
IHRoZSA7IGdvZXMgb3V0c2lkZSB0aGUgdW5zYWZlIGJsb2NrLg0KPiA+IA0KPiA+IEkgY291bGQg
aGF2ZSBzd29ybiB0aGF0IGl0IHdhcyBydXN0Zm10IHdobyBkaWQgdGhhdD8gTWF5YmUgYmVjYXVz
ZSB0aGUNCj4gPiA7IHdhcyBpbnNpZGUgdG8gYmVnaW4gd2l0aC4NCj4gDQo+IEluZGVlZCwgcnVz
dGZtdCB3aWxsIG5vdCBjaGFuZ2Ugd2hldGhlciB0aGUgOyBpcyBpbnNpZGUgb3Igb3V0c2lkZSB0
aGUNCj4gdW5zYWZlIGJsb2NrLg0KPiANCj4gPiA+ID4gKy8vLyBBIHRyYWl0IHRvIGVuZm9yY2Ug
dGhhdCBhbGwgZGF0YSBpbiBhIFtgRHJpdmVyRmVuY2VgXSBlaXRoZXIgZG9lcyBub3QgbmVlZA0K
PiA+ID4gPiArLy8vIGRyb3AsIG9yIGxpdmVzIGluIGEgW2BSY3VCb3hgXS4NCj4gPiA+ID4gK3B1
YiB0cmFpdCBEcml2ZXJGZW5jZUFsbG93ZWREYXRhOiBwcml2YXRlOjpTZWFsZWQge30NCj4gPiA+
ID4gKw0KPiA+ID4gPiArbW9kIHByaXZhdGUgew0KPiA+ID4gPiArwqDCoMKgIHB1YiB0cmFpdCBT
ZWFsZWQge30NCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiAraW1wbDxGOiBDb3B5PiBE
cml2ZXJGZW5jZUFsbG93ZWREYXRhIGZvciBGIHt9DQo+ID4gPiA+ICtpbXBsPEY6IFNlbmQ+IERy
aXZlckZlbmNlQWxsb3dlZERhdGEgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gPiArDQo+ID4gPiA+
ICtpbXBsPEY6IENvcHk+IHByaXZhdGU6OlNlYWxlZCBmb3IgRiB7fQ0KPiA+ID4gPiAraW1wbDxG
OiBTZW5kPiBwcml2YXRlOjpTZWFsZWQgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gDQo+ID4gPiBX
aHkgc2VhbGVkPyBKdXN0IG1ha2UgdGhlIHRyYWl0IHVuc2FmZSBhbmQgcmVxdWlyZSB0aGUgdGhp
bmdzIHlvdQ0KPiA+ID4gcmVxdWlyZSBmcm9tIHRoZSB1c2VyLg0KPiA+IA0KPiA+IFRoaXMgaXMg
ZmFyIGJldHRlci4gV2UgZGVmaW5pdGVseSBvbmx5IGFsbG93IHRoZSB1c2VyIHRvIHBhc3MgQSBv
ciBCLA0KPiA+IGFuZCBvbmx5IHRoZW4gaXQgY29tcGlsZXMuDQo+IA0KPiBXaGF0IGlmIEkgaGF2
ZSBhbm90aGVyIHR5cGUgdGhhdCBJIHdhbnQgdG8gdXNlIGhlcmU/IEZvciBleGFtcGxlLCBtYXli
ZQ0KPiBJIGhhdmUgYSBzdHJ1Y3QgY29udGFpbmluZyBhIGNvcHkgZmllbGQgYW5kIGFuIFJjdUJv
eC4gT3IgbWF5YmUgSSBoYXZlDQo+IGFuIEFSZWY8Xz4gb2Ygc29tZSBDIHR5cGUgdGhhdCB1c2Vz
IHJjdSBmb3IgY2xlYW51cC4gVGhlbiBJIG11c3QgZWRpdA0KPiB0aGlzIGZpbGUgdG8gYWRkIHN1
cHBvcnQgZm9yIGl0Pw0KPiANCj4gPiBUaGUgdW5zYWZlIGltcGxlbWVudGF0aW9uIGNvdWxkIGJl
IG1lc3NlZCB1cC4NCj4gPiANCj4gPiBJIHRob3VnaHQgdGhhdCdzIHdoYXQgU2VhbGVkIGlzIGZv
ci4gT3IgaXNuJ3QgaXQ/DQo+IA0KPiBTZWFsZWQgaXMgZm9yIG1ha2luZyAxMDAlIHN1cmUgdGhh
dCBkb3duc3RyZWFtIGNyYXRlcy9kcml2ZXJzIGNhbm5vdA0KPiBwcm92aWRlIHRoZWlyIG93biBp
bXBsZW1lbnRhdGlvbnMuIEJ1dCBJIGRvbid0IHNlZSB3aHkgeW91IG5lZWQgdGhhdC4NCj4gQWxs
IHlvdSByZXF1aXJlIGlzIHRoYXQgdGhlIHZhbHVlIHJlbWFpbnMgdmFsaWQgZm9yIG9uZSBncmFj
ZSBwZXJpb2QNCj4gYWZ0ZXIgY2xlYW51cCBiZWdpbnMuIEFzIGxvbmcgYXMgdGhlIHR5cGUgc2F0
aXNmaWVzIHRoYXQsIHlvdSBhcmUgaGFwcHkuDQo+IEFuIHVuc2FmZSB0cmFpdCBjYW4gcmVxdWly
ZSB0aGF0IHNvcnQgb2YgcmVxdWlyZW1lbnQgZnJvbSB0aGUgdXNlci4NCj4gDQo+IEkgdGhpbmsg
d2hhdCB5b3Ugd2FudCBpcyBleHByZXNzZWQgd2VsbCBieSBgUmN1RnJlZVNhZmVgIGZyb20gdGhp
cw0KPiB0aHJlYWQ6DQo+IGh0dHBzOi8vcnVzdC1mb3ItbGludXguenVsaXBjaGF0LmNvbS8jbmFy
cm93L2NoYW5uZWwvMjkxNTY2LUxpYnJhcnkvdG9waWMvQ29uc29saWRhdGUuMjAuNjBQb2xsQ29u
ZFZhckJveC42MC4yMGludG8uMjAuNjBSY3UuMkFCb3guNjAvbmVhci81OTg3MjY3MjQNCj4gDQoN
CkkgZ3Vlc3MgdGhpcyBpcyBhIHF1ZXN0aW9uIG9mIGRlc2lnbiBwcmluY2lwbGVzLiBJZiB5b3Ug
ZGVtYW5kIGFuDQpSY3VCb3gsIHlvdSBoYXZlIGEgZ3VhcmFudGVlIHRoYXQgaXQncyBzYWZlLg0K
DQpJZiB5b3UgZGVtYW5kIGFuIHVuc2FmZSB0cmFpdCwgeW91IG9wZW4gdGhlIHBvc3NpYmlsaXR5
IGZvciBwZW9wbGUNCm1lc3NpbmcgdXAuDQoNCkR1ZSB0byB0aGUgdW5zYWZlLWNvbnRyYWN0IHlv
dSdkIGhhdmUgbW92ZWQgdGhlIHJlc3BvbnNpYmlsaXR5IGZvciB0aGUNCnNvdW5kbmVzcyB0byB0
aGUgZHJpdmVyLg0KDQpJIHdvdWxkIG5vdCB3YW50IHRvIGJsb2NrIHlvdXIgc3VnZ2VzdGlvbiwg
YnV0IEkgYW0gbm90IHN1cmUgd2hldGhlcg0KdGhhdCdzIHJlYWxseSB0aGUgYmV0dGVyIGRlc2ln
biBpZGVhLg0KDQo+ID4gPiANCg0KUC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
