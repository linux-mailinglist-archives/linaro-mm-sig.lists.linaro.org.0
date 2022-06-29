Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 681C857B2BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:21:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D54A41092
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:21:25 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se [213.80.101.70])
	by lists.linaro.org (Postfix) with ESMTPS id 7843B3EC7A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 05:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 38BEB40D31;
	Wed, 29 Jun 2022 07:34:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.11
X-Spam-Level: 
X-Spam-Status: No, score=-2.11 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
	T_SCC_BODY_TEXT_LINE=-0.01, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
	dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
	by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dHvBiPj_ZNU2; Wed, 29 Jun 2022 07:34:32 +0200 (CEST)
Received: 
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 5970C40D2E;
	Wed, 29 Jun 2022 07:34:29 +0200 (CEST)
Received: from [192.168.0.209] (h-155-4-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id E5B4B360156;
	Wed, 29 Jun 2022 07:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1656480869; bh=Q4NBmXKQNd4S9R0Q0tluaMDDBb+gkO5M4n/nZzST2s8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cD0Al4nZPkkWhtkupV6UMY9WzNjwA4yOn4lSWUJV5mx3+9fY+LQ+34BxCdZyjAxZD
	 8cBZugucs8JUVP2M1t+Qi6I3gaIZTfu6u0retUCaeaek0f0L9TzSSQ8LHH8r4BxhQL
	 gReaCzntbjj25n5ZtYikQDB0OQPymOnTyZQyk6lk=
Message-ID: <0971d84e-e8a9-6fda-5620-3eb3f90f3ecb@shipmail.org>
Date: Wed, 29 Jun 2022 07:34:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20220628233512.439555-1-robdclark@gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20220628233512.439555-1-robdclark@gmail.com>
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: 7ZIRCFIWCJSCZBVOMSQTUUT2PXZXATSQ
X-Message-ID-Hash: 7ZIRCFIWCJSCZBVOMSQTUUT2PXZXATSQ
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:21:23 +0000
CC: intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/i915: Remove __dma_fence_is_chain()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZIRCFIWCJSCZBVOMSQTUUT2PXZXATSQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA2LzI5LzIyIDAxOjM1LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IEZyb206IFJvYiBDbGFyayA8
cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gZHJpdmUtYnkgY2xlYW51cA0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQoNClJldmlld2Vk
LWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
DQoNCg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5j
IHwgNyArLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0
aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMNCj4g
aW5kZXggMzE5OTM2ZjkxYWM1Li42Njc4NDE3ODA1MTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYw0KPiBAQCAtNzMsMTEgKzczLDYgQEAgc3RhdGljIHZv
aWQgZmVuY2Vfc2V0X3ByaW9yaXR5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiAgIAlyY3Vf
cmVhZF91bmxvY2soKTsNCj4gICB9DQo+ICAgDQo+IC1zdGF0aWMgaW5saW5lIGJvb2wgX19kbWFf
ZmVuY2VfaXNfY2hhaW4oY29uc3Qgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+IC17DQo+IC0J
cmV0dXJuIGZlbmNlLT5vcHMgPT0gJmRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+IC19DQo+IC0NCj4g
ICB2b2lkIGk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsDQo+ICAgCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0cikNCj4gICB7
DQo+IEBAIC05Myw3ICs4OCw3IEBAIHZvaWQgaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwNCj4gICANCj4gICAJCWZvciAoaSA9IDA7IGkgPCBhcnJh
eS0+bnVtX2ZlbmNlczsgaSsrKQ0KPiAgIAkJCWZlbmNlX3NldF9wcmlvcml0eShhcnJheS0+ZmVu
Y2VzW2ldLCBhdHRyKTsNCj4gLQl9IGVsc2UgaWYgKF9fZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNl
KSkgew0KPiArCX0gZWxzZSBpZiAoZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNlKSkgew0KPiAgIAkJ
c3RydWN0IGRtYV9mZW5jZSAqaXRlcjsNCj4gICANCj4gICAJCS8qIFRoZSBjaGFpbiBpcyBvcmRl
cmVkOyBpZiB3ZSBib29zdCB0aGUgbGFzdCwgd2UgYm9vc3QgYWxsICovDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
