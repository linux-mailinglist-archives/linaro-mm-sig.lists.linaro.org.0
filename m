Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEVBJxMB4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 42793410E06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F8E244261
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:32:34 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 7B3AA3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:16:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=raC6aTam;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dHC5J3Srfz9t5M;
	Thu, 27 Nov 2025 11:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764238596; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/LwMaXtJBDLXQXsCQXnsteb1mtiqvJkilJ+dHEkj54k=;
	b=raC6aTamMxW3XjfgydWAdK4gvLHYOWYg89ZahO46b/L2hJ73UNWoB23IOUuy6deSE87H2x
	gLKD+aF4bvPXisVcAZwug5eUHK/cGm2GfGUsFGsk212L3JVrzXrc4tdNBxR30B+P7OwYKd
	1HZU1boijNknhlg/InkP09RyDOiqqdhmza522BYaqiacCFTGGvUHVzmOiBcYEqtUilZoA9
	6owl1co+7Wkf5nGrOCEuG8ZResFMNoaECA2zEkWgZngSNfOO5UMCUbLDhWDijZ8kwMsFCY
	qSNRytCNexkzAcgGNAuuIvkdIyXOrYvtLQoWA4CRnxVFQQEHBqdG3/17b1Gt3Q==
Message-ID: <89c04c8b3ca0fadf73452ca20ffd61cb106d762a.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, Matthew Brost <matthew.brost@intel.com>
Date: Thu, 27 Nov 2025 11:16:26 +0100
In-Reply-To: <adfd840e-fcc8-4cdb-8fd8-d0e48ee32247@amd.com>
References: <20251126131914.149445-2-phasta@kernel.org>
	 <20251126131914.149445-3-phasta@kernel.org>
	 <aSctt3QFiEIB61Gr@lstrano-desk.jf.intel.com>
	 <aScxGDYeNeN1WYja@lstrano-desk.jf.intel.com>
	 <f1864f6d-8403-406d-81a0-00a71495cae8@amd.com>
	 <35189892c0cb774155e2012d41371b4d3f8e7d0f.camel@mailbox.org>
	 <adfd840e-fcc8-4cdb-8fd8-d0e48ee32247@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: bc88f92c2f8974133ff
X-MBO-RS-META: yz6764qr1bhitjd3f1i7yofkkz7wzuth
X-Spamd-Bar: ---
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ODRTW5JABS5MEX2CBELZSNH6WCIZPMZS
X-Message-ID-Hash: ODRTW5JABS5MEX2CBELZSNH6WCIZPMZS
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:13 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Tvrtko Ursulin <tvrtko.
 ursulin@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODRTW5JABS5MEX2CBELZSNH6WCIZPMZS/>
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
	DATE_IN_PAST(1.00)[3365];
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
	NEURAL_HAM(-0.00)[-0.949];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,intel.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid]
