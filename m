Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FrFIQ/KDmovCQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:02:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBAF5A1BED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:01:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D135E40980
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 09:01:58 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 9D2F43F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 09:01:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=AGmBTyA7;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779354066;
	bh=HkYvTVcPzSTc+LKOwW4MxrM8I91nfQVQdqotlUSn+lA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=AGmBTyA7gH4ux1s88NG7277H5LLbOvuOMz20+ai56lyumT0m4etdK9ZrKA/OhZPvZ
	 DQcKB6ioFVSXqHWyMuWrqzvM4aqjcta50N4XSC3fz7YNRL5Y6oYNp1XngR0zcoVE4p
	 tCkyZbBpYTPocrQq02wdiEJAB4/S8dSQNyN5hZvb4MgEuceLmC6+Q2B4O0tISVk8aa
	 g1BNL/pxVbF9oceU4ybUnO91sFPXaDdOY9LzhebV0Rjp+p6cIEQEQylCweK9d4wrkB
	 lu/YPi74aPQiQW4RLc71oiyVWCC5DRfaD65eLqh66aka+6qqlWEQy8SNzs5+YLozUQ
	 JsNOs2SZzZ5+w==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1126D17E107C;
	Thu, 21 May 2026 11:01:06 +0200 (CEST)
Date: Thu, 21 May 2026 11:01:00 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260521110100.598baadb@fedora>
In-Reply-To: <20260521105402.4bc4b1e5@fedora>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
	<03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
	<20260518111456.30ba9bba@fedora>
	<a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
	<20260518161531.331cab2d@fedora>
	<d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
	<20260521105402.4bc4b1e5@fedora>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: TZ7MBMWWHBIPS7GS46LWQ4LG42QUSJ6E
