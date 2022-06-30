Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0399257B7D2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 15:47:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49BB3404F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 13:47:57 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id 82DA43EF25
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jun 2022 07:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656572520; x=1688108520;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=AeHi61WsIJAmFsEU0j7KjinoFRAELD1Z5s+ZxYgSLyY=;
  b=d5jFrPaLz6eleaHaXeQ192JEwsoywlO+90bPqFnd6ZsPOmc/dZZvjKdr
   0MTb1GzOYlOipOI2ij7J9tL8XML63/Z3GTncaHXZ7LOcORWv77iTkmvwa
   SRh6hTiMHv3FV1k0BxpR7QEqeFxKBJ5/IeyAJe1RtYbDK9wPNIwCwxgh4
   mUj/AMVkP1toYkEllcW6yRZq7sM791soOTAlwwJA2Ij6Vyg6HhlD3s4Uv
   3ziRMKzgtjuLDmnZm0FAjY5wwsjbM/MBIOCbTG3Z+7Tqrf4Elcc01i0L+
   tfhZEG/21srZPUfu/2mQmS/INSpSIzT8RwwiDMXRlpps/1BcC6RyrqtRx
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="271032836"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="271032836"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 00:01:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400";
   d="scan'208";a="647761832"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.217.92]) ([10.251.217.92])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 00:01:49 -0700
Message-ID: <83341d51-6c63-4b37-2f02-b3f305930308@linux.intel.com>
Date: Thu, 30 Jun 2022 09:01:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 jie1zhan <jesse.zhang@amd.com>, broonie@kernel.org,
 alsa-devel@alsa-project.org
References: <20220629060236.3283445-1-jesse.zhang@amd.com>
 <8499b1f1-cd39-5cb4-9fac-735e68393556@amd.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <8499b1f1-cd39-5cb4-9fac-735e68393556@amd.com>
X-MailFrom: nirmoy.das@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MY7HO3YFBZZ65TE5W62JGYAPV4TWDBNW
X-Message-ID-Hash: MY7HO3YFBZZ65TE5W62JGYAPV4TWDBNW
X-Mailman-Approved-At: Wed, 20 Jul 2022 13:47:55 +0000
CC: Vijendar.Mukunda@amd.com, Basavaraj.Hiregoudar@amd.com, Sunil-kumar.Dommati@amd.com, ajitkumar.pandey@amd.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1] Fix: SYNCOBJ TIMELINE Test failed.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MY7HO3YFBZZ65TE5W62JGYAPV4TWDBNW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA2LzI5LzIwMjIgMTE6MTIgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IEFtIDI5
LjA2LjIyIHVtIDA4OjAyIHNjaHJpZWIgamllMXpoYW46DQo+PiDCoCBUaGUgaXNzdWUgY2F1c2Ug
YnkgdGhlIGNvbW1pdCA6DQo+Pg0KPj4gNzIxMjU1YjUyNyhkcm0vc3luY29iajogZmxhdHRlbiBk
bWFfZmVuY2VfY2hhaW5zIG9uIHRyYW5zZmVyKS4NCj4+DQo+PiBCZWNhdXNlIGl0IHVzZSB0aGUg
cG9pbnQgb2YgZG1hX2ZlbmNlIGluY29ycmVjdGx5DQo+Pg0KPj4gQ29ycmVjdCB0aGUgcG9pbnQg
b2YgZG1hX2ZlbmNlIGJ5IGZlbmNlIGFycmF5DQo+DQo+IFdlbGwgdGhhdCBwYXRjaCBpcyBqdXN0
IHV0dGVybHkgbm9uc2Vuc2UgYXMgZmFyIGFzIEkgY2FuIHNlZS4NCj4NCj4+DQo+PiBTaWduZWQt
b2ZmLWJ5OiBqaWUxemhhbiA8amVzc2UuemhhbmdAYW1kLmNvbT4NCj4+DQo+PiBSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4NCj4+IFJl
dmlld2VkLWJ5OiBOaXJtb3kgRGFzIDxuaXJtb3kuZGFzQGxpbnV4LmludGVsLmNvbT4NCj4NCj4g
SSBoYXZlIHN0cm9uZyBkb3VidHMgdGhhdCBOaXJtb3kgaGFzIHJldmlld2VkIHRoaXMgYW5kIEkg
Y2VydGFpbmx5IA0KPiBoYXZlbid0IHJldmlld2VkIGl0Lg0KDQoNCkkgaGF2ZW4ndMKgIHJldmll
d2VkIHRoaXMgZWl0aGVyLg0KDQoNCk5pcm1veQ0KDQo+DQo+IENocmlzdGlhbi4NCj4NCj4+IC0t
LQ0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCAyICstDQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgDQo+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fc3luY29iai5jDQo+PiBpbmRleCA3ZTQ4ZGNkMWJlZTQuLmQ1ZGI4MThmMWM3NiAxMDA2
NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPj4gQEAgLTg4Nyw3ICs4ODcsNyBAQCBzdGF0aWMg
aW50IGRybV9zeW5jb2JqX2ZsYXR0ZW5fY2hhaW4oc3RydWN0IA0KPj4gZG1hX2ZlbmNlICoqZikN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGZyZWVfZmVuY2VzOw0KPj4gwqAgwqDCoMKgwqDC
oCBkbWFfZmVuY2VfcHV0KCpmKTsNCj4+IC3CoMKgwqAgKmYgPSAmYXJyYXktPmJhc2U7DQo+PiAr
wqDCoMKgICpmID0gYXJyYXktPmZlbmNlc1swXTsNCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7DQo+
PiDCoCDCoCBmcmVlX2ZlbmNlczoNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
