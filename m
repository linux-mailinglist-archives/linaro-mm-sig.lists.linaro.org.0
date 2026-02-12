Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMbjIywR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:41:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEBE411D88
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:41:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DF4144E3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:41:15 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id F31653F75E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 09:02:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=JzRp29Dd;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fBTnc2QSqz9v8y;
	Thu, 12 Feb 2026 10:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1770886916; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f1sITTc6VLMvly5lD7CERtLHOgz554xhk5CK5UpomXM=;
	b=JzRp29DdhTb7eA6fUaPJzqSCCduyYqka2lYrv/nTRbCxlAu/P19v/AahS8YSnoTT+YtosA
	4hBWf+gOP/oquCCv0PObtC4N5lRKIDWQF4yn7quGmDpsHyjTi0cHHjrPEQ1fmOPlfisSvQ
	Xjnn6sKv/yxCB72A1unK7JjvlADPTL1X4hfdEHect3TQ/+p84SuY60KQG6QYYSuuC2I8/R
	gqz52Nq6gCp/ZGfY81KyEW8dVSzpF0JltKnCltrTT7Xhx+cvnzSz+EvFA0CfxMIaY/bO74
	nWTFpogEBHygl1zieUoCFdu2SiSGOB49Uj5mSQeJYB8wVSXsr+2Kg5lHopvQ7w==
Message-ID: <69ff58e846ea7bf60e6f5dc58cf224f7c461d0d6.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
Date: Thu, 12 Feb 2026 10:01:49 +0100
In-Reply-To: <96407179-3ab9-4ba8-9b1c-171187683b41@gmail.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
	 <20260210102232.1642-5-christian.koenig@amd.com>
	 <ebfe7aa7f409513d5e04ac407700a8bbac76e948.camel@mailbox.org>
	 <96407179-3ab9-4ba8-9b1c-171187683b41@gmail.com>
MIME-Version: 1.0
X-MBO-RS-META: xfxr9prmzmg4icwgwdp3x863j7o6jbck
X-MBO-RS-ID: ddf017a0c489f767024
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XPK3FLIVA7PTL2A3JHYEGSZ2U3R73ZV6
X-Message-ID-Hash: XPK3FLIVA7PTL2A3JHYEGSZ2U3R73ZV6
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:16 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XPK3FLIVA7PTL2A3JHYEGSZ2U3R73ZV6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[1519];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns];
	NEURAL_HAM(-0.00)[-0.891];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org]
