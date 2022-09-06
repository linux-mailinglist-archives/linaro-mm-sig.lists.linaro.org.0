Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAC85AE531
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 12:21:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AEA348A1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 10:21:04 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id E6A823F58D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 10:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662459658; x=1693995658;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=CADQZNK7sh3ishR6VlRXnxfJnl5BQfip+USboN2REBU=;
  b=n8ZYU+fZBJbSjWMgLyo6gGgKPfFl3tLcsN2g55Tjr8ZG9FNN2yJNEkyu
   m8xqm/3OoVNsoY7aMhJLSPz666g+iMcLhMZv5hiKT5LIWmlE4nCK5KZMF
   Q8wBn/+zV1yHb3G1/8WjAOIPyRf5AATNHzR43P2U+KadOCv1PTDEzD5PI
   xxEQIhxPouOXyOfzRX1Rqhs3pjoYnqWmgkEzgi5Yi7ObOeeHBNbNIV36G
   stZcXfa49jpgrycrACuDGL5KszhbfzUecjrbH5tMQrbdx3P+wsmLr4tbk
   NMdI8w8dHWpi5GVAq04b82RdLKEbhAoP5skbyjwhNVW+K28KaZNu7pAdq
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="295291827"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200";
   d="scan'208";a="295291827"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2022 03:20:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200";
   d="scan'208";a="644115071"
Received: from holmesda-mobl.ger.corp.intel.com (HELO [10.213.204.21]) ([10.213.204.21])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2022 03:20:53 -0700
Message-ID: <ec41b299-4280-d8e4-7ab0-23b5ea6ad401@linux.intel.com>
Date: Tue, 6 Sep 2022 11:20:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-5-Arvind.Yadav@amd.com>
 <f2e1367f-b056-b2af-365c-8ae4ef03f008@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f2e1367f-b056-b2af-365c-8ae4ef03f008@amd.com>
