Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JMGzHfCyT2rdmwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:40:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE77A732623
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 09 Jul 2026 16:40:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=Da1byGJv;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA443404EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2026 14:40:46 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 2E2E0404BE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 14:40:36 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gwyLS0w62zKvv5;
	Thu, 09 Jul 2026 16:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783608032; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7Us4i0EClV17VoI3xSHO9uPSPfOz4YLVko1c5vUD12U=;
	b=Da1byGJvIac+rMpvYyoTFrnqzJFLvjp8MY2RnKvfh1WexIp9bZPmMPYL2/1IzzAGoyTin5
	EHmSmyUWIAjlbz+wg0OK7mev1AFxC8YaoXVq0iCFsWfvw9/lOH7X3PjchYwmLpybBSfExw
	TdyUbqZF7ChxJmV9XBvcMbOH40WKaDs9bNu/2aib8NBxnx3tIShtvIkDpnq8g3qVWe1UNd
	EO3e9z3/8+F8mj9hTGz58j/9hbWhFWa/UfQ66myxm+VjF6A8yPEHsSKXsjMTRWZcC17Mop
	HiT54nLb1lI4quEvOyF8JV3rjioEylXUowMXnpe1lJ6P44fQ5W41/3aIqcN7CQ==
Message-ID: <b39f29efd4db9a2e10c6d1943a22b826cc5232f8.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	phasta@kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,  Simona Vetter
 <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian
 =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Danilo Krummrich <dakr@kernel.org>
Date: Thu, 09 Jul 2026 16:40:21 +0200
In-Reply-To: <899942cc84af7a82a35b4ca34b486c40327fd543.camel@linaro.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
			 <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
		 <1ccfc0b5d1696a8dec4756b675294e7fb41ab5ff.camel@mailbox.org>
	 <899942cc84af7a82a35b4ca34b486c40327fd543.camel@linaro.org>
MIME-Version: 1.0
X-MBO-RS-ID: 95704fdbfc9f316a69c
X-MBO-RS-META: rumx4tzpbxmq6iy6zzabge49b7qs8rfp
X-Spamd-Bar: ----
Message-ID-Hash: TA3EGNPX6UFRUFU2TZSCDBNITO5T3AWU
X-Message-ID-Hash: TA3EGNPX6UFRUFU2TZSCDBNITO5T3AWU
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] drm/drm_crtc: ensure dma_fence_ops remain valid during device unbind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TA3EGNPX6UFRUFU2TZSCDBNITO5T3AWU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andre.draszik@linaro.org,m:phasta@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,amd.com,igalia.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,sashiko.dev:url,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE77A732623

