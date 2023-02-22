Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 178B969F29E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 11:23:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1C303EC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 10:23:34 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id F2E973E96B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 10:23:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=n2lhYr3y;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 192.55.52.93) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677061396; x=1708597396;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dVAnUDy/qeaH7ic3s2Fok+Gc1I+0bKwabb4CdLxWZeo=;
  b=n2lhYr3ysu43309AgNwED4rbgJpd+OcqdkPsWk4KQDeroEfWmw9gwDzM
   wrj4g0qQMfuJHwbujhiryf/p3o9IaPD81ijLYb+RfRpR/sNymM35GLlVM
   0fsTRrLVZ9S+++6bwjwQPg+XVuOOlMsSg4DliXkvKjAeuXSotgglNJsTk
   6rjAevartCkn2zY6W7bLEEO0ttjtvOFP6TVzCPj7ATTyz6me3zZl8O6kS
   ASDONzDrPHBI/aLb8ZHBH052f4c9gDrDcs0SqGJYv9U6/qFd4mYp7Svu/
   YoywCnXBSL00uU6J0QAWDPcHE/+w+fp3oe3JtYrA1Y9Jk7P3cYGBHw9D0
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330614957"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000";
   d="scan'208";a="330614957"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 02:23:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814881408"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000";
   d="scan'208";a="814881408"
