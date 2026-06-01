Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGXfB+pnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C64062882F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1182409BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:19:36 +0000 (UTC)
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com [209.85.221.74])
	by lists.linaro.org (Postfix) with ESMTPS id 337974049E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 12:39:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=AGViCA5l;
	spf=pass (lists.linaro.org: domain of 3Zn0dagkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com designates 209.85.221.74 as permitted sender) smtp.mailfrom=3Zn0dagkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wr1-f74.google.com with SMTP id ffacd0b85a97d-4600c8cb13aso778765f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 05:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780317543; x=1780922343; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=REyupswLVPxRUsPQqPYR9DfP0rB+Rx88jhSSpFYtNlE=;
        b=AGViCA5lv4wzm4bupW8/+bWzhgPTvcCTeFwJkqyyxCXSLVdOSypaGSV86bYXCTHS53
         9F5m0C5kHeUL2l4LBdtx53g4KBDyZQ4Ex3A3WcLWqfv8ejxWveC51gLxE7zH1iNz4XBc
         yGJQUpNPV/4ykWbs4z8Y235MCu51rRfF7EpG4XXW/5lwryff1ph00E6Cjz6VeWe3p7fa
         PsGlj8EcSRfRuMU0B0CYP4ypWtZczBNcApHVp6x2KiTsO/c2MWeFS63BF6Qn4bu55Auu
         N3wGWN8WNu9ogn21KATXg5kIW3HxOM5kNP+5tN3h21VJUqCIqzO92lmS9RP0YRcqrLpF
         YUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780317543; x=1780922343;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=REyupswLVPxRUsPQqPYR9DfP0rB+Rx88jhSSpFYtNlE=;
        b=srBlqKyIvjMv5Z5LmOy3pO/84kMDBHjNvswKaCYqBvKDhnqgnzejGiGjT74htUM2by
         trch2DqOr/Fn9sQBgfrqjv363NfmoPqHcORJhzHIa/4+y/L8dFPZslSP5TzAJ9JRPwLa
         OjILu2XZ7ru2JnwKZvtNLQQnfpe7KnpHCrr60DNTt/jBWoS14nKvM8CDHa3cipTYiGzT
         y+f3z8ujPlZGCTJ4c2xncw8MwIc+lB6K+ttA2blSbJ3nH3SfyyWDvCQqy6Tf6TWyamdt
         oejf8YIXT2uV95ojJto/nPtAbVH0sEYgcq6WQBFk4x0ZfJbN55vO9BGuXnbH+5JydEWn
         /BdQ==
X-Forwarded-Encrypted: i=1; AFNElJ/jL8qMy0tKvjPGZG6uelKwmphqkLi232Nood8/8KIuwS/hdkmAZW4IvhhsieiJDjMIVLwrhvAMFDpePilg@lists.linaro.org
X-Gm-Message-State: AOJu0YwkMXcS9WLQt63q2C2X6p+tzL7FwCiIxaIUQA6lHzOp6n5EtWMw
	3uYEWbN4F2TToHlsnNmbPLJsiDg+LhhVTI4q88qainS8ZC9GHLiOlTYvmOWZBuE7qSNJMfb+YuB
	ETt+j9hNuaql6V3jzaA==
X-Received: from wmbjr6.prod.google.com ([2002:a05:600c:5606:b0:490:25ec:da5])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4f87:b0:490:abd7:fd9 with SMTP id 5b1f17b1804b1-490abd71214mr50150365e9.10.1780317542692;
 Mon, 01 Jun 2026 05:39:02 -0700 (PDT)
Date: Mon, 1 Jun 2026 12:39:01 +0000
In-Reply-To: <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
Mime-Version: 1.0
References: <20260530143541.229628-2-phasta@kernel.org> <20260530143541.229628-5-phasta@kernel.org>
 <ah1glmXDM-OAKa5h@google.com> <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