T24gVGh1LCAyMDI2LTA3LTA5IGF0IDE1OjE5ICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToN
Cj4gSGkgUGhpbGlwcCwNCj4gDQo+IE9uIFRodSwgMjAyNi0wNy0wOSBhdCAxNDozMiArMDIwMCwg
UGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ICtDYyBEYW5pbG8gKHdobyBpcyBjdXJyZW50bHkg
Y29uY2VybmVkIHdpdGggZHJtX2RldmljZSBsaWZlIHRpbWVzKQ0KPiA+IA0KPiA+IE9uIFdlZCwg
MjAyNi0wNy0wOCBhdCAxNjoyMiArMDEwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6DQo+ID4gPiAN
Cj4gPiANCj4gPiBb4oCmXQ0KPiA+IA0KPiA+ID4gTGluazogaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNjE4LWxpbnV4LWRybV9jcnRjX2ZpeDItdjEtMS1jMDNlNzdiMzZmMzRA
bGluYXJvLm9yZz9wYXJ0PTENCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxh
bmRyZS5kcmFzemlrQGxpbmFyby5vcmc+DQo+ID4gDQo+ID4gSSBhbSB0ZW1wdGVkIHRvIHRoaW5r
IHRoYXQgdGhpcyBhbHNvIG5lZWRzIGEgRml4ZXMgYW5kIG5lZWRzIHRvIGJlDQo+ID4gYmFja3Bv
cnRlZCBpbnRvIHN0YWJsZSBrZXJuZWxzLCBkb2Vzbid0IGl0PyBFc3BlY2lhbGx5IGlmIHRoZSBC
VUdfT04NCj4gPiBkaXNhcHBlYXJzIGluIHN0YWJsZSBrZXJuZWxzLg0KPiANCj4gR29vZCBwb2lu
dCwgdGhhbmtzLiBJIGZvcmdvdCB0byBhZGQgdGhpcyBpbiBhbmQgd2lsbCB0cnkgdG8gZmluZCBh
IHJlYXNvbmFibGUNCj4gY29tbWl0IHRvIHJlbGF0ZSB0by4NCj4gDQo+ID4gDQo+ID4gPiAtLS0N
Cj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMgfCA2ICsrKysrKw0KPiA+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5j
DQo+ID4gPiBpbmRleCA2M2VhZDhiYTY3NTYuLmQ1NWYxMzc3ZWMzNiAxMDA2NDQNCj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2NydGMuYw0KPiA+ID4gQEAgLTUwMSw2ICs1MDEsMTIgQEAgdm9pZCBkcm1fY3J0Y19j
bGVhbnVwKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykNCj4gPiA+IMKgew0KPiA+ID4gwqAJc3RydWN0
IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmRldjsNCj4gPiA+IMKgDQo+ID4gPiArCS8qIEVuc3Vy
ZSBvdXIgZG1hX2ZlbmNlX29wcyByZW1haW4gdmFsaWQgZm9yIGFuIFJDVSBncmFjZSBwZXJpb2Qg
YWZ0ZXINCj4gPiA+ICsJICogdGhlIGZlbmNlIGlzIHNpZ25hbGVkLiBUaGlzIGlzIG5lY2Vzc2Fy
eSBiZWNhdXNlIG91ciBkbWFfZmVuY2Vfb3BzDQo+ID4gPiArCSAqIGRlcmVmZXJlbmNlIGNydGMt
PmRldi4NCj4gPiA+ICsJICovDQo+ID4gPiArCXN5bmNocm9uaXplX3JjdSgpOw0KPiA+IA0KPiA+
IG5pdDoNCj4gPiBJIGd1ZXNzIHRoaXMgaXMgdGhlIG9ubHkgcGxhY2Ugd2hlcmUgb25lIGNhbiBy
ZWFzb25hYmx5IHB1dCB0aGUNCj4gPiBzeW5jaHJvbml6ZV9yY3UoKS4gQnV0IEkgd291bGQgaGlu
dCBhdCB0aGUgUkNVIGRlbGF5IGluIHRoZSBmdW5jdGlvbidzDQo+ID4gZG9jdS4NCj4gDQo+IFVu
Zm9ydHVuYXRlbHksIHRoaXMgc3RpbGwgbG9va3MgbGlrZSBhbiBpbmNvbXBsZXRlIGZpeCAtDQo+
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxOC1saW51eC1kcm1fY3J0Y19m
aXgyLXYxLTEtYzAzZTc3YjM2ZjM0QGxpbmFyby5vcmc/cGFydD0xDQo+IA0KPiBNeSBuZXh0IHZl
cnNpb24gd2lsbCBzaW1wbHkgY29weSB0aGUgcmVsZXZhbnQgc3RyaW5ncyBpbnRvIGEgY3VzdG9t
DQo+IA0KPiBzdHJ1Y3QgZHJtX2NydGNfZmVuY2Ugew0KPiAJc3RydWN0IGRtYV9mZW5jZSBiYXNl
Ow0KPiAJY2hhciBkcml2ZXJfbmFtZVszMl07DQo+IAljaGFyIHRpbWVsaW5lX25hbWVbMzJdOw0K
PiB9Ow0KPiANCj4gb3Igc2ltaWxhciBhcyBwYXJ0IG9mIGRybV9jcnRjX2NyZWF0ZV9mZW5jZSgp
IGFuZCBqdXN0IHVzZSB0aG9zZSBhcyBwYXJ0DQo+IG9mIHRoZSBkbWFfZmVuY2Vfb3BzLiBUaGF0
IGFwcHJvYWNoIHNob3VsZCBhdm9pZCBhbGwgcmFjZSBjb25kaXRpb25zIGFuZA0KPiBjb3JuZXIg
Y2FzZXMgd2l0aCBSQ1UuDQoNCg0KTm93IHdhaXQgYSBzZWNvbmQuIEkgZG9uJ3Qgc2VlIGhvdyB5
b3VyIHN0cnVjdCBzb2x2ZXMgYW55IGlzc3VlIHRoYXQgaXMNCm5vdCBhbHJlYWR5IHNvbHZlZC4N
Cg0Kc3RhdGljIGNvbnN0IGNoYXIgKmRybV9jcnRjX2ZlbmNlX2dldF9kcml2ZXJfbmFtZShzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCnsNCglzdHJ1Y3QgZHJtX2NydGMgKmNydGMgPSBmZW5jZV90
b19jcnRjKGZlbmNlKTsNCg0KCXJldHVybiBjcnRjLT5kZXYtPmRyaXZlci0+bmFtZTsNCn0NCg0K
c3RhdGljIGNvbnN0IGNoYXIgKmRybV9jcnRjX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQ0Kew0KCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IGZlbmNlX3Rv
X2NydGMoZmVuY2UpOw0KDQoJcmV0dXJuIGNydGMtPnRpbWVsaW5lX25hbWU7DQp9DQoNCg0KVGhl
IGlzc3VlIGhlcmUgc2VlbXMgdG8gYmUgdGhhdCANCmEpIHRoZSBjcnRjIGlzIG1hZGUgaW52YWxp
ZCBpbiBkcm1fY3J0Y19jbGVhbnVwKCkgKG1lbXNldCgwKSkNCmIpIHRoZSBkcm1fZGV2IGNhbiBk
aXNhcHBlYXIgYWZ0ZXIgZHJtX2NydGNfY2xlYW51cCgpDQoNCkJvdGggaXNzdWVzIHN0ZW0gZnJv
bSB0aGUgZmFjdCB0aGF0IHRoZSBmZW5jZSBjYWxsYmFja3MgY2FuIGtlZXANCnJ1bm5pbmcgaW50
byB0aGUgZHJpdmVyLg0KDQpJdCBpcyB0cnVlIHRoYXQgdGhlIGZlbmNlLCBiZWluZyByZWZjb3Vu
dGVkLCBjYW4gc3RheSBhbGl2ZSwgYnV0IG5vbmUNCm9mIHRoZSBjYWxsYmFja3MgYmUgaW52b2tl
ZCBhbnltb3JlLCBhbmQgeW91ciBncmFjZSBwZXJpb2Qgd2FpdA0KZnVsbGZpbGwuDQoNCkl0IGlz
IGEgc3RyaWN0IGRtYV9mZW5jZSByZXF1aXJlbWVudCB0aGF0IGEgZmVuY2UgaXNzdWVyIC8gcHJv
ZHVjZXINCnNpZ25hbHMgYWxsIGl0cyBmZW5jZXMgYmVmb3JlIHVubG9hZC4NCg0KDQpUaGUgZW1i
ZWRkZWQgc3BpbmxvY2sgaXNzdWUgaXMgYSBzZXBhcmF0ZSBwcm9ibGVtLiBJIHRoaW5rIHRoYXQg
c2hvdWxkDQpub3Qgc3RhbGwgeW91ciB3b3JrIGhlcmUgYW5kIGNhbiBiZSBhZGRyZXNzZWQgaW4g
YSBzZXBhcmF0ZSBwYXRjaC4NCg0KTm90ZSB0aGF0IHRoZSBlbWJlZGRlZCBzcGlubG9jayBpc3N1
ZSBpcyBhIGtub3duIG9uZSwgYW5kIGl0IGlzIHZlcnkNCm11Y2ggcmVsYXRlZCB0byB0aGUgZmVu
Y2UtZGVjb3VwbGluZyB3b3JrIHJlbGF0ZWQgdG8gdGhlIG9wcyBwb2ludGVyDQp0aGF0IENocmlz
dGlhbiBoYXMgYmVlbiBjYXJyeWluZyBvdXQuIFNvIGl0IGNhbiBiZSBleHBlY3RlZCB0byBiZSBh
DQpwcm9ibGVtIGluIHdpZGUgcGFydHMgb2YgRFJNLg0KDQoNClJlZ2FyZHMNClAuDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