X-Message-ID-Hash: TZ7MBMWWHBIPS7GS46LWQ4LG42QUSJ6E
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZ7MBMWWHBIPS7GS46LWQ4LG42QUSJ6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig.lists.linaro.org:query timed out];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1DBAF5A1BED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMSBNYXkgMjAyNiAxMDo1NDowMiArMDIwMA0KQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQoNCj4gT24gVGh1LCAyMSBNYXkgMjAy
NiAxMDozNjo0NyArMDIwMA0KPiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KPiANCj4gPiBPbiA1LzE4LzI2IDE2OjE1LCBCb3JpcyBCcmV6aWxsb24g
d3JvdGU6ICANCj4gPiA+IE9uIE1vbiwgMTggTWF5IDIwMjYgMTQ6MTg6NDEgKzAyMDANCj4gPiA+
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4g
PiAgICAgDQo+ID4gPj4gT24gNS8xOC8yNiAxMToxNCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAg
ICANCj4gPiA+Pj4gSGkgQ2hyaXN0aWFuLA0KPiA+ID4+Pg0KPiA+ID4+PiBPbiBNb24sIDE4IE1h
eSAyMDI2IDA5OjEwOjIzICswMjAwDQo+ID4gPj4+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+ID4gPj4+ICAgICAgIA0KPiA+ID4+Pj4gT24gNS8x
My8yNiAxODo1OCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgICAgIA0KPiA+ID4+Pj4+IFdoZW4g
dXNlZCB3aXRob3V0IGEgY29udGV4dCwgZG1hX3Jlc3YgYXJlIG5vIGRpZmZlcmVudCBmcm9tIHJl
Z3VsYXINCj4gPiA+Pj4+PiBsb2Nrcy4gRGVmaW5lIGd1YXJkcyBzbyB3ZSBjYW4gdXNlIHRoZSBn
dWFyZC1zeW50YWN0aWMgc3VnYXJzIGZvcg0KPiA+ID4+Pj4+IGV4cGxpY2l0L2ltcGxpY2l0IHNj
b3BlZCBsb2Nrcy4NCj4gPiA+Pj4+Pg0KPiA+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+ICAgICAgICANCj4gPiA+Pj4+
DQo+ID4gPj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KPiA+ID4+Pj4NCj4gPiA+Pj4+IEhvdyBkbyB5b3Ugd2FudCB0byB1cHN0cmVh
bSBpdD8gTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSBkcm0tbWlzYy1uZXh0LCBidXQgSSB0aGluayBJ
IGNhbiBsaXZlIHdpdGggYSBwYW50aG9yIHNwZWNpZmljIGJyYW5jaCBhcyB3ZWxsLiAgICAgIA0K
PiA+ID4+Pg0KPiA+ID4+PiBFdmVyeXRoaW5nIFBhbnRob3IgcmVsYXRlZCBnb2VzIHRocm91Z2gg
ZHJtLW1pc2MtbmV4dCwgc28gZHJtLW1pc2MtbmV4dA0KPiA+ID4+PiBhbHNvIGhhcyBteSBwcmVm
ZXJlbmNlIDstKS4gQnV0IEknZCBsaWtlIHRvIHdhaXQgZm9yIG1vcmUgZmVlZGJhY2sgb24NCj4g
PiA+Pj4gdGhlIG90aGVyIGRybSBwYXRjaGVzLCBhbmQgdGhlcmUgYXJlIGEgZmV3IHRoaW5ncyBJ
IG5lZWQgdG8gYWRkcmVzcyBpbg0KPiA+ID4+PiB0aGUgcGFudGhvciBwYXRjaGVzIGFueXdheSwg
c28gaXQncyBsaWtlbHkgdG8gdGFrZSBhIGNvdXBsZSBtb3JlIHdlZWtzDQo+ID4gPj4+IGZvciB0
aGlzIHNlcmllcyB0byBoaXQgdGhlIGRybS1taXNjIHRyZWUsIHVubGVzcyB5b3UgaGF2ZSBhIGdv
b2QgcmVhc29uDQo+ID4gPj4+IHRvIGZhc3QtdHJhY2sgdGhpcyBzcGVjaWZpYyBwYXRjaC4gICAg
ICANCj4gPiA+Pg0KPiA+ID4+IFdlbGwgdGhlIERNQS1idWYgY29kZSBpdHNlbGYgdXNlcyBkbWFf
cmVzdl9sb2NrL3VubG9jayAgICANCj4gPiA+IA0KPiA+ID4gVGhlcmUncyBubyB1c2UgaW4gZG1h
LXJlc3YuYyB0aGF0IGNhbiBiZSBjb252ZXJ0ZWQgdG8gZ3VhcmRzLiBJIGdhdmUNCj4gPiA+IGRt
YS1idWYuYyBhIHRyeSwgYnV0IGp1c3QgbGlrZSBmb3IgcGFudGhvciwgSSBkb24ndCByZWFsbHkg
bGlrZSB0aGUgZmFjdA0KPiA+ID4gaXQncyBoYWxmd2F5IHRocm91Z2ggKG90aGVyIGxvY2tzIHN0
aWxsIHVzZSBtYW51YWwgbG9ja2luZyksIHNvIEknZCBiZQ0KPiA+ID4gdGVtcHRlZCB0byBjb252
ZXJ0IGV2ZXJ5dGhpbmcgYXQgb25jZSBmb3IgY29uc2lzdGVuY3kuIElmIHlvdSdyZSBmaW5lDQo+
ID4gPiB3aXRoIHRoYXQsIEkgY2FuIGdpdmUgdGhpcyBhIHRyeS4gICAgDQo+ID4gDQo+ID4gV2Vs
bCBkZXBlbmRzIG9uIHdoYXQgZXZlcnl0aGluZyBtZWFucy4gSSB3b3VsZCBvbmx5IGNvbnZlcnQg
ZG1hLWJ1Zi5jIGluIG9uZSBwYXRjaCBhbmQgbm90aGluZyBlbHNlLiAgDQo+IA0KPiBCeSBldmVy
eXRoaW5nIEkgbWVhbiBhbGwgdHlwZSBvZiBsb2Nrcywgbm90IGp1c3QgZG1hX3Jlc3Ygb25lcy4N
Cg0KQlRXLCBJIGFjdHVhbGx5IGRpZCBtb3JlIHRoYW4ganVzdCBkbWEtYnVmLmMgWzFdLCBsZXQg
bWUga25vdyB3aGF0IHlvdQ0Kd2FudCBmcm9tIHRoZXJlIGFuZCBJJ2xsIGRpdGNoIHRoZSByZXN0
Lg0KDQpbMV1odHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvYmJyZXppbGxvbi9saW51eC8t
L2NvbW1pdHMvYjQvcGFudGhvci1ndWFyZC1yZWZhY3Rvcg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
