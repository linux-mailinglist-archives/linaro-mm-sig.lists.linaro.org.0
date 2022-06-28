Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF1C55C58F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 14:51:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 746B03F2F7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 12:51:23 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 097223F2F7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 12:51:18 +0000 (UTC)
Received: from [192.168.2.145] (109-252-118-164.nat.spd-mgts.ru [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7ABBC6601856;
	Tue, 28 Jun 2022 13:51:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656420677;
	bh=QW35y0ngxo74XEIz+a+5lGVgqnaeMkyQSyje1iFHTww=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VIJvhDUJcm5yDx9PlWKbGQ74WtOgaDIRlnuWjRl3RSZ92ypNqOuh2I3bpjSz7OH4H
	 JGvnNJC8zmFqC7hT5uFxiAW5Dx635g6KUOblvf4uNCAiNufzsiyVGYH0HJTP6nChNV
	 uH74sFdDAuum+u5SJdOOqnitGC6cxSx+PBAfF6ZBFwIz6UCVPzpKzW6K802UU551PJ
	 9gd/kmz/LZafsmptA87YaQCQzcdNPvE77r/6v9FAzKaet4EK+0nCX6vqvEl0rlf6Gm
	 x1dq3kWwXK4S3yHxdJSm0xbxWEB4B/hMoLiQTHj6uc6GXhuywUCwPy1p9MPet+qr/A
	 GRvQWmyiyl8nA==
Message-ID: <17318333-d9b1-9184-4147-7e3123a6fccb@collabora.com>
Date: Tue, 28 Jun 2022 15:51:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, David Airlie <airlied@linux.ie>,
 Gerd Hoffmann <kraxel@redhat.com>,
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
 Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
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
 <49cc6f0c-e90e-8edd-52e7-4188620e2c28@arm.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <49cc6f0c-e90e-8edd-52e7-4188620e2c28@arm.com>
Message-ID-Hash: 36GP6UJLDU2NGBQV6ODFRI5OJJ2UQUSO
X-Message-ID-Hash: 36GP6UJLDU2NGBQV6ODFRI5OJJ2UQUSO
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/22] Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36GP6UJLDU2NGBQV6ODFRI5OJJ2UQUSO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOC8yMiAxNTozMSwgUm9iaW4gTXVycGh5IHdyb3RlOg0KPiBbwqAgMTAwLjUxMTQxMV0N
Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQo+IFvCoCAxMDAuNTExNDE5XSBCVUc6IEtBU0FOOiB1c2UtYWZ0ZXItZnJl
ZSBpbiBpcnFfd29ya19zaW5nbGUrMHhhNC8weDExMA0KPiBbwqAgMTAwLjUxMTQ0NV0gV3JpdGUg
b2Ygc2l6ZSA0IGF0IGFkZHIgZmZmZjAwMDAxMDdmNTgzMCBieSB0YXNrDQo+IGdsbWFyazItZXMy
LWRybS8yODANCj4gW8KgIDEwMC41MTE0NThdDQo+IFvCoCAxMDAuNTExNDY0XSBDUFU6IDEgUElE
OiAyODAgQ29tbTogZ2xtYXJrMi1lczItZHJtIE5vdCB0YWludGVkDQo+IDUuMTkuMC1yYzMrICM0
MDANCj4gW8KgIDEwMC41MTE0NzldIEhhcmR3YXJlIG5hbWU6IEFSTSBMVEQgQVJNIEp1bm8gRGV2
ZWxvcG1lbnQgUGxhdGZvcm0vQVJNDQo+IEp1bm8gRGV2ZWxvcG1lbnQgUGxhdGZvcm0sIEJJT1Mg
RURLIElJIFNlcMKgIDMgMjAxOQ0KPiBbwqAgMTAwLjUxMTQ4OV0gQ2FsbCB0cmFjZToNCj4gW8Kg
IDEwMC41MTE0OTRdwqAgZHVtcF9iYWNrdHJhY2UrMHgxZTQvMHgxZjANCj4gW8KgIDEwMC41MTE1
MTJdwqAgc2hvd19zdGFjaysweDIwLzB4NzANCj4gW8KgIDEwMC41MTE1MjNdwqAgZHVtcF9zdGFj
a19sdmwrMHg4Yy8weGI4DQo+IFvCoCAxMDAuNTExNTQzXcKgIHByaW50X3JlcG9ydCsweDE2Yy8w
eDY2OA0KPiBbwqAgMTAwLjUxMTU1OV3CoCBrYXNhbl9yZXBvcnQrMHg4MC8weDIwOA0KPiBbwqAg
MTAwLjUxMTU3NF3CoCBrYXNhbl9jaGVja19yYW5nZSsweDEwMC8weDFiOA0KPiBbwqAgMTAwLjUx
MTU5MF3CoCBfX2thc2FuX2NoZWNrX3dyaXRlKzB4MzQvMHg2MA0KPiBbwqAgMTAwLjUxMTYwN13C
oCBpcnFfd29ya19zaW5nbGUrMHhhNC8weDExMA0KPiBbwqAgMTAwLjUxMTYxOV3CoCBpcnFfd29y
a19ydW5fbGlzdCsweDZjLzB4ODgNCj4gW8KgIDEwMC41MTE2MzJdwqAgaXJxX3dvcmtfcnVuKzB4
MjgvMHg0OA0KPiBbwqAgMTAwLjUxMTY0NF3CoCBpcGlfaGFuZGxlcisweDI1NC8weDQ2OA0KPiBb
wqAgMTAwLjUxMTY2NF3CoCBoYW5kbGVfcGVyY3B1X2RldmlkX2lycSsweDExYy8weDUxOA0KPiBb
wqAgMTAwLjUxMTY4MV3CoCBnZW5lcmljX2hhbmRsZV9kb21haW5faXJxKzB4NTAvMHg3MA0KPiBb
wqAgMTAwLjUxMTY5OV3CoCBnaWNfaGFuZGxlX2lycSsweGQ0LzB4MTE4DQo+IFvCoCAxMDAuNTEx
NzExXcKgIGNhbGxfb25faXJxX3N0YWNrKzB4MmMvMHg1OA0KPiBbwqAgMTAwLjUxMTcyNV3CoCBk
b19pbnRlcnJ1cHRfaGFuZGxlcisweGMwLzB4YzgNCj4gW8KgIDEwMC41MTE3NDFdwqAgZWwxX2lu
dGVycnVwdCsweDQwLzB4NjgNCj4gW8KgIDEwMC41MTE3NTRdwqAgZWwxaF82NF9pcnFfaGFuZGxl
cisweDE4LzB4MjgNCj4gW8KgIDEwMC41MTE3NjddwqAgZWwxaF82NF9pcnErMHg2NC8weDY4DQo+
IFvCoCAxMDAuNTExNzc4XcKgIGlycV93b3JrX3F1ZXVlKzB4YzAvMHhkOA0KPiBbwqAgMTAwLjUx
MTc5MF3CoCBkcm1fc2NoZWRfZW50aXR5X2ZpbmkrMHgyYzQvMHgzYjANCj4gW8KgIDEwMC41MTE4
MDVdwqAgZHJtX3NjaGVkX2VudGl0eV9kZXN0cm95KzB4MmMvMHg0MA0KPiBbwqAgMTAwLjUxMTgx
OF3CoCBwYW5mcm9zdF9qb2JfY2xvc2UrMHg0NC8weDFjMA0KPiBbwqAgMTAwLjUxMTgzM13CoCBw
YW5mcm9zdF9wb3N0Y2xvc2UrMHgzOC8weDYwDQo+IFvCoCAxMDAuNTExODQ1XcKgIGRybV9maWxl
X2ZyZWUucGFydC4wKzB4MzNjLzB4NGI4DQo+IFvCoCAxMDAuNTExODYyXcKgIGRybV9jbG9zZV9o
ZWxwZXIuaXNyYS4wKzB4YzAvMHhkOA0KPiBbwqAgMTAwLjUxMTg3N13CoCBkcm1fcmVsZWFzZSsw
eGU0LzB4MWUwDQo+IFvCoCAxMDAuNTExODkxXcKgIF9fZnB1dCsweGY4LzB4MzkwDQo+IFvCoCAx
MDAuNTExOTA0XcKgIF9fX19mcHV0KzB4MTgvMHgyOA0KPiBbwqAgMTAwLjUxMTkxN13CoCB0YXNr
X3dvcmtfcnVuKzB4YzQvMHgxZTANCj4gW8KgIDEwMC41MTE5MjldwqAgZG9fZXhpdCsweDU1NC8w
eDExNjgNCj4gW8KgIDEwMC41MTE5NDVdwqAgZG9fZ3JvdXBfZXhpdCsweDYwLzB4MTA4DQo+IFvC
oCAxMDAuNTExOTYwXcKgIF9fYXJtNjRfc3lzX2V4aXRfZ3JvdXArMHgzNC8weDM4DQo+IFvCoCAx
MDAuNTExOTc3XcKgIGludm9rZV9zeXNjYWxsKzB4NjQvMHgxODANCj4gW8KgIDEwMC41MTE5OTNd
wqAgZWwwX3N2Y19jb21tb24uY29uc3Rwcm9wLjArMHgxM2MvMHgxNzANCj4gW8KgIDEwMC41MTIw
MTJdwqAgZG9fZWwwX3N2YysweDQ4LzB4ZTgNCj4gW8KgIDEwMC41MTIwMjhdwqAgZWwwX3N2Yysw
eDVjLzB4ZTANCj4gW8KgIDEwMC41MTIwMzhdwqAgZWwwdF82NF9zeW5jX2hhbmRsZXIrMHhiOC8w
eGMwDQo+IFvCoCAxMDAuNTEyMDUxXcKgIGVsMHRfNjRfc3luYysweDE4Yy8weDE5MA0KPiBbwqAg
MTAwLjUxMjA2NF0NCg0KVGhpcyBvbmUgc2hhbGwgYmUgZml4ZWQgYnkgWzFdIHRoYXQgaXMgbm90
IGluIHRoZSBSQyBrZXJuZWwgeWV0LCBwbGVhc2UNCnVzZSBsaW51eC1uZXh0Lg0KDQpbMV0NCmh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgt
bmV4dC5naXQvY29tbWl0Lz9oPW5leHQtMjAyMjA2MjgmaWQ9N2Q2NGM0MGE3ZDk2MTkwZDlkMDZl
MjQwMzA1Mzg5ZTAyNTI5NTkxNg0KDQotLSANCkJlc3QgcmVnYXJkcywNCkRtaXRyeQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