Message-ID: <ah19ZVkr7b3m7V_u@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: phasta@kernel.org
Content-Type: text/plain; charset="utf-8"
X-Spamd-Bar: ---
X-MailFrom: 3Zn0dagkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AZEY3VUY4AAPV6XQMBSYVXU6JM45YCHI
X-Message-ID-Hash: AZEY3VUY4AAPV6XQMBSYVXU6JM45YCHI
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:17:59 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbot <a
 courbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AZEY3VUY4AAPV6XQMBSYVXU6JM45YCHI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.059];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,zulipchat.com:url]
X-Rspamd-Queue-Id: 9C64062882F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKdW4gMDEsIDIwMjYgYXQgMDI6MjY6MTdQTSArMDIwMCwgUGhpbGlwcCBTdGFubmVy
IHdyb3RlOg0KPiBPbiBNb24sIDIwMjYtMDYtMDEgYXQgMTA6MzYgKzAwMDAsIEFsaWNlIFJ5aGwg
d3JvdGU6DQo+ID4gT24gU2F0LCBNYXkgMzAsIDIwMjYgYXQgMDQ6MzU6MTFQTSArMDIwMCwgUGhp
bGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgIHVuc2FmZSB7DQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaW5kaW5nczo6ZG1hX2ZlbmNlX3JlbW92ZV9jYWxs
YmFjayhzZWxmLmZlbmNlLmFzX3JhdygpLCBzZWxmLmNiLmdldCgpKTsNCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoCB9DQo+ID4gDQo+ID4gRm9ybWF0dGluZyBuaXQ6IFVzdWFsbHkgdGhlIDsgZ29lcyBv
dXRzaWRlIHRoZSB1bnNhZmUgYmxvY2suDQo+IA0KPiBJIGNvdWxkIGhhdmUgc3dvcm4gdGhhdCBp
dCB3YXMgcnVzdGZtdCB3aG8gZGlkIHRoYXQ/IE1heWJlIGJlY2F1c2UgdGhlDQo+IDsgd2FzIGlu
c2lkZSB0byBiZWdpbiB3aXRoLg0KDQpJbmRlZWQsIHJ1c3RmbXQgd2lsbCBub3QgY2hhbmdlIHdo
ZXRoZXIgdGhlIDsgaXMgaW5zaWRlIG9yIG91dHNpZGUgdGhlDQp1bnNhZmUgYmxvY2suDQoNCj4g
PiA+ICsvLy8gQSB0cmFpdCB0byBlbmZvcmNlIHRoYXQgYWxsIGRhdGEgaW4gYSBbYERyaXZlckZl
bmNlYF0gZWl0aGVyIGRvZXMgbm90IG5lZWQNCj4gPiA+ICsvLy8gZHJvcCwgb3IgbGl2ZXMgaW4g
YSBbYFJjdUJveGBdLg0KPiA+ID4gK3B1YiB0cmFpdCBEcml2ZXJGZW5jZUFsbG93ZWREYXRhOiBw
cml2YXRlOjpTZWFsZWQge30NCj4gPiA+ICsNCj4gPiA+ICttb2QgcHJpdmF0ZSB7DQo+ID4gPiAr
wqDCoMKgIHB1YiB0cmFpdCBTZWFsZWQge30NCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiAraW1w
bDxGOiBDb3B5PiBEcml2ZXJGZW5jZUFsbG93ZWREYXRhIGZvciBGIHt9DQo+ID4gPiAraW1wbDxG
OiBTZW5kPiBEcml2ZXJGZW5jZUFsbG93ZWREYXRhIGZvciBSY3VCb3g8Rj4ge30NCj4gPiA+ICsN
Cj4gPiA+ICtpbXBsPEY6IENvcHk+IHByaXZhdGU6OlNlYWxlZCBmb3IgRiB7fQ0KPiA+ID4gK2lt
cGw8RjogU2VuZD4gcHJpdmF0ZTo6U2VhbGVkIGZvciBSY3VCb3g8Rj4ge30NCj4gPiANCj4gPiBX
aHkgc2VhbGVkPyBKdXN0IG1ha2UgdGhlIHRyYWl0IHVuc2FmZSBhbmQgcmVxdWlyZSB0aGUgdGhp
bmdzIHlvdQ0KPiA+IHJlcXVpcmUgZnJvbSB0aGUgdXNlci4NCj4gDQo+IFRoaXMgaXMgZmFyIGJl
dHRlci4gV2UgZGVmaW5pdGVseSBvbmx5IGFsbG93IHRoZSB1c2VyIHRvIHBhc3MgQSBvciBCLA0K
PiBhbmQgb25seSB0aGVuIGl0IGNvbXBpbGVzLg0KDQpXaGF0IGlmIEkgaGF2ZSBhbm90aGVyIHR5
cGUgdGhhdCBJIHdhbnQgdG8gdXNlIGhlcmU/IEZvciBleGFtcGxlLCBtYXliZQ0KSSBoYXZlIGEg
c3RydWN0IGNvbnRhaW5pbmcgYSBjb3B5IGZpZWxkIGFuZCBhbiBSY3VCb3guIE9yIG1heWJlIEkg
aGF2ZQ0KYW4gQVJlZjxfPiBvZiBzb21lIEMgdHlwZSB0aGF0IHVzZXMgcmN1IGZvciBjbGVhbnVw
LiBUaGVuIEkgbXVzdCBlZGl0DQp0aGlzIGZpbGUgdG8gYWRkIHN1cHBvcnQgZm9yIGl0Pw0KDQo+
IFRoZSB1bnNhZmUgaW1wbGVtZW50YXRpb24gY291bGQgYmUgbWVzc2VkIHVwLg0KPiANCj4gSSB0
aG91Z2h0IHRoYXQncyB3aGF0IFNlYWxlZCBpcyBmb3IuIE9yIGlzbid0IGl0Pw0KDQpTZWFsZWQg
aXMgZm9yIG1ha2luZyAxMDAlIHN1cmUgdGhhdCBkb3duc3RyZWFtIGNyYXRlcy9kcml2ZXJzIGNh
bm5vdA0KcHJvdmlkZSB0aGVpciBvd24gaW1wbGVtZW50YXRpb25zLiBCdXQgSSBkb24ndCBzZWUg
d2h5IHlvdSBuZWVkIHRoYXQuDQpBbGwgeW91IHJlcXVpcmUgaXMgdGhhdCB0aGUgdmFsdWUgcmVt
YWlucyB2YWxpZCBmb3Igb25lIGdyYWNlIHBlcmlvZA0KYWZ0ZXIgY2xlYW51cCBiZWdpbnMuIEFz
IGxvbmcgYXMgdGhlIHR5cGUgc2F0aXNmaWVzIHRoYXQsIHlvdSBhcmUgaGFwcHkuDQpBbiB1bnNh
ZmUgdHJhaXQgY2FuIHJlcXVpcmUgdGhhdCBzb3J0IG9mIHJlcXVpcmVtZW50IGZyb20gdGhlIHVz
ZXIuDQoNCkkgdGhpbmsgd2hhdCB5b3Ugd2FudCBpcyBleHByZXNzZWQgd2VsbCBieSBgUmN1RnJl
ZVNhZmVgIGZyb20gdGhpcw0KdGhyZWFkOg0KaHR0cHM6Ly9ydXN0LWZvci1saW51eC56dWxpcGNo
YXQuY29tLyNuYXJyb3cvY2hhbm5lbC8yOTE1NjYtTGlicmFyeS90b3BpYy9Db25zb2xpZGF0ZS4y
MC42MFBvbGxDb25kVmFyQm94LjYwLjIwaW50by4yMC42MFJjdS4yQUJveC42MC9uZWFyLzU5ODcy
NjcyNA0KDQo+ID4gPiArLy8vIEEgc3luY2hyb25pemF0aW9uIHByaW1pdGl2ZSBtYWlubHkgZm9y
IEdQVSBkcml2ZXJzLg0KPiA+ID4gKy8vLw0KPiA+ID4gKy8vLyBGZW5jZXMgYXJlIGFsd2F5cyBy
ZWZlcmVuY2UgY291bnRlZC4gVGhlIHR5cGljYWwgdXNlIGNhc2UgaXMgdGhhdCBvbmUgc2lkZSBy
ZWdpc3RlcnMNCj4gPiA+ICsvLy8gY2FsbGJhY2tzIG9uIHRoZSBmZW5jZSB3aGljaCB3aWxsIHBl
cmZvcm0gYSBjZXJ0YWluIGFjdGlvbiAoc3VjaCBhcyBxdWV1ZWluZyB3b3JrKSBvbmNlIHRoZQ0K
PiA+ID4gKy8vLyBvdGhlciBzaWRlIHNpZ25hbHMgdGhlIGZlbmNlLg0KPiA+ID4gKy8vLw0KPiA+
ID4gKy8vLyAjIEV4YW1wbGVzDQo+ID4gPiArLy8vDQo+ID4gPiArLy8vIGBgYA0KPiA+ID4gKy8v
LyB1c2Uga2VybmVsOjpkbWFfYnVmOjp7RHJpdmVyRmVuY2UsIEZlbmNlQ3R4LCBGZW5jZUNiLCBG
ZW5jZUNiUmVnaXN0cmF0aW9ufTsNCj4gPiA+ICsvLy8gdXNlIGtlcm5lbDo6c3RyOjpDU3RyaW5n
Ow0KPiA+ID4gKy8vLyB1c2Uga2VybmVsOjpzeW5jOjp7DQo+ID4gPiArLy8vwqDCoMKgwqAgYXJl
Zjo6QVJlZiwNCj4gPiA+ICsvLy/CoMKgwqDCoCByY3U6OlJjdUJveCwgLy8NCj4gPiA+ICsvLy8g
fTsNCj4gPiA+ICsvLy8gdXNlIGNvcmU6Om9wczo6RGVyZWY7DQo+ID4gPiArLy8vIHVzZSBjb3Jl
OjpmbXQ6OkRpc3BsYXk7DQo+ID4gDQo+ID4gVXNlIGZtdCB0cmFpdHMgZnJvbSBrZXJuZWwgaW5z
dGVhZC4gKEFjdHVhbGx5LCBJIGRvbid0IHRoaW5rIHlvdSB1c2UNCj4gPiBEaXNwbGF5IGF0IGFs
bCBoZXJlPykNCj4gDQo+IEkgdHJpZWQsIHNlZSBhIGZldyBsaW5lcyBiZWxvdzoNCj4gDQo+ID4g
DQo+ID4gPiArLy8vIHN0cnVjdCBDYWxsYmFja0RhdGEgeyB9DQo+ID4gPiArLy8vDQo+ID4gPiAr
Ly8vIGltcGwgRmVuY2VDYiBmb3IgQ2FsbGJhY2tEYXRhIHsNCj4gPiA+ICsvLy/CoMKgwqDCoCBm
biBjYWxsZWQoJm11dCBzZWxmKSB7DQo+ID4gPiArLy8vwqDCoMKgwqDCoMKgwqDCoCBwcl9pbmZv
ISgiRG1hRmVuY2UgY2FsbGJhY2sgZXhlY3V0ZWQuXG4iKTsNCj4gPiA+ICsvLy/CoMKgwqDCoCB9
DQo+ID4gPiArLy8vIH0NCj4gPiA+ICsvLy8NCj4gPiA+ICsvLy8gbGV0IGRyaXZlcl9uYW1lID0g
Q1N0cmluZzo6dHJ5X2Zyb21fZm10KGZtdCEoImR1bW15X2RyaXZlciIpKT87DQo+ID4gPiArLy8v
IGxldCB0aW1lbGluZV9uYW1lID0gQ1N0cmluZzo6dHJ5X2Zyb21fZm10KGZtdCEoImR1bW15X3Rp
bWVsaW5lIikpPzsNCj4gPiA+ICsvLy8NCj4gPiA+ICsvLy8gbGV0IGZjdHggPSBGZW5jZUN0eDo6
bmV3KGRyaXZlcl9uYW1lLCB0aW1lbGluZV9uYW1lLCAoKSk/Ow0KPiA+ID4gKy8vLw0KPiA+ID4g
Ky8vLyBsZXQgZmVuY2VfZGF0YSA9IENTdHJpbmc6OnRyeV9mcm9tX2ZtdChmbXQhKCJkdW1teV9k
YXRhIikpPzsNCj4gPiA+ICsvLy8gLy8gRHJpdmVyRmVuY2U6OmRhdGEgbXVzdCBlaXRoZXIgbm90
IG5lZWQgZHJvcCwgb3IgbGl2ZSBpbiBhbiBSY3VCb3guDQo+ID4gPiArLy8vIGxldCBmZW5jZV9k
YXRhID0gUmN1Qm94OjpuZXcoZmVuY2VfZGF0YSwgR0ZQX0tFUk5FTCk/Ow0KPiA+ID4gKy8vLw0K
PiA+ID4gKy8vLyBsZXQgZmVuY2VfYWxsb2MgPSBmY3R4LmFzX2FyY19ib3Jyb3coKS5uZXdfZmVu
Y2VfYWxsb2NhdGlvbihmZW5jZV9kYXRhKT87DQo+ID4gPiArLy8vIGxldCBtdXQgZmVuY2UgPSBm
Y3R4Lm5ld19mZW5jZShmZW5jZV9hbGxvYyk7DQo+ID4gPiArLy8vDQo+ID4gPiArLy8vIGxldCBj
Yl9kYXRhID0gQ2FsbGJhY2tEYXRhIHsgfTsNCj4gPiA+ICsvLy8gbGV0IHdhaXRpbmdfZmVuY2Ug
PSBBUmVmOjpmcm9tKGZlbmNlLmFzX2ZlbmNlKCkpOw0KPiA+ID4gKy8vLyBsZXQgY2JfcmVnID0g
RmVuY2VDYlJlZ2lzdHJhdGlvbjo6bmV3KCZ3YWl0aW5nX2ZlbmNlLCBjYl9kYXRhKTsNCj4gPiA+
ICsvLy8gbGV0IGNiX3JlZyA9IEtCb3g6OnBpbl9pbml0KGNiX3JlZywgR0ZQX0tFUk5FTCk/Ow0K
PiA+ID4gKy8vLw0KPiA+ID4gKy8vLyAvLyBEcml2ZXJGZW5jZSBpbXBsZW1lbnRzIERlcmVmLg0K
PiA+ID4gKy8vLyAvLyBGSVhNRTogdW5pdCB0ZXN0IGNsYWltcyB0aGF0IENTdHJpbmcgZG9lcyBu
b3QgaW1wbGVtZW50IERpc3BsYXkuIFdoeT8NCj4gPiA+ICsvLy8gLy8gcHJfaW5mbyEoIkZlbmNl
J3MgaW5uZXIgZGF0YSBpczoge30iLCBmZW5jZS5kZXJlZigpLmRlcmVmKCkpOw0KPiANCj4gTGF6
aWx5LCBJIHdhcyBob3BpbmcgdGhhdCBzb21lb25lIGhlcmUgd2lsbCB0ZWxsIG1lIGhvdyB0aGF0
IGlzDQo+IHN1cHBvc2VkIHRvIGJlIGRvbmUgY29ycmVjdGx5IDgtKQ0KDQpUaGlzIHNwZWNpZmlj
IGNvZGUgY291bGQgYmUgd3JpdHRlbiBjbGVhbmVyIGFzICYqKmZlbmNlLCBidXQgaXQgbG9va3MN
Cmxpa2UgQ1N0cmluZyBzaG91bGQgaW1wbGVtZW50IGZtdDo6RGlzcGxheSBsaWtlIENTdHIgZG9l
cy4NCg0KPiA+ID4gKy8vIFNBRkVUWTogVGhlIFJ1c3QgZG1hX2ZlbmNlIGFic3RyYWN0aW9ucyBh
cmUgYWxyZWFkeSBkZXNpZ25lZCBhcm91bmQgdGhlIGlubmVyDQo+ID4gPiArLy8gQyBgZG1hX2Zl
bmNlYCwgd2hpY2ggY2FuIHNlcnZlIHNhZmVseSBhcyB0aGUgaWRlbnRpZmljYXRpb24gcG9pbnQg
d2hlbiBiZWluZw0KPiA+ID4gKy8vIG93bmVkIGJ5IEMuIE1vcmVvdmVyLCBzYWZldHkgaXMgZW5z
dXJlZCBieSBub3QgZHJvcHBpbmcgYERyaXZlckZlbmNlYCBhbmQgYnkNCj4gPiA+ICsvLyBvbmx5
IGFsbG93aW5nIG9wZXJhdGlvbnMgd2l0aG91dCBzaWRlIGVmZmVjdHMgb24gdGhlIEJvcnJvd2Vk
IHR5cGUuDQo+ID4gPiArdW5zYWZlIGltcGw8RjogU2VuZCArIFN5bmMgKyAnc3RhdGljLCBDOiBT
ZW5kICsgU3luYyArICdzdGF0aWM+IEZvcmVpZ25Pd25hYmxlDQo+ID4gPiArwqDCoMKgIGZvciBE
cml2ZXJGZW5jZTxGLCBDPg0KPiA+ID4gK3sNCj4gPiA+ICvCoMKgwqAgLy8gYERyaXZlckZlbmNl
YCBpcyBtZXJlbHkgYSB3cmFwcGVyIGFyb3VuZCBhIHJhdyBwb2ludGVyLiBUaHVzLCB3ZSBjYW4g
anVzdA0KPiA+ID4gK8KgwqDCoCAvLyB1c2UgaXQgZGlyZWN0bHkuDQo+ID4gPiArwqDCoMKgIHR5
cGUgQm9ycm93ZWQ8J2E+ID0gRHJpdmVyRmVuY2VCb3Jyb3c8RiwgQz47DQo+ID4gPiArwqDCoMKg
IHR5cGUgQm9ycm93ZWRNdXQ8J2E+ID0gRHJpdmVyRmVuY2VCb3Jyb3c8RiwgQz47DQo+ID4gPiAr
DQo+ID4gPiArwqDCoMKgIGNvbnN0IEZPUkVJR05fQUxJR046IHVzaXplID0gY29yZTo6bWVtOjph
bGlnbl9vZjo6PGJpbmRpbmdzOjpkbWFfZmVuY2U+KCk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKg
IGZuIGludG9fZm9yZWlnbihzZWxmKSAtPiAqbXV0IGNfdm9pZCB7DQo+ID4gPiArwqDCoMKgwqDC
oMKgwqAgbGV0IGZlbmNlID0gc2VsZjsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCBs
ZXQgcHRyID0gZmVuY2UuYXNfcmF3KCk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAg
Ly8gRHJpdmVyRmVuY2UgbXVzdCBub3QgZHJvcC4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCBjb3Jl
OjptZW06OmZvcmdldChmZW5jZSk7DQo+ID4gDQo+ID4gTml0OiBNb2Rlcm4gUnVzdCB1c2VzIE1h
bnVhbGx5RHJvcCBpbnN0ZWFkIG9mIGZvcmdldCgpLg0KPiANCj4gWW91IG1lYW4gc3RpbGwgdGFr
ZSBgc2VsZmAgaGVyZSwgdGhlbiBzdHVmZiBpdCBpbnRvIE1hbnVhbGx5RHJvcCBhbmQNCj4gbGV0
IGl0IGdvIG91dCBvZiBzY29wZSwgYXllPw0KDQpJIG1lYW4gdGhpczoNCg0KbGV0IGZlbmNlID0g
TWFudWFsbHlEcm9wOjpuZXcoc2VsZik7DQpsZXQgcHRyID0gZmVuY2UuYXNfcmF3KCk7DQoNClRo
aXMgYXZvaWRzIG1vdmluZyBgZmVuY2VgIGFmdGVyIGNhbGxpbmcgYGFzX3JhdygpYC4NCg0KQWxp
Y2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
