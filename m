Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOAxD7Jl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E2B431E55
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06871406A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:13 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id EA805402D3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 20:34:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="ueKp/Tc3";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=baohua@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 614A961339;
	Mon, 13 Apr 2026 20:34:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5340C2BCAF;
	Mon, 13 Apr 2026 20:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776112455;
	bh=udQmhbHAYKfxARhnBiFmlPPjAm5aIDxgX6FrYs49XaU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ueKp/Tc3D2T4mj9KONopLzkmpEcHbY3/kRGZG8SfqhL0L/aWP1ghxhxSVO03Ua5mE
	 yLXwsiAenxD64ayJqoXfs8iBRWzAhqWZx+giUMaZ1iF2Bnx4m6ALNtlTwi0A7newGd
	 I11xXRhvr1Geih5+J41lYDYfvA0fjuE85t2jSJk+D6EnfQjbLvYgHW+RmvM/XyhtCQ
	 Ohh6PQSqRU31ugGUgxooghMNNshX6qSmQgpWHwIUAmCOeY4p4GXXuK1cXFHrr8XVCg
	 usqs8p7pLJ9h0/rJVkm72u93GV5OUM7b5FdOEjl/B+MV+OFBfEttg7HY+3kR12WxY7
	 9HLpsZUfy2QdA==
From: "Barry Song (Xiaomi)" <baohua@kernel.org>
To: david@kernel.org,
	urezki@gmail.com
Date: Tue, 14 Apr 2026 04:34:10 +0800
Message-Id: <20260413203410.13079-1-baohua@kernel.org>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <20260403092028.61257-1-baohua@kernel.org>
References: <20260403092028.61257-1-baohua@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XVUFQATMYPSYPSCY55EIQDQEFNV6YY3E
X-Message-ID-Hash: XVUFQATMYPSYPSCY55EIQDQEFNV6YY3E
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:28 +0000
CC: baohua@kernel.org, 21cnbao@gmail.com, akpm@linux-foundation.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, xueyuan.chen21@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVUFQATMYPSYPSCY55EIQDQEFNV6YY3E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[165];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linux-foundation.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.314];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 06E2B431E55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pj4gdm1hcF9wYWdlX3JhbmdlKCkgZG9lcyBmbHVzaGluZyBhbmQgaXQgaGFzIGluc3RydW1lbnRl
ZCBLTVNBTiBpbnNpZGUuDQo+PiBXZSBzaG91bGQgZm9sbG93IHNhbWUgc2VtYW50aWMuIEFsc28g
aXQgdXNlcyBpb3JlbWFwX21heF9wYWdlX3NoaWZ0IGFzDQo+PiBtYXhpbXVtIHBhZ2Ugc2hpZnQg
cG9saWN5Lg0KPiANCj4gTm90IHF1aXRlIHN1cmUgaWYgdm1hcCgpIHNob3VsZCBmb2xsb3cgaW9y
ZW1hcCgp4oCZcw0KPiBpb3JlbWFwX21heF9wYWdlX3NoaWZ0LiBJZiBuZWVkZWQsIGl0IHNob3Vs
ZG7igJl0IGJlDQo+IGRpZmZpY3VsdCB0byBkbyBzby4NCj4gDQo+IEkgaGF2ZSBhIHZlcnNpb24g
cXVldWVkIGZvciB0ZXN0aW5nIChYdWV5dWFuIGlzIHdvcmtpbmcNCj4gaGFyZCBvbiBpdCkuIE1l
YW53aGlsZSwgaWYgeW91IGhhdmUgYW55IGNvbW1lbnRzLCBwbGVhc2UNCj4gZmVlbCBmcmVlIHRv
IHNoYXJlLg0KPiANCj4gZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYw0K
PiBpbmRleCA1N2VhZTk5ZDk5MDkuLjhkNDQ5ZTc4YTA3YSAxMDA2NDQNCg0KSGkgVWxhZHppc2xh
dSwgRGF2aWQsDQoNCkFzIGV4cGxhaW5lZCB0aGVyZSBbMV0sIHRoaXMgc3RhbmRhbG9uZSBwYXRj
aCBpcyB3aXRoZHJhd24sDQphcyBJIGhhdmUgbW92ZWQgdG8gYSBzZXJpZXMgdGhhdCBhZGRyZXNz
ZXMgYSBicm9hZGVyIHNldCBvZg0KaXNzdWVzLg0KU29ycnkgZm9yIGFueSBjb25mdXNpb24gdGhp
cyBtYXkgaGF2ZSBjYXVzZWQuDQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FH
c0pfNHdDQmVWZnlGcmFqX2RSZHNVclNOcURHNWE4U085QzM9UEZSU3QwNGRSdkd3QG1haWwuZ21h
aWwuY29tLw0KDQpCZXN0IFJlZ2FyZHMNCkJhcnJ5DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
