Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8671254C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 13:11:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7277D3F971
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 11:11:47 +0000 (UTC)
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	by lists.linaro.org (Postfix) with ESMTPS id D27F63EEB2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 11:11:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Gid9LHNs;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 134.134.136.31) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1685099501; x=1716635501;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Mhkhm8kq53AOwOF+Lqg4GTd5pXjrHRpfVPXbRnGf3bY=;
  b=Gid9LHNstejw08EKqgu2zsTb5kAFg39mDbIxPWMF5gvMj6hE25qS5g1x
   f9nTVBfxdTaMaHKOzRT+35TCbrhnZ+7u9/syAZDOOUmkqW3w+4jOAuDTZ
   RlT1uJ6nkk8d+9To5f/PJCr6tYAkvoCoIQsjb54kq944YEGPfOdfWjEdD
   i5VMQ6cVI8zWMTCEoDUAo6Bm2906JctnqNSJTVGGLlyjOIm2e1Ay3FpgF
   4JKGoh9KVGea104hSWntmqh41mr/3C1L5akVSm95Hd1Scio2HN+6AyIrz
   tEAMecbNd6aIgn0VdPYWqeEBQH8zjNQ2igNW1Ql/B0xcGLZqNwfafhlwr
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="417664180"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400";
   d="scan'208";a="417664180"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2023 04:11:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="699388945"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400";
   d="scan'208";a="699388945"
