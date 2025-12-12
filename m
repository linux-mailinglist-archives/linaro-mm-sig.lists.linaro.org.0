Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMx4CycE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E89DD41131A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FF8F4105C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	by lists.linaro.org (Postfix) with ESMTPS id BA6373F8F3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 13:21:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="RzkblH/1";
	spf=pass (lists.linaro.org: domain of karol.wachowski@linux.intel.com designates 192.198.163.15 as permitted sender) smtp.mailfrom=karol.wachowski@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1765545685; x=1797081685;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=sYua/rYNh25DKcJ+3pQtTJfl1kvjZmt5EtEa/b0ggnM=;
  b=RzkblH/1tghPt0bTgnqpZO9LqF9ooyCRSD96eKqHwG1d43AUqZRndpOe
   JIAOhy6UgiUEgZhoauOT8sfjahHPoaPxErcv/IB3sGnU90Owsq74N1SLT
   DKsPUX70nOy61cB2GldkL0jzOaofaywrmlJq3BcaWrBj6to1GkwLimljq
   uPnfHperEkWPRF5mp6TRmT38CLdmjy4miZw5JJ2kyD4ZPCk0LpoKKsdd2
   WC36otuOn3TD1f9GPURtBVDxX65CKpLYG3+Jxl+VWbJwG8CxeC++iVT33
   1GCFZKlBau7j6bDMyC6XYLnwlX+ZiJ0WFUYz8hVsq29oDUPGUVJs1dNtG
   Q==;
X-CSE-ConnectionGUID: ub1RISRKSrqMrhF+ISVfGA==
X-CSE-MsgGUID: o8Klr6VLTx+qfqPwDYb58Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67621159"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="67621159"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:21:24 -0800
X-CSE-ConnectionGUID: k9kxDZGYSWCemWaxESp70g==
X-CSE-MsgGUID: Vlnmw+c2QgGJaB+YOy7nuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="202009148"
Received: from kwachows-mobl.ger.corp.intel.com (HELO [10.94.253.106]) ([10.94.253.106])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:21:21 -0800
Message-ID: <1022011b-fadf-4cca-afab-25a2a41628ea@linux.intel.com>
Date: Fri, 12 Dec 2025 14:21:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David.Francis@amd.com
References: <20251212130238.472833-1-karol.wachowski@linux.intel.com>
 <e35a9c5d-a09c-4716-959b-2720c72bf383@amd.com>
Content-Language: en-US
From: Karol Wachowski <karol.wachowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <e35a9c5d-a09c-4716-959b-2720c72bf383@amd.com>
X-Spamd-Bar: -------
X-MailFrom: karol.wachowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6FUXVVBUCTPNIMXRIMMQVFHGWTFMTWPL
X-Message-ID-Hash: 6FUXVVBUCTPNIMXRIMMQVFHGWTFMTWPL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:50 +0000
CC: felix.kuehling@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, andrzej.kacprowski@linux.intel.com, maciej.falkowski@linux.intel.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm: Fix object leak in DRM_IOCTL_GEM_CHANGE_HANDLE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6FUXVVBUCTPNIMXRIMMQVFHGWTFMTWPL/>
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
	RCPT_COUNT_TWELVE(0.00)[15];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	FROM_NEQ_ENVFROM(0.00)[karol.wachowski@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email]