X-Rspamd-Queue-Id: 42793410E06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTI3IGF0IDExOjAxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiAxMS8yNy8yNSAxMDoxNiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+IE9uIFRo
dSwgMjAyNS0xMS0yNyBhdCAwOToxMSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4g
PiA+IE9uIDExLzI2LzI1IDE3OjU1LCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0KPiA+ID4gPiBPbiBX
ZWQsIE5vdiAyNiwgMjAyNSBhdCAwODo0MToyN0FNIC0wODAwLCBNYXR0aGV3IEJyb3N0IHdyb3Rl
Og0KPiA+ID4gPiA+IE9uIFdlZCwgTm92IDI2LCAyMDI1IGF0IDAyOjE5OjEwUE0gKzAxMDAsIFBo
aWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gPiA+ID4gPiA+IFRoZSBkbWFfZmVuY2UgZnJhbWV3b3Jr
IGNoZWNrcyBhdCBtYW55IHBsYWNlcyB3aGV0aGVyIHRoZSBzaWduYWxlZCBmbGFnDQo+ID4gPiA+
ID4gPiBvZiBhIGZlbmNlIGlzIGFscmVhZHkgc2V0LiBUaGUgY29kZSBjYW4gYmUgc2ltcGxpZmll
ZCBhbmQgbWFkZSBtb3JlDQo+ID4gPiA+ID4gPiByZWFkYWJsZSBieSBwcm92aWRpbmcgYSBoZWxw
ZXIgZnVuY3Rpb24gZm9yIHRoYXQuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEFkZCBkbWFf
ZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCksIHdoaWNoIG9ubHkgY2hlY2tzIHdoZXRoZXIgYSBm
ZW5jZSBpcw0KPiA+ID4gPiA+ID4gc2lnbmFsZWQuIFVzZSBpdCBpbnRlcm5hbGx5Lg0KPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpZ2FsaWEuY29tPg0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBT
dGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGlzIGlz
IGEgbmljZSBjbGVhbnA6DQo+ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQnJvc3QgPG1h
dHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gLS0tDQo+ID4g
PiA+ID4gPiDCoGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE5ICsrKysrKysrKy0tLS0t
LS0tLS0NCj4gPiA+ID4gPiA+IMKgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqAgfCAyNCAr
KysrKysrKysrKysrKysrKysrKysrLS0NCj4gPiA+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAz
MSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4gPiA+ID4gaW5kZXggMzllNmY5M2RjMzEwLi4yNTExN2E5
MDY4NDYgMTAwNjQ0DQo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4g
PiA+ID4gQEAgLTM3Miw4ICszNzIsNyBAQCBpbnQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBf
bG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiA+ID4gPiA+ID4gwqANCj4gPiA+ID4g
PiA+IMKgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoZmVuY2UtPmxvY2spOw0KPiA+ID4gPiA+ID4gwqAN
Cj4gPiA+ID4gPiA+IC0JaWYgKHVubGlrZWx5KHRlc3RfYW5kX3NldF9iaXQoRE1BX0ZFTkNFX0ZM
QUdfU0lHTkFMRURfQklULA0KPiA+ID4gPiA+ID4gLQkJCQnCoMKgwqDCoMKgICZmZW5jZS0+Zmxh
Z3MpKSkNCj4gPiA+ID4gDQo+ID4gPiA+IEkgbmVlZCB0byByZWFkIGEgbGl0dGxlIGJldHRlciwg
SSB0aGluayB0aGlzIGNoYW5nZSBpc24ndCBxdWl0ZSByaWdodC4NCj4gPiA+ID4gVGhlIG9yaWdp
bmFsIGNvZGUgaXMgdGVzdCBhbmQgc2V0LCB0aGUgdXBkYXRlZCBjb2RlIGlzIHRlc3Qgb25seSAo
aS5lLiwNCj4gPiA+ID4geW91IGFyZSBtaXNzaW5nIHRoZSBzZXQgc3RlcCkuIFNvIG1heWJlIGp1
c3QgbGVhdmUgdGhpcyBsaW5lIGFzIGlzLg0KPiA+ID4gDQo+ID4gPiBPaCwgZ29vZCBwb2ludCEg
SSd2ZSB0b3RhbGx5IG1pc3NlZCB0aGF0IGFzIHdlbGwuDQo+ID4gDQo+ID4gT2ggZGVhcjsgSSBh
bHNvIGp1c3Qgc2F3IGl0IHdoZW4gb3BlbmluZyB0aGUgbWFpbCBjbGllbnQgLl8uDQo+ID4gDQo+
ID4gPiANCj4gPiA+IEJ1dCB0aGF0IG1lYW5zIHRoYXQgdGhpcyBwYXRjaCBzZXQgaGFzbid0IGV2
ZW4gYmVlbiBzbW9rZSB0ZXN0ZWQuDQo+ID4gDQo+ID4gSSd2ZSBidWlsdCBpdCBhbmQgZGlkIHNv
bWUgYmFzaWMgdGVzdGluZyB3aXRoIG15IE5vdXZlYXUgc3lzdGVtLiBBbnkNCj4gPiBzdWdnZXN0
aW9ucz8gRG8geW91IGhhdmUgYSBDSSB0aGF0IG9uZSBjYW4gdHJpZ2dlcj8NCj4gDQo+IERNQS1i
dWYgaGFzIENPTkZJR19ETUFCVUZfU0VMRlRFU1RTIHdoaWNoIHNob3VsZCBiZSBhYmxlIHRvIGNh
dGNoIHRoaW5ncyBsaWtlIHRoYXQuDQo+IA0KPiBCdXQgZXZlbiBydW5uaW5nIE5vdXZlYXUgc2hv
dWxkIGhhdmUgZm91bmQgdGhpcyBzaW5jZSBiYXNpY2FsbHkgbm8gZmVuY2UgYXQgd291bGQgc2ln
bmFsIGFueSBtb3JlLg0KDQpUaGV5IHdpbGwgc2lnbmFsIGFuZCBleGVjdXRlIHRoZWlyIGNhbGxi
YWNrcywgYnV0IGFsbCBpc19zaWduYWxlZCgpDQpjaGVja3MgYXJlIHRoZW4gYnJva2VuLg0KDQpU
aHggZm9yIHRoZSBmZWVkYmFjaywgSSdsbCBiZSBtb3JlIGNhcmVmdWwgd2l0aCBjaGFuZ2VzIGxp
a2UgdGhvc2UgYW5kDQp0ZXN0IG1vcmUgZXh0ZW5zaXZlbHkuDQoNClAuDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
