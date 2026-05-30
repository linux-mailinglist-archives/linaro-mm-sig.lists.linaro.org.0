Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHKaGIFnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:17:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D57786287E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:17:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2C4F4099D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:17:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C4F3540962
	for <linaro-mm-sig@lists.linaro.org>; Sat, 30 May 2026 15:16:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ivG9I9Wb;
	spf=pass (lists.linaro.org: domain of dakr@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=dakr@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E4BC3435A1;
	Sat, 30 May 2026 15:16:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 111F01F00893;
	Sat, 30 May 2026 15:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780154178;
	bh=B3IwrE3HK9xQ/GsYTmA9pt7vQYdzp5OkBKwI6mjM0Ks=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To;
	b=ivG9I9Wb1Fhio7A/1AlExKrVKTjWm24EHtORlfbrP5Dc4c4bL4JMnbjqDTqUA/GFw
	 2hr7JqaFVsRU72p3y/y0tKVuwPBZ1YqwRmNSTlIn/26d96dkH+Sy9RJ+UCy/TQRG9P
	 FS/IoYmNxEQQnhqdfMEDa4BW6n5TRSFdF/H1ZXEdoBqvT/ZQ3PzfF4VnO2xdJercPK
	 sX1uqzRFCchLdr9KtyGJY5K3Dppkt48lqnyW+qgP4Rh0Y1laLZMrIkSkM2Du8o+XGS
	 mj3MkD12yXLxdzx/mmh7lN93ATCHzyYUyKnkzOqiOKnwCuMuEfsUjYPJRG5tWljvVg
	 Twtc4kpXUkYDA==
Mime-Version: 1.0
Date: Sat, 30 May 2026 17:16:10 +0200
Message-Id: <DIW3ZK5NLKU3.1QYMQB0ISHFBG@kernel.org>
To: "Philipp Stanner" <phasta@kernel.org>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
In-Reply-To: <20260530143541.229628-5-phasta@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XEE5KIYCPJR7COHEHV76BRP47DLS7ZCS
X-Message-ID-Hash: XEE5KIYCPJR7COHEHV76BRP47DLS7ZCS
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:16:48 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbot
  <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XEE5KIYCPJR7COHEHV76BRP47DLS7ZCS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[62];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.968];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: D57786287E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

