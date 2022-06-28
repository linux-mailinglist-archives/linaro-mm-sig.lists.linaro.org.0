Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D981757B2A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:17:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15FD63EF69
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:17:19 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se [213.80.101.70])
	by lists.linaro.org (Postfix) with ESMTPS id 2A6173EC81
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 20:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id AC47E3F6D0;
	Tue, 28 Jun 2022 22:12:59 +0200 (CEST)
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
	with ESMTP id mmpRsQHvcbQV; Tue, 28 Jun 2022 22:12:58 +0200 (CEST)
Received: 
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id CDA333F5E5;
	Tue, 28 Jun 2022 22:12:55 +0200 (CEST)
Received: from [192.168.0.209] (h-155-4-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 5504F360156;
	Tue, 28 Jun 2022 22:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1656447175; bh=8qVW4B3M3sdbclxh8UQh5P9peDN3xxFvdDdC5TV32/0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dVFF/BzMCsmmWG2zHPWW6M0VCmuZz4GO4qbbISmpcnG1hjGYEkIoPCt6RUdqXtSN5
	 Zw7NouOgpWzqOWItxknC6wyoxQz+N4x4jBvrz2P0oIotiPufQ3K9y8CBhGSA/p5GgE
	 mX1Zal2b0Dlj2qezn+xXIo0JguejcKH2kGq5qm/s=
Message-ID: <d3fcb4ee-83ec-09b8-d1ef-0191512fda91@shipmail.org>
Date: Tue, 28 Jun 2022 22:12:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-2-dmitry.osipenko@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20220526235040.678984-2-dmitry.osipenko@collabora.com>
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: 6MUJTYG3MSVNWJL47IIJOPEGVNU5XGAY
X-Message-ID-Hash: 6MUJTYG3MSVNWJL47IIJOPEGVNU5XGAY
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:17:16 +0000
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 01/22] drm/gem: Properly annotate WW context on drm_gem_lock_reservations() error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MUJTYG3MSVNWJL47IIJOPEGVNU5XGAY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDUvMjcvMjIgMDE6NTAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToNCj4gVXNlIHd3
X2FjcXVpcmVfZmluaSgpIGluIHRoZSBlcnJvciBjb2RlIHBhdGhzLiBPdGhlcndpc2UgbG9ja2Rl
cA0KPiB0aGlua3MgdGhhdCBsb2NrIGlzIGhlbGQgd2hlbiBsb2NrJ3MgbWVtb3J5IGlzIGZyZWVk
IGFmdGVyIHRoZQ0KPiBkcm1fZ2VtX2xvY2tfcmVzZXJ2YXRpb25zKCkgZXJyb3IuIFRoZSBXVyBu
ZWVkcyB0byBiZSBhbm5vdGF0ZWQNCj4gYXMgImZyZWVkIg0KDQpzIC9XVy93d19hY3F1aXJlX2Nv
bnRleHQvID8NCnMgLyJmcmVlZCIvInJlbGVhc2VkIi8gPw0KDQoNCj4gLCB3aGljaCBmaXhlcyB0
aGUgbm9pc3kgIldBUk5JTkc6IGhlbGQgbG9jayBmcmVlZCEiIHNwbGF0DQo+IG9mIFZpcnRJTy1H
UFUgZHJpdmVyIHdpdGggQ09ORklHX0RFQlVHX01VVEVYRVM9eSBhbmQgZW5hYmxlZCBsb2NrZGVw
Lg0KPg0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KDQpDYW4geW91IGRpZyB1cCB0aGUg
Y29tbWl0IGluIGVycm9yIGFuZCBhZGQgYSBGaXhlczogVGFnPw0KDQpVc2luZyB0aGF0IGFuZCAi
ZGltIGZpeGVzIiB3aWxsIGFsc28gbWFrZSB0aGUgQ2M6IHN0YWJsZSB0YWcgYSBiaXQgbW9yZSAN
CnZlcmJvc2UuDQoNCldpdGggdGhhdCBmaXhlZCwNCg0KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCg0KDQo+IFNpZ25lZC1v
ZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgfCA0ICsrLS0NCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMN
Cj4gaW5kZXggZWIwYzJkMDQxZjEzLi44NmQ2NzBjNzEyODYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0K
PiBAQCAtMTIyNiw3ICsxMjI2LDcgQEAgZHJtX2dlbV9sb2NrX3Jlc2VydmF0aW9ucyhzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKipvYmpzLCBpbnQgY291bnQsDQo+ICAgCQlyZXQgPSBkbWFfcmVzdl9s
b2NrX3Nsb3dfaW50ZXJydXB0aWJsZShvYmotPnJlc3YsDQo+ICAgCQkJCQkJCQkgYWNxdWlyZV9j
dHgpOw0KPiAgIAkJaWYgKHJldCkgew0KPiAtCQkJd3dfYWNxdWlyZV9kb25lKGFjcXVpcmVfY3R4
KTsNCj4gKwkJCXd3X2FjcXVpcmVfZmluaShhY3F1aXJlX2N0eCk7DQo+ICAgCQkJcmV0dXJuIHJl
dDsNCj4gICAJCX0NCj4gICAJfQ0KPiBAQCAtMTI1MSw3ICsxMjUxLDcgQEAgZHJtX2dlbV9sb2Nr
X3Jlc2VydmF0aW9ucyhzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKipvYmpzLCBpbnQgY291bnQsDQo+
ICAgCQkJCWdvdG8gcmV0cnk7DQo+ICAgCQkJfQ0KPiAgIA0KPiAtCQkJd3dfYWNxdWlyZV9kb25l
KGFjcXVpcmVfY3R4KTsNCj4gKwkJCXd3X2FjcXVpcmVfZmluaShhY3F1aXJlX2N0eCk7DQo+ICAg
CQkJcmV0dXJuIHJldDsNCj4gICAJCX0NCj4gICAJfQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
