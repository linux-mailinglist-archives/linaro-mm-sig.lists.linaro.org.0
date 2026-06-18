Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h5zcAXgGNGqlLQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 16:53:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D60C6A1091
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 16:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=RbweEWvR;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 365123F949
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 14:53:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by lists.linaro.org (Postfix) with ESMTPS id 1A60B3F949
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 14:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781794412; x=1813330412;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=LQK1k5amiHum4k7v4qC2gC4HASrAHvCiHPCPe6WMhvw=;
  b=RbweEWvRVXW3Ud8F1wQKHSmBlYuQJH09IY+nOzxGwNxwe+FvX2bun3eH
   5VlgaP6UilWgXLg/fBdROQ2c7W6A/Ep8u9mXUp37/DIGgB/+ponoupf1S
   pq6Kvtlryt0p1W7cCzUqlSb1+l/r7tqOI/PfPB5EXyTurVpgJOtpCrhNL
   fiJFd0cgn4Opq9Lo7KpuiMqJTYCx6+2cz7yayHLMLWp5TEbLyfpuMECtH
   q0xyjafeuc2boofgYtB0OOxYyEQ/9xY6TdpVpr9AVO/AY60ecztc0Ifll
   4sS3brzDr7Tffz5ufMQLVlhNSuQvYb4jvrHTD1L07cxwNxGQqFNbLO0/E
   w==;
X-CSE-ConnectionGUID: jFyNjR9eQqWr4XzlLkR5+g==
X-CSE-MsgGUID: e+PEZsL0R3uGd2jrTpc3eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="100043989"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600";
   d="scan'208";a="100043989"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 07:53:31 -0700
X-CSE-ConnectionGUID: PZCw4ob6SS6eGvQzQ+Kg9A==
X-CSE-MsgGUID: YUYyLKqDRGSAcHM4J6hSkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600";
   d="scan'208";a="244027388"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 07:53:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Andr=C3=A9?= Draszik <andre.draszik@linaro.org>, Maarten
 Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Boris Brezillon
 <boris.brezillon@collabora.com>, Philipp Stanner <phasta@kernel.org>
In-Reply-To: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260618-linux-drm_crtc_fix2-v1-1-c03e77b36f34@linaro.org>
Date: Thu, 18 Jun 2026 17:53:23 +0300
Message-ID: <03ea95355325fb0f8672005e10a8275304d93409@intel.com>
MIME-Version: 1.0
X-Spamd-Bar: ------
Message-ID-Hash: KNZCQBLWRXU3V7L46BP6YD22I26QTCKO
X-Message-ID-Hash: KNZCQBLWRXU3V7L46BP6YD22I26QTCKO
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?Q?Andr?= =?utf-8?Q?=C3=A9?= Draszik <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/drm_crtc: fix race with dma_fence_signal() in ::get_driver_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNZCQBLWRXU3V7L46BP6YD22I26QTCKO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andre.draszik@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,amd.com,igalia.com,collabora.com];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,intel.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D60C6A1091