Received: from binis42x-mobl.gar.corp.intel.com (HELO [10.249.254.65]) ([10.249.254.65])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2023 04:11:31 -0700
Message-ID: <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
Date: Fri, 26 May 2023 13:11:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
X-Spamd-Result: default: False [-3.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D27F63EEB2
X-Spamd-Bar: ---
Message-ID-Hash: KULL2MTORTRUB2BFHG5K4Y4YFSSOTTWW
X-Message-ID-Hash: KULL2MTORTRUB2BFHG5K4Y4YFSSOTTWW
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian Koenig <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KULL2MTORTRUB2BFHG5K4Y4YFSSOTTWW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGFuaWVsLA0KDQpPbiA0LzI4LzIzIDE0OjUyLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4g
Q29uZHNpZGVyIHRoZSBmb2xsb3dpbmcgY2FsbCBzZXF1ZW5jZToNCj4NCj4gLyogVXBwZXIgbGF5
ZXIgKi8NCj4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsNCj4gbG9jayh0YWludGVkX3No
YXJlZF9sb2NrKTsNCj4gLyogRHJpdmVyIGNhbGxiYWNrICovDQo+IGRtYV9mZW5jZV9iZWdpbl9z
aWduYWxsaW5nKCk7DQo+IC4uLg0KPg0KPiBUaGUgZHJpdmVyIG1pZ2h0IGhlcmUgdXNlIGEgdXRp
bGl0eSB0aGF0IGlzIGFubm90YXRlZCBhcyBpbnRlbmRlZCBmb3IgdGhlDQo+IGRtYS1mZW5jZSBz
aWduYWxsaW5nIGNyaXRpY2FsIHBhdGguIE5vdyBpZiB0aGUgdXBwZXIgbGF5ZXIgaXNuJ3QgY29y
cmVjdGx5DQo+IGFubm90YXRlZCB5ZXQgZm9yIHdoYXRldmVyIHJlYXNvbiwgcmVzdWx0aW5nIGlu
DQo+DQo+IC8qIFVwcGVyIGxheWVyICovDQo+IGxvY2sodGFpbnRlZF9zaGFyZWRfbG9jayk7DQo+
IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPiBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOw0K
Pg0KPiBXZSB3aWxsIHJlY2VpdmUgYSBmYWxzZSBsb2NrZGVwIGxvY2tpbmcgb3JkZXIgdmlvbGF0
aW9uIG5vdGlmaWNhdGlvbiBmcm9tDQo+IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCkuIEhv
d2V2ZXIgZW50ZXJpbmcgYSBkbWEtZmVuY2Ugc2lnbmFsbGluZw0KPiBjcml0aWNhbCBzZWN0aW9u
IGl0c2VsZiBkb2Vzbid0IGJsb2NrIGFuZCBjb3VsZCBub3QgY2F1c2UgYSBkZWFkbG9jay4NCj4N
Cj4gU28gdXNlIGEgc3VjY2Vzc2Z1bCByZWFkX3RyeWxvY2soKSBhbm5vdGF0aW9uIGluc3RlYWQg
Zm9yDQo+IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCkuIFRoYXQgd2lsbCBtYWtlIHN1cmUg
dGhhdCB0aGUgbG9ja2luZyBvcmRlcg0KPiBpcyBjb3JyZWN0bHkgcmVnaXN0ZXJlZCBpbiB0aGUg
Zmlyc3QgY2FzZSwgYW5kIGRvZXNuJ3QgcmVnaXN0ZXIgYW55DQo+IGxvY2tpbmcgb3JkZXIgaW4g
dGhlIHNlY29uZCBjYXNlLg0KPg0KPiBUaGUgYWx0ZXJuYXRpdmUgaXMgb2YgY291cnNlIHRvIG1h
a2Ugc3VyZSB0aGF0IHRoZSAiVXBwZXIgbGF5ZXIiIGlzIGFsd2F5cw0KPiBjb3JyZWN0bHkgYW5u
b3RhdGVkLiBCdXQgZXhwZXJpZW5jZSBzaG93cyB0aGF0J3Mgbm90IGVhc2lseSBhY2hpZXZhYmxl
DQo+IGluIGFsbCBjYXNlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KDQpSZXN1cnJlY3RpbmcgdGhlIGRp
c2N1c3Npb24gb24gdGhpcyBvbmUuIEkgY2FuJ3Qgc2VlIGEgc2l0dWF0aW9uIHdoZXJlIA0Kd2Ug
d291bGQgbWlzcyAqcmVsZXZhbnQqIGxvY2tpbmcNCm9yZGVyIHZpb2xhdGlvbiB3YXJuaW5ncyB3
aXRoIHRoaXMgcGF0Y2guIE9mYyBpZiB3ZSBoYXZlIGEgc2NoZWR1bGVyIA0KYW5ub3RhdGlvbiBw
YXRjaCB0aGF0IHdvdWxkIHdvcmsgZmluZSBhcyB3ZWxsLCBidXQgdGhlIGxhY2sgb2YgDQphbm5v
dGF0aW9uIGluIHRoZSBzY2hlZHVsZXIgY2FsbGJhY2tzIGlzIHJlYWxseSBzdGFydGluZyB0byBo
dXJ0IHVzLg0KDQpUaGFua3MsDQoNClRob21hcw0KDQoNCg0KPiAtLS0NCj4gICBkcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMgfCA2ICsrKy0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gaW5kZXggZjE3
N2M1NjI2OWJiLi4xN2Y2MzI3NjhlZjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gQEAgLTMw
OCw4ICszMDgsOCBAQCBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKHZvaWQpDQo+ICAg
CWlmIChpbl9hdG9taWMoKSkNCj4gICAJCXJldHVybiB0cnVlOw0KPiAgIA0KPiAtCS8qIC4uLiBh
bmQgbm9uLXJlY3Vyc2l2ZSByZWFkbG9jayAqLw0KPiAtCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNl
X2xvY2tkZXBfbWFwLCAwLCAwLCAxLCAxLCBOVUxMLCBfUkVUX0lQXyk7DQo+ICsJLyogLi4uIGFu
ZCBub24tcmVjdXJzaXZlIHN1Y2Nlc3NmdWwgcmVhZF90cnlsb2NrICovDQo+ICsJbG9ja19hY3F1
aXJlKCZkbWFfZmVuY2VfbG9ja2RlcF9tYXAsIDAsIDEsIDEsIDEsIE5VTEwsIF9SRVRfSVBfKTsN
Cj4gICANCj4gICAJcmV0dXJuIGZhbHNlOw0KPiAgIH0NCj4gQEAgLTM0MCw3ICszNDAsNyBAQCB2
b2lkIF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQodm9pZCkNCj4gICAJbG9ja19tYXBfYWNxdWlyZSgm
ZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsNCj4gICAJbG9ja19tYXBfcmVsZWFzZSgmZG1hX2ZlbmNl
X2xvY2tkZXBfbWFwKTsNCj4gICAJaWYgKHRtcCkNCj4gLQkJbG9ja19hY3F1aXJlKCZkbWFfZmVu
Y2VfbG9ja2RlcF9tYXAsIDAsIDAsIDEsIDEsIE5VTEwsIF9USElTX0lQXyk7DQo+ICsJCWxvY2tf
YWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwLCAwLCAxLCAxLCAxLCBOVUxMLCBfVEhJU19J
UF8pOw0KPiAgIH0NCj4gICAjZW5kaWYNCj4gICANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
