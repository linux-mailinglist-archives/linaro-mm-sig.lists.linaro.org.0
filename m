Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E8969F993
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 18:05:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC0053EC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 17:05:44 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id 3ADCA3EA27
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 17:05:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=TItzHyR4;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.126) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677085524; x=1708621524;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=8hDmCGq7I1JUjuDBsU4hREcG+XK+gpxWQjZaUra9H4c=;
  b=TItzHyR4AQ5whlFVhW9e8Q77xVBgq/Hcm50m7g1UXt6wu2zBpoopdxsI
   qCpoLLyEhg+wfqPBYSTjNxkU4HpQnnfnqOg6YfF5WtBxxduIIJajCDM8f
   EArJRCMSyOivE6c5dZIFGyd04jucb4PCobh4vTlJqVix08z7YopvzAXak
   FY4GJXR3rAGQIY3lAHCIVbPeGf8oPqJFAdeVJLu7GvjXy8YNpCfUZyqyc
   IVmnytWmSadfU0VxDTmnDNpKQwaxAJA/QwXlhYmRpZhpe4DyAhKKlXUig
   CXrHfJRr9AXwSmzPyqsKOZCePqBqijXxtKDkKdU36JoPKH5MIJRVt/GZX
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316705986"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000";
   d="scan'208";a="316705986"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 09:04:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="702454693"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000";
   d="scan'208";a="702454693"
