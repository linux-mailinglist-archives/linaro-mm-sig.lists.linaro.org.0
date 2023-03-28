Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA06B6CC194
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 15:59:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC9833E802
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 13:59:42 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id 356973E802
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 13:59:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=mU4xMKgi;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.126) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680011971; x=1711547971;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=2bpxXtg+8K5yT3Gb2/b1JBoxmrLCF2pbspOSjoZyEvE=;
  b=mU4xMKgiQmesz1uUYzgiJMhOjPhTEZAYB4jD6N5n62b0EGp86AVxE9RA
   3+XjOESqN5SeP8AVlF04cOHc3/ET09wD85fTpvE1lUG/Lc9PdyNgMd0o+
   K6A5X7/GMTijBMFi5AB8qfI6Avr3PMZFUXBTnr+J51BkNVAs0U6odX6ZM
   jE3lz/i1AddmXCc7e8np9WBAy+xrr0w48mT294vWu6bnqs3fFH4ZWtO48
   HQ948fqpVFDvgAaV5mGCmYHwxtnSAw6mA6IN10puSj2rRsaWEX7kZlB4C
   /Kr4BUHleWsUtnrZfR8E7BhKK9r9Wqe8mdiVt5WeGxSSyB3q2Z/xsqTnE
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="324463131"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400";
   d="scan'208";a="324463131"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 06:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="716492675"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400";
   d="scan'208";a="716492675"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO [10.213.213.242]) ([10.213.213.242])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2023 06:57:35 -0700
