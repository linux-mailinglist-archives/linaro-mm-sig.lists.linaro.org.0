Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sICANb4A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD7410D6C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 393C143F19
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:31:09 +0000 (UTC)
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	by lists.linaro.org (Postfix) with ESMTPS id 4E73F3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 15:45:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b="b3b2qR9/";
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dGkQf3KYYz9tPx;
	Wed, 26 Nov 2025 16:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764171898; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GYuQKYWHvgTzA8qA0Zkdlur/RZgIWQgqyLe70jBOPB8=;
	b=b3b2qR9/Ygc6aU85/+Ub73YlSxQPtXAa3WnZTI4wmqhnGPm1KfjtyBNBrVkkv8sLA/kU+1
	ju2L0hagdnRBZDDcdaDEAFXM62XsMdChI3GBCTeB5A6t2UxLRqJ/JiVuRsQKXDBPzmCJNS
	IW14uEq9MH0AuF5uOq/a4clXdPkE/ZPQD4MhEdDv8nZIcS2ZY8vjTuO2STqElEvhwVt8qK
	6S4tVo9gfxy0bzwpSCc/BCGfCCQrSN+oj+RpxyrQ8QcD5N91W+i66cXPlEOzw7yeNMWCgO
	Gk5YcbcjZYcFITreQAjiUK0JbfWLf0tRdAfc1Lqve75uR7zhb0u71RX+o9PGhA==
Message-ID: <ff4e03cf5281bf54d36c69b4ae0dd5a19723178d.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 phasta@kernel.org, Lucas Stach <l.stach@pengutronix.de>,
 alexdeucher@gmail.com,  simona.vetter@ffwll.ch, faith@gfxstrand.net,
 sumit.semwal@linaro.org
Date: Wed, 26 Nov 2025 16:44:53 +0100
In-Reply-To: <6151e7c5-1de2-4857-ae64-1e2fd6cb7513@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-2-christian.koenig@amd.com>
	 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
	 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
	 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
	 <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
	 <c2b571a7e74f86c6cb95bebd11274447c3080df9.camel@mailbox.org>
	 <52d484c5-6dfb-4e2f-9caa-a61cf1d94801@amd.com>
	 <e2c006ca81081ee1afa00b1b52a035c28a267e0f.camel@pengutronix.de>
	 <207d50fe-eef3-4baa-97a7-567598e56b55@amd.com>
	 <54d6e863fc606d22f245e30012bb5120d5bee7ee.camel@mailbox.org>
	 <6151e7c5-1de2-4857-ae64-1e2fd6cb7513@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: dr76na9czm9xxq3nx38d6ykaiqs6nga4
X-MBO-RS-ID: 4d83f1c1ccad0993ace
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XJ7SALJ5NEEZDURAJDD65J7KR7ZDHRWS
X-Message-ID-Hash: XJ7SALJ5NEEZDURAJDD65J7KR7ZDHRWS
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:06 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XJ7SALJ5NEEZDURAJDD65J7KR7ZDHRWS/>
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
	DATE_IN_PAST(1.00)[3383];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,pengutronix.de,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: 6FFD7410D6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI1LTExLTI2IGF0IDE2OjAzICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiANCj4gDQo+IE9uIDExLzI2LzI1IDEzOjM3LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+
