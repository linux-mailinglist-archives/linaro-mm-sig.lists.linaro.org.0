Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DrYIT3IDmoHCQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:54:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 202F95A18E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:54:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2615540980
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 08:54:20 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 2AE443F751
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 08:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=Cg9EMLnb;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779353645;
	bh=Ra5BznzPov9L1SF1BCTSdVIKjQq8Jg4J1ZpWShdlICA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Cg9EMLnbG/dLQw3ZSs4pBQ4/TJS0E8wNAsAUaxtocDsfFofLSmtRX7DlGsWxn3zIm
	 F+I2vX323SJpJhf7ShqOAakvuGxlB2ppvIWRqvSOYvp5pviJ2bXQTIj9u8cZxbX86s
	 /TS6/LH8lfO3bYLwELhD45YNLcT6Go1yP7JKEDHfu9LVaLTQm1u7fI1+g87UUSuEeL
	 zPIkuStzlk8QHo81rcPH/ibBxPkWj4l5mACNYPZesmOmLvXlJJaFvkYLIGoGScC2aO
	 8uT5KdAQ1BS0hfSp/oTqf8fZ175ES4M2oYTDBbRzyEKcGsqg4g0EXEEYNvzqxqvTXA
	 U6olDb+51Kmnw==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 28DD317E125C;
	Thu, 21 May 2026 10:54:05 +0200 (CEST)
Date: Thu, 21 May 2026 10:54:02 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260521105402.4bc4b1e5@fedora>
In-Reply-To: <d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
	<03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
	<20260518111456.30ba9bba@fedora>
	<a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
	<20260518161531.331cab2d@fedora>
	<d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 7R624DBFQQEP3ZVA62GQH3WWQ3QF6333
X-Message-ID-Hash: 7R624DBFQQEP3ZVA62GQH3WWQ3QF6333
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7R624DBFQQEP3ZVA62GQH3WWQ3QF6333/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,collabora.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 202F95A18E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMSBNYXkgMjAyNiAxMDozNjo0NyArMDIwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiA1LzE4LzI2IDE2OjE1LCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6DQo+ID4gT24gTW9uLCAxOCBNYXkgMjAyNiAxNDoxODo0MSArMDIw
MA0KPiA+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6
DQo+ID4gICANCj4gPj4gT24gNS8xOC8yNiAxMToxNCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAg
DQo+ID4+PiBIaSBDaHJpc3RpYW4sDQo+ID4+Pg0KPiA+Pj4gT24gTW9uLCAxOCBNYXkgMjAyNiAw
OToxMDoyMyArMDIwMA0KPiA+Pj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiB3cm90ZToNCj4gPj4+ICAgICANCj4gPj4+PiBPbiA1LzEzLzI2IDE4OjU4LCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6ICAgIA0KPiA+Pj4+PiBXaGVuIHVzZWQgd2l0aG91dCBhIGNvbnRl
eHQsIGRtYV9yZXN2IGFyZSBubyBkaWZmZXJlbnQgZnJvbSByZWd1bGFyDQo+ID4+Pj4+IGxvY2tz
LiBEZWZpbmUgZ3VhcmRzIHNvIHdlIGNhbiB1c2UgdGhlIGd1YXJkLXN5bnRhY3RpYyBzdWdhcnMg
Zm9yDQo+ID4+Pj4+IGV4cGxpY2l0L2ltcGxpY2l0IHNjb3BlZCBsb2Nrcy4NCj4gPj4+Pj4NCj4g
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29s
bGFib3JhLmNvbT4gICAgICANCj4gPj4+Pg0KPiA+Pj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4+Pj4NCj4gPj4+PiBIb3cgZG8g
eW91IHdhbnQgdG8gdXBzdHJlYW0gaXQ/IE15IHByZWZlcmVuY2Ugd291bGQgYmUgZHJtLW1pc2Mt
bmV4dCwgYnV0IEkgdGhpbmsgSSBjYW4gbGl2ZSB3aXRoIGEgcGFudGhvciBzcGVjaWZpYyBicmFu
Y2ggYXMgd2VsbC4gICAgDQo+ID4+Pg0KPiA+Pj4gRXZlcnl0aGluZyBQYW50aG9yIHJlbGF0ZWQg
Z29lcyB0aHJvdWdoIGRybS1taXNjLW5leHQsIHNvIGRybS1taXNjLW5leHQNCj4gPj4+IGFsc28g
aGFzIG15IHByZWZlcmVuY2UgOy0pLiBCdXQgSSdkIGxpa2UgdG8gd2FpdCBmb3IgbW9yZSBmZWVk
YmFjayBvbg0KPiA+Pj4gdGhlIG90aGVyIGRybSBwYXRjaGVzLCBhbmQgdGhlcmUgYXJlIGEgZmV3
IHRoaW5ncyBJIG5lZWQgdG8gYWRkcmVzcyBpbg0KPiA+Pj4gdGhlIHBhbnRob3IgcGF0Y2hlcyBh
bnl3YXksIHNvIGl0J3MgbGlrZWx5IHRvIHRha2UgYSBjb3VwbGUgbW9yZSB3ZWVrcw0KPiA+Pj4g
Zm9yIHRoaXMgc2VyaWVzIHRvIGhpdCB0aGUgZHJtLW1pc2MgdHJlZSwgdW5sZXNzIHlvdSBoYXZl
IGEgZ29vZCByZWFzb24NCj4gPj4+IHRvIGZhc3QtdHJhY2sgdGhpcyBzcGVjaWZpYyBwYXRjaC4g
ICAgDQo+ID4+DQo+ID4+IFdlbGwgdGhlIERNQS1idWYgY29kZSBpdHNlbGYgdXNlcyBkbWFfcmVz
dl9sb2NrL3VubG9jayAgDQo+ID4gDQo+ID4gVGhlcmUncyBubyB1c2UgaW4gZG1hLXJlc3YuYyB0
aGF0IGNhbiBiZSBjb252ZXJ0ZWQgdG8gZ3VhcmRzLiBJIGdhdmUNCj4gPiBkbWEtYnVmLmMgYSB0
cnksIGJ1dCBqdXN0IGxpa2UgZm9yIHBhbnRob3IsIEkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhlIGZh
Y3QNCj4gPiBpdCdzIGhhbGZ3YXkgdGhyb3VnaCAob3RoZXIgbG9ja3Mgc3RpbGwgdXNlIG1hbnVh
bCBsb2NraW5nKSwgc28gSSdkIGJlDQo+ID4gdGVtcHRlZCB0byBjb252ZXJ0IGV2ZXJ5dGhpbmcg
YXQgb25jZSBmb3IgY29uc2lzdGVuY3kuIElmIHlvdSdyZSBmaW5lDQo+ID4gd2l0aCB0aGF0LCBJ
IGNhbiBnaXZlIHRoaXMgYSB0cnkuICANCj4gDQo+IFdlbGwgZGVwZW5kcyBvbiB3aGF0IGV2ZXJ5
dGhpbmcgbWVhbnMuIEkgd291bGQgb25seSBjb252ZXJ0IGRtYS1idWYuYyBpbiBvbmUgcGF0Y2gg
YW5kIG5vdGhpbmcgZWxzZS4NCg0KQnkgZXZlcnl0aGluZyBJIG1lYW4gYWxsIHR5cGUgb2YgbG9j
a3MsIG5vdCBqdXN0IGRtYV9yZXN2IG9uZXMuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
