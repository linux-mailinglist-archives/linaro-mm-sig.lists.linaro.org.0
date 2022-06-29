Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF955FA4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 10:24:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B32D83F43F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 08:24:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 9E97C3EE9F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 08:23:57 +0000 (UTC)
Received: from [192.168.2.145] (109-252-118-164.nat.spd-mgts.ru [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2C51C66018F6;
	Wed, 29 Jun 2022 09:23:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656491036;
	bh=TKplUYktuy+fI9Fnwv5CbrVDB+CILHnu464IQXTpgjg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Hh50EXmRXalD8uakgN300BfHpmjducw9bC+QVgu+5qZJ+/06XJI6vmnwyVunKHvTu
	 UurO0sBxI/nVuIlAr3VXYn58dM1imSvobu55OFj091KfdlQDYptmB3FkuxkWooYgI5
	 NpSItA+GHgY6jPnWQbmqoBN/FD6L4QqvRvJdrRvwozQKplNFqn5bxByj5x7N8ZzztY
	 1NGWfuHPh2QKNtJVxBm0HGaBnWhbCFAyCwSOa/+Zp73xpzBmDZHRMCEIF/ZeONMbYT
	 XUq5kP9/+4sLtdAJWqQ7HViJKJJxcDwBrTJthLmqG4Pw4WwunvIZwT0lC3xjDWQAmJ
	 8GjaWihLHjnhA==
Message-ID: <51d58fff-238e-33e9-20d0-0836b1197459@collabora.com>
Date: Wed, 29 Jun 2022 11:23:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
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
 <d3fcb4ee-83ec-09b8-d1ef-0191512fda91@shipmail.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <d3fcb4ee-83ec-09b8-d1ef-0191512fda91@shipmail.org>
Message-ID-Hash: 4CKIVTZA5KXGMJHIA2CGB3XPJJCWGE7R
X-Message-ID-Hash: 4CKIVTZA5KXGMJHIA2CGB3XPJJCWGE7R
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, kernel@collabora.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 01/22] drm/gem: Properly annotate WW context on drm_gem_lock_reservations() error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4CKIVTZA5KXGMJHIA2CGB3XPJJCWGE7R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOC8yMiAyMzoxMiwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToNCj4gSGks
DQo+IA0KPiBPbiA1LzI3LzIyIDAxOjUwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6DQo+PiBVc2Ug
d3dfYWNxdWlyZV9maW5pKCkgaW4gdGhlIGVycm9yIGNvZGUgcGF0aHMuIE90aGVyd2lzZSBsb2Nr
ZGVwDQo+PiB0aGlua3MgdGhhdCBsb2NrIGlzIGhlbGQgd2hlbiBsb2NrJ3MgbWVtb3J5IGlzIGZy
ZWVkIGFmdGVyIHRoZQ0KPj4gZHJtX2dlbV9sb2NrX3Jlc2VydmF0aW9ucygpIGVycm9yLiBUaGUg
V1cgbmVlZHMgdG8gYmUgYW5ub3RhdGVkDQo+PiBhcyAiZnJlZWQiDQo+IA0KPiBzIC9XVy93d19h
Y3F1aXJlX2NvbnRleHQvID8NCj4gcyAvImZyZWVkIi8icmVsZWFzZWQiLyA/DQo+IA0KPiANCj4+
ICwgd2hpY2ggZml4ZXMgdGhlIG5vaXN5ICJXQVJOSU5HOiBoZWxkIGxvY2sgZnJlZWQhIiBzcGxh
dA0KPj4gb2YgVmlydElPLUdQVSBkcml2ZXIgd2l0aCBDT05GSUdfREVCVUdfTVVURVhFUz15IGFu
ZCBlbmFibGVkIGxvY2tkZXAuDQo+Pg0KPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4g
DQo+IENhbiB5b3UgZGlnIHVwIHRoZSBjb21taXQgaW4gZXJyb3IgYW5kIGFkZCBhIEZpeGVzOiBU
YWc/DQo+IA0KPiBVc2luZyB0aGF0IGFuZCAiZGltIGZpeGVzIiB3aWxsIGFsc28gbWFrZSB0aGUg
Q2M6IHN0YWJsZSB0YWcgYSBiaXQgbW9yZQ0KPiB2ZXJib3NlLg0KPiANCj4gV2l0aCB0aGF0IGZp
eGVkLA0KPiANCj4gUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0
cm9tQGxpbnV4LmludGVsLmNvbT4NCg0KSSdsbCB1cGRhdGUgdGhpcyBwYXRjaCwgdGhhbmsgeW91
IGZvciB0YWtpbmcgYSBsb29rLg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
