Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IJxIDIE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 337F7411328
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45DC04105C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id 3AF703F900
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 13:42:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=SpTXb8Gr;
	spf=pass (lists.linaro.org: domain of karol.wachowski@linux.intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=karol.wachowski@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1765546956; x=1797082956;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=DVad8Eg0HmNrzuHWvrIMlG/z/3SGSTg05iCBpqXLZv8=;
  b=SpTXb8Gru24t6iKVOdm99cUbcjAMdIAYyOHG7uF0oBSNl8TtevUfY/3i
   usy6ko6UqXBmsOtzXykAXpaw24cGxgXcsGFubjc5VhpUw3MjWY1dsAM2a
   V7w/r1KWyRemXX2aoTTDDEDuwjlO6M25eO3XYlr+Yf1r1jGAHxea9rsBl
   493yZwAS+iK0DvnjciZmkMttTWMpNIyNPzU8Ddqhq7KJBWjDZS8YERl//
   ZRN7Hh224dKAzQ06JJHry/P5XyGAjuGH1aqqjpInNzckdytUR0klG9WWw
   Pyex+Onrb0+4OmMmDCfOQG42bIRDutIPoBfv+MmvSVS31tP0qJiKixL4r
   A==;
X-CSE-ConnectionGUID: DTT+YVN8R46XmoYoQZVMjw==
X-CSE-MsgGUID: ge/ee5i3TsSlW+0qH1NGug==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="79006082"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="79006082"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:42:35 -0800
X-CSE-ConnectionGUID: t0+c7T9BT5C2EjpN2VFAww==
X-CSE-MsgGUID: B6UiDZahQAyXM+lcrFX8hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="197581074"
Received: from kwachows-mobl.ger.corp.intel.com (HELO [10.94.253.106]) ([10.94.253.106])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:42:32 -0800
Message-ID: <bfb21cc8-3b11-435b-93a7-3215333d946e@linux.intel.com>
Date: Fri, 12 Dec 2025 14:42:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David.Francis@amd.com
References: <20251212132052.474096-1-karol.wachowski@linux.intel.com>
 <ce82901a-1c65-4aaa-a092-7b67b81253d5@amd.com>
Content-Language: en-US
From: Karol Wachowski <karol.wachowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ce82901a-1c65-4aaa-a092-7b67b81253d5@amd.com>
X-Spamd-Bar: -------
X-MailFrom: karol.wachowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4QFN5FLKANPDTHQCI6X4LIUYXXFJHIIZ
X-Message-ID-Hash: 4QFN5FLKANPDTHQCI6X4LIUYXXFJHIIZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:51 +0000
CC: felix.kuehling@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, andrzej.kacprowski@linux.intel.com, maciej.falkowski@linux.intel.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm: Fix object leak in DRM_IOCTL_GEM_CHANGE_HANDLE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4QFN5FLKANPDTHQCI6X4LIUYXXFJHIIZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[3002];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	FROM_NEQ_ENVFROM(0.00)[karol.wachowski@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 337F7411328
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTIvMTIvMjAyNSAyOjI4IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMi8x
Mi8yNSAxNDoyMCwgS2Fyb2wgV2FjaG93c2tpIHdyb3RlOg0KPj4gQWRkIG1pc3NpbmcgZHJtX2dl
bV9vYmplY3RfcHV0KCkgY2FsbCB3aGVuIGRybV9nZW1fb2JqZWN0X2xvb2t1cCgpDQo+PiBzdWNj
ZXNzZnVsbHkgcmV0dXJucyBhbiBvYmplY3QuIFRoaXMgZml4ZXMgYSBHRU0gb2JqZWN0IHJlZmVy
ZW5jZQ0KPj4gbGVhayB0aGF0IGNhbiBwcmV2ZW50IGRyaXZlciBtb2R1bGVzIGZyb20gdW5sb2Fk
aW5nIHdoZW4gdXNpbmcNCj4+IHByaW1lIGJ1ZmZlcnMuDQo+Pg0KPj4gRml4ZXM6IDUzMDk2NzI4
Yjg5MSAoImRybTogQWRkIERSTSBwcmltZSBpbnRlcmZhY2UgdG8gcmVhc3NpZ24gR0VNIGhhbmRs
ZSIpDQo+PiBTaWduZWQtb2ZmLWJ5OiBLYXJvbCBXYWNob3dza2kgPGthcm9sLndhY2hvd3NraUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPj4gLS0tDQo+PiBDaGFuZ2VzIGJldHdlZW4gdjEgYW5kIHYy
Og0KPj4gIC0gbW92ZSBzZXR0aW5nIHJldCB2YWx1ZSB1bmRlciBpZiBicmFuY2ggYXMgc3VnZ2Vz
dGVkIGluIHJldmlldw0KPj4gIC0gYWRkIENjOiBzdGFibGUgNi4xOCsNCj4gDQo+IE9oIGRvbid0
IENDIHRoZSBzdGFibGUgbGlzdCBvbiB0aGUgcmV2aWV3IG1haWwgZGlyZWN0bHksIGp1c3QgYWRk
ICJDQzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIDYuMTgrIiB0byB0aGUgdGFncy4gR3JlZyBp
cyBnb2luZyB0byBjb21wbGFpbiBhYm91dCB0aGF0IDooDQoNCk9vcHMsIHNvcnJ5IGFib3V0IHRo
YXQuIEkndmUganVzdCBzZW50IFYzIHdpdGggKGhvcGVmdWxseSkgY29ycmVjdGx5IHNldA0KQ2M6
IHRhZyB0aGlzIHRpbWUuDQoNCj4gV2l0aCB0aGF0IGRvbmUgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gYW5kIHBsZWFzZSBwdXNoIHRvIGRy
bS1taXNjLWZpeGVzLg0KPiANCj4gSWYgeW91IGRvbid0IGhhdmUgY29tbWl0IHJpZ2h0cyBmb3Ig
ZHJtLW1pc2MtZml4ZXMgcGxlYXNlIHBpbmcgbWUgYW5kIEknbSBnb2luZyB0byBwdXNoIHRoYXQu
DQo+IA0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4gDQo+PiAtLS0NCj4+ICBkcml2ZXJzL2dw
dS9kcm0vZHJtX2dlbS5jIHwgOCArKysrKystLQ0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+PiBpbmRleCBjYTE5
NTY2MDgyNjEuLmJjYzA4YTZhZWJmOCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4+IEBAIC0xMDEw
LDggKzEwMTAsMTAgQEAgaW50IGRybV9nZW1fY2hhbmdlX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPj4gIAlpZiAoIW9iaikNCj4+ICAJCXJldHVybiAt
RU5PRU5UOw0KPj4gIA0KPj4gLQlpZiAoYXJncy0+aGFuZGxlID09IGFyZ3MtPm5ld19oYW5kbGUp
DQo+PiAtCQlyZXR1cm4gMDsNCj4+ICsJaWYgKGFyZ3MtPmhhbmRsZSA9PSBhcmdzLT5uZXdfaGFu
ZGxlKSB7DQo+PiArCQlyZXQgPSAwOw0KPj4gKwkJZ290byBvdXQ7DQo+PiArCX0NCj4+ICANCj4+
ICAJbXV0ZXhfbG9jaygmZmlsZV9wcml2LT5wcmltZS5sb2NrKTsNCj4+ICANCj4+IEBAIC0xMDQz
LDYgKzEwNDUsOCBAQCBpbnQgZHJtX2dlbV9jaGFuZ2VfaGFuZGxlX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+PiAgDQo+PiAgb3V0X3VubG9jazoNCj4+ICAJbXV0
ZXhfdW5sb2NrKCZmaWxlX3ByaXYtPnByaW1lLmxvY2spOw0KPj4gK291dDoNCj4+ICsJZHJtX2dl
bV9vYmplY3RfcHV0KG9iaik7DQo+PiAgDQo+PiAgCXJldHVybiByZXQ7DQo+PiAgfQ0KPiANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
