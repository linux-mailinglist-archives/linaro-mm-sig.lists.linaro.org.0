Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC07B28682
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Aug 2025 21:40:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0DF745D9D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Aug 2025 19:40:40 +0000 (UTC)
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	by lists.linaro.org (Postfix) with ESMTPS id CEF5944423
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Aug 2025 19:40:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=WrPu03M4;
	spf=pass (lists.linaro.org: domain of afd@ti.com designates 198.47.23.235 as permitted sender) smtp.mailfrom=afd@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57FJeHx32669592;
	Fri, 15 Aug 2025 14:40:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755286817;
	bh=LfyjrME+xUKDBHxkGHQrFTfPrNu4/XhTDGMxhaMKngg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WrPu03M4QFirNu0si7nztZ4btKN3s2k4VEqyW6v2n8DfX/v5NQQYzlsMh+wHyVqun
	 kcDWHrU60AMRZpdD2yCxi1a9geof6v7VSzkaMv1lvBjXNcFOLcv1qQzeW6JQ5lrYU2
	 dEplDBLww9wpcixVmqELUJN7Kj4ZldOp6Em1TQsU=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57FJeH4t2806871
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 15 Aug 2025 14:40:17 -0500
Received: from DLEE207.ent.ti.com (157.170.170.95) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 15
 Aug 2025 14:40:17 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.1748.24; Fri, 15 Aug
 2025 14:40:16 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 15 Aug 2025 14:40:16 -0500
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57FJeG811752389;
	Fri, 15 Aug 2025 14:40:16 -0500
Message-ID: <008f6004-dcf0-42e8-b2df-f97c0ee5ba66@ti.com>
Date: Fri, 15 Aug 2025 14:40:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Gerd Hoffmann
	<kraxel@redhat.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Paul Cercueil
	<paul@crapouillou.net>,
        Vivek Kasireddy <vivek.kasireddy@intel.com>,
        "Daniel
 Vetter" <daniel@ffwll.ch>
References: <20250814161049.678672-1-afd@ti.com>
 <0b963b02-dec0-4bf5-aea9-dbe3050716ee@amd.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <0b963b02-dec0-4bf5-aea9-dbe3050716ee@amd.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+ip4:198.47.23.224/27];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:161, ipnet:198.47.23.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CEF5944423
