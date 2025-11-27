Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xN8pLwgB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8C8410DF0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8338544225
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:23 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 2D2DF3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 09:16:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=oMA0l5GF;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dH9ld1kxhz9tZ4;
	Thu, 27 Nov 2025 10:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764234973; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XFgdH560T3YiZGXpnSavHS2fNWjlZmWfX61HED3oDlY=;
	b=oMA0l5GF20+89bOALj2AZEzZ3KIYCQ0sQV3nKIuCRZQwgA60GoBHIUvo5JRwMguBCc9aZn
	F5inZjQemfWXADIy+1xs76rtlYJFo92RNRet6w4peIdc++GW6ttRGWxsCSXZqLLJ1K10VW
	QLkDmrkejRTh1VxfNJZ4pklrXpAKF9HotuRSmTJqVuPBFkros9P2+ivH/W1otk+mQpr0t9
	mnTm79fYRIiStVef/JAOqBwscFVop7s6hLDvpyU/Arc28NFYHaNpXsDjbYT9vMO0+bOAVO
	gzwkxgjeZWdYc3mg70heVVNEMMx2BkFm+1Edzdqkw9Qv9hGCakXTyIbg4+8BCQ==
Message-ID: <35189892c0cb774155e2012d41371b4d3f8e7d0f.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthew
 Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>
Date: Thu, 27 Nov 2025 10:16:01 +0100
In-Reply-To: <f1864f6d-8403-406d-81a0-00a71495cae8@amd.com>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <20251126131914.149445-3-phasta@kernel.org>
	 <aSctt3QFiEIB61Gr@lstrano-desk.jf.intel.com>
	 <aScxGDYeNeN1WYja@lstrano-desk.jf.intel.com>
	 <f1864f6d-8403-406d-81a0-00a71495cae8@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: bgpghhhhrg9u5u445qr6ka3upg67j9jx
X-MBO-RS-ID: a7092e291bad71bbc06
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RTLDAIC3TWXIVNMLVYSGJKGKLBETJ5TL
X-Message-ID-Hash: RTLDAIC3TWXIVNMLVYSGJKGKLBETJ5TL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:12 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Tvrtko Ursulin <tvrtko.
 ursulin@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RTLDAIC3TWXIVNMLVYSGJKGKLBETJ5TL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3366];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,igalia.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.943];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,igalia.com:email,intel.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 6C8C8410DF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTI3IGF0IDA5OjExICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNi8yNSAxNzo1NSwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4gPiBPbiBXZWQs
IE5vdiAyNiwgMjAyNSBhdCAwODo0MToyN0FNIC0wODAwLCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0K
PiA+ID4gT24gV2VkLCBOb3YgMjYsIDIwMjUgYXQgMDI6MTk6MTBQTSArMDEwMCwgUGhpbGlwcCBT
dGFubmVyIHdyb3RlOg0KPiA+ID4gPiBUaGUgZG1hX2ZlbmNlIGZyYW1ld29yayBjaGVja3MgYXQg
bWFueSBwbGFjZXMgd2hldGhlciB0aGUgc2lnbmFsZWQgZmxhZw0KPiA+ID4gPiBvZiBhIGZlbmNl
IGlzIGFscmVhZHkgc2V0LiBUaGUgY29kZSBjYW4gYmUgc2ltcGxpZmllZCBhbmQgbWFkZSBtb3Jl
DQo+ID4gPiA+IHJlYWRhYmxlIGJ5IHByb3ZpZGluZyBhIGhlbHBlciBmdW5jdGlvbiBmb3IgdGhh
dC4NCj4gPiA+ID4gDQo+ID4gPiA+IEFkZCBkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCks
IHdoaWNoIG9ubHkgY2hlY2tzIHdoZXRoZXIgYSBmZW5jZSBpcw0KPiA+ID4gPiBzaWduYWxlZC4g
VXNlIGl0IGludGVybmFsbHkuDQo+ID4gPiA+IA0KPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KPiA+ID4gDQo+ID4gPiBU
aGlzIGlzIGEgbmljZSBjbGVhbnA6DQo+ID4gPiBSZXZpZXdlZC1ieTogTWF0dGhldyBCcm9zdCA8
bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKg
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTkgKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+
ID4gPiDCoGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmjCoMKgIHwgMjQgKysrKysrKysrKysrKysr
KysrKysrKy0tDQo+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiA+ID4g
aW5kZXggMzllNmY5M2RjMzEwLi4yNTExN2E5MDY4NDYgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCj4gPiA+ID4gQEAgLTM3Miw4ICszNzIsNyBAQCBpbnQgZG1hX2ZlbmNlX3Np
Z25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiA+ID4gPiDC
oA0KPiA+ID4gPiDCoAlsb2NrZGVwX2Fzc2VydF9oZWxkKGZlbmNlLT5sb2NrKTsNCj4gPiA+ID4g
wqANCj4gPiA+ID4gLQlpZiAodW5saWtlbHkodGVzdF9hbmRfc2V0X2JpdChETUFfRkVOQ0VfRkxB
R19TSUdOQUxFRF9CSVQsDQo+ID4gPiA+IC0JCQkJwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkp
DQo+ID4gDQo+ID4gSSBuZWVkIHRvIHJlYWQgYSBsaXR0bGUgYmV0dGVyLCBJIHRoaW5rIHRoaXMg
Y2hhbmdlIGlzbid0IHF1aXRlIHJpZ2h0Lg0KPiA+IFRoZSBvcmlnaW5hbCBjb2RlIGlzIHRlc3Qg
YW5kIHNldCwgdGhlIHVwZGF0ZWQgY29kZSBpcyB0ZXN0IG9ubHkgKGkuZS4sDQo+ID4geW91IGFy
ZSBtaXNzaW5nIHRoZSBzZXQgc3RlcCkuIFNvIG1heWJlIGp1c3QgbGVhdmUgdGhpcyBsaW5lIGFz
IGlzLg0KPiANCj4gT2gsIGdvb2QgcG9pbnQhIEkndmUgdG90YWxseSBtaXNzZWQgdGhhdCBhcyB3
ZWxsLg0KDQpPaCBkZWFyOyBJIGFsc28ganVzdCBzYXcgaXQgd2hlbiBvcGVuaW5nIHRoZSBtYWls
IGNsaWVudCAuXy4NCg0KPiANCj4gQnV0IHRoYXQgbWVhbnMgdGhhdCB0aGlzIHBhdGNoIHNldCBo
YXNuJ3QgZXZlbiBiZWVuIHNtb2tlIHRlc3RlZC4NCg0KSSd2ZSBidWlsdCBpdCBhbmQgZGlkIHNv
bWUgYmFzaWMgdGVzdGluZyB3aXRoIG15IE5vdXZlYXUgc3lzdGVtLiBBbnkNCnN1Z2dlc3Rpb25z
PyBEbyB5b3UgaGF2ZSBhIENJIHRoYXQgb25lIGNhbiB0cmlnZ2VyPw0KDQpUaHgNClAuDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
