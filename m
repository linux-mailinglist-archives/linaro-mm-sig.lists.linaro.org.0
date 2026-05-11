Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG5rOeNgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 513285324D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E6443F82F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 9FA143F726
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 09:04:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=NTGQztaf;
	spf=pass (lists.linaro.org: domain of karol.wachowski@linux.intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=karol.wachowski@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778490268; x=1810026268;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=1hHtE+qiixejcQON712uNfesppDbsdiUfLRUqiVc6aI=;
  b=NTGQztafJFJg6Xs9i9+pSkxX4k3aFYEGr/0yXk9/BBgBTBPenkKrjvdT
   G46ar7oIEVh1H3d2UmIBk8I58HJu7HkI/siehTfkWWAJdn83w496cJhb7
   QfbxxoF6df45kfQs0sAgdAFJFirI3vKYyrSh8IyPSFxe03n8MHInrcGV8
   ZoPcQCmy74/ik2Iw8gh0m8ISDF5pBKWFXTRosqIvbfux306HyDNz1tffd
   QjK+VDwCPfNY1JUZ6wS1Gu7u87xIfQWQHPbrs6IZxaj15ih9vhXT/+hUb
   ykLfQM1smcl61yqXtVOm5ZBMkglhuLj2TE3BY6UxQFh5IbCDjvXRknmgr
   g==;
X-CSE-ConnectionGUID: pWPzdVu7Q2C+fDwHdFf/9w==
X-CSE-MsgGUID: IQEBYWvPRoWoPwQMOkrUdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="89676597"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000";
   d="scan'208";a="89676597"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2026 02:04:27 -0700
X-CSE-ConnectionGUID: 1jP2xWNfQPCQ5XZKIGqUtg==
X-CSE-MsgGUID: U9GJ5rlqTfOIW8tFirLliw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000";
   d="scan'208";a="241372324"
Received: from unknown (HELO [10.102.88.33]) ([10.102.88.33])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2026 02:04:23 -0700
Message-ID: <0097f608-dbac-482d-9851-ce306b0c7b78@linux.intel.com>
Date: Mon, 11 May 2026 11:04:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ziyi Guo <guoziyi114@gmail.com>, maciej.falkowski@linux.intel.com,
 jacek.lawrynowicz@linux.intel.com
References: <20260508162856.1131843-1-n7l8m4@u.northwestern.edu>
 <14b62cee-c46e-4fb9-91ab-aa09c0962834@amd.com>
Content-Language: en-US
From: Karol Wachowski <karol.wachowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <14b62cee-c46e-4fb9-91ab-aa09c0962834@amd.com>
X-Spamd-Bar: ---
X-MailFrom: karol.wachowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P63YYNGUVJEEVGHEKBMIMMH3VXEIF3Z7
X-Message-ID-Hash: P63YYNGUVJEEVGHEKBMIMMH3VXEIF3Z7
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: ogabbay@kernel.org, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Ziyi Guo <n7l8m4@u.northwestern.edu>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] accel/ivpu: Reject PRIME export of userptr BOs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P63YYNGUVJEEVGHEKBMIMMH3VXEIF3Z7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 513285324D2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.49 / 15.00];
	SEM_URIBL(3.50)[northwestern.edu:email];
	DATE_IN_PAST(1.00)[50];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,linux.intel.com];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.935];
	FROM_NEQ_ENVFROM(0.00)[karol.wachowski@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	R_SPF_ALLOW(0.00)[+mx:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,linux.intel.com:mid]
X-Rspamd-Action: no action

T24gNS8xMS8yMDI2IDk6MzkgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEhpIFppdmks
DQo+IA0KPiBPbiA1LzgvMjYgMTg6MjgsIFppeWkgR3VvIHdyb3RlOg0KPj4gICBVc2VycHRyIEJP
cyB3cmFwIHBpbm5lZCB1c2VyIHBhZ2VzIGluIGEgcHJpdmF0ZSBkbWEtYnVmIHNvbGVseSBmb3IN
Cj4+ICAgaW50ZXJuYWwgdXNlIGJ5IHRoZSBOUFUgZHJpdmVyLiBBbGxvd2luZyB1c2Vyc3BhY2Ug
dG8gcmUtZXhwb3J0IHN1Y2ggYQ0KPj4gICBCTyB2aWEgRFJNX0lPQ1RMX1BSSU1FX0hBTkRMRV9U
T19GRCB3b3VsZCBleHBvc2UgdGhvc2UgcGFnZXMgdG8gb3RoZXINCj4+ICAgZHJpdmVycyB0aHJv
dWdoIGFuIGludGVyZmFjZSB0aGF0IHdhcyBuZXZlciBpbnRlbmRlZCB0byBiZSBzaGFyZWQuDQo+
Pg0KPj4gICBPdmVycmlkZSB0aGUgZHJpdmVyJ3MgcHJpbWVfaGFuZGxlX3RvX2ZkIGNhbGxiYWNr
IHRvIGRldGVjdCBkbWEtYnVmcw0KPj4gICBiYWNrZWQgYnkgaXZwdV9nZW1fdXNlcnB0cl9kbWFi
dWZfb3BzIGFuZCByZWplY3QgdGhlIGV4cG9ydCB3aXRoDQo+PiAgIC1FSU5WQUwuDQo+Pg0KPj4g
U2lnbmVkLW9mZi1ieTogWml5aSBHdW8gPG43bDhtNEB1Lm5vcnRod2VzdGVybi5lZHU+DQo+IA0K
DQpIaSBDaHJpc3RpYW4NCg0KPiBmaXJzdCBvZiBhbGwgdGhhbmtzIGEgbG90IGZvciBwb2ludGlu
ZyB0aGF0IG91dCEgVGhlIHBhdGNoIHdoaWNoIG9yZ2luYWxseSBhZGRlZCB0aGF0IHNvbWVob3cg
c2xpcHBlZCB0aHJvdWdoIHRoZSBjcmFja3MuDQo+IA0KPiBUaGVuIEBLYXJvbCBhbmQgQEphY2Vr
LCB1c2luZyBETUEtYnVmIGxpa2UgdGhhdCBpcyBhIHByZXR0eSBiaWcgTk8tR08gZnJvbSB0aGUg
RE1BLWJ1ZiBzaWRlIQ0KPiANCj4gVXNpbmcgcGFnZSB3aGljaCB5b3UgZG9uJ3Qgb3duIChlc3Bl
Y2lhbGx5IGZpbGUgc3lzdGVtIGJhY2tlbmQgb25lcykgaW4gYSBETUEtYnVmIGlzIGFic29sdXRl
bHkgKk5PVCogc29tZXRoaW5nIHlvdSBjYW4gZG8uDQo+IA0KPiBJIGhvcGUgdGhhdCBpdCBpcyBu
b3QgdGhlIGNhc2UgaGVyZSwgYnV0IGlmIHlvdSBhbHNvIGFsbG93IHRvIG1tYXAoKSB0aGVtIHRo
ZW4geW91IGhhdmUgY3JlYXRlIGEgbWFzc2l2ZSBzZWN1cml0eSBwcm9ibGVtIHdoaWNoIGNhbiBs
ZWFkIHRvIHJhbmRvbSBmaWxlIHN5c3RlbSBjb3JydXB0aW9ucy4NCg0KVGhpcyBpcyBub3QgYWxs
b3dlZCwgaXZwdSB1c2VycG9pbnRlciBkbWFfYnVmX29wcyBoYXZlIG5vIC5tbWFwIGhhbmRsZXIs
DQp0aGlzIHJlc3VsdHMgaW4gLUVJTlZBTCB3aGVuIGludm9rZWQuDQoNClJlZ2FyZHMsDQpLYXJv
bA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0KPj4gLS0tDQo+PiAgZHJpdmVy
cy9hY2NlbC9pdnB1L2l2cHVfZHJ2LmMgICAgICAgICB8ICAxICsNCj4+ICBkcml2ZXJzL2FjY2Vs
L2l2cHUvaXZwdV9nZW0uYyAgICAgICAgIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+PiAgZHJpdmVycy9hY2NlbC9pdnB1L2l2cHVfZ2VtLmggICAgICAgICB8ICAzICsrKw0KPj4g
IGRyaXZlcnMvYWNjZWwvaXZwdS9pdnB1X2dlbV91c2VycHRyLmMgfCAgNSArKysrKw0KPj4gIDQg
ZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2FjY2VsL2l2cHUvaXZwdV9kcnYuYyBiL2RyaXZlcnMvYWNjZWwvaXZwdS9pdnB1X2Rydi5j
DQo+PiBpbmRleCAyODAxMzc4ZTNlMTkuLjA4NmQ0Yzc2OWIzMyAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvYWNjZWwvaXZwdS9pdnB1X2Rydi5jDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL2l2cHUv
aXZwdV9kcnYuYw0KPj4gQEAgLTU0NSw2ICs1NDUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9kcml2ZXIgZHJpdmVyID0gew0KPj4NCj4+ICAgICAgICAgLmdlbV9jcmVhdGVfb2JqZWN0ID0g
aXZwdV9nZW1fY3JlYXRlX29iamVjdCwNCj4+ICAgICAgICAgLmdlbV9wcmltZV9pbXBvcnQgPSBp
dnB1X2dlbV9wcmltZV9pbXBvcnQsDQo+PiArICAgICAgIC5wcmltZV9oYW5kbGVfdG9fZmQgPSBp
dnB1X2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsDQo+Pg0KPj4gICAgICAgICAuaW9jdGxzID0gaXZw
dV9kcm1faW9jdGxzLA0KPj4gICAgICAgICAubnVtX2lvY3RscyA9IEFSUkFZX1NJWkUoaXZwdV9k
cm1faW9jdGxzKSwNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL2l2cHUvaXZwdV9nZW0u
YyBiL2RyaXZlcnMvYWNjZWwvaXZwdS9pdnB1X2dlbS5jDQo+PiBpbmRleCA0ZjIwMDVhOGQ0OTYu
LjgyMDc5ZjM3MmIzOSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvYWNjZWwvaXZwdS9pdnB1X2dl
bS5jDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL2l2cHUvaXZwdV9nZW0uYw0KPj4gQEAgLTEyLDYg
KzEyLDcgQEANCj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9jYWNoZS5oPg0KPj4gICNpbmNsdWRlIDxk
cm0vZHJtX2RlYnVnZnMuaD4NCj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9maWxlLmg+DQo+PiArI2lu
Y2x1ZGUgPGRybS9kcm1fcHJpbWUuaD4NCj4+ICAjaW5jbHVkZSA8ZHJtL2RybV91dGlscy5oPg0K
Pj4NCj4+ICAjaW5jbHVkZSAiaXZwdV9kcnYuaCINCj4+IEBAIC0yNDksNiArMjUwLDMzIEBAIHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqaXZwdV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsDQo+PiAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7DQo+PiAgfQ0KPj4NCj4+
ICtpbnQgaXZwdV9nZW1fcHJpbWVfaGFuZGxlX3RvX2ZkKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2LA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1MzIgaGFuZGxlLCB1MzIgZmxhZ3MsIGludCAqcHJpbWVfZmQpDQo+PiArew0KPj4g
KyAgICAgICBzdHJ1Y3QgaXZwdV9kZXZpY2UgKnZkZXYgPSB0b19pdnB1X2RldmljZShkZXYpOw0K
Pj4gKyAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4gKyAgICAgICBpbnQgZmQ7DQo+
PiArDQo+PiArICAgICAgIGRtYWJ1ZiA9IGRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2RtYWJ1Zihk
ZXYsIGZpbGVfcHJpdiwgaGFuZGxlLCBmbGFncyk7DQo+PiArICAgICAgIGlmIChJU19FUlIoZG1h
YnVmKSkNCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihkbWFidWYpOw0KPj4gKw0K
Pj4gKyAgICAgICBpZiAoaXZwdV9nZW1faXNfdXNlcnB0cl9kbWFfYnVmKGRtYWJ1ZikpIHsNCj4+
ICsgICAgICAgICAgICAgICBpdnB1X2RiZyh2ZGV2LCBJT0NUTCwgIkV4cG9ydGluZyB1c2VycHRy
IEJPIGlzIG5vdCBhbGxvd2VkXG4iKTsNCj4+ICsgICAgICAgICAgICAgICBkbWFfYnVmX3B1dChk
bWFidWYpOw0KPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4gKyAgICAgICB9
DQo+PiArDQo+PiArICAgICAgIGZkID0gZG1hX2J1Zl9mZChkbWFidWYsIGZsYWdzKTsNCj4+ICsg
ICAgICAgaWYgKGZkIDwgMCkgew0KPj4gKyAgICAgICAgICAgICAgIGRtYV9idWZfcHV0KGRtYWJ1
Zik7DQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGZkOw0KPj4gKyAgICAgICB9DQo+PiArDQo+
PiArICAgICAgICpwcmltZV9mZCA9IGZkOw0KPj4gKyAgICAgICByZXR1cm4gMDsNCj4+ICt9DQo+
PiArDQo+PiAgc3RhdGljIHN0cnVjdCBpdnB1X2JvICppdnB1X2JvX2FsbG9jKHN0cnVjdCBpdnB1
X2RldmljZSAqdmRldiwgdTY0IHNpemUsIHUzMiBmbGFncykNCj4+ICB7DQo+PiAgICAgICAgIHN0
cnVjdCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW07DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9hY2NlbC9pdnB1L2l2cHVfZ2VtLmggYi9kcml2ZXJzL2FjY2VsL2l2cHUvaXZwdV9nZW0uaA0K
Pj4gaW5kZXggMGMzMzUwZjIyYjU1Li5iZmQxNWNlMDIzNTQgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL2FjY2VsL2l2cHUvaXZwdV9nZW0uaA0KPj4gKysrIGIvZHJpdmVycy9hY2NlbC9pdnB1L2l2
cHVfZ2VtLmgNCj4+IEBAIC0yOSw2ICsyOSw5IEBAIHZvaWQgaXZwdV9ib191bmJpbmRfYWxsX2Jv
c19mcm9tX2NvbnRleHQoc3RydWN0IGl2cHVfZGV2aWNlICp2ZGV2LCBzdHJ1Y3QgaXZwdV9tDQo+
Pg0KPj4gIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqaXZwdV9nZW1fY3JlYXRlX29iamVjdChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSk7DQo+PiAgc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICppdnB1X2dlbV9wcmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0
IGRtYV9idWYgKmRtYV9idWYpOw0KPj4gK2ludCBpdnB1X2dlbV9wcmltZV9oYW5kbGVfdG9fZmQo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsDQo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBoYW5kbGUsIHUzMiBmbGFncywgaW50
ICpwcmltZV9mZCk7DQo+PiArYm9vbCBpdnB1X2dlbV9pc191c2VycHRyX2RtYV9idWYoc3RydWN0
IGRtYV9idWYgKmRtYV9idWYpOw0KPj4gIHN0cnVjdCBpdnB1X2JvICppdnB1X2JvX2NyZWF0ZShz
dHJ1Y3QgaXZwdV9kZXZpY2UgKnZkZXYsIHN0cnVjdCBpdnB1X21tdV9jb250ZXh0ICpjdHgsDQo+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGl2cHVfYWRkcl9yYW5nZSAq
cmFuZ2UsIHU2NCBzaXplLCB1MzIgZmxhZ3MpOw0KPj4gIHN0cnVjdCBpdnB1X2JvICppdnB1X2Jv
X2NyZWF0ZV9ydW50aW1lKHN0cnVjdCBpdnB1X2RldmljZSAqdmRldiwgdTY0IGFkZHIsIHU2NCBz
aXplLCB1MzIgZmxhZ3MpOw0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvaXZwdS9pdnB1
X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2FjY2VsL2l2cHUvaXZwdV9nZW1fdXNlcnB0ci5jDQo+
PiBpbmRleCA3Y2JmM2E0Y2RjNzMuLjQ1ZWFiZWE1OTYxZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZl
cnMvYWNjZWwvaXZwdS9pdnB1X2dlbV91c2VycHRyLmMNCj4+ICsrKyBiL2RyaXZlcnMvYWNjZWwv
aXZwdS9pdnB1X2dlbV91c2VycHRyLmMNCj4+IEBAIC02MSw2ICs2MSwxMSBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRtYV9idWZfb3BzIGl2cHVfZ2VtX3VzZXJwdHJfZG1hYnVmX29wcyA9IHsNCj4+
ICAgICAgICAgLnJlbGVhc2UgPSBpdnB1X2dlbV91c2VycHRyX2RtYWJ1Zl9yZWxlYXNlLA0KPj4g
IH07DQo+Pg0KPj4gK2Jvb2wgaXZwdV9nZW1faXNfdXNlcnB0cl9kbWFfYnVmKHN0cnVjdCBkbWFf
YnVmICpkbWFfYnVmKQ0KPj4gK3sNCj4+ICsgICAgICAgcmV0dXJuIGRtYV9idWYtPm9wcyA9PSAm
aXZwdV9nZW1fdXNlcnB0cl9kbWFidWZfb3BzOw0KPj4gK30NCj4+ICsNCj4+ICBzdGF0aWMgc3Ry
dWN0IGRtYV9idWYgKg0KPj4gIGl2cHVfY3JlYXRlX3VzZXJwdHJfZG1hYnVmKHN0cnVjdCBpdnB1
X2RldmljZSAqdmRldiwgdm9pZCBfX3VzZXIgKnVzZXJfcHRyLA0KPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc2l6ZV90IHNpemUsIHVpbnQzMl90IGZsYWdzKQ0KPj4gLS0NCj4+IDIuMzQu
MQ0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