X-Rspamd-Queue-Id: 4AEBE411D88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAyLTExIGF0IDE1OjU5ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAyLzExLzI2IDEwOjUwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gT24gVHVl
LCAyMDI2LTAyLTEwIGF0IDExOjAxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiAu
Li4NCj4gPiA+IFVzaW5nIGEgcGVyLWZlbmNlIHNwaW5sb2NrIGFsbG93cyBjb21wbGV0ZWx5IGRl
Y291cGxpbmcgc3BpbmxvY2sgcHJvZHVjZXINCj4gPiA+IGFuZCBjb25zdW1lciBsaWZlIHRpbWVz
LCBzaW1wbGlmeWluZyB0aGUgaGFuZGxpbmcgaW4gbW9zdCB1c2UgY2FzZXMuDQo+ID4gDQo+ID4g
VGhhdCdzIGEgZ29vZCBjb21taXQgbWVzc2FnZSBidHcsIGRldGFpbGluZyB3aGF0IHRoZSBtb3Rp
dmF0aW9uIGlzLg0KPiA+IFdvdWxkIGJlIGdyZWF0IHRvIHNlZSBtZXNzYWdlcyBsaWtlIHRoYXQg
bW9yZSBmcmVxdWVudGx5IDpdDQo+IA0KPiBZZWFoLCBidXQgdGhleSBhcmUgbm90IHNvIGVhc3kg
dG8gd3JpdGUuDQoNClZhbHVhYmxlIHRoaW5ncyBhcmUgcmFyZWx5IGVhc3kgOn0NCg0KPiANCj4g
PiA+IMKgCXRyYWNlX2RtYV9mZW5jZV9pbml0KGZlbmNlKTsNCj4gPiA+IEBAIC0xMDkxLDcgKzEw
OTQsNyBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiA+ID4gwqAgKiBkbWFfZmVuY2VfaW5pdCAtIElu
aXRpYWxpemUgYSBjdXN0b20gZmVuY2UuDQo+ID4gPiDCoCAqIEBmZW5jZTogdGhlIGZlbmNlIHRv
IGluaXRpYWxpemUNCj4gPiA+IMKgICogQG9wczogdGhlIGRtYV9mZW5jZV9vcHMgZm9yIG9wZXJh
dGlvbnMgb24gdGhpcyBmZW5jZQ0KPiA+ID4gLSAqIEBsb2NrOiB0aGUgaXJxc2FmZSBzcGlubG9j
ayB0byB1c2UgZm9yIGxvY2tpbmcgdGhpcyBmZW5jZQ0KPiA+ID4gKyAqIEBsb2NrOiBvcHRpb25h
bCBpcnFzYWZlIHNwaW5sb2NrIHRvIHVzZSBmb3IgbG9ja2luZyB0aGlzIGZlbmNlDQo+ID4gPiDC
oCAqIEBjb250ZXh0OiB0aGUgZXhlY3V0aW9uIGNvbnRleHQgdGhpcyBmZW5jZSBpcyBydW4gb24N
Cj4gPiA+IMKgICogQHNlcW5vOiBhIGxpbmVhciBpbmNyZWFzaW5nIHNlcXVlbmNlIG51bWJlciBm
b3IgdGhpcyBjb250ZXh0DQo+ID4gPiDCoCAqDQo+ID4gPiBAQCAtMTEwMSw2ICsxMTA0LDEwIEBA
IF9fZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzICpvcHMsDQo+ID4gPiDCoCAqDQo+ID4gPiDCoCAqIGNvbnRleHQgYW5kIHNl
cW5vIGFyZSB1c2VkIGZvciBlYXN5IGNvbXBhcmlzb24gYmV0d2VlbiBmZW5jZXMsIGFsbG93aW5n
DQo+ID4gPiDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2lu
ZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4gPiA+ICsgKg0KPiA+ID4gKyAqIEl0IGlzIHN0cm9uZ2x5
IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jay4gVGhpcyBpcyBvbmx5IGFs
bG93ZWQNCj4gPiANCj4gPiAic3Ryb25nbHkgZGlzY291cmFnZWQgW+KApl0gYmVjYXVzZSB0aGlz
IGRvZXMgbm90IGRlY291cGxlIGxvY2sgYW5kIGZlbmNlDQo+ID4gbGlmZSB0aW1lcy4iID8NCj4g
DQo+IEdvb2QgcG9pbnQsIGFkZGVkIHNvbWUgbW9yZSB0ZXh0Lg0KPiDCoA0KPiA+ID4gKyAqIGZv
ciBsZWdhY3kgdXNlIGNhc2VzIHdoZW4gbXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVu
dGVkIGZyb20NCj4gPiA+ICsgKiBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPiA+IA0KPiA+IEkg
dGhpbmsgb3VyIHByZXZpb3VzIGRpc2N1c3Npb25zIHJldmVhbGVkIHRoYXQgdGhlIGV4dGVybmFs
IGxvY2sgZG9lcw0KPiA+IG5vdCBldmVuIGhlbHAgd2l0aCB0aGF0LCBkb2VzIGl0Pw0KPiANCj4g
V2VsbCBvbmx5IHdoZW4geW91IHByb3ZpZGUgYSAtPnNpZ25hbGVkKCkgY2FsbGJhY2sgaW4gdGhl
IGRtYV9mZW5jZV9vcHMuDQoNCk1obSwgbm8/DQoNClRoZSBleHRlcm5hbCBsb2NrIGRvZXMgbm90
IHByb3RlY3QgYWdhaW5zdCBzaWduYWxpbmcgb3V0IG91ZiBvcmRlciwNCmluZGVwZW5kZW50bHkg
b2YgdGhhdCBjYWxsYmFjaywgYmVjYXVzZSBhIGRyaXZlciBjYW4gdGFrZSBhbmQgcmVsZWFzZQ0K
dGhhdCBsb2NrIGluIGJldHdlZW4gc2lnbmFsaW5nLg0KDQpUaGUgd2F5IGhvdyB0byBnZXQgdGhp
cyByaWdodCBpcyB0byBtYWtlIHRoZSBmZW5jZSBjb250ZXh0IGFuZCBhY3R1YWwNCm9iamVjdCB3
aXRoIGFjdHVhbCBydWxlcy4gSW4gUnVzdCwgaXQgY291bGQgYWxzbyBob3VzZSB0aW1lbGluZSBh
bmQNCmRyaXZlciBuYW1lIHN0cmluZ3MsIHJlcXVpcmluZyB0d28gZmV3ZXIgY2FsbGJhY2tzLg0K
DQo+IA0KPiBUaGUgcmVhc29uIHdlIGhhdmUgc28gbXVjaCBkaWZmZXJlbnQgYXBwcm9hY2hlcyBp
biB0aGUgZG1hX2ZlbmNlIGhhbmRsaW5nIGlzIGJlY2F1c2UgaXQgaXMgYmFzaWNhbGx5IHRoZSB1
bmlmaWNhdGlvbiBtdWx0aXBsZSBkaWZmZXJlbnQgZHJpdmVyIGltcGxlbWVudGF0aW9ucyB3aGlj
aCBhbGwgdGFyZ2V0ZWQgbW9yZSBvciBsZXNzIGRpZmZlcmVudCB1c2UgY2FzZXMuDQo+IA0KDQpX
aGVuIGRpZCBkbWFfZmVuY2UgYWN0dWFsbHkgY29tZSB0byBiZT8gSSBzdXBwb3NlIGF0IHNvbWUg
cG9pbnQgd2UNCmRpc2NvdmVyZWQgdGhhdCBhbGwgZHJpdmVycyBiYXNpY2FsbHkgaGF2ZSB2ZXJ5
IHNpbWlsYXIgcmVxdWlyZW1lbnRzDQpyZWdhcmRpbmcgdGhlaXIgam9iIGNvbXBsZXRpb24gc2ln
bmFsaW5nLg0KDQo+ID4gPiANCg0KW+KApl0NCg0KPiA+ID4gwqANCj4gPiA+IMKgZW51bSBkbWFf
ZmVuY2VfZmxhZ19iaXRzIHsNCj4gPiA+IMKgCURNQV9GRU5DRV9GTEFHX0lOSVRJQUxJWkVEX0JJ
VCwNCj4gPiA+ICsJRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklULA0KPiA+IA0KPiA+IEp1
c3QgYXNraW5nIGFib3V0IGEgbml0OiB3aGF0J3MgdGhlIG9yZGVyIGhlcmUsIGFsd2F5cyBhbHBo
YWJldGljYWxseT8NCj4gDQo+IEluIHdoaWNoIHRoZSBmbGFncyBhcmUgdXNlZCBpbiB0aGUgY29k
ZSBmbG93Lg0KDQpOb3QgaW50dWl0aXZlLCBidXQgaXQncyBPSywgbm8gYmlnIGRlYWwNCg0KDQoN
ClAuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