T24gVGh1LCAxOCBKdW4gMjAyNiwgQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJv
Lm9yZz4gd3JvdGU6DQo+IFNpbmNlIGNvbW1pdCA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRh
Y2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpLA0KPiBJJ20gc2VlaW5nIHRoZSBCVUdfT04oKSB0
cmlnZ2VyaW5nIGluIGRybV9jcnRjJ3MgZmVuY2VfdG9fY3J0YygpIHZpYQ0KPiBkcm1fY3J0Y19m
ZW5jZV9nZXRfZHJpdmVyX25hbWUoKSByZWd1bGFybHk6DQo+DQo+ICAgICBDYWxsIHRyYWNlOg0K
PiAgICAgIHBhbmljKzB4NTgvMHg1Yw0KPiAgICAgIGRpZSsweDE2MC8weDE3OA0KPiAgICAgIGJ1
Z19icmtfaGFuZGxlcisweDcwLzB4YTQNCj4gICAgICBjYWxsX2VsMV9icmVha19ob29rKzB4M2Mv
MHgxYTANCj4gICAgICBkb19lbDFfYnJrNjQrMHgyNC8weDc0DQo+ICAgICAgZWwxX2JyazY0KzB4
MzQvMHg1NA0KPiAgICAgIGVsMWhfNjRfc3luY19oYW5kbGVyKzB4ODAvMHhmYw0KPiAgICAgIGVs
MWhfNjRfc3luYysweDg0LzB4ODgNCj4gICAgICBkcm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25h
bWUrMHg2MC8weDY4IChQKQ0KPiAgICAgIHN5bmNfZmlsZV9nZXRfbmFtZSsweDE4NC8weDQ1Yw0K
PiAgICAgIHN5bmNfZmlsZV9pb2N0bCsweDQwNC8weGY3MA0KPiAgICAgIF9fYXJtNjRfc3lzX2lv
Y3RsKzB4MTI0LzB4MWRjDQo+DQo+IFRoaXMgbG9va3MgdG8gYmUgY2F1c2VkIGJ5IGEgY29kZSBm
bG93IHNpbWlsYXIgdG8gdGhlIGZvbGxvd2luZzoNCj4NCj4gKysrIHNuaXAgKysrDQo+IHRocmVh
ZCBBICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aHJlYWQgQg0KPg0KPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW9jdGwoU1lOQ19JT0NfRklMRV9JTkZPKQ0KPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3luY19maWxlX2lvY3RsKCkNCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN5bmNfZmlsZV9nZXRfbmFtZSgp
DQo+IGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCgpICBkbWFfZmVuY2VfZHJpdmVy
X25hbWUoKQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcHMgPSBy
Y3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcykNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKCkpDQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3BzLT5nZXRfZHJpdmVyX25hbWUo
ZmVuY2UpIGkuZS4NCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
cm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25hbWUoKQ0KPiB0ZXN0X2FuZF9zZXRfYml0KFNJR05B
TEVEKQ0KPiBSQ1VfSU5JVF9QT0lOVEVSKGZlbmNlLT5vcHMsIE5VTEwpDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fY3J0Y19mZW5jZV9nZXRfZHJpdmVyX25hbWUo
KQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCVUdfT04ocmN1X2Fj
Y2Vzc19wb2ludGVyKGZlbmNlLT5vcHMpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAhPSAmZHJtX2NydGNfZmVuY2Vfb3BzKQ0KPiArKysgc25hcCArKysN
Cj4NCj4gSSBzZWUgdHdvIHdheXMgdG8gcmVzb2x2ZSB0aGlzOg0KPiBhKSBzaW1wbHkgZHJvcCB0
aGUgQlVHX09OKCkuIEl0IGNhbiBub3Qgd29yayBhbnltb3JlIHNpbmNlIGFib3ZlDQo+ICAgIGNv
bW1pdCwgYXMgaXQgaXMgcmFjeSBub3cuDQo+IGIpIHBhc3MgdGhlIG9yaWdpbmFsICdvcHMnIHBv
aW50ZXIgb2J0YWluZWQgaW4gZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKCkNCj4gICAgdG8gYWxsIGNh
bGxlZXMuDQo+DQo+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyBvcHRpb24gYSksIGFzIGJlY2F1c2U6
DQo+ICogSSBkb24ndCBzZWUgbXVjaCBiZW5lZml0IGluIHBhc3NpbmcgdGhlIGV4dHJhIHBvaW50
ZXIganVzdCBmb3IgdGhpcw0KPiAgIEJVR19PTigpIHRvIHdvcmsuDQo+ICogUmVxdWlyaW5nIHRo
ZSBkbWFfZmVuY2Vfb3BzIGluIHRob3NlIGNhbGxiYWNrcyBpcyBhbiBpbXBsZW1lbnRhdGlvbg0K
PiAgIGRldGFpbCBvZiB0aGUgZHJtX2NydGMgZHJpdmVyLCBhbmQgdGhlcmVmb3JlIHVwcGVyIGxh
eWVycyBzaG91bGRuJ3QNCj4gICBoYXZlIHRvIGNhcmUgYWJvdXQgdGhhdC4NCj4gKiBUaGUgZXhp
c3RlbmNlIG9mIHRoZSBCVUdfT04oKSBkb2Vzbid0IGFwcGVhciB0byBiZSBjb25zaXN0ZW50IHdp
dGgNCj4gICBpbXBsZW1lbnRhdGlvbnMgb2YgOjpnZXRfZHJpdmVyX25hbWUoKSBvciA6OmdldF90
aW1lbGluZV9uYW1lKCkgaW4NCj4gICB0aGUgbWFqb3JpdHkgb2Ygb3RoZXIgRFJNIGRyaXZlcnMg
aW4gdGhlIGZpcnN0IHBsYWNlLiBUaG9zZSB0aGF0IGRvDQo+ICAgaGF2ZSBhIHNpbWlsYXIgQlVH
X09OKCkgKGk5MTUsIHhlKSBwcm9iYWJseSBhbHNvIG5lZWQgYW4gdXBkYXRlDQo+ICAgc2ltaWxh
ciB0byB0aGlzIHBhdGNoIGhlcmUgYnV0IEknbSBub3QgaW4gYSBwb3NpdGlvbiB0byB0ZXN0IHRo
b3NlLg0KPg0KPiBOb3RlIHRoYXQgdGhlIGFkamFjZW50IGRybV9jcnRjX2ZlbmNlX2dldF90aW1l
bGluZV9uYW1lKCkgaGFzIHRoZSBzYW1lDQo+IHByb2JsZW0gYW5kIGlzIGZpeGVkIGJ5IHRoaXMg
cGF0Y2ggYXMgd2VsbC4NCj4NCj4gRml4ZXM6IDU0MWM4ZjI0NjhiOSAoImRtYS1idWY6IGRldGFj
aCBmZW5jZSBvcHMgb24gc2lnbmFsIHYzIikNCj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6
aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2NydGMuYyB8IDExICsrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2NydGMuYw0KPiBpbmRleCA2M2VhZDhi
YTY3NTYuLjMxYzg2MzZlNzQ2NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9j
cnRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMNCj4gQEAgLTczLDYgKzcz
LDkgQEANCj4gICAqICZkcm1fbW9kZV9jb25maWdfZnVuY3MuYXRvbWljX2NoZWNrLg0KPiAgICov
DQo+ICANCj4gKyNkZWZpbmUgZmVuY2VfdG9fY3J0YyhmKSBjb250YWluZXJfb2YoKGYpLT5leHRl
cm5fbG9jaywgXA0KPiArCQkJCSAgICAgIHN0cnVjdCBkcm1fY3J0YywgZmVuY2VfbG9jaykNCj4g
Kw0KPiAgLyoqDQo+ICAgKiBkcm1fY3J0Y19mcm9tX2luZGV4IC0gZmluZCB0aGUgcmVnaXN0ZXJl
ZCBDUlRDIGF0IGFuIGluZGV4DQo+ICAgKiBAZGV2OiBEUk0gZGV2aWNlDQo+IEBAIC0xNTQsMTQg
KzE1Nyw2IEBAIHN0YXRpYyB2b2lkIGRybV9jcnRjX2NyY19maW5pKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YykNCj4gICNlbmRpZg0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9m
ZW5jZV9vcHMgZHJtX2NydGNfZmVuY2Vfb3BzOw0KPiAtDQo+IC1zdGF0aWMgc3RydWN0IGRybV9j
cnRjICpmZW5jZV90b19jcnRjKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAtew0KPiAtCUJV
R19PTihyY3VfYWNjZXNzX3BvaW50ZXIoZmVuY2UtPm9wcykgIT0gJmRybV9jcnRjX2ZlbmNlX29w
cyk7DQoNCldoZXRoZXIgcmVtb3ZpbmcgdGhlIEJVR19PTigpIHR1cm5zIG91dCB0byBiZSB0aGUg
cmlnaHQgY2hvaWNlIG9yIG5vdCwgSQ0KY291bGRuJ3Qgc2F5LCBidXQgcGxlYXNlIGRvbid0IHR1
cm4gdGhpcyBmdW5jdGlvbiBpbnRvIGEgbWFjcm8sIGF0IGxlYXN0DQpub3Qgd2l0aG91dCByYXRp
b25hbGUuIChJIGNhbid0IHRoaW5rIG9mIGFueS4pDQoNCkJSLA0KSmFuaS4NCg0KPiAtCXJldHVy
biBjb250YWluZXJfb2YoZmVuY2UtPmV4dGVybl9sb2NrLCBzdHJ1Y3QgZHJtX2NydGMsIGZlbmNl
X2xvY2spOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgY29uc3QgY2hhciAqZHJtX2NydGNfZmVuY2Vf
Z2V0X2RyaXZlcl9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgew0KPiAgCXN0cnVj
dCBkcm1fY3J0YyAqY3J0YyA9IGZlbmNlX3RvX2NydGMoZmVuY2UpOw0KPg0KPiAtLS0NCj4gYmFz
ZS1jb21taXQ6IGUyY2FlMDBjMDVkMTk2NDkxYzMxODE5Njc5MjI5N2YyZGZiYWEwMmMNCj4gY2hh
bmdlLWlkOiAyMDI2MDYxOC1saW51eC1kcm1fY3J0Y19maXgyLTIzYTdjMzU0YTQxMg0KPg0KPiBC
ZXN0IHJlZ2FyZHMsDQoNCi0tIA0KSmFuaSBOaWt1bGEsIEludGVsDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