KE5vdCBhIGZ1bGwgcmV2aWV3LCBidXQgYSBmZXcgZHJpdmUtYnkgY29tbWVudHMuKQ0KDQpPbiBT
YXQgTWF5IDMwLCAyMDI2IGF0IDQ6MzUgUE0gQ0VTVCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0K
PiArI1thbGxvdyh1bnVzZWRfdW5zYWZlKV0NCg0KV2hhdCBpcyB0aGlzIG5lZWRlZCBmb3I/DQoN
Cj4gK2ltcGw8RjogU2VuZCArIFN5bmMgKyBEcml2ZXJGZW5jZUFsbG93ZWREYXRhLCBDOiBTZW5k
ICsgU3luYz4gRmVuY2VDdHg8RiwgQz4gew0KDQo8c25pcD4NCg0KPiAraW1wbDxGOiBTZW5kICsg
U3luYywgQzogU2VuZCArIFN5bmM+IFBpbm5lZERyb3AgZm9yIEZlbmNlQ3R4PEYsIEM+IHsNCj4g
KyAgICBmbiBkcm9wKHNlbGY6IFBpbjwmbXV0IFNlbGY+KSB7DQo+ICsgICAgICAgIC8vIFNBRkVU
WTogYHJjdV9iYXJyaWVyKClgIGlzIGFsd2F5cyBzYWZlIHRvIGJlIGNhbGxlZC4NCj4gKyAgICAg
ICAgdW5zYWZlIHsgYmluZGluZ3M6OnJjdV9iYXJyaWVyKCkgfTsNCg0KV2Ugc2hvdWxkIHByb2Jh
Ymx5IGFkZCBhIHNhZmUgZnVuY3Rpb24gZm9yIHRoaXMuDQoNCj4gK2ltcGw8VDogRmVuY2VDYj4g
RmVuY2VDYlJlZ2lzdHJhdGlvbjxUPiB7DQo+ICsgICAgLy8vIFJlZ2lzdGVyIGEgY2FsbGJhY2sg
b24gYSBmZW5jZS4NCj4gKyAgICAvLy8NCj4gKyAgICAvLy8gT24gc3VjY2VzcyB0aGUgY2FsbGJh
Y2sgaXMgcGlubmVkIGluIHBsYWNlIGFuZCB3aWxsIGZpcmUgd2hlbiB0aGUgZmVuY2UNCj4gKyAg
ICAvLy8gc2lnbmFscy4gT24gYEFscmVhZHlTaWduYWxlZGAgdGhlIGNhbGxiYWNrIGlzIHJldHVy
bmVkIHRvIHRoZSBjYWxsZXIgc28NCj4gKyAgICAvLy8gdGhhdCBvd25lZCByZXNvdXJjZXMgY2Fu
IGJlIHJlY2xhaW1lZC4NCj4gKyAgICBwdWIgZm4gbmV3PCdhPihmZW5jZTogJidhIEZlbmNlLCBj
YWxsYmFjazogVCkgLT4gaW1wbCBQaW5Jbml0PFNlbGYsIENhbGxiYWNrRXJyb3I8VD4+ICsgJ2EN
Cj4gKyAgICB3aGVyZQ0KPiArICAgICAgICBUOiAnYSwNCj4gKyAgICB7DQo+ICsgICAgICAgIC8v
IFVzZXMgYHBpbl9pbml0X2Zyb21fY2xvc3VyZWAgaW5zdGVhZCBvZiBgdHJ5X3Bpbl9pbml0IWAg
c28gdGhhdCBvbg0KPiArICAgICAgICAvLyBgLUVOT0VOVGAgKGFscmVhZHkgc2lnbmFsZWQpIHRo
ZSBjYWxsYmFjayBjYW4gYmUgcmVhZCBiYWNrIGZyb20gdGhlDQo+ICsgICAgICAgIC8vIHBhcnRp
YWxseS1pbml0aWFsaXplZCBzbG90IGFuZCByZXR1cm5lZCB0aHJvdWdoIHRoZSBlcnJvci4NCg0K
U2VlbXMgYSBiaXQgb2RkIHRoYXQgdGhpcyBuZWVkcyBwaW5faW5pdF9mcm9tX2Nsb3N1cmUoKS4g
WW91IGNhbiBzdGlsbCB1c2UNCnRyeV9waW5faW5pdCEoKSB3aXRoICZ0aGlzIGluIFNlbGYgYW4g
YSBfOiBpbml0aWFsaXplciBhdCB0aGUgZW5kIGluIHRoZSB3b3JzdA0KY2FzZS4gQnV0IHRoZSBm
ZW5jZSBhbmQgY2FsbGJhY2sgZmllbGRzIHNob3VsZCBiZSBmaW5lIHRvIGluaXRpYWxpemUgIm5v
cm1hbGx5Ij8NCg0KPiArICAgICAgICAvLw0KPiArICAgICAgICAvLyBTQUZFVFk6IGBwaW5faW5p
dF9mcm9tX2Nsb3N1cmVgIHJlcXVpcmVzOg0KPiArICAgICAgICAvLyAtIE9uIGBPaygoKSlgOiB0
aGUgc2xvdCBpcyBmdWxseSBpbml0aWFsaXplZCBhbmQgdmFsaWQgZm9yIGBEcm9wYC4NCj4gKyAg
ICAgICAgLy8gLSBPbiBgRXJyKF8pYDogdGhlIHNsb3QgaXMgY2xlYW4sIGkuZS46IG5vIHBhcnRp
YWxseS1pbml0aWFsaXplZCBmaWVsZHMNCj4gKyAgICAgICAgLy8gICByZW1haW4sIGFuZCB0aGUg
c2xvdCBjYW4gYmUgZGVhbGxvY2F0ZWQgd2l0aG91dCBkcm9wcGluZy4NCj4gKyAgICAgICAgLy8N
Cj4gKyAgICAgICAgLy8gV2UgdXBob2xkIHRoaXMgYXMgZm9sbG93czoNCj4gKyAgICAgICAgLy8g
LSBPbiBzdWNjZXNzOiBhbGwgdGhyZWUgZmllbGRzIGFyZSBpbml0aWFsaXplZC4gT2soKCkpIGlz
IHJldHVybmVkLg0KPiArICAgICAgICAvLyAtIE9uIEVOT0VOVCAoYWxyZWFkeSBzaWduYWxlZCk6
IGBjYWxsYmFja2AgYW5kIGBmZW5jZWAgYXJlIHJlYWQgYmFjaw0KPiArICAgICAgICAvLyAgIGZy
b20gdGhlIHNsb3QgdmlhIGBwdHI6OnJlYWRgLCBsZWF2aW5nIHRoZSBzbG90IGNsZWFuLiBgY2Jg
IHdhcw0KPiArICAgICAgICAvLyAgIGluaXRpYWxpemVkIGJ5IGBkbWFfZmVuY2VfYWRkX2NhbGxi
YWNrYCAoaXQgY2FsbHMNCj4gKyAgICAgICAgLy8gICBgSU5JVF9MSVNUX0hFQUQoJmNiLT5ub2Rl
KWAgZXZlbiBvbiBlcnJvciksIGJ1dCBgY2JgIGlzDQo+ICsgICAgICAgIC8vICAgYE9wYXF1ZTxk
bWFfZmVuY2VfY2I+YCB3aGljaCBoYXMgbm8gYERyb3BgLCBzbyBub3QgZHJvcHBpbmcgaXQgaXMN
Cj4gKyAgICAgICAgLy8gICBmaW5lLiBUaGUgY2FsbGJhY2sgaXMgcmV0dXJuZWQgdGhyb3VnaCBg
QWxyZWFkeVNpZ25hbGVkKFQpYC4NCj4gKyAgICAgICAgLy8gLSBPbiBvdGhlciBlcnJvcnM6IHNh
bWUgY2xlYW51cCBhcyBFTk9FTlQsIGVycm9yIHJldHVybmVkIGFzDQo+ICsgICAgICAgIC8vICAg
YE90aGVyKGUpYC4NCj4gKyAgICAgICAgdW5zYWZlIHsNCj4gKyAgICAgICAgICAgIHBpbl9pbml0
X2Zyb21fY2xvc3VyZShtb3ZlIHxzbG90OiAqbXV0IFNlbGZ8IHsNCj4gKyAgICAgICAgICAgICAg
ICBsZXQgc2xvdF9jYWxsYmFjayA9ICZyYXcgbXV0ICgqc2xvdCkuY2FsbGJhY2s7DQo+ICsgICAg
ICAgICAgICAgICAgbGV0IHNsb3RfZmVuY2UgPSAmcmF3IG11dCAoKnNsb3QpLmZlbmNlOw0KPiAr
ICAgICAgICAgICAgICAgIGxldCBzbG90X2NiID0gJnJhdyBtdXQgKCpzbG90KS5jYjsNCj4gKw0K
PiArICAgICAgICAgICAgICAgIC8vIFdyaXRlIGNhbGxiYWNrIGFuZCBmZW5jZSBmaXJzdCDigJQg
bXVzdCBiZSB2aXNpYmxlIGJlZm9yZQ0KPiArICAgICAgICAgICAgICAgIC8vIGRtYV9mZW5jZV9h
ZGRfY2FsbGJhY2sgbWFrZXMgdGhlIHJlZ2lzdHJhdGlvbiBsaXZlLg0KPiArICAgICAgICAgICAg
ICAgIGNvcmU6OnB0cjo6d3JpdGUoc2xvdF9jYWxsYmFjaywgY2FsbGJhY2spOw0KPiArICAgICAg
ICAgICAgICAgIGNvcmU6OnB0cjo6d3JpdGUoc2xvdF9mZW5jZSwgQVJlZjo6ZnJvbShmZW5jZSkp
Ow0KPiArDQo+ICsgICAgICAgICAgICAgICAgbGV0IHJldCA9IHRvX3Jlc3VsdChiaW5kaW5nczo6
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygNCj4gKyAgICAgICAgICAgICAgICAgICAgZmVuY2UuaW5u
ZXIuZ2V0KCksDQo+ICsgICAgICAgICAgICAgICAgICAgIE9wYXF1ZTo6Y2FzdF9pbnRvKHNsb3Rf
Y2IpLA0KPiArICAgICAgICAgICAgICAgICAgICBTb21lKFNlbGY6OmRtYV9mZW5jZV9jYWxsYmFj
ayksDQo+ICsgICAgICAgICAgICAgICAgKSk7DQo+ICsNCj4gKyAgICAgICAgICAgICAgICBtYXRj
aCByZXQgew0KPiArICAgICAgICAgICAgICAgICAgICBPaygoKSkgPT4gT2soKCkpLA0KPiArICAg
ICAgICAgICAgICAgICAgICBFcnIoZSkgPT4gew0KPiArICAgICAgICAgICAgICAgICAgICAgICAg
Ly8gUmVhZCBiYWNrIHdoYXQgd2Ugd3JvdGUgdG8gbGVhdmUgdGhlIHNsb3QgY2xlYW4uDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICBsZXQgY2JfYmFjayA9IGNvcmU6OnB0cjo6cmVhZChzbG90
X2NhbGxiYWNrKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGxldCBfZmVuY2VfYmFjayA9
IGNvcmU6OnB0cjo6cmVhZChzbG90X2ZlbmNlKTsNCg0KV2hhdCdzIHRoZSBwdXJwb3NlIG9mIF9m
ZW5jZV9iYWNrPw0KDQo+ICsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGlmIGUudG9fZXJy
bm8oKSA9PSBFTk9FTlQudG9fZXJybm8oKSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgRXJyKENhbGxiYWNrRXJyb3I6OkFscmVhZHlTaWduYWxlZChjYl9iYWNrKSkNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgRXJyKENhbGxiYWNrRXJyb3I6Ok90aGVyKGUpKQ0KPiArICAgICAgICAgICAgICAgICAgICAg
ICAgfQ0KPiArICAgICAgICAgICAgICAgICAgICB9DQo+ICsgICAgICAgICAgICAgICAgfQ0KPiAr
ICAgICAgICAgICAgfSkNCj4gKyAgICAgICAgfQ0KPiArICAgIH0NCj4gKyAgICAvLy8gU2lnbmFs
IHRoZSBmZW5jZS4gVGhpcyB3aWxsIGludm9rZSBhbGwgcmVnaXN0ZXJlZCBjYWxsYmFja3MuDQo+
ICsgICAgcHViIGZuIHNpZ25hbChzZWxmLCByZXM6IFJlc3VsdCkgew0KPiArICAgICAgICBsZXQg
ZmVuY2UgPSBzZWxmLmFzX3JhdygpOw0KPiArICAgICAgICBsZXQgbXV0IGZlbmNlX2ZsYWdzOiB1
c2l6ZSA9IDA7DQo+ICsgICAgICAgIGxldCBmbGFnX3B0ciA9ICZyYXcgbXV0IGZlbmNlX2ZsYWdz
Ow0KPiArDQo+ICsgICAgICAgIC8vIFNBRkVUWTogT25jZSBhIGBEcml2ZXJGZW5jZWAgaXMgaW5p
dGlhbGl6ZWQsIHRoZSBpbm5lciBgZmVuY2VgIGlzDQo+ICsgICAgICAgIC8vIHZhbGlkIGFuZCBp
bml0aWFsaXplZC4gSXQgaXMgdmFsaWQgdW50aWwgdGhlIHJlZmNvdW50IGRyb3BzDQo+ICsgICAg
ICAgIC8vIHRvIDAsIHdoaWNoIGNhbiBlYXJsaWVzdCBoYXBwZW4gb25jZSB0aGUgYERyaXZlckZl
bmNlYCBoYXMgYmVlbiBkcm9wcGVkLg0KPiArICAgICAgICB1bnNhZmUgew0KPiArICAgICAgICAg
ICAgYmluZGluZ3M6OmRtYV9mZW5jZV9sb2NrX2lycXNhdmUoZmVuY2UsIGZsYWdfcHRyKTsNCj4g
KyAgICAgICAgICAgIGlmICFiaW5kaW5nczo6ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChm
ZW5jZSkgew0KPiArICAgICAgICAgICAgICAgIGlmIGxldCBFcnIoZXJyKSA9IHJlcyB7DQo+ICsg
ICAgICAgICAgICAgICAgICAgIGJpbmRpbmdzOjpkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCBl
cnIudG9fZXJybm8oKSk7DQo+ICsgICAgICAgICAgICAgICAgfQ0KPiArICAgICAgICAgICAgICAg
IGJpbmRpbmdzOjpkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7DQo+ICsgICAgICAgICAg
ICB9DQo+ICsgICAgICAgICAgICBiaW5kaW5nczo6ZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3Jl
KGZlbmNlLCBmbGFnX3B0cik7DQo+ICsgICAgICAgIH0NCg0KUGxlYXNlIHVzZSBhIHNpbmdsZSB1
bnNhZmUgYmxvY2sgcGVyIHVuc2FmZSBmdW5jdGlvbiBjYWxsLCBoZXJlIGFuZCBpbiBhIGZldw0K
b3RoZXIgcGxhY2VzLg0KDQo+ICsgICAgfQ0KPiArfQ0KPiArDQo+ICsvLyBTQUZFVFk6IEZlbmNl
cyBhcmUgbGl0ZXJhbGx5IGRlc2lnbmVkIHRvIGJlIHNoYXJlZCBiZXR3ZWVuIHRocmVhZHMuDQo+
ICt1bnNhZmUgaW1wbDxGOiBTZW5kICsgU3luYywgQzogU2VuZCArIFN5bmM+IFNlbmQgZm9yIERy
aXZlckZlbmNlPEYsIEM+IHt9DQo+ICsNCj4gK2ltcGw8RjogU2VuZCArIFN5bmMsIEM6IFNlbmQg
KyBTeW5jPiBEZXJlZiBmb3IgRHJpdmVyRmVuY2U8RiwgQz4gew0KPiArICAgIHR5cGUgVGFyZ2V0
ID0gRjsNCj4gKw0KPiArICAgIGZuIGRlcmVmKCZzZWxmKSAtPiAmU2VsZjo6VGFyZ2V0IHsNCj4g
KyAgICAgICAgLy8gU0FGRVRZOiBUaGFua3MgdG8gcmVmY291bnRpbmcsIGBkYXRhYCBpcyBhbHdh
eXMgdmFsaWQgYXMgbG9uZyBhcyBgc2VsZmAgaXMuDQo+ICsgICAgICAgIGxldCBkYXRhID0gdW5z
YWZlIHsgJipzZWxmLmRhdGEuYXNfcHRyKCkgfTsNCj4gKw0KPiArICAgICAgICAmZGF0YS5kYXRh
DQo+ICsgICAgfQ0KPiArfQ0KPiArDQo+ICsvLy8gQSBib3Jyb3dlZCBbYERyaXZlckZlbmNlYF0u
IEFsbCB5b3UgY2FuIGRvIHdpdGggaXQgaXMgYWNjZXNzIHlvdXIgdXNlciBkYXRhDQo+ICsvLy8g
YW5kIG9idGFpbiBhIFtgRmVuY2VgXS4NCj4gK3B1YiBzdHJ1Y3QgRHJpdmVyRmVuY2VCb3Jyb3c8
RjogU2VuZCArIFN5bmMsIEM6IFNlbmQgKyBTeW5jPiB7DQoNClRoaXMgbWlzc2VzIHRoZSBsaWZl
dGltZSBib3VuZCwgd2hpY2ggaXMgdGhlIHB1cnBvc2Ugb2YgdGhpcyBzdHJ1Y3QuDQoNCj4gKyAg
ICAvLy8gVGhlIGFjdHVhbCBjb250ZW50IG9mIHRoZSBmZW5jZS4gTGl2ZXMgaW4gYSByYXcgcG9p
bnRlciBzbyB0aGF0IGl0cw0KPiArICAgIC8vLyBtZW1vcnkgY2FuIGJlIG1hbmFnZWQgaW5kZXBl
bmRlbnRseS4gVmFsaWQgdW50aWwgYm90aCB0aGUgW2BEcml2ZXJGZW5jZWBdDQo+ICsgICAgLy8v
IGFuZCBhbGwgYXNzb2NpYXRlZCBbYEZlbmNlYF1zIGhhdmUgZGlzYXBwZWFyZWQuDQo+ICsgICAg
ZGF0YTogTm9uTnVsbDxEcml2ZXJGZW5jZURhdGE8RiwgQz4+LA0KDQpXaHkgbm90IHVzZSBNYW51
YWxseURyb3A8RHJpdmVyRmVuY2U+PyBUaGlzIHdheSB5b3Ugd291bGQgb25seSBuZWVkIGEgRGVy
ZWYgaW1wbA0KdG8gJidhIERyaXZlckZlbmNlLg0KDQpUaGlzIHdheSB5b3UgYmFzaWNhbGx5IHJl
aW1wbGVtZW50IHRoZSBEcml2ZXJGZW5jZSB0eXBlIGp1c3Qgd2l0aG91dCB0aGUNCmRlc3RydWN0
b3IuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
