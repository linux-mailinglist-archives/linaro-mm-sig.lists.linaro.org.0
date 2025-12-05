Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAieNHED4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8689C4111C9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:42:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39BCE44B96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:42:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	by lists.linaro.org (Postfix) with ESMTPS id 52DBC3F93E
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Dec 2025 11:10:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZUoGOlEG;
	spf=pass (lists.linaro.org: domain of matthew.auld@intel.com designates 198.175.65.20 as permitted sender) smtp.mailfrom=matthew.auld@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764933053; x=1796469053;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=pGopNyeHsvBW3go2mhsIpNS7bzOqTQ9RMlM6PkX0h+Y=;
  b=ZUoGOlEGd9Uqb2A7iV1uPobjni5cCisW29zhfC8f+f4A2vOAtGTJW7Sx
   h/cwOvx7fbx339nvkXJJWB++z2So8804EhxQ0S46hndI+J6TWL0I7ZQWO
   zDUYM329KiuIvdJXqKFAet7dG81D/d4wz0+imyLzHfz03JR9iTj7E52Jw
   pmCEKFw627OGzdlMpO6IQlamBqdQhBnNL7L2V8gcZXA7tufo4d+Tisu71
   GwZmXaisGwBZLwyoiJ43Nr+nryj4qQ9YOXW6T8NfCXA6inMCssGS7IIM1
   z7BtaF2FSxqTTGr17xtutg9/jlERY4T7fEk8A5HhmLA+F+0m8w8n+6TT5
   g==;
X-CSE-ConnectionGUID: bA4dYomlRVWH/7Ue2VXJrQ==
X-CSE-MsgGUID: x9e7etcXRVS7OcAaxgLJRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66689794"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800";
   d="scan'208";a="66689794"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2025 03:10:51 -0800
X-CSE-ConnectionGUID: cF6XzfUWQIilNYFQQ9wzQw==
X-CSE-MsgGUID: GbtHloDOSLy5SmLUPkF1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800";
   d="scan'208";a="195706412"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO [10.245.244.110]) ([10.245.244.110])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Dec 2025 03:10:50 -0800
Message-ID: <23d8391c-4568-4b31-acb3-9426b0bf085e@intel.com>
Date: Fri, 5 Dec 2025 11:10:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 simona.vetter@ffwll.ch
References: <20251204145952.7052-1-christian.koenig@amd.com>
 <3e09719d-af1b-4c5d-83fb-6ef5f41739b5@intel.com>
 <e21cc071-0133-4b07-a52f-67ed4d80cbcd@gmail.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <e21cc071-0133-4b07-a52f-67ed4d80cbcd@gmail.com>
X-Spamd-Bar: -------
X-MailFrom: matthew.auld@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5H7O7DPOWLH2ODSEN43FSPX2U2DQM7MW
X-Message-ID-Hash: 5H7O7DPOWLH2ODSEN43FSPX2U2DQM7MW
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:36 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: improve sg_table debugging hack v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5H7O7DPOWLH2ODSEN43FSPX2U2DQM7MW/>
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
	DATE_IN_PAST(1.00)[3172];
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
	NEURAL_HAM(-0.00)[-0.923];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[intel.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,bootlin.com:url]