Received: from hhammad-mobl1.ger.corp.intel.com (HELO [10.213.231.87]) ([10.213.231.87])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 09:04:45 -0800
Message-ID: <b8a16579-4be7-8e14-01e4-9d17c1570c8b@linux.intel.com>
Date: Wed, 22 Feb 2023 17:04:42 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-2-robdclark@gmail.com>
 <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com>
 <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3ADCA3EA27
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	FREEMAIL_CC(0.00)[chromium.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,gmail.com,amd.com,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	HAS_ORG_HEADER(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: CNMX5QSLHA3VQTP5BB2LJVVZ4LQ7HAPL
X-Message-ID-Hash: CNMX5QSLHA3VQTP5BB2LJVVZ4LQ7HAPL
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CNMX5QSLHA3VQTP5BB2LJVVZ4LQ7HAPL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMi8wMi8yMDIzIDE1OjI4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAyMi4w
Mi4yMyB1bSAxMToyMyBzY2hyaWViIFR2cnRrbyBVcnN1bGluOg0KPj4NCj4+IE9uIDE4LzAyLzIw
MjMgMjE6MTUsIFJvYiBDbGFyayB3cm90ZToNCj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BjaHJvbWl1bS5vcmc+DQo+Pj4NCj4+PiBBZGQgYSB3YXkgdG8gaGludCB0byB0aGUgZmVuY2Ug
c2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMNCj4+PiB2YmxhbmssIHdo
aWNoIHRoZSBmZW5jZSB3YWl0ZXIgd291bGQgcHJlZmVyIG5vdCB0byBtaXNzLsKgIFRoaXMgaXMg
dG8gYWlkDQo+Pj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2VtZW50
IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KPj4+IGZyZXF1ZW5jeSBhcyB0aGUgZGVhZGxpbmUg
YXBwcm9hY2hlcyBhbmQgYXdhcmVuZXNzIG9mIG1pc3NpbmcgZGVhZGxpbmVzDQo+Pj4gc28gdGhh
dCBjYW4gYmUgZmFjdG9yZWQgaW4gdG8gdGhlIGZyZXF1ZW5jeSBzY2FsaW5nLg0KPj4+DQo+Pj4g
djI6IERyb3AgZG1hX2ZlbmNlOjpkZWFkbGluZSBhbmQgcmVsYXRlZCBsb2dpYyB0byBmaWx0ZXIg
ZHVwbGljYXRlDQo+Pj4gwqDCoMKgwqAgZGVhZGxpbmVzLCB0byBhdm9pZCBpbmNyZWFzaW5nIGRt
YV9mZW5jZSBzaXplLsKgIFRoZSBmZW5jZS1jb250ZXh0DQo+Pj4gwqDCoMKgwqAgaW1wbGVtZW50
YXRpb24gd2lsbCBuZWVkIHNpbWlsYXIgbG9naWMgdG8gdHJhY2sgZGVhZGxpbmVzIG9mIGFsbA0K
Pj4+IMKgwqDCoMKgIHRoZSBmZW5jZXMgb24gdGhlIHNhbWUgdGltZWxpbmUuwqAgW2Nrb2VuaWdd
DQo+Pj4gdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFkbGluZSBjYWxsYmFjaw0KPj4+
DQo+Pj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0K
Pj4+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+Pj4gLS0tDQo+Pj4gwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMjAgKysr
KysrKysrKysrKysrKysrKysNCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5owqDCoCB8
IDIwICsrKysrKysrKysrKysrKysrKysrDQo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNl
cnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gaW5kZXggMGRlMDQ4MmNkMzZl
Li43NjNiMzI2Mjc2ODQgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gQEAgLTkxMiw2
ICs5MTIsMjYgQEAgZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSAN
Cj4+PiAqKmZlbmNlcywgdWludDMyX3QgY291bnQsDQo+Pj4gwqAgfQ0KPj4+IMKgIEVYUE9SVF9T
WU1CT0woZG1hX2ZlbmNlX3dhaXRfYW55X3RpbWVvdXQpOw0KPj4+IMKgICsNCj4+PiArLyoqDQo+
Pj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUgLSBzZXQgZGVzaXJlZCBmZW5jZS13YWl0IGRl
YWRsaW5lDQo+Pj4gKyAqIEBmZW5jZTrCoMKgwqAgdGhlIGZlbmNlIHRoYXQgaXMgdG8gYmUgd2Fp
dGVkIG9uDQo+Pj4gKyAqIEBkZWFkbGluZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBo
b3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJlDQo+Pj4gKyAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
aWduYWxlZA0KPj4+ICsgKg0KPj4+ICsgKiBJbmZvcm0gdGhlIGZlbmNlIHNpZ25hbGVyIG9mIGFu
IHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIA0KPj4+IHZibGFuaywgYnkNCj4+PiArICogd2hp
Y2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVk
IGJ5LiANCj4+PiBUaGlzDQo+Pj4gKyAqIGlzIGludGVuZGVkIHRvIGdpdmUgZmVlZGJhY2sgdG8g
dGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlcg0KPj4+ICsgKiBtYW5hZ2VtZW50IGRl
Y2lzaW9ucywgc3VjaCBhcyBib29zdGluZyBHUFUgZnJlcXVlbmN5IGlmIGEgcGVyaW9kaWMNCj4+
PiArICogdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJvYWNoaW5nLg0KPj4+ICsgKi8NCj4+PiArdm9p
ZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90
IGRlYWRsaW5lKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCBpZiAoZmVuY2UtPm9wcy0+c2V0X2RlYWRs
aW5lICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KPj4+ICvCoMKgwqDCoMKgwqDC
oCBmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUoZmVuY2UsIGRlYWRsaW5lKTsNCj4+PiArfQ0KPj4+
ICtFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUpOw0KPj4+ICsNCj4+PiDCoCAv
KioNCj4+PiDCoMKgICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlv
biBpbnRvIHNlcV9maWxlDQo+Pj4gwqDCoCAqIEBmZW5jZTogdGhlIDZmZW5jZSB0byBkZXNjcmli
ZQ0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaA0KPj4+IGluZGV4IDc3NWNkYzBiNGYyNC4uZDc3ZjY1OTFjNDUzIDEw
MDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+PiArKysgYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4gQEAgLTk5LDYgKzk5LDcgQEAgZW51bSBkbWFfZmVu
Y2VfZmxhZ19iaXRzIHsNCj4+PiDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJ
VCwNCj4+PiDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+Pj4gwqDC
oMKgwqDCoCBETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwNCj4+PiArwqDCoMKgIERN
QV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsDQo+Pg0KPj4gV291bGQgdGhpcyBiaXQgYmUg
YmV0dGVyIGxlZnQgb3V0IGZyb20gY29yZSBpbXBsZW1lbnRhdGlvbiwgZ2l2ZW4gaG93IA0KPj4g
dGhlIGFwcHJvYWNoIGlzIHRoZSBjb21wb25lbnQgd2hpY2ggaW1wbGVtZW50cyBkbWEtZmVuY2Ug
aGFzIHRvIHRyYWNrIA0KPj4gdGhlIGFjdHVhbCBkZWFkbGluZSBhbmQgYWxsPw0KPj4NCj4+IEFs
c28gdGFraW5nIGEgc3RlcCBiYWNrIC0gYXJlIHdlIGFsbCBva2F5IHdpdGggc3RhcnRpbmcgdG8g
ZXhwYW5kIHRoZSANCj4+IHJlbGF0aXZlbHkgc2ltcGxlIGNvcmUgc3luY2hyb25pc2F0aW9uIHBy
aW1pdGl2ZSB3aXRoIHNpZGUgY2hhbm5lbCANCj4+IGRhdGEgbGlrZSB0aGlzPyBXaGF0IHdvdWxk
IGJlIHRoZSBjcml0ZXJpYSBmb3Igd2hhdCBzaWRlIGNoYW5uZWwgZGF0YSANCj4+IHdvdWxkIGJl
IGFjY2VwdGFibGU/IFRha2luZyBub3RlIHRoZSB0aGluZyBsaXZlcyBvdXRzaWRlIGRyaXZlcnMv
Z3B1Ly4NCj4gDQo+IEkgaGFkIHNpbWlsYXIgY29uY2VybnMgYW5kIGl0IHRvb2sgbWUgYSBtb21l
bnQgYXMgd2VsbCB0byB1bmRlcnN0YW5kIHRoZSANCj4gYmFja2dyb3VuZCB3aHkgdGhpcyBpcyBu
ZWNlc3NhcnkuIEkgZXNzZW50aWFsbHkgZG9uJ3Qgc2VlIG11Y2ggb3RoZXIgDQo+IGFwcHJvYWNo
IHdlIGNvdWxkIGRvLg0KPiANCj4gWWVzLCB0aGlzIGlzIEdQVS9DUlRDIHNwZWNpZmljLCBidXQg
d2Ugc29tZWhvdyBuZWVkIGEgY29tbW9uIGludGVyZmFjZSANCj4gZm9yIGNvbW11bmljYXRpbmcg
aXQgYmV0d2VlbiBkcml2ZXJzIGFuZCB0aGF0J3MgdGhlIGRtYV9mZW5jZSBvYmplY3QgYXMgDQo+
IGZhciBhcyBJIGNhbiBzZWUuDQoNClllYWggSSBhbHNvIGRvbid0IHNlZSBhbnkgb3RoZXIgZWFz
eSBvcHRpb25zLiBKdXN0IHdhbnRlZCB0byByYWlzZSB0aGlzIA0KYXMgc29tZXRoaW5nIHdoaWNo
IHByb2JhYmx5IG5lZWRzIHNvbWUgd2lkZXIgYWNrcy4NCg0KQWxzbyB3aGF0IGFib3V0IHRoZSAi
bG93IGxldmVsIiBwYXJ0IG9mIG15IHF1ZXN0aW9uIGFib3V0IHRoZSByZWFzb24sIG9yIA0KYmVu
ZWZpdHMsIG9mIGRlZmluaW5nIHRoZSBkZWFkbGluZSBiaXQgaW4gdGhlIGNvbW1vbiBsYXllcj8N
Cg0KUmVnYXJkcywNCg0KVHZydGtvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