X-Spamd-Bar: ---
Message-ID-Hash: Z42UZOK6VIHGLEGTSIO6JJYP3MN7IMP2
X-Message-ID-Hash: Z42UZOK6VIHGLEGTSIO6JJYP3MN7IMP2
X-MailFrom: afd@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] udmabuf: Sync to attached devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z42UZOK6VIHGLEGTSIO6JJYP3MN7IMP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gOC8xNS8yNSA0OjQxIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxNC4wOC4y
NSAxODoxMCwgQW5kcmV3IERhdmlzIHdyb3RlOg0KPj4gSGVsbG8gYWxsLA0KPj4NCj4+IFRoaXMg
c2VyaWVzIG1ha2VzIGl0IHNvIHRoZSB1ZG1hYnVmIHdpbGwgc3luYyB0aGUgYmFja2luZyBidWZm
ZXINCj4+IHdpdGggdGhlIHNldCBvZiBhdHRhY2hlZCBkZXZpY2VzIGFzIHJlcXVpcmVkIGZvciBE
TUEtQlVGcyB3aGVuDQo+PiBkb2luZyB7YmVnaW4sZW5kfV9jcHVfYWNjZXNzLg0KPiANCj4gWWVh
aCB0aGUgcmVhc29uIHdoeSB3ZSBkaWRuJ3QgZG8gdGhhdCBpcyB0aGF0IHRoaXMgZG9lc24ndCBl
dmVuIHdvcmsgMTAwJSByZWxpYWJsZSBpbiB0aGVvcnkuIFNvIHRoaXMgcGF0Y2hzZXQgaGVyZSBt
aWdodCBtYWtlIHlvdXIgdXNlIGNhc2Ugd29yayBidXQgaXMgYSBiaXQgcXVlc3Rpb25hYmxlIGlu
IGdlbmVyYWwuDQo+IA0KPiB1ZG1hYnVmIGlzIGFib3V0IHR1cm5pbmcgYSBmaWxlIGRlc2NyaXB0
b3IgY3JlYXRlZCBieSBtZW1mZF9jcmVhdGUoKSBpbnRvIGEgRE1BLWJ1Zi4gTWFwcGluZyB0aGF0
IG1lbW9yeSBjYW4gaGFwcGVuIHRocm91Z2ggdGhlIG1lbWZkIGFzIHdlbGwgYW5kIHNvIGl0IGlz
IHBlcmZlY3RseSB2YWxpZCB0byBza2lwIHRoZSBETUEtYnVmIGJlZ2luX2FjY2VzcyBhbmQgZW5k
X2FjY2VzcyBjYWxsYmFja3MuDQo+IA0KDQpJZiBzb21lb25lIG1hcHMgdGhlIG1lbW9yeSBiYWNr
ZWQgYnkgdGhlIERNQS1idWYgb3V0c2lkZSBvZiB0aGUgRE1BLUFQSXMgdGhlbiB3ZSBjYW5ub3Qg
cmVhbGx5DQpjb250cm9sIHRoYXQsIGJ1dCBpbiB0aGlzIGNhc2UgaWYgdGhleSBkbyBtYXAgd2l0
aCB0aGUgRE1BLUFQSSB0aGVuIGl0IGlzICpub3QqIHZhbGlkIHRvIHNraXANCnRoZXNlIGJlZ2lu
X2FjY2VzcyBhbmQgZW5kX2FjY2VzcyBjYWxsYmFja3MuIEFuZCB0aGF0IGlzIHRoZSBjYXNlIEkg
YW0gYWRkcmVzc2luZyBoZXJlLg0KDQpSaWdodCBub3cgd2UgYXJlIG5vdCBzeW5jaW5nIHRoZSBt
YXBwaW5nIGZvciBhbnkgYXR0YWNoZWQgZGV2aWNlLCB3ZSBqdXN0IHphcCBpdCBmcm9tDQp0aGUg
Q1BVIGNhY2hlcyB1c2luZyBzb21lIGhhY2t5IGxvb3BiYWNrIGFuZCBob3BlIHRoYXQgaXMgZW5v
dWdoIGZvciB0aGUgZGV2aWNlcyA6Lw0KDQo+IEFkZGl0aW9uYWwgdG8gdGhhdCB3aGVuIENPTkZJ
R19ETUFCVUZfREVCVUcgaXMgZW5hYmxlZCB0aGUgRE1BLWJ1ZiBjb2RlIG1hbmdsZXMgdGhlIHBh
Z2UgYWRkcmVzc2VzIGluIHRoZSBzZyB0YWJsZSB0byBwcmV2ZW50IGltcG9ydGVycyBmcm9tIGFi
dXNpbmcgaXQuIFRoYXQgbWFrZXMgZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KCkgYW5kIGRtYV9z
eW5jX3NndGFibGVfZm9yX2RldmljZSgpIG9uIHRoZSBleHBvcnRlciBzaWRlIGNyYXNoLg0KPiAN
Cg0KSSB3YXMgbm90IGF3YXJlIG9mIHRoaXMgbWFuZ2xlX3NnX3RhYmxlKCkgaGFjaywgbXVzdCBo
YXZlIGJlZW4gYWRkZWQgd2hpbGUgSSB3YXMgbm90IGxvb2tpbmcgOikNCg0KU2VlbXMgdmVyeSBi
cm9rZW4gVEJILCB0YWtpbmcgYSBxdWljayBsb29rLCBJIHNlZSBvbiB0aGlzIGxpbmVbMF0geW91
IGNhbGwgaXQsIHRoZW4NCmp1c3QgYSBjb3VwbGUgbGluZXMgbGF0ZXIgeW91IHVzZSB0aGF0IHNh
bWUgbWFuZ2xlZCBwYWdlX2xpbmsgdG8gd2FsayB0aGUgU0cgdGFibGVbMV0uLg0KDQpJZiBhbnlv
bmUgZW5hYmxlcyBETUFfQVBJX0RFQlVHIGFuZCB0cmllZCB0byBhdHRhY2gvbWFwIGEgbm9uLWNv
bnRpZ3VvdXMgRE1BLUJVRiB3aXRoDQphIGNoYWluZWQgc2cgSSBkb24ndCBzZWUgaG93IHRoYXQg
ZG9lc24ndCBjcmFzaCBvdXQuDQoNCj4gVGhhdCdzIHRoZSByZWFzb24gd2h5IERNQS1idWYgaGVh
cHMgdXNlcyBhIGNvcHkgb2YgdGhlIHNnIHRhYmxlIGZvciBjYWxsaW5nIGRtYV9zeW5jX3NndGFi
bGVfZm9yX2NwdSgpL2RtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZSgpLg0KPiANCg0KQ291bGQg
eW91IHBvaW50IG1lIHRvIHdoZXJlIEhlYXBzIHVzZXMgYSBjb3B5IG9mIHRoZSBTRyB0YWJsZT8g
SSBzZWUgaXQgdXNpbmcgdGhlDQpleGFjdCBzYW1lIFNHIHRhYmxlIGZvciBkbWFfc3luY19zZ3Rh
YmxlX2Zvcl8qKCkgdGhhdCB3ZSBjcmVhdGVkIHdoZW4gbWFwcGluZyB0aGUNCmRldmljZSBhdHRh
Y2htZW50cy4NCg0KVGhhbmtzLA0KQW5kcmV3DQoNClswXSBodHRwczovL2dpdGh1Yi5jb20vdG9y
dmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyNMMTE0Mg0K
WzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jI0wxMTUxDQoNCj4gSXQncyBiYXNpY2FsbHkgYSBoYWNrIGFuZCBz
aG91bGQgYmUgcmVtb3ZlZCwgYnV0IGZvciB0aGlzIHdlIG5lZWQgdG8gY2hhbmdlIGFsbCBjbGll
bnRzIHdoaWNoIGlzIHRvbnMgb2Ygd29yay4NCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4N
Cj4gDQo+Pg0KPj4gVGhhbmtzDQo+PiBBbmRyZXcNCj4+DQo+PiBDaGFuZ2VzIGZvciB2MjoNCj4+
ICAgLSBmaXggYXR0YWNobWVudCB0YWJsZSB1c2UtYWZ0ZXItZnJlZQ0KPj4gICAtIHJlYmFzZWQg
b24gdjYuMTctcmMxDQo+Pg0KPj4gQW5kcmV3IERhdmlzICgzKToNCj4+ICAgIHVkbWFidWY6IEtl
ZXAgdHJhY2sgY3VycmVudCBkZXZpY2UgbWFwcGluZ3MNCj4+ICAgIHVkbWFidWY6IFN5bmMgYnVm
ZmVyIG1hcHBpbmdzIGZvciBhdHRhY2hlZCBkZXZpY2VzDQo+PiAgICB1ZG1hYnVmOiBVc2UgbW9k
dWxlX21pc2NfZGV2aWNlKCkgdG8gcmVnaXN0ZXIgdGhpcyBkZXZpY2UNCj4+DQo+PiAgIGRyaXZl
cnMvZG1hLWJ1Zi91ZG1hYnVmLmMgfCAxMzMgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDY3IGluc2VydGlvbnMoKyksIDY2IGRlbGV0
aW9ucygtKQ0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