Message-ID: <f973f656-acdf-320f-95d5-3f79cc3ce95a@linux.intel.com>
Date: Tue, 28 Mar 2023 14:57:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230308155322.344664-1-robdclark@gmail.com>
 <20230308155322.344664-8-robdclark@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230308155322.344664-8-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 356973E802
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[chromium.org,collabora.com,gmail.com,lists.freedesktop.org,vger.kernel.org,linaro.org,lists.linaro.org,amd.com,intel.com,padovan.org];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,chromium.org:email];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: TOYOV44SOLENU2CPRRKLW3GEJZ4MOQ2N
X-Message-ID-Hash: TOYOV44SOLENU2CPRRKLW3GEJZ4MOQ2N
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Gustavo Padovan <gustavo@padovan.org>, Matt Turner <mattst88@gmail.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 07/15] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TOYOV44SOLENU2CPRRKLW3GEJZ4MOQ2N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAwOC8wMy8yMDIzIDE1OjUyLCBSb2IgQ2xhcmsgd3JvdGU6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gDQo+IFRoaXMgY29uc2lzdHMgb2Ygc2ltcGx5
IHN0b3JpbmcgdGhlIG1vc3QgcmVjZW50IGRlYWRsaW5lLCBhbmQgYWRkaW5nIGFuDQo+IGlvY3Rs
IHRvIHJldHJpZXZlIHRoZSBkZWFkbGluZS4gIFRoaXMgY2FuIGJlIHVzZWQgaW4gY29uanVuY3Rp
b24gd2l0aA0KPiB0aGUgU0VUX0RFQURMSU5FIGlvY3RsIG9uIGEgZmVuY2UgZmQgZm9yIHRlc3Rp
bmcuICBJZS4gY3JlYXRlIHZhcmlvdXMNCj4gc3dfc3luYyBmZW5jZXMsIG1lcmdlIHRoZW0gaW50
byBhIGZlbmNlLWFycmF5LCBzZXQgZGVhZGxpbmUgb24gdGhlDQo+IGZlbmNlLWFycmF5IGFuZCBj
b25maXJtIHRoYXQgaXQgaXMgcHJvcGFnYXRlZCBwcm9wZXJseSB0byBlYWNoIGZlbmNlLg0KPiAN
Cj4gdjI6IFN3aXRjaCBVQUJJIHRvIGV4cHJlc3MgZGVhZGxpbmUgYXMgdTY0DQo+IHYzOiBNb3Jl
IHZlcmJvc2UgVUFQSSBkb2NzLCBzaG93IGhvdyB0byBjb252ZXJ0IGZyb20gdGltZXNwZWMNCj4g
djQ6IEJldHRlciBjb21tZW50cywgdHJhY2sgdGhlIHNvb25lc3QgZGVhZGxpbmUsIGFzIGEgbm9y
bWFsIGZlbmNlDQo+ICAgICAgaW1wbGVtZW50YXRpb24gd291bGQsIHJldHVybiBhbiBlcnJvciBp
ZiBubyBkZWFkbGluZSBzZXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRj
bGFya0BjaHJvbWl1bS5vcmc+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IEFja2VkLWJ5OiBQZWtrYSBQYWFsYW5lbiA8cGVra2Eu
cGFhbGFuZW5AY29sbGFib3JhLmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL3N3X3N5
bmMuYyAgICB8IDgxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgIGRy
aXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggfCAgMiArDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4
MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5
bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4gaW5kZXggMzQ4YjNhOTE3MGZhLi5m
NTMwNzFiY2EzYWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiBAQCAtNTIsMTIgKzUyLDMzIEBAIHN0
cnVjdCBzd19zeW5jX2NyZWF0ZV9mZW5jZV9kYXRhIHsNCj4gICAJX19zMzIJZmVuY2U7IC8qIGZk
IG9mIG5ldyBmZW5jZSAqLw0KPiAgIH07DQo+ICAgDQo+ICsvKioNCj4gKyAqIHN0cnVjdCBzd19z
eW5jX2dldF9kZWFkbGluZSAtIGdldCB0aGUgZGVhZGxpbmUgaGludCBvZiBhIHN3X3N5bmMgZmVu
Y2UNCj4gKyAqIEBkZWFkbGluZV9uczogYWJzb2x1dGUgdGltZSBvZiB0aGUgZGVhZGxpbmUNCj4g
KyAqIEBwYWQ6CW11c3QgYmUgemVybw0KPiArICogQGZlbmNlX2ZkOgl0aGUgc3dfc3luYyBmZW5j
ZSBmZCAoaW4pDQo+ICsgKg0KPiArICogUmV0dXJuIHRoZSBlYXJsaWVzdCBkZWFkbGluZSBzZXQg
b24gdGhlIGZlbmNlLiAgVGhlIHRpbWViYXNlIGZvciB0aGUNCj4gKyAqIGRlYWRsaW5lIGlzIENM
T0NLX01PTk9UT05JQyAoc2FtZSBhcyB2YmxhbmspLiAgSWYgdGhlcmUgaXMgbm8gZGVhZGxpbmUN
Cg0KTWVudGlvbmluZyB2YmxhbmsgcmVhZHMgb2RkIHNpbmNlIHRoaXMgaXMgZHJpdmVycy9kbWEt
YnVmLy4gRHVubm8uDQoNCj4gKyAqIHNldCBvbiB0aGUgZmVuY2UsIHRoaXMgaW9jdGwgd2lsbCBy
ZXR1cm4gLUVOT0VOVC4NCj4gKyAqLw0KPiArc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRsaW5lIHsN
Cj4gKwlfX3U2NAlkZWFkbGluZV9uczsNCj4gKwlfX3UzMglwYWQ7DQo+ICsJX19zMzIJZmVuY2Vf
ZmQ7DQo+ICt9Ow0KPiArDQo+ICAgI2RlZmluZSBTV19TWU5DX0lPQ19NQUdJQwknVycNCj4gICAN
Cj4gICAjZGVmaW5lIFNXX1NZTkNfSU9DX0NSRUFURV9GRU5DRQlfSU9XUihTV19TWU5DX0lPQ19N
QUdJQywgMCxcDQo+ICAgCQlzdHJ1Y3Qgc3dfc3luY19jcmVhdGVfZmVuY2VfZGF0YSkNCj4gICAN
Cj4gICAjZGVmaW5lIFNXX1NZTkNfSU9DX0lOQwkJCV9JT1coU1dfU1lOQ19JT0NfTUFHSUMsIDEs
IF9fdTMyKQ0KPiArI2RlZmluZSBTV19TWU5DX0dFVF9ERUFETElORQkJX0lPV1IoU1dfU1lOQ19J
T0NfTUFHSUMsIDIsIFwNCj4gKwkJc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRsaW5lKQ0KPiArDQo+
ICsNCj4gKyNkZWZpbmUgU1dfU1lOQ19IQVNfREVBRExJTkVfQklUCURNQV9GRU5DRV9GTEFHX1VT
RVJfQklUUw0KPiAgIA0KPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1l
bGluZV9mZW5jZV9vcHM7DQo+ICAgDQo+IEBAIC0xNzEsNiArMTkyLDIyIEBAIHN0YXRpYyB2b2lk
IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0cihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwNCj4gICAJc25wcmludGYoc3RyLCBzaXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCj4gICB9
DQo+ICAgDQo+ICtzdGF0aWMgdm9pZCB0aW1lbGluZV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQo+ICt7DQo+ICsJc3RydWN0IHN5
bmNfcHQgKnB0ID0gZG1hX2ZlbmNlX3RvX3N5bmNfcHQoZmVuY2UpOw0KPiArCXVuc2lnbmVkIGxv
bmcgZmxhZ3M7DQo+ICsNCj4gKwlzcGluX2xvY2tfaXJxc2F2ZShmZW5jZS0+bG9jaywgZmxhZ3Mp
Ow0KPiArCWlmICh0ZXN0X2JpdChTV19TWU5DX0hBU19ERUFETElORV9CSVQsICZmZW5jZS0+Zmxh
Z3MpKSB7DQo+ICsJCWlmIChrdGltZV9iZWZvcmUoZGVhZGxpbmUsIHB0LT5kZWFkbGluZSkpDQo+
ICsJCQlwdC0+ZGVhZGxpbmUgPSBkZWFkbGluZTsNCj4gKwl9IGVsc2Ugew0KPiArCQlwdC0+ZGVh
ZGxpbmUgPSBkZWFkbGluZTsNCj4gKwkJc2V0X2JpdChTV19TWU5DX0hBU19ERUFETElORV9CSVQs
ICZmZW5jZS0+ZmxhZ3MpOw0KDQpGV0lXIGNvdWxkIHVzZSBfX3NldF9iaXQgdG8gYXZvaWQgbmVl
ZGxlc3MgYXRvbWljIHVuZGVyIHNwaW5sb2NrLg0KDQo+ICsJfQ0KPiArCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsNCj4gK30NCj4gKw0KPiAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7DQo+ICAgCS5nZXRf
ZHJpdmVyX25hbWUgPSB0aW1lbGluZV9mZW5jZV9nZXRfZHJpdmVyX25hbWUsDQo+ICAgCS5nZXRf
dGltZWxpbmVfbmFtZSA9IHRpbWVsaW5lX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lLA0KPiBAQCAt
MTc5LDYgKzIxNiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGlu
ZV9mZW5jZV9vcHMgPSB7DQo+ICAgCS5yZWxlYXNlID0gdGltZWxpbmVfZmVuY2VfcmVsZWFzZSwN
Cj4gICAJLmZlbmNlX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3ZhbHVlX3N0ciwNCj4gICAJ
LnRpbWVsaW5lX3ZhbHVlX3N0ciA9IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0ciwN
Cj4gKwkuc2V0X2RlYWRsaW5lID0gdGltZWxpbmVfZmVuY2Vfc2V0X2RlYWRsaW5lLA0KPiAgIH07
DQo+ICAgDQo+ICAgLyoqDQo+IEBAIC0zODcsNiArNDI1LDQ2IEBAIHN0YXRpYyBsb25nIHN3X3N5
bmNfaW9jdGxfaW5jKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGxvbmcgYXJn
KQ0KPiAgIAlyZXR1cm4gMDsNCj4gICB9DQo+ICAgDQo+ICtzdGF0aWMgaW50IHN3X3N5bmNfaW9j
dGxfZ2V0X2RlYWRsaW5lKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGxvbmcg
YXJnKQ0KPiArew0KPiArCXN0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSBkYXRhOw0KPiArCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPiArCXN0cnVjdCBzeW5jX3B0ICpwdDsNCj4gKwlpbnQg
cmV0ID0gMDsNCj4gKw0KPiArCWlmIChjb3B5X2Zyb21fdXNlcigmZGF0YSwgKHZvaWQgX191c2Vy
ICopYXJnLCBzaXplb2YoZGF0YSkpKQ0KPiArCQlyZXR1cm4gLUVGQVVMVDsNCj4gKw0KPiArCWlm
IChkYXRhLmRlYWRsaW5lX25zIHx8IGRhdGEucGFkKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4g
Kw0KPiArCWZlbmNlID0gc3luY19maWxlX2dldF9mZW5jZShkYXRhLmZlbmNlX2ZkKTsNCj4gKwlp
ZiAoIWZlbmNlKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCXB0ID0gZG1hX2ZlbmNl
X3RvX3N5bmNfcHQoZmVuY2UpOw0KPiArCWlmICghcHQpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0K
PiArDQo+ICsJc3Bpbl9sb2NrKGZlbmNlLT5sb2NrKTsNCg0KVGhpcyBtYXkgbmVlZCB0byBiZSBf
aXJxLg0KDQo+ICsJaWYgKHRlc3RfYml0KFNXX1NZTkNfSEFTX0RFQURMSU5FX0JJVCwgJmZlbmNl
LT5mbGFncykpIHsNCj4gKwkJZGF0YS5kZWFkbGluZV9ucyA9IGt0aW1lX3RvX25zKHB0LT5kZWFk
bGluZSk7DQo+ICsJfSBlbHNlIHsNCj4gKwkJcmV0ID0gLUVOT0VOVDsNCj4gKwl9DQo+ICsJc3Bp
bl91bmxvY2soZmVuY2UtPmxvY2spOw0KPiArDQo+ICsJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+
ICsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0KPiArDQo+ICsJaWYgKGNvcHlfdG9f
dXNlcigodm9pZCBfX3VzZXIgKilhcmcsICZkYXRhLCBzaXplb2YoZGF0YSkpKQ0KPiArCQlyZXR1
cm4gLUVGQVVMVDsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICAgc3RhdGljIGxv
bmcgc3dfc3luY19pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCj4g
ICAJCQkgIHVuc2lnbmVkIGxvbmcgYXJnKQ0KPiAgIHsNCj4gQEAgLTM5OSw2ICs0NzcsOSBAQCBz
dGF0aWMgbG9uZyBzd19zeW5jX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQg
Y21kLA0KPiAgIAljYXNlIFNXX1NZTkNfSU9DX0lOQzoNCj4gICAJCXJldHVybiBzd19zeW5jX2lv
Y3RsX2luYyhvYmosIGFyZyk7DQo+ICAgDQo+ICsJY2FzZSBTV19TWU5DX0dFVF9ERUFETElORToN
Cj4gKwkJcmV0dXJuIHN3X3N5bmNfaW9jdGxfZ2V0X2RlYWRsaW5lKG9iaiwgYXJnKTsNCj4gKw0K
PiAgIAlkZWZhdWx0Og0KPiAgIAkJcmV0dXJuIC1FTk9UVFk7DQo+ICAgCX0NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggYi9kcml2ZXJzL2RtYS1idWYvc3luY19k
ZWJ1Zy5oDQo+IGluZGV4IDYxNzZlNTJiYTJkNy4uYTFiZGQ2MmVmY2NkIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9z
eW5jX2RlYnVnLmgNCj4gQEAgLTU1LDExICs1NSwxMyBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBz
eW5jX3RpbWVsaW5lICpkbWFfZmVuY2VfcGFyZW50KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0K
PiAgICAqIEBiYXNlOiBiYXNlIGZlbmNlIG9iamVjdA0KPiAgICAqIEBsaW5rOiBsaW5rIG9uIHRo
ZSBzeW5jIHRpbWVsaW5lJ3MgbGlzdA0KPiAgICAqIEBub2RlOiBub2RlIGluIHRoZSBzeW5jIHRp
bWVsaW5lJ3MgdHJlZQ0KPiArICogQGRlYWRsaW5lOiB0aGUgZWFybGllc3QgZmVuY2UgZGVhZGxp
bmUgaGludA0KPiAgICAqLw0KPiAgIHN0cnVjdCBzeW5jX3B0IHsNCj4gICAJc3RydWN0IGRtYV9m
ZW5jZSBiYXNlOw0KPiAgIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7DQo+ICAgCXN0cnVjdCByYl9u
b2RlIG5vZGU7DQo+ICsJa3RpbWVfdCBkZWFkbGluZTsNCj4gICB9Ow0KPiAgIA0KPiAgIGV4dGVy
biBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHN3X3N5bmNfZGVidWdmc19mb3BzOw0KDQpS
ZWdhcmRzLA0KDQpUdnJ0a28NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