ID4gT24gV2VkLCAyMDI1LTExLTI2IGF0IDEzOjMxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiA+ID4gDQoNClvigKZdDQoNCj4gPiA+IFdlbGwgdGhlIHF1ZXN0aW9uIGlzIGhvdyBk
byB5b3UgZGV0ZWN0ICpyZWxpYWJsZSogdGhhdCB0aGVyZSBpcw0KPiA+ID4gc3RpbGwgZm9yd2Fy
ZCBwcm9ncmVzcz8NCj4gPiANCj4gPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhhdCdzIGlt
cG9zc2libGUgc2luY2UgdGhlIGludGVybmFscyBvZg0KPiA+IGNvbW1hbmQgc3VibWlzc2lvbnMg
YXJlIG9ubHkgcmVhbGx5IHVuZGVyc3Rvb2QgYnkgdXNlcnNwYWNlLCB3aG8NCj4gPiBzdWJtaXRz
IHRoZW0uDQo+IA0KPiBSaWdodCwgYnV0IHdlIGNhbiBzdGlsbCB0cnkgdG8gZG8gb3VyIGJlc3Qg
aW4gdGhlIGtlcm5lbCB0byBtaXRpZ2F0ZQ0KPiB0aGUgc2l0dWF0aW9uLg0KPiANCj4gSSB0aGlu
ayBmb3Igbm93IGFtZGdwdSB3aWxsIGltcGxlbWVudCBzb21ldGhpbmcgbGlrZSBjaGVja2luZyBp
ZiB0aGUNCj4gSFcgc3RpbGwgbWFrZXMgcHJvZ3Jlc3MgYWZ0ZXIgYSB0aW1lb3V0IGJ1dCBvbmx5
IGEgbGltaXRlZCBudW1iZXIgb2YNCj4gcmUtdHJpZXMgdW50aWwgd2Ugc2F5IHRoYXQncyBpdCBh
bmQgcmVzZXQgYW55d2F5Lg0KDQpPaCBvaCwgaXNuJ3QgdGhhdCBvdXIgZGVhciBoYW5nX2xpbWl0
PyA6KQ0KDQpXZSBhZ3JlZSB0aGF0IHlvdSBjYW4gbmV2ZXIgcmVhbGx5IG5vdyB3aGV0aGVyIHVz
ZXJzcGFjZSBqdXN0IHN1Ym1pdHRlZA0KYSB3aGlsZSh0cnVlKSBqb2IsIGRvbid0IHdlPyBFdmVu
IGlmIHNvbWUgR1BVIHJlZ2lzdGVyIHN0aWxsIGluZGljYXRlcw0KInByb2dyZXNzIi4NCg0KPiAN
Cj4gPiBJIHRoaW5rIHRoZSBsb25nLXRlcm0gc29sdXRpb24gY2FuIG9ubHkgYmUgZnVsbHkgZmxl
ZGdlZCBHUFUNCj4gPiBzY2hlZHVsaW5nDQo+ID4gd2l0aCBwcmVlbXB0aW9uLiBUaGF0J3Mgd2h5
IHdlIGRvbid0IG5lZWQgc3VjaCBhIHRpbWVvdXQgbWVjaGFuaXNtDQo+ID4gZm9yDQo+ID4gdXNl
cnNwYWNlIHByb2Nlc3NlczogdGhlIHNjaGVkdWxlciBzaW1wbHkgaW50ZXJydXB0cyBhbmQgbGV0
cw0KPiA+IHNvbWVvbmUNCj4gPiBlbHNlIHJ1bi4NCj4gDQo+IFllYWggYWJzb2x1dGVseS4gDQo+
IA0KPiA+IA0KPiA+IE15IGhvcGUgd291bGQgYmUgdGhhdCBpbiB0aGUgbWlkLXRlcm0gZnV0dXJl
IHdlJ2QgZ2V0IGZpcm13YXJlDQo+ID4gcmluZ3MNCj4gPiB0aGF0IGNhbiBiZSBwcmVlbXB0ZWQg
dGhyb3VnaCBhIGZpcm13YXJlIGNhbGwgZm9yIGFsbCBtYWpvcg0KPiA+IGhhcmR3YXJlLg0KPiA+
IFRoZW4gYSBodWdlIHNoYXJlIG9mIG91ciBwcm9ibGVtcyB3b3VsZCBkaXNhcHBlYXIuDQo+IA0K
PiBBdCBsZWFzdCBvbiBBTUQgSFcgcHJlLWVtcHRpb24gaXMgYWN0dWFsbHkgaG9ycmlibGUgdW5y
ZWxpYWJsZSBhcw0KPiB3ZWxsLg0KDQpEbyB5b3UgbWVhbiBuZXcgR1BVcyB3aXRoIGZpcm13YXJl
IHNjaGVkdWxpbmcsIG9yIHdoYXQgaXMgIkhXIHByZS0NCmVtcHRpb24iPw0KDQpXaXRoIGZpcm13
YXJlIGludGVyZmFjZXMsIG15IGhvcGUgd291bGQgYmUgdGhhdCB5b3UgY291bGQgc2ltcGx5IHRl
bGwNCg0Kc3RvcF9ydW5uaW5nX3JpbmcobnJfb2ZfcmluZykNCi8vIHRpbWUgc2xpY2UgZm9yIHNv
bWVvbmUgZWxzZQ0Kc3RhcnRfcnVubmluZ19yaW5nKG5yX29mX3JpbmcpDQoNClRoZXJlYnkgZ2V0
dGluZyByZWFsIHNjaGVkdWxpbmcgYW5kIGFsbCB0aGF0LiBBbmQgZWxpbWluYXRpbmcgbWFueQ0K
b3RoZXIgcHJvYmxlbXMgd2Uga25vdyB3ZWxsIGZyb20gZHJtL3NjaGVkLg0KDQo+IA0KPiBVc2Vy
c3BhY2UgYmFzaWNhbGx5IG5lZWRzIHRvIGNvLW9wZXJhdGUgYW5kIHByb3ZpZGUgYSBidWZmZXIg
d2hlcmUNCj4gdGhlIHN0YXRlIG9uIGEgcHJlLWVtcHRpb24gaXMgc2F2ZWQgaW50by4NCg0KVGhh
dCdzIHVuY29vbC4gV2l0aCBDUFUgcHJlZW1wdGlvbiBhbGwgdGhhdCBpcyBkb25lIGF1dG9tYXRp
Y2FsbHkgdmlhDQp0aGUgcHJvY2Vzc2UncyBwYWdlcy4NCg0KDQpQLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
