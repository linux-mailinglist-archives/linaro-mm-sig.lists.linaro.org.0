Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGz8LyIC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:37:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6872A410FD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:37:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5734940AAD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:37:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id C421B3F6DC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 15:51:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=alanTlNx;
	spf=pass (lists.linaro.org: domain of matthew.auld@intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=matthew.auld@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764863486; x=1796399486;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=1MLJ4foFKk2YetngAtX7qrwpveVMWt0D+TCRrr6hwMM=;
  b=alanTlNxi+oYeB7eSi1+pASu0ot1KzWNjlpKGezKWhXDo21dzvq4TrSD
   lS1NBojgtstyXmRKy7rrYbr7lZg2pybqG75KYwyk8YQQIOf9hgx3lCPay
   3CrNbwRaoj4gpJMhtcEo2/4iuqB5QyelBnEG0xdnBVlb8JbePw1QmSsAp
   XyxJjETTnS90i93/6do3tT+AOMg+qG8fy6nXyOOqERer4RC0jAbiGEUaZ
   qyygLK6awdPg8zHOxDUQxT9kRGrqKTJ1bAk2tioS6fI/0/JFBSoycfNt9
   vPCftnKkwCd9HMPjAQILDGhNxFWiwRYOyeAdoPNhFEzgueLPlh53tVvUs
   w==;
X-CSE-ConnectionGUID: dBPqTBJHQWm9tYd3wDbkmQ==
X-CSE-MsgGUID: TaCMXTyjTLOKJWhzfU23cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66925413"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800";
   d="scan'208";a="66925413"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2025 07:51:25 -0800
X-CSE-ConnectionGUID: Q/oXs7zARwapqU+0sa7CXA==
X-CSE-MsgGUID: 31A7ETZxQP+qUSKkZPr5Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800";
   d="scan'208";a="194830958"
Received: from abityuts-desk.ger.corp.intel.com (HELO [10.245.245.215]) ([10.245.245.215])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2025 07:51:23 -0800
Message-ID: <3e09719d-af1b-4c5d-83fb-6ef5f41739b5@intel.com>
Date: Thu, 4 Dec 2025 15:51:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 simona.vetter@ffwll.ch
References: <20251204145952.7052-1-christian.koenig@amd.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20251204145952.7052-1-christian.koenig@amd.com>
X-Spamd-Bar: -------
X-MailFrom: matthew.auld@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TVLCX7THEDKL4OF2ORHAYCUQSGHRTL5J
X-Message-ID-Hash: TVLCX7THEDKL4OF2ORHAYCUQSGHRTL5J
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:12 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: improve sg_table debugging hack v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVLCX7THEDKL4OF2ORHAYCUQSGHRTL5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3191];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.902];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[intel.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 6872A410FD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMDQvMTIvMjAyNSAxNDo1OSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gVGhpcyBkZWJ1
Z2dpbmcgaGFjayBpcyBpbXBvcnRhbnQgdG8gZW5mb3JjZSB0aGUgcnVsZSB0aGF0IGltcG9ydGVy
cw0KPiBzaG91bGQgKm5ldmVyKiB0b3VjaCB0aGUgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSBvZiB0
aGUgZXhwb3J0ZXIuDQo+IA0KPiBJbnN0ZWFkIG9mIGp1c3QgbWFuZ2xpbmcgdGhlIHBhZ2UgbGlu
ayBjcmVhdGUgYSBjb3B5IG9mIHRoZSBzZ190YWJsZQ0KPiBidXQgb25seSBjb3B5IG92ZXIgdGhl
IERNQSBhZGRyZXNzZXMgYW5kIG5vdCB0aGUgcGFnZXMuDQo+IA0KPiBUaGlzIHdpbGwgY2F1c2Ug
YSBOVUxMIHBvaW50ZXIgZGUtcmVmZXJlbmNlIGlmIHRoZSBpbXBvcnRlciB0cmllcyB0bw0KPiB0
b3VjaCB0aGUgc3RydWN0IHBhZ2UuIFN0aWxsIHF1aXRlIGEgaGFjayBidXQgdGhpcyBhdCBsZWFz
dCBhbGxvd3MgdGhlDQo+IGV4cG9ydGVyIHRvIHByb3Blcmx5IGtlZXBzIGl0J3Mgc2dfdGFibGUg
aW50YWN0IHdoaWxlIGFsbG93aW5nIHRoZQ0KPiBETUEtYnVmIG1haW50YWluZXIgdG8gZmluZCBh
bmQgZml4IG1pc2JlaGF2aW5nIGltcG9ydGVycyBhbmQgZmluYWxseQ0KPiBzd2l0Y2ggb3ZlciB0
byB1c2luZyBhIGRpZmZlcmVudCBkYXRhIHN0cnVjdHVyZSBpbiB0aGUgZnV0dXJlLg0KPiANCj4g
djI6IGltcHJvdmUgdGhlIGhhY2sgZnVydGhlciBieSB1c2luZyBhIHdyYXBwZXIgc3RydWN0dXJl
IGFuZCBleHBsYWluaW5nDQo+IHRoZSBiYWNrZ3JvdW5kIGEgYml0IG1vcmUgaW4gdGhlIGNvbW1p
dCBtZXNzYWdlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNo
YWVsLmoucnVobEBpbnRlbC5jb20+ICh2MSkNCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyB8IDcyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQ0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYw0KPiBpbmRleCAyMzA1YmIyY2MxZjEuLjhjNGFmZDM2MGI3MiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jDQo+IEBAIC0zNSw2ICszNSwxMiBAQA0KPiAgIA0KPiAgICNpbmNsdWRlICJkbWEt
YnVmLXN5c2ZzLXN0YXRzLmgiDQo+ICAgDQo+ICsvKiBXcmFwcGVyIHRvIGhpZGUgdGhlIHNnX3Rh
YmxlIHBhZ2UgbGluayBmcm9tIHRoZSBpbXBvcnRlciAqLw0KPiArc3RydWN0IGRtYV9idWZfc2df
dGFibGVfd3JhcHBlciB7DQo+ICsJc3RydWN0IHNnX3RhYmxlICpvcmlnaW5hbDsNCj4gKwlzdHJ1
Y3Qgc2dfdGFibGUgd3JhcHBlcjsNCj4gK307DQo+ICsNCj4gICBzdGF0aWMgaW5saW5lIGludCBp
c19kbWFfYnVmX2ZpbGUoc3RydWN0IGZpbGUgKik7DQo+ICAgDQo+ICAgc3RhdGljIERFRklORV9N
VVRFWChkbWFidWZfbGlzdF9tdXRleCk7DQo+IEBAIC04MjgsMjEgKzgzNCw1NyBAQCB2b2lkIGRt
YV9idWZfcHV0KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ICAgfQ0KPiAgIEVYUE9SVF9TWU1C
T0xfTlNfR1BMKGRtYV9idWZfcHV0LCAiRE1BX0JVRiIpOw0KPiAgIA0KPiAtc3RhdGljIHZvaWQg
bWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGUpDQo+ICtzdGF0aWMgaW50
IGRtYV9idWZfbWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBzZ190YWJsZSAqKnNnX3RhYmxlKQ0KPiAg
IHsNCj4gLSNpZmRlZiBDT05GSUdfRE1BQlVGX0RFQlVHDQo+IC0JaW50IGk7DQo+IC0Jc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZzsNCj4gLQ0KPiAtCS8qIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRl
cmx5aW5nIHN0cnVjdCBwYWdlIGJ5IGltcG9ydGVycyBtaXgNCj4gLQkgKiB1cCB0aGUgYml0cywg
YnV0IHRha2UgY2FyZSB0byBwcmVzZXJ2ZSB0aGUgbG93IFNHXyBiaXRzIHRvDQo+IC0JICogbm90
IGNvcnJ1cHQgdGhlIHNndC4gVGhlIG1peGluZyBpcyB1bmRvbmUgb24gdW5tYXANCj4gLQkgKiBi
ZWZvcmUgcGFzc2luZyB0aGUgc2d0IGJhY2sgdG8gdGhlIGV4cG9ydGVyLg0KPiArCXN0cnVjdCBz
Y2F0dGVybGlzdCAqdG9fc2csICpmcm9tX3NnOw0KPiArCXN0cnVjdCBzZ190YWJsZSAqZnJvbSA9
ICpzZ190YWJsZTsNCj4gKwlzdHJ1Y3QgZG1hX2J1Zl9zZ190YWJsZV93cmFwcGVyICp0bzsNCj4g
KwlpbnQgaSwgcmV0Ow0KPiArDQo+ICsJaWYgKCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfREVC
VUcpKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCS8qDQo+ICsJICogVG8gY2F0Y2ggYWJ1c2Ug
b2YgdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2UgYnkgaW1wb3J0ZXJzIGNvcHkgdGhlDQo+ICsJ
ICogc2dfdGFibGUgd2l0aG91dCBjb3B5aW5nIHRoZSBwYWdlX2xpbmsgYW5kIGdpdmUgb25seSB0
aGUgY29weSBiYWNrIHRvDQo+ICsJICogdGhlIGltcG9ydGVyLg0KPiAgIAkgKi8NCj4gLQlmb3Jf
ZWFjaF9zZ3RhYmxlX3NnKHNnX3RhYmxlLCBzZywgaSkNCj4gLQkJc2ctPnBhZ2VfbGluayBePSB+
MHhmZlVMOw0KPiAtI2VuZGlmDQo+ICsJdG8gPSBremFsbG9jKHNpemVvZigqdG8pLCBHRlBfS0VS
TkVMKTsNCj4gKwlpZiAoIXRvKQ0KPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gKw0KPiArCXJldCA9
IHNnX2FsbG9jX3RhYmxlKCZ0by0+d3JhcHBlciwgZnJvbS0+bmVudHMsIEdGUF9LRVJORUwpOw0K
PiArCWlmIChyZXQpDQo+ICsJCWdvdG8gZnJlZV90bzsNCj4gKw0KPiArCXRvX3NnID0gdG8tPndy
YXBwZXIuc2dsOw0KPiArCWZvcl9lYWNoX3NndGFibGVfZG1hX3NnKGZyb20sIGZyb21fc2csIGkp
IHsNCj4gKwkJc2dfc2V0X3BhZ2UodG9fc2csIE5VTEwsIDAsIDApOw0KDQpBcmUgd2Ugc3RpbGwg
YWxsb3dlZCB0byBwYXNzIE5VTEwgcGFnZSBoZXJlPyBUaGVyZSBsb29rcyB0byBiZSB0aGUgDQpy
ZWNlbnRseSBhZGRlZDoNCg0KVk1fV0FSTl9PTl9PTkNFKCFwYWdlX3JhbmdlX2NvbnRpZ3VvdXMo
cGFnZSwgQUxJR04obGVuICsgb2Zmc2V0LCANClBBR0VfU0laRSkgLyBQQUdFX1NJWkUpKTsNCg0K
QW5kIGlmIHBhZ2VfcmFuZ2VfY29udGlndW91cygpIGRvZXMgbm90IGp1c3QgcmV0dXJuIHRydWUs
IGl0IHBvdGVudGlhbGx5IA0Kd2FudHMgdG8gZGVyZWZlcmVuY2UgdGhlIHBhZ2UsIGxpa2Ugd2l0
aCBwYWdlX3RvX3BmbigpPw0KDQoNCj4gKyAgICAgICAgICAgICAgICBzZ19kbWFfYWRkcmVzcyh0
b19zZykgPSBzZ19kbWFfYWRkcmVzcyhmcm9tX3NnKTsNCj4gKyAgICAgICAgICAgICAgICBzZ19k
bWFfbGVuKHRvX3NnKSA9IHNnX2RtYV9sZW4oZnJvbV9zZyk7DQoNCk5pdDogZm9ybWF0dGluZyBs
b29rcyBvZmYgaGVyZS4NCg0KPiArCQl0b19zZyA9IHNnX25leHQodG9fc2cpOw0KPiArCX0NCj4g
ICANCj4gKwl0by0+b3JpZ2luYWwgPSBmcm9tOw0KPiArCSpzZ190YWJsZSA9ICZ0by0+d3JhcHBl
cjsNCj4gKwlyZXR1cm4gMDsNCj4gKw0KPiArZnJlZV90bzoNCj4gKwlrZnJlZSh0byk7DQo+ICsJ
cmV0dXJuIHJldDsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgZG1hX2J1Zl9kZW1hbmdsZV9z
Z190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKipzZ190YWJsZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgZG1h
X2J1Zl9zZ190YWJsZV93cmFwcGVyICpjb3B5Ow0KPiArDQo+ICsJaWYgKCFJU19FTkFCTEVEKENP
TkZJR19ETUFCVUZfREVCVUcpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwljb3B5ID0gY29udGFp
bmVyX29mKCpzZ190YWJsZSwgdHlwZW9mKCpjb3B5KSwgd3JhcHBlcik7DQo+ICsJKnNnX3RhYmxl
ID0gY29weS0+b3JpZ2luYWw7DQo+ICsJc2dfZnJlZV90YWJsZSgmY29weS0+d3JhcHBlcik7DQo+
ICsJa2ZyZWUoY29weSk7DQo+ICAgfQ0KPiAgIA0KPiAgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiBA
QCAtMTEzOSw3ICsxMTgxLDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2ht
ZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4gICAJCWlmIChyZXQgPCAw
KQ0KPiAgIAkJCWdvdG8gZXJyb3JfdW5tYXA7DQo+ICAgCX0NCj4gLQltYW5nbGVfc2dfdGFibGUo
c2dfdGFibGUpOw0KPiArCXJldCA9IGRtYV9idWZfbWFuZ2xlX3NnX3RhYmxlKCZzZ190YWJsZSk7
DQo+ICsJaWYgKHJldCkNCj4gKwkJZ290byBlcnJvcl91bm1hcDsNCj4gICANCj4gICAJaWYgKElT
X0VOQUJMRUQoQ09ORklHX0RNQV9BUElfREVCVUcpKSB7DQo+ICAgCQlzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnNnOw0KPiBAQCAtMTIyMCw3ICsxMjY0LDcgQEAgdm9pZCBkbWFfYnVmX3VubWFwX2F0dGFj
aG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAgIA0KPiAgIAlkbWFf
cmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+ICAgDQo+IC0JbWFuZ2xl
X3NnX3RhYmxlKHNnX3RhYmxlKTsNCj4gKwlkbWFfYnVmX2RlbWFuZ2xlX3NnX3RhYmxlKCZzZ190
YWJsZSk7DQo+ICAgCWF0dGFjaC0+ZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBz
Z190YWJsZSwgZGlyZWN0aW9uKTsNCj4gICANCj4gICAJaWYgKGRtYV9idWZfcGluX29uX21hcChh
dHRhY2gpKQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