X-Rspamd-Queue-Id: E89DD41131A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTIvMTIvMjAyNSAyOjA2IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMi8x
Mi8yNSAxNDowMiwgS2Fyb2wgV2FjaG93c2tpIHdyb3RlOg0KPj4gQWRkIG1pc3NpbmcgZHJtX2dl
bV9vYmplY3RfcHV0KCkgY2FsbCB3aGVuIGRybV9nZW1fb2JqZWN0X2xvb2t1cCgpDQo+PiBzdWNj
ZXNzZnVsbHkgcmV0dXJucyBhbiBvYmplY3QuIFRoaXMgZml4ZXMgYSBHRU0gb2JqZWN0IHJlZmVy
ZW5jZQ0KPj4gbGVhayB0aGF0IGNhbiBwcmV2ZW50IGRyaXZlciBtb2R1bGVzIGZyb20gdW5sb2Fk
aW5nIHdoZW4gdXNpbmcNCj4+IHByaW1lIGJ1ZmZlcnMuDQo+IA0KPiBHb29kIGNhdGNoLg0KPiAN
Cj4+IEZpeGVzOiA1MzA5NjcyOGI4OTEgKCJkcm06IEFkZCBEUk0gcHJpbWUgaW50ZXJmYWNlIHRv
IHJlYXNzaWduIEdFTSBoYW5kbGUiKQ0KPj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgV2FjaG93c2tp
IDxrYXJvbC53YWNob3dza2lAbGludXguaW50ZWwuY29tPg0KPiANCj4gQ0M6IHN0YWJsZSA2LjE4
Pw0KDQpHb29kIGlkZWEgLSBhZGRlZCBDQzogc3RhYmxlIGluIHYyLg0KDQo+IA0KPj4gLS0tDQo+
PiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyB8IDYgKysrKy0tDQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4+
IGluZGV4IGNhMTk1NjYwODI2MS4uZTE1MGJjMWNlNjVhIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW0uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0K
Pj4gQEAgLTEwMDEsNyArMTAwMSw3IEBAIGludCBkcm1fZ2VtX2NoYW5nZV9oYW5kbGVfaW9jdGwo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4+ICB7DQo+PiAgCXN0cnVjdCBk
cm1fZ2VtX2NoYW5nZV9oYW5kbGUgKmFyZ3MgPSBkYXRhOw0KPj4gIAlzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iajsNCj4+IC0JaW50IHJldDsNCj4+ICsJaW50IHJldCA9IDA7DQo+IA0KPiBQbGVh
c2Ugc2V0IHJldCBleHBsaWNpdGx5IGluIHRoZSBpZiBicmFuY2ggYmVsb3cuDQo+IA0KPiBBbHdh
eXMgaW5pdGlhbGl6aW5nIHJldHVybiB2YWx1ZXMgaXMgdXN1YWxseSBjb25zaWRlcmVkIGJhZCBj
b2Rpbmcgc3R5bGUuDQoNClRvdGFsbHkgYWdyZWUsIG1vdmVkIHNldHRpbmcgdG8gc3VnZ2VzdGVk
IHBsYWNlIGluIHYyLg0KDQo+IA0KPiBBcGFydCBmcm9tIHRoYXQgbG9va3MgZ29vZCB0byBtZS4N
Cj4gDQo+IFRoYW5rcywNCj4gQ2hyaXN0aWFuLg0KDQpUaGFua3MsDQpLYXJvbC4+DQo+PiAgDQo+
PiAgCWlmICghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZFUl9HRU0pKQ0KPj4gIAkJ
cmV0dXJuIC1FT1BOT1RTVVBQOw0KPj4gQEAgLTEwMTEsNyArMTAxMSw3IEBAIGludCBkcm1fZ2Vt
X2NoYW5nZV9oYW5kbGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwN
Cj4+ICAJCXJldHVybiAtRU5PRU5UOw0KPj4gIA0KPj4gIAlpZiAoYXJncy0+aGFuZGxlID09IGFy
Z3MtPm5ld19oYW5kbGUpDQo+PiAtCQlyZXR1cm4gMDsNCj4+ICsJCWdvdG8gb3V0Ow0KPj4gIA0K
Pj4gIAltdXRleF9sb2NrKCZmaWxlX3ByaXYtPnByaW1lLmxvY2spOw0KPj4gIA0KPj4gQEAgLTEw
NDMsNiArMTA0Myw4IEBAIGludCBkcm1fZ2VtX2NoYW5nZV9oYW5kbGVfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4+ICANCj4+ICBvdXRfdW5sb2NrOg0KPj4gIAlt
dXRleF91bmxvY2soJmZpbGVfcHJpdi0+cHJpbWUubG9jayk7DQo+PiArb3V0Og0KPj4gKwlkcm1f
Z2VtX29iamVjdF9wdXQob2JqKTsNCj4+ICANCj4+ICAJcmV0dXJuIHJldDsNCj4+ICB9DQo+IA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