Received: from hhammad-mobl1.ger.corp.intel.com (HELO [10.213.231.87]) ([10.213.231.87])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 02:23:11 -0800
Message-ID: <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com>
Date: Wed, 22 Feb 2023 10:23:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-2-robdclark@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230218211608.1630586-2-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F2E973E96B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[192.55.52.93:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,padovan.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,amd.com,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[]
Message-ID-Hash: QG4QJHOVJJCMIUORKSUS4A26CZGMTIZ6
X-Message-ID-Hash: QG4QJHOVJJCMIUORKSUS4A26CZGMTIZ6
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QG4QJHOVJJCMIUORKSUS4A26CZGMTIZ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxOC8wMi8yMDIzIDIxOjE1LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gDQo+IEFkZCBhIHdheSB0byBoaW50IHRvIHRo
ZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPiB2Ymxh
bmssIHdoaWNoIHRoZSBmZW5jZSB3YWl0ZXIgd291bGQgcHJlZmVyIG5vdCB0byBtaXNzLiAgVGhp
cyBpcyB0byBhaWQNCj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2Vt
ZW50IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KPiBmcmVxdWVuY3kgYXMgdGhlIGRlYWRsaW5l
IGFwcHJvYWNoZXMgYW5kIGF3YXJlbmVzcyBvZiBtaXNzaW5nIGRlYWRsaW5lcw0KPiBzbyB0aGF0
IGNhbiBiZSBmYWN0b3JlZCBpbiB0byB0aGUgZnJlcXVlbmN5IHNjYWxpbmcuDQo+IA0KPiB2Mjog
RHJvcCBkbWFfZmVuY2U6OmRlYWRsaW5lIGFuZCByZWxhdGVkIGxvZ2ljIHRvIGZpbHRlciBkdXBs
aWNhdGUNCj4gICAgICBkZWFkbGluZXMsIHRvIGF2b2lkIGluY3JlYXNpbmcgZG1hX2ZlbmNlIHNp
emUuICBUaGUgZmVuY2UtY29udGV4dA0KPiAgICAgIGltcGxlbWVudGF0aW9uIHdpbGwgbmVlZCBz
aW1pbGFyIGxvZ2ljIHRvIHRyYWNrIGRlYWRsaW5lcyBvZiBhbGwNCj4gICAgICB0aGUgZmVuY2Vz
IG9uIHRoZSBzYW1lIHRpbWVsaW5lLiAgW2Nrb2VuaWddDQo+IHYzOiBDbGFyaWZ5IGxvY2tpbmcg
d3J0LiBzZXRfZGVhZGxpbmUgY2FsbGJhY2sNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysNCj4gICBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oICAgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiAgIDIgZmlsZXMgY2hh
bmdlZCwgNDAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCAwZGUw
NDgyY2QzNmUuLjc2M2IzMjYyNzY4NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtOTEy
LDYgKzkxMiwyNiBAQCBkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNl
ICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCj4gICB9DQo+ICAgRVhQT1JUX1NZTUJPTChkbWFf
ZmVuY2Vfd2FpdF9hbnlfdGltZW91dCk7DQo+ICAgDQo+ICsNCj4gKy8qKg0KPiArICogZG1hX2Zl
bmNlX3NldF9kZWFkbGluZSAtIHNldCBkZXNpcmVkIGZlbmNlLXdhaXQgZGVhZGxpbmUNCj4gKyAq
IEBmZW5jZTogICAgdGhlIGZlbmNlIHRoYXQgaXMgdG8gYmUgd2FpdGVkIG9uDQo+ICsgKiBAZGVh
ZGxpbmU6IHRoZSB0aW1lIGJ5IHdoaWNoIHRoZSB3YWl0ZXIgaG9wZXMgZm9yIHRoZSBmZW5jZSB0
byBiZQ0KPiArICogICAgICAgICAgICBzaWduYWxlZA0KPiArICoNCj4gKyAqIEluZm9ybSB0aGUg
ZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMgdmJsYW5rLCBi
eQ0KPiArICogd2hpY2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRv
IGJlIHNpZ25hbGVkIGJ5LiAgVGhpcw0KPiArICogaXMgaW50ZW5kZWQgdG8gZ2l2ZSBmZWVkYmFj
ayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyDQo+ICsgKiBtYW5hZ2VtZW50
IGRlY2lzaW9ucywgc3VjaCBhcyBib29zdGluZyBHUFUgZnJlcXVlbmN5IGlmIGEgcGVyaW9kaWMN
Cj4gKyAqIHZibGFuayBkZWFkbGluZSBpcyBhcHByb2FjaGluZy4NCj4gKyAqLw0KPiArdm9pZCBk
bWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRl
YWRsaW5lKQ0KPiArew0KPiArCWlmIChmZW5jZS0+b3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9m
ZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ICsJCWZlbmNlLT5vcHMtPnNldF9kZWFkbGluZShm
ZW5jZSwgZGVhZGxpbmUpOw0KPiArfQ0KPiArRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2V0X2Rl
YWRsaW5lKTsNCj4gKw0KPiAgIC8qKg0KPiAgICAqIGRtYV9mZW5jZV9kZXNjcmliZSAtIER1bXAg
ZmVuY2UgZGVzY3JpYnRpb24gaW50byBzZXFfZmlsZQ0KPiAgICAqIEBmZW5jZTogdGhlIDZmZW5j
ZSB0byBkZXNjcmliZQ0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBi
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li5kNzdmNjU5
MWM0NTMgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gKysrIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBAQCAtOTksNiArOTksNyBAQCBlbnVtIGRtYV9m
ZW5jZV9mbGFnX2JpdHMgew0KPiAgIAlETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsDQo+ICAg
CURNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+ICAgCURNQV9GRU5DRV9GTEFHX0VOQUJM
RV9TSUdOQUxfQklULA0KPiArCURNQV9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsDQoNCldv
dWxkIHRoaXMgYml0IGJlIGJldHRlciBsZWZ0IG91dCBmcm9tIGNvcmUgaW1wbGVtZW50YXRpb24s
IGdpdmVuIGhvdyANCnRoZSBhcHByb2FjaCBpcyB0aGUgY29tcG9uZW50IHdoaWNoIGltcGxlbWVu
dHMgZG1hLWZlbmNlIGhhcyB0byB0cmFjayANCnRoZSBhY3R1YWwgZGVhZGxpbmUgYW5kIGFsbD8N
Cg0KQWxzbyB0YWtpbmcgYSBzdGVwIGJhY2sgLSBhcmUgd2UgYWxsIG9rYXkgd2l0aCBzdGFydGlu
ZyB0byBleHBhbmQgdGhlIA0KcmVsYXRpdmVseSBzaW1wbGUgY29yZSBzeW5jaHJvbmlzYXRpb24g
cHJpbWl0aXZlIHdpdGggc2lkZSBjaGFubmVsIGRhdGEgDQpsaWtlIHRoaXM/IFdoYXQgd291bGQg
YmUgdGhlIGNyaXRlcmlhIGZvciB3aGF0IHNpZGUgY2hhbm5lbCBkYXRhIHdvdWxkIA0KYmUgYWNj
ZXB0YWJsZT8gVGFraW5nIG5vdGUgdGhlIHRoaW5nIGxpdmVzIG91dHNpZGUgZHJpdmVycy9ncHUv
Lg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPiAgIAlETUFfRkVOQ0VfRkxBR19VU0VSX0JJVFMs
IC8qIG11c3QgYWx3YXlzIGJlIGxhc3QgbWVtYmVyICovDQo+ICAgfTsNCj4gICANCj4gQEAgLTI1
Nyw2ICsyNTgsMjMgQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgew0KPiAgIAkgKi8NCj4gICAJdm9p
ZCAoKnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+ICAgCQkJ
CSAgIGNoYXIgKnN0ciwgaW50IHNpemUpOw0KPiArDQo+ICsJLyoqDQo+ICsJICogQHNldF9kZWFk
bGluZToNCj4gKwkgKg0KPiArCSAqIENhbGxiYWNrIHRvIGFsbG93IGEgZmVuY2Ugd2FpdGVyIHRv
IGluZm9ybSB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YNCj4gKwkgKiBhbiB1cGNvbWluZyBkZWFkbGlu
ZSwgc3VjaCBhcyB2YmxhbmssIGJ5IHdoaWNoIHBvaW50IHRoZSB3YWl0ZXINCj4gKwkgKiB3b3Vs
ZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVkIGJ5LiAgVGhpcyBpcyBpbnRlbmRlZCB0
bw0KPiArCSAqIGdpdmUgZmVlZGJhY2sgdG8gdGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBw
b3dlciBtYW5hZ2VtZW50DQo+ICsJICogZGVjaXNpb25zLCBzdWNoIGFzIGJvb3N0aW5nIEdQVSBm
cmVxdWVuY3kuDQo+ICsJICoNCj4gKwkgKiBUaGlzIGlzIGNhbGxlZCB3aXRob3V0ICZkbWFfZmVu
Y2UubG9jayBoZWxkLCBpdCBjYW4gYmUgY2FsbGVkDQo+ICsJICogbXVsdGlwbGUgdGltZXMgYW5k
IGZyb20gYW55IGNvbnRleHQuICBMb2NraW5nIGlzIHVwIHRvIHRoZSBjYWxsZWUNCj4gKwkgKiBp
ZiBpdCBoYXMgc29tZSBzdGF0ZSB0byBtYW5hZ2UuDQo+ICsJICoNCj4gKwkgKiBUaGlzIGNhbGxi
YWNrIGlzIG9wdGlvbmFsLg0KPiArCSAqLw0KPiArCXZvaWQgKCpzZXRfZGVhZGxpbmUpKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKTsNCj4gICB9Ow0KPiAgIA0KPiAg
IHZvaWQgZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVj
dCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+IEBAIC01ODMsNiArNjAxLDggQEAgc3RhdGljIGlubGlu
ZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgYm9v
bCBpbnRyKQ0KPiAgIAlyZXR1cm4gcmV0IDwgMCA/IHJldCA6IDA7DQo+ICAgfQ0KPiAgIA0KPiAr
dm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGlt
ZV90IGRlYWRsaW5lKTsNCj4gKw0KPiAgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9nZXRf
c3R1Yih2b2lkKTsNCj4gICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJp
dmF0ZV9zdHViKHZvaWQpOw0KPiAgIHU2NCBkbWFfZmVuY2VfY29udGV4dF9hbGxvYyh1bnNpZ25l
ZCBudW0pOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