X-Rspamd-Queue-Id: 8689C4111C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMDUvMTIvMjAyNSAxMDo0MSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gT24gMTIvNC8y
NSAxNjo1MSwgTWF0dGhldyBBdWxkIHdyb3RlOg0KPj4gT24gMDQvMTIvMjAyNSAxNDo1OSwgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBUaGlzIGRlYnVnZ2luZyBoYWNrIGlzIGltcG9ydGFu
dCB0byBlbmZvcmNlIHRoZSBydWxlIHRoYXQgaW1wb3J0ZXJzDQo+Pj4gc2hvdWxkICpuZXZlciog
dG91Y2ggdGhlIHVuZGVybHlpbmcgc3RydWN0IHBhZ2Ugb2YgdGhlIGV4cG9ydGVyLg0KPj4+DQo+
Pj4gSW5zdGVhZCBvZiBqdXN0IG1hbmdsaW5nIHRoZSBwYWdlIGxpbmsgY3JlYXRlIGEgY29weSBv
ZiB0aGUgc2dfdGFibGUNCj4+PiBidXQgb25seSBjb3B5IG92ZXIgdGhlIERNQSBhZGRyZXNzZXMg
YW5kIG5vdCB0aGUgcGFnZXMuDQo+Pj4NCj4+PiBUaGlzIHdpbGwgY2F1c2UgYSBOVUxMIHBvaW50
ZXIgZGUtcmVmZXJlbmNlIGlmIHRoZSBpbXBvcnRlciB0cmllcyB0bw0KPj4+IHRvdWNoIHRoZSBz
dHJ1Y3QgcGFnZS4gU3RpbGwgcXVpdGUgYSBoYWNrIGJ1dCB0aGlzIGF0IGxlYXN0IGFsbG93cyB0
aGUNCj4+PiBleHBvcnRlciB0byBwcm9wZXJseSBrZWVwcyBpdCdzIHNnX3RhYmxlIGludGFjdCB3
aGlsZSBhbGxvd2luZyB0aGUNCj4+PiBETUEtYnVmIG1haW50YWluZXIgdG8gZmluZCBhbmQgZml4
IG1pc2JlaGF2aW5nIGltcG9ydGVycyBhbmQgZmluYWxseQ0KPj4+IHN3aXRjaCBvdmVyIHRvIHVz
aW5nIGEgZGlmZmVyZW50IGRhdGEgc3RydWN0dXJlIGluIHRoZSBmdXR1cmUuDQo+Pj4NCj4+PiB2
MjogaW1wcm92ZSB0aGUgaGFjayBmdXJ0aGVyIGJ5IHVzaW5nIGEgd3JhcHBlciBzdHJ1Y3R1cmUg
YW5kIGV4cGxhaW5pbmcNCj4+PiB0aGUgYmFja2dyb3VuZCBhIGJpdCBtb3JlIGluIHRoZSBjb21t
aXQgbWVzc2FnZS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhs
IDxtaWNoYWVsLmoucnVobEBpbnRlbC5jb20+ICh2MSkNCj4+PiAtLS0NCj4+PiAgwqAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDcyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLQ0KPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMTQgZGVs
ZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBpbmRleCAyMzA1YmIyY2MxZjEuLjhj
NGFmZDM2MGI3MiAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+
Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IEBAIC0zNSw2ICszNSwxMiBA
QA0KPj4+ICDCoCDCoCAjaW5jbHVkZSAiZG1hLWJ1Zi1zeXNmcy1zdGF0cy5oIg0KPj4+ICDCoCAr
LyogV3JhcHBlciB0byBoaWRlIHRoZSBzZ190YWJsZSBwYWdlIGxpbmsgZnJvbSB0aGUgaW1wb3J0
ZXIgKi8NCj4+PiArc3RydWN0IGRtYV9idWZfc2dfdGFibGVfd3JhcHBlciB7DQo+Pj4gK8KgwqDC
oCBzdHJ1Y3Qgc2dfdGFibGUgKm9yaWdpbmFsOw0KPj4+ICvCoMKgwqAgc3RydWN0IHNnX3RhYmxl
IHdyYXBwZXI7DQo+Pj4gK307DQo+Pj4gKw0KPj4+ICDCoCBzdGF0aWMgaW5saW5lIGludCBpc19k
bWFfYnVmX2ZpbGUoc3RydWN0IGZpbGUgKik7DQo+Pj4gIMKgIMKgIHN0YXRpYyBERUZJTkVfTVVU
RVgoZG1hYnVmX2xpc3RfbXV0ZXgpOw0KPj4+IEBAIC04MjgsMjEgKzgzNCw1NyBAQCB2b2lkIGRt
YV9idWZfcHV0KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+Pj4gIMKgIH0NCj4+PiAgwqAgRVhQ
T1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9wdXQsICJETUFfQlVGIik7DQo+Pj4gIMKgIC1zdGF0
aWMgdm9pZCBtYW5nbGVfc2dfdGFibGUoc3RydWN0IHNnX3RhYmxlICpzZ190YWJsZSkNCj4+PiAr
c3RhdGljIGludCBkbWFfYnVmX21hbmdsZV9zZ190YWJsZShzdHJ1Y3Qgc2dfdGFibGUgKipzZ190
YWJsZSkNCj4+PiAgwqAgew0KPj4+IC0jaWZkZWYgQ09ORklHX0RNQUJVRl9ERUJVRw0KPj4+IC3C
oMKgwqAgaW50IGk7DQo+Pj4gLcKgwqDCoCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOw0KPj4+IC0N
Cj4+PiAtwqDCoMKgIC8qIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBw
YWdlIGJ5IGltcG9ydGVycyBtaXgNCj4+PiAtwqDCoMKgwqAgKiB1cCB0aGUgYml0cywgYnV0IHRh
a2UgY2FyZSB0byBwcmVzZXJ2ZSB0aGUgbG93IFNHXyBiaXRzIHRvDQo+Pj4gLcKgwqDCoMKgICog
bm90IGNvcnJ1cHQgdGhlIHNndC4gVGhlIG1peGluZyBpcyB1bmRvbmUgb24gdW5tYXANCj4+PiAt
wqDCoMKgwqAgKiBiZWZvcmUgcGFzc2luZyB0aGUgc2d0IGJhY2sgdG8gdGhlIGV4cG9ydGVyLg0K
Pj4+ICvCoMKgwqAgc3RydWN0IHNjYXR0ZXJsaXN0ICp0b19zZywgKmZyb21fc2c7DQo+Pj4gK8Kg
wqDCoCBzdHJ1Y3Qgc2dfdGFibGUgKmZyb20gPSAqc2dfdGFibGU7DQo+Pj4gK8KgwqDCoCBzdHJ1
Y3QgZG1hX2J1Zl9zZ190YWJsZV93cmFwcGVyICp0bzsNCj4+PiArwqDCoMKgIGludCBpLCByZXQ7
DQo+Pj4gKw0KPj4+ICvCoMKgwqAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfREVCVUcp
KQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsNCj4+PiArDQo+Pj4gK8KgwqDCoCAvKg0K
Pj4+ICvCoMKgwqDCoCAqIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBw
YWdlIGJ5IGltcG9ydGVycyBjb3B5IHRoZQ0KPj4+ICvCoMKgwqDCoCAqIHNnX3RhYmxlIHdpdGhv
dXQgY29weWluZyB0aGUgcGFnZV9saW5rIGFuZCBnaXZlIG9ubHkgdGhlIGNvcHkgYmFjayB0bw0K
Pj4+ICvCoMKgwqDCoCAqIHRoZSBpbXBvcnRlci4NCj4+PiAgwqDCoMKgwqDCoMKgICovDQo+Pj4g
LcKgwqDCoCBmb3JfZWFjaF9zZ3RhYmxlX3NnKHNnX3RhYmxlLCBzZywgaSkNCj4+PiAtwqDCoMKg
wqDCoMKgwqAgc2ctPnBhZ2VfbGluayBePSB+MHhmZlVMOw0KPj4+IC0jZW5kaWYNCj4+PiArwqDC
oMKgIHRvID0ga3phbGxvYyhzaXplb2YoKnRvKSwgR0ZQX0tFUk5FTCk7DQo+Pj4gK8KgwqDCoCBp
ZiAoIXRvKQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsNCj4+PiArDQo+Pj4g
K8KgwqDCoCByZXQgPSBzZ19hbGxvY190YWJsZSgmdG8tPndyYXBwZXIsIGZyb20tPm5lbnRzLCBH
RlBfS0VSTkVMKTsNCj4+PiArwqDCoMKgIGlmIChyZXQpDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdv
dG8gZnJlZV90bzsNCj4+PiArDQo+Pj4gK8KgwqDCoCB0b19zZyA9IHRvLT53cmFwcGVyLnNnbDsN
Cj4+PiArwqDCoMKgIGZvcl9lYWNoX3NndGFibGVfZG1hX3NnKGZyb20sIGZyb21fc2csIGkpIHsN
Cj4+PiArwqDCoMKgwqDCoMKgwqAgc2dfc2V0X3BhZ2UodG9fc2csIE5VTEwsIDAsIDApOw0KPj4N
Cj4+IEFyZSB3ZSBzdGlsbCBhbGxvd2VkIHRvIHBhc3MgTlVMTCBwYWdlIGhlcmU/IFRoZXJlIGxv
b2tzIHRvIGJlIHRoZSByZWNlbnRseSBhZGRlZDoNCj4+DQo+PiBWTV9XQVJOX09OX09OQ0UoIXBh
Z2VfcmFuZ2VfY29udGlndW91cyhwYWdlLCBBTElHTihsZW4gKyBvZmZzZXQsIFBBR0VfU0laRSkg
LyBQQUdFX1NJWkUpKTsNCj4+DQo+PiBBbmQgaWYgcGFnZV9yYW5nZV9jb250aWd1b3VzKCkgZG9l
cyBub3QganVzdCByZXR1cm4gdHJ1ZSwgaXQgcG90ZW50aWFsbHkgd2FudHMgdG8gZGVyZWZlcmVu
Y2UgdGhlIHBhZ2UsIGxpa2Ugd2l0aCBwYWdlX3RvX3BmbigpPw0KPiANCj4gR29vZCBwb2ludC4N
Cj4gDQo+IEl0IGRvZXNuJ3QgY3Jhc2ggYXQgdGhlIG1vbWVudCBiZWNhdXNlIHBhZ2VfdG9fcGZu
KCkgYWxzbyB3b3JrcyB3aXRoIE5VTEwgYXMgcGFnZSwgYnV0IGl0IGlzIGNsZWFybHkgbm90IHRo
ZSBuaWNlc3QgdGhpbmcgdG8gZG8uDQoNClRoZXJlIGRvZXMgbG9vayB0byBiZToNCg0KaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTgvc291cmNlL2luY2x1ZGUvYXNtLWdlbmVy
aWMvbWVtb3J5X21vZGVsLmgjTDU2DQoNClNvIG5vdCBjb21wbGV0ZWx5IHN1cmUgaXQgY2FuJ3Qg
Y3Jhc2ggaGVyZT8NCg0KPiANCj4gSSB3aWxsIHN3aXRjaCBvdmVyIHRvIHVzaW5nIHNnX2Fzc2ln
bl9wYWdlKCkgaW5zdGVhZC4NCj4gDQo+Pg0KPj4NCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNnX2RtYV9hZGRyZXNzKHRvX3NnKSA9IHNnX2RtYV9hZGRyZXNzKGZyb21fc2cp
Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2dfZG1hX2xlbih0b19zZykg
PSBzZ19kbWFfbGVuKGZyb21fc2cpOw0KPj4NCj4+IE5pdDogZm9ybWF0dGluZyBsb29rcyBvZmYg
aGVyZS4NCj4gDQo+IE9oLCBpbmRlZWQuDQo+IA0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4g
DQo+Pg0KPj4+ICvCoMKgwqDCoMKgwqDCoCB0b19zZyA9IHNnX25leHQodG9fc2cpOw0KPj4+ICvC
oMKgwqAgfQ0KPj4+ICDCoCArwqDCoMKgIHRvLT5vcmlnaW5hbCA9IGZyb207DQo+Pj4gK8KgwqDC
oCAqc2dfdGFibGUgPSAmdG8tPndyYXBwZXI7DQo+Pj4gK8KgwqDCoCByZXR1cm4gMDsNCj4+PiAr
DQo+Pj4gK2ZyZWVfdG86DQo+Pj4gK8KgwqDCoCBrZnJlZSh0byk7DQo+Pj4gK8KgwqDCoCByZXR1
cm4gcmV0Ow0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX2RlbWFuZ2xl
X3NnX3RhYmxlKHN0cnVjdCBzZ190YWJsZSAqKnNnX3RhYmxlKQ0KPj4+ICt7DQo+Pj4gK8KgwqDC
oCBzdHJ1Y3QgZG1hX2J1Zl9zZ190YWJsZV93cmFwcGVyICpjb3B5Ow0KPj4+ICsNCj4+PiArwqDC
oMKgIGlmICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX0RFQlVHKSkNCj4+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuOw0KPj4+ICsNCj4+PiArwqDCoMKgIGNvcHkgPSBjb250YWluZXJfb2YoKnNn
X3RhYmxlLCB0eXBlb2YoKmNvcHkpLCB3cmFwcGVyKTsNCj4+PiArwqDCoMKgICpzZ190YWJsZSA9
IGNvcHktPm9yaWdpbmFsOw0KPj4+ICvCoMKgwqAgc2dfZnJlZV90YWJsZSgmY29weS0+d3JhcHBl
cik7DQo+Pj4gK8KgwqDCoCBrZnJlZShjb3B5KTsNCj4+PiAgwqAgfQ0KPj4+ICDCoCDCoCBzdGF0
aWMgaW5saW5lIGJvb2wNCj4+PiBAQCAtMTEzOSw3ICsxMTgxLDkgQEAgc3RydWN0IHNnX3RhYmxl
ICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQgPCAwKQ0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycm9yX3VubWFwOw0KPj4+ICDCoMKgwqDCoMKgIH0NCj4+
PiAtwqDCoMKgIG1hbmdsZV9zZ190YWJsZShzZ190YWJsZSk7DQo+Pj4gK8KgwqDCoCByZXQgPSBk
bWFfYnVmX21hbmdsZV9zZ190YWJsZSgmc2dfdGFibGUpOw0KPj4+ICvCoMKgwqAgaWYgKHJldCkN
Cj4+PiArwqDCoMKgwqDCoMKgwqAgZ290byBlcnJvcl91bm1hcDsNCj4+PiAgwqAgwqDCoMKgwqDC
oCBpZiAoSVNfRU5BQkxFRChDT05GSUdfRE1BX0FQSV9ERUJVRykpIHsNCj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+Pj4gQEAgLTEyMjAsNyArMTI2NCw3
IEBAIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaCwNCj4+PiAgwqAgwqDCoMKgwqDCoCBkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRh
Y2gtPmRtYWJ1Zi0+cmVzdik7DQo+Pj4gIMKgIC3CoMKgwqAgbWFuZ2xlX3NnX3RhYmxlKHNnX3Rh
YmxlKTsNCj4+PiArwqDCoMKgIGRtYV9idWZfZGVtYW5nbGVfc2dfdGFibGUoJnNnX3RhYmxlKTsN
Cj4+PiAgwqDCoMKgwqDCoCBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFj
aCwgc2dfdGFibGUsIGRpcmVjdGlvbik7DQo+Pj4gIMKgIMKgwqDCoMKgwqAgaWYgKGRtYV9idWZf
cGluX29uX21hcChhdHRhY2gpKQ0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