Message-ID-Hash: OYHNRC6DMG3WZC3GOQ4HSVGW2O5BLUDR
X-Message-ID-Hash: OYHNRC6DMG3WZC3GOQ4HSVGW2O5BLUDR
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYHNRC6DMG3WZC3GOQ4HSVGW2O5BLUDR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAwNi8wOS8yMDIyIDA5OjM5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNS4w
OS4yMiB1bSAxODozNSBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IFRoZSBjb3JlIERNQS1idWYg
ZnJhbWV3b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4+IGJlZm9yZSB0aGUgZmVuY2Ug
aXMgc2lnbmFsZWQuIFRoZSBjb3JlIERNQS1idWYgZnJhbWV3b3JrDQo+PiBjYW4gZm9yZ2V0IHRv
IGVuYWJsZSBzaWduYWxpbmcgYmVmb3JlIHRoZSBmZW5jZSBpcyBzaWduYWxlZC4NCj4gDQo+IFRo
aXMgc2VudGVuY2UgaXMgYSBiaXQgY29uZnVzaW5nLiBJJ20gbm90IGEgbmF0aXZlIHNwZWFrZXIg
b2YgRW5nbGlzaCANCj4gZWl0aGVyLCBidXQgSSBzdWdnZXN0IHNvbWV0aGluZyBsaWtlOg0KPiAN
Cj4gIkZlbmNlIHNpZ25hbGluZyBtdXN0IGJlIGVuYWJsZSB0byBtYWtlIHN1cmUgdGhhdCB0aGUg
DQo+IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGZ1bmN0aW9uIGV2ZXIgcmV0dXJucyB0cnVlLiIN
Cj4gDQo+PiBUbyBhdm9pZCB0aGlzIHNjZW5hcmlvIG9uIHRoZSBkZWJ1ZyBrZXJuZWwsIGNoZWNr
IHRoZQ0KPj4gRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgc3RhdHVzIGJpdCBiZWZv
cmUgY2hlY2tpbmcNCj4+IHRoZSBzaWduYWxpbmcgYml0IHN0YXR1cyB0byBjb25maXJtIHRoYXQg
ZW5hYmxlX3NpZ25hbGluZw0KPj4gaXMgZW5hYmxlZC4NCj4gDQo+IFRoaXMgZGVzY3JpYmVzIHRo
ZSBpbXBsZW1lbnRhdGlvbiwgYnV0IHdlIHNob3VsZCByYXRoZXIgZGVzY3JpYmUgdGhlIA0KPiBi
YWNrZ3JvdW5kIG9mIHRoZSBjaGFuZ2UuIFRoZSBpbXBsZW1lbnRhdGlvbiBzaG91bGQgYmUgb2J2
aW91cy4gDQo+IFNvbWV0aGluZyBsaWtlIHRoaXMgbWF5YmU6DQo+IA0KPiAiDQo+IFNpbmNlIGRy
aXZlcnMgYW5kIGltcGxlbWVudGF0aW9ucyBzb21ldGltZXMgbWVzcyB0aGlzIHVwIGVuZm9yY2Ug
Y29ycmVjdCANCj4gYmVoYXZpb3Igd2hlbiBERUJVR19XV19NVVRFWF9TTE9XUEFUSCBpcyB1c2Vk
IGR1cmluZyBkZWJ1Z2dpbmcuDQo+IA0KPiBUaGlzIHNob3VsZCBtYWtlIGFueSBpbXBsZW1lbnRh
dGlvbnMgYnVncyByZXN1bHRpbmcgaW4gbm90IHNpZ25hbGVkIA0KPiBmZW5jZXMgbXVjaCBtb3Jl
IG9idmlvdXMuDQo+ICINCg0KSSB0aGluayBJIGZvbGxvdyB0aGUgaWRlYSBidXQgYW0gbm90IHN1
cmUgY291cGxpbmcgKHdlbGwgImNvdXBsaW5nIi4uIG5vdCByZWFsbHksIGJ1dCBjcm9zcy1jb250
YW1pbmF0aW5nIGluIGEgd2F5KSBkbWEtZmVuY2UuYyB3aXRoIGEgZm9yZWlnbiBhbmQgZWZmZWN0
aXZlbHkgdW5yZWxhdGVkIGNvbmNlcHQgb2YgYSB3dyBtdXRleCBpcyB0aGUgYmVzdCB3YXkuDQoN
Ckluc3RlYWQsIGhvdyBhYm91dCBhIGRtYS1idWYgc3BlY2lmaWMgZGVidWcga2NvbmZpZyBvcHRp
b24/DQoNCkNvbmRpdGlvbiB3b3VsZCB0aGVuIGJlLCBhY2NvcmRpbmcgdG8gbXkgdW5kZXJzdGFu
ZGluZyBvZiB0aGUgcnVsZXMgYW5kIGV4cGVjdGF0aW9ucywgYWxvbmcgdGhlIGxpbmVzIG9mOg0K
DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLmgNCmluZGV4IDc3NWNkYzBiNGYyNC4uMTQ3YTlkZjJjOWQwIDEwMDY0NA0KLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaA0KQEAgLTQyOCw2ICs0MjgsMTcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiAgc3RhdGljIGlubGluZSBib29sDQogIGRtYV9mZW5j
ZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiAgew0KKyNpZmRlZiBDT05G
SUdfREVCVUdfRE1BRkVOQ0UNCisgICAgICAgLyoNCisgICAgICAgICogSW1wbGVtZW50YXRpb25z
IG5vdCBwcm92aWRpbmcgdGhlIGVuYWJsZV9zaWduYWxpbmcgY2FsbGJhY2sgYXJlDQorICAgICAg
ICAqIHJlcXVpcmVkIHRvIGFsd2F5cyBoYXZlIHNpZ25hbGluZyBlbmFibGVkIG9yIGZlbmNlcyBh
cmUgbm90DQorICAgICAgICAqIGd1YXJhbnRlZWQgdG8gZXZlciBzaWduYWwuDQorICAgICAgICAq
Lw0KKyAgICAgICBpZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcgJiYNCisgICAgICAg
ICAgICF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwgJmZlbmNlLT5m
bGFncykpDQorICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KKyNlbmRpZg0KKw0KICAgICAg
ICAgaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFn
cykpDQogICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOw0KDQpUaG91Z2h0cz8NCg0KUmVnYXJk
cywNCg0KVHZydGtvDQoNCj4gDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxB
cnZpbmQuWWFkYXZAYW1kLmNvbT4NCj4gDQo+IFdpdGggdGhlIGltcHJvdmVkIGNvbW1pdCBtZXNz
YWdlIHRoaXMgcGF0Y2ggaXMgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiANCj4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IA0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+IA0K
Pj4gLS0tDQo+Pg0KPj4gQ2hhbmdlcyBpbiB2MSA6DQo+PiAxLSBBZGRyZXNzaW5nIENocmlzdGlh
bidzIGNvbW1lbnQgdG8gcmVwbGFjZQ0KPj4gQ09ORklHX0RFQlVHX1dXX01VVEVYX1NMT1dQQVRI
IGluc3RlYWQgb2YgQ09ORklHX0RFQlVHX0ZTLg0KPj4gMi0gQXMgcGVyIENocmlzdGlhbidzIGNv
bW1lbnQgbW92aW5nIHRoaXMgcGF0Y2ggYXQgbGFzdCBzbw0KPj4gVGhlIHZlcnNpb24gb2YgdGhp
cyBwYXRjaCBpcyBhbHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCj4+IGl0IHdhcyBbUEFUQ0gg
MS80XQ0KPj4NCj4+DQo+PiAtLS0NCj4+IMKgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1
ICsrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS5oDQo+PiBpbmRleCA3NzVjZGMwYjRmMjQuLmJhMWRkYzE0YzVkNCAxMDA2NDQNCj4+IC0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgNCj4+IEBAIC00MjgsNiArNDI4LDExIEBAIGRtYV9mZW5jZV9pc19zaWduYWxlZF9s
b2NrZWQoc3RydWN0IGRtYV9mZW5jZSANCj4+ICpmZW5jZSkNCj4+IMKgIHN0YXRpYyBpbmxpbmUg
Ym9vbA0KPj4gwqAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KQ0KPj4gwqAgew0KPj4gKyNpZmRlZiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEgNCj4+
ICvCoMKgwqAgaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwg
JmZlbmNlLT5mbGFncykpDQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOw0KPj4gKyNl
bmRpZg0KPj4gKw0KPj4gwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lH
TkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
dHJ1ZTsNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
