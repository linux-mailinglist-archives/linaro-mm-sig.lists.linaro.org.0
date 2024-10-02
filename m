Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3498CF48
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Oct 2024 10:54:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B33E4490F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Oct 2024 08:54:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id B460544037
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Oct 2024 08:54:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F2AB367;
	Wed,  2 Oct 2024 01:54:47 -0700 (PDT)
Received: from [10.57.64.205] (unknown [10.57.64.205])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A7E5B3F64C;
	Wed,  2 Oct 2024 01:54:14 -0700 (PDT)
Message-ID: <974cf95e-38fe-4949-ba63-b1513ce8abb5@arm.com>
Date: Wed, 2 Oct 2024 09:54:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>
References: <20240923230912.2207320-1-adrian.larumbe@collabora.com>
 <20240923230912.2207320-2-adrian.larumbe@collabora.com>
 <20241002103809.26d34ee0@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20241002103809.26d34ee0@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B460544037
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: QIZ4LII4KRP2M64HNFLRVXMAGYHY3LWU
X-Message-ID-Hash: QIZ4LII4KRP2M64HNFLRVXMAGYHY3LWU
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 1/5] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIZ4LII4KRP2M64HNFLRVXMAGYHY3LWU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDIvMTAvMjAyNCAwOTozOCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBUdWUsIDI0
IFNlcCAyMDI0IDAwOjA2OjIxICswMTAwDQo+IEFkcmnDoW4gTGFydW1iZSA8YWRyaWFuLmxhcnVt
YmVAY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+IA0KPj4gK3N0YXRpYyB1MzIgY2FsY19wcm9maWxp
bmdfcmluZ2J1Zl9udW1fc2xvdHMoc3RydWN0IHBhbnRob3JfZGV2aWNlICpwdGRldiwNCj4+ICsJ
CQkJICAgICAgIHUzMiBjc19yaW5nYnVmX3NpemUpDQo+PiArew0KPj4gKwl1MzIgbWluX3Byb2Zp
bGVkX2pvYl9pbnN0cnMgPSBVMzJfTUFYOw0KPj4gKwl1MzIgbGFzdF9mbGFnID0gZmxzKFBBTlRI
T1JfREVWSUNFX1BST0ZJTElOR19BTEwpOw0KPj4gKw0KPj4gKwkvKg0KPj4gKwkgKiBXZSB3YW50
IHRvIGNhbGN1bGF0ZSB0aGUgbWluaW11bSBzaXplIG9mIGEgcHJvZmlsZWQgam9iJ3MgQ1MsDQo+
PiArCSAqIGJlY2F1c2Ugc2luY2UgdGhleSBuZWVkIGFkZGl0aW9uYWwgaW5zdHJ1Y3Rpb25zIGZv
ciB0aGUgc2FtcGxpbmcNCj4+ICsJICogb2YgcGVyZm9ybWFuY2UgbWV0cmljcywgdGhleSBtaWdo
dCB0YWtlIHVwIGZ1cnRoZXIgc2xvdHMgaW4NCj4+ICsJICogdGhlIHF1ZXVlJ3MgcmluZ2J1ZmZl
ci4gVGhpcyBtZWFucyB3ZSBtaWdodCBub3QgbmVlZCBhcyBtYW55IGpvYg0KPj4gKwkgKiBzbG90
cyBmb3Iga2VlcGluZyB0cmFjayBvZiB0aGVpciBwcm9maWxpbmcgaW5mb3JtYXRpb24uIFdoYXQg
d2UNCj4+ICsJICogbmVlZCBpcyB0aGUgbWF4aW11bSBudW1iZXIgb2Ygc2xvdHMgd2Ugc2hvdWxk
IGFsbG9jYXRlIHRvIHRoaXMgZW5kLA0KPj4gKwkgKiB3aGljaCBtYXRjaGVzIHRoZSBtYXhpbXVt
IG51bWJlciBvZiBwcm9maWxlZCBqb2JzIHdlIGNhbiBwbGFjZQ0KPj4gKwkgKiBzaW11bHRhbmVv
dXNseSBpbiB0aGUgcXVldWUncyByaW5nIGJ1ZmZlci4NCj4+ICsJICogVGhhdCBoYXMgdG8gYmUg
Y2FsY3VsYXRlZCBzZXBhcmF0ZWx5IGZvciBldmVyeSBzaW5nbGUgam9iIHByb2ZpbGluZw0KPj4g
KwkgKiBmbGFnLCBidXQgbm90IGluIHRoZSBjYXNlIGpvYiBwcm9maWxpbmcgaXMgZGlzYWJsZWQs
IHNpbmNlIHVucHJvZmlsZWQNCj4+ICsJICogam9icyBkb24ndCBuZWVkIHRvIGtlZXAgdHJhY2sg
b2YgdGhpcyBhdCBhbGwuDQo+PiArCSAqLw0KPj4gKwlmb3IgKHUzMiBpID0gMDsgaSA8IGxhc3Rf
ZmxhZzsgaSsrKSB7DQo+PiArCQlpZiAoQklUKGkpICYgUEFOVEhPUl9ERVZJQ0VfUFJPRklMSU5H
X0FMTCkNCj4gDQo+IEknbGwgZ2V0IHJpZCBvZiB0aGlzIGNoZWNrIHdoZW4gYXBwbHlpbmcsIGFz
IHN1Z2dlc3RlZCBieSBTdGV2ZS4gU3RldmUsDQo+IHdpdGggdGhpcyBtb2RpZmljYXRpb24gZG8g
eW91IHdhbnQgbWUgdG8gYWRkIHlvdXIgUi1iPw0KDQpZZXMsIHBsZWFzZSBkby4NCg0KVGhhbmtz
LA0KU3RldmUNCg0KPiBCVFcsIEkndmUgYWxzbyBmaXhlZCBhIGJ1bmNoIG9mIGNoZWNrcGF0Y2gg
ZXJyb3JzL3dhcm5pbmdzLCBzbyB5b3UNCj4gbWlnaHQgd2FudCB0byBydW4gY2hlY2twYXRjaCAt
LXN0cmljdCBuZXh0IHRpbWUuDQo+IA0KPj4gKwkJCW1pbl9wcm9maWxlZF9qb2JfaW5zdHJzID0N
Cj4+ICsJCQkJbWluKG1pbl9wcm9maWxlZF9qb2JfaW5zdHJzLCBjYWxjX2pvYl9jcmVkaXRzKEJJ
VChpKSkpOw0KPj4gKwl9DQo+PiArDQo+PiArCXJldHVybiBESVZfUk9VTkRfVVAoY3NfcmluZ2J1
Zl9zaXplLCBtaW5fcHJvZmlsZWRfam9iX2luc3RycyAqIHNpemVvZih1NjQpKTsNCj4+ICt9DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
