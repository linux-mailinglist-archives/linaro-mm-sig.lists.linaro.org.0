Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C3169F2B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 11:27:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DE933EC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 10:27:25 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id EAFB13EC4C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 10:27:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=bCjVQJUX;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 192.55.52.93) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677061627; x=1708597627;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ROYBNvdshjuHZw4os+dyBA0uMZJ7aJNn9ECIXz0QvQo=;
  b=bCjVQJUXWbLAWpbo0roP6zGLvrPG7enSs7LOxYxUrpbJlmskK6jFPx2D
   qB+l9LwxgTuANJEQz7tGr5YiuVfuqqRdZ+9KWM/rSBaE1xT2qqOjtLeGO
   4zc/+3ZeybtBtgyGCXEtujaGYevbpcS+TEduErXAfpEoq8ltm0dLnfpMC
   5EXBYYDe1cHHCKP65A8S/r9OlADeVlNW3PhuhpfePfRWli+zIhTNEutfr
   xpeKDyUisTRW4/PdmZSVQra8m0uxzFCBL3n0ZMBg7a39nBDwDnkBCYZ9G
   GGSIM4io8lNhUcQqLAblXjBFgZvOH1PyfLGdUXrwhXr9CEOqhPd9YRei1
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330615652"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000";
   d="scan'208";a="330615652"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 02:27:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="846081123"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000";
   d="scan'208";a="846081123"
Received: from hhammad-mobl1.ger.corp.intel.com (HELO [10.213.231.87]) ([10.213.231.87])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2023 02:27:02 -0800
Message-ID: <b056a87c-b6b2-25e0-25c7-f7d422793a3e@linux.intel.com>
Date: Wed, 22 Feb 2023 10:27:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-4-robdclark@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230218211608.1630586-4-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EAFB13EC4C
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
Message-ID-Hash: OKTYM4KCZTW6MPUUIB3LUWH5BUH77XEJ
X-Message-ID-Hash: OKTYM4KCZTW6MPUUIB3LUWH5BUH77XEJ
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 03/14] dma-buf/fence-chain: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OKTYM4KCZTW6MPUUIB3LUWH5BUH77XEJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxOC8wMi8yMDIzIDIxOjE1LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gDQo+IFByb3BhZ2F0ZSB0aGUgZGVhZGxpbmUg
dG8gYWxsIHRoZSBmZW5jZXMgaW4gdGhlIGNoYWluLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUm9i
IENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiBmb3IgdGhpcyBvbmUuDQo+IC0tLQ0K
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDEzICsrKysrKysrKysrKysN
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtY2hhaW4uYw0KPiBpbmRleCBhMGQ5MjA1NzZiYTYuLjQ2ODQ4NzRhZjYxMiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPiBAQCAtMjA2LDYgKzIwNiwxOCBAQCBzdGF0
aWMgdm9pZCBkbWFfZmVuY2VfY2hhaW5fcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkN
Cj4gICAJZG1hX2ZlbmNlX2ZyZWUoZmVuY2UpOw0KPiAgIH0NCj4gICANCj4gKw0KPiArc3RhdGlj
IHZvaWQgZG1hX2ZlbmNlX2NoYWluX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwNCj4gKwkJCQkJIGt0aW1lX3QgZGVhZGxpbmUpDQo+ICt7DQo+ICsJZG1hX2ZlbmNlX2NoYWlu
X2Zvcl9lYWNoKGZlbmNlLCBmZW5jZSkgew0KPiArCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpj
aGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihmZW5jZSk7DQo+ICsJCXN0cnVjdCBkbWFfZmVuY2Ug
KmYgPSBjaGFpbiA/IGNoYWluLT5mZW5jZSA6IGZlbmNlOw0KDQpMb3cgbGV2ZWwgY29tbWVudCAt
IGFib3ZlIHR3byBsaW5lcyBjb3VsZCBiZSByZXBsYWNlZCB3aXRoOg0KDQoJc3RydWN0IGRtYV9m
ZW5jZSAqZiA9IGRtYV9mZW5jZV9jaGFpbl9jb250YWluZWQoZmVuY2UpOw0KDQpBbHRob3VnaCB0
byBiZSBmYWlyIEkgYW0gbm90IHN1cmUgdGhhdCB3b3VsZG4ndCBiZSBtYWtpbmcgaXQgbGVzcyAN
CnJlYWRhYmxlLiBGcm9tIHRoZSBwb2ludCBvZiB2aWV3IHRoYXQgZmVuY2UgbWlnaHQgbm90IGJl
IGEgY2hhaW4sIHNvIA0KZG1hX2ZlbmNlX2NoYWluX2NvbnRhaW5lZCgpIHJlYWRzIGEgYml0IGRv
ZGd5IGFzIGFuIEFQSS4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQoNCj4gKw0KPiArCQlkbWFfZmVu
Y2Vfc2V0X2RlYWRsaW5lKGYsIGRlYWRsaW5lKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gICBjb25z
dCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzID0gew0KPiAgIAkudXNl
XzY0Yml0X3NlcW5vID0gdHJ1ZSwNCj4gICAJLmdldF9kcml2ZXJfbmFtZSA9IGRtYV9mZW5jZV9j
aGFpbl9nZXRfZHJpdmVyX25hbWUsDQo+IEBAIC0yMTMsNiArMjI1LDcgQEAgY29uc3Qgc3RydWN0
IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2NoYWluX29wcyA9IHsNCj4gICAJLmVuYWJsZV9zaWdu
YWxpbmcgPSBkbWFfZmVuY2VfY2hhaW5fZW5hYmxlX3NpZ25hbGluZywNCj4gICAJLnNpZ25hbGVk
ID0gZG1hX2ZlbmNlX2NoYWluX3NpZ25hbGVkLA0KPiAgIAkucmVsZWFzZSA9IGRtYV9mZW5jZV9j
aGFpbl9yZWxlYXNlLA0KPiArCS5zZXRfZGVhZGxpbmUgPSBkbWFfZmVuY2VfY2hhaW5fc2V0X2Rl
YWRsaW5lLA0KPiAgIH07DQo+ICAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfY2hhaW5fb3BzKTsN
Cj4gICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
