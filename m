Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50255C565
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 14:51:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23AD33F479
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jun 2022 12:51:09 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 2A6083F2F7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 12:51:04 +0000 (UTC)
Received: from [192.168.2.145] (109-252-118-164.nat.spd-mgts.ru [109.252.118.164])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0CAD76601856;
	Tue, 28 Jun 2022 13:50:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656420662;
	bh=PFIWuLGIBDtoRI7sScn1Qx1sFNzrxav9CwBcyPc2Png=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=V6A4i4mgC7SygYLCmvg40e3M81RG/nLZ/L09nEF81ZEMMV40VCGpzFid5ug7Tsy+M
	 JJULMGU+7KkybWYvkIsvU/ssgYQavWAgTD+qaLt1ZFZMED89SRhVkbTpf0pkVLfkoR
	 JfMkEqOi6Jltg+VJCW0E6PxrF4y+o0UyiHoHJPm5iOgz2VnonBrpPs33i7rlIkHOWe
	 GbmYQjKXkSUuNfZXIi9JfAnVBSFfMhkr7oZUdkjoY+h8H0UjB5/VbfcY+JTYya+yEV
	 nUgQkyz86IxSI8sX2smo3E9EcgTcZljuRobh25uNSzXJ+0iLsUPXTV8KID1cNF+P49
	 tf0YoXH3FRlUA==
Message-ID: <f77c1c2d-d9f9-db00-906a-ec10b535621d@collabora.com>
Date: Tue, 28 Jun 2022 15:50:57 +0300
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
Message-ID-Hash: S6DKGVGXB4SEXXCK574Z7VD2RFULAABQ
X-Message-ID-Hash: S6DKGVGXB4SEXXCK574Z7VD2RFULAABQ
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/22] Add generic memory shrinker to VirtIO-GPU and Panfrost DRM drivers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S6DKGVGXB4SEXXCK574Z7VD2RFULAABQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNi8yOC8yMiAxNTozMSwgUm9iaW4gTXVycGh5IHdyb3RlOg0KPiAtLS0tLT44LS0tLS0NCj4g
W8KgwqAgNjguMjk1OTUxXSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCj4gW8KgwqAgNjguMjk1OTU2XSBXQVJOSU5HOiBwb3NzaWJsZSBjaXJj
dWxhciBsb2NraW5nIGRlcGVuZGVuY3kgZGV0ZWN0ZWQNCj4gW8KgwqAgNjguMjk1OTYzXSA1LjE5
LjAtcmMzKyAjNDAwIE5vdCB0YWludGVkDQo+IFvCoMKgIDY4LjI5NTk3Ml0gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IFvCoMKgIDY4LjI5
NTk3N10gY2MxLzI5NSBpcyB0cnlpbmcgdG8gYWNxdWlyZSBsb2NrOg0KPiBbwqDCoCA2OC4yOTU5
ODZdIGZmZmYwMDAwMDhkN2YxYTANCj4gKHJlc2VydmF0aW9uX3d3X2NsYXNzX211dGV4KXsrLisu
fS17MzozfSwgYXQ6IGRybV9nZW1fc2htZW1fZnJlZSsweDdjLzB4MTk4DQo+IFvCoMKgIDY4LjI5
NjAzNl0NCj4gW8KgwqAgNjguMjk2MDM2XSBidXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9j
azoNCj4gW8KgwqAgNjguMjk2MDQxXSBmZmZmODAwMDBjMTRiODIwIChmc19yZWNsYWltKXsrLisu
fS17MDowfSwgYXQ6DQo+IF9fYWxsb2NfcGFnZXNfc2xvd3BhdGguY29uc3Rwcm9wLjArMHg0ZDgv
MHgxNDcwDQo+IFvCoMKgIDY4LjI5NjA4MF0NCj4gW8KgwqAgNjguMjk2MDgwXSB3aGljaCBsb2Nr
IGFscmVhZHkgZGVwZW5kcyBvbiB0aGUgbmV3IGxvY2suDQo+IFvCoMKgIDY4LjI5NjA4MF0NCj4g
W8KgwqAgNjguMjk2MDg1XQ0KPiBbwqDCoCA2OC4yOTYwODVdIHRoZSBleGlzdGluZyBkZXBlbmRl
bmN5IGNoYWluIChpbiByZXZlcnNlIG9yZGVyKSBpczoNCj4gW8KgwqAgNjguMjk2MDkwXQ0KPiBb
wqDCoCA2OC4yOTYwOTBdIC0+ICMxIChmc19yZWNsYWltKXsrLisufS17MDowfToNCj4gW8KgwqAg
NjguMjk2MTExXcKgwqDCoMKgwqDCoMKgIGZzX3JlY2xhaW1fYWNxdWlyZSsweGI4LzB4MTUwDQo+
IFvCoMKgIDY4LjI5NjEzMF3CoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9sb2NrZGVwKzB4Mjk4LzB4
M2ZjDQo+IFvCoMKgIDY4LjI5NjE0OF3CoMKgwqDCoMKgwqDCoCBkb19vbmVfaW5pdGNhbGwrMHhl
NC8weDVmOA0KPiBbwqDCoCA2OC4yOTYxNjNdwqDCoMKgwqDCoMKgwqAga2VybmVsX2luaXRfZnJl
ZWFibGUrMHg0MTQvMHg0OWMNCj4gW8KgwqAgNjguMjk2MTgwXcKgwqDCoMKgwqDCoMKgIGtlcm5l
bF9pbml0KzB4MmMvMHgxNDgNCj4gW8KgwqAgNjguMjk2MTk1XcKgwqDCoMKgwqDCoMKgIHJldF9m
cm9tX2ZvcmsrMHgxMC8weDIwDQo+IFvCoMKgIDY4LjI5NjIwN10NCj4gW8KgwqAgNjguMjk2MjA3
XSAtPiAjMCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpeysuKy59LXszOjN9Og0KPiBbwqDC
oCA2OC4yOTYyMjldwqDCoMKgwqDCoMKgwqAgX19sb2NrX2FjcXVpcmUrMHgxNzI0LzB4MjM5OA0K
PiBbwqDCoCA2OC4yOTYyNDZdwqDCoMKgwqDCoMKgwqAgbG9ja19hY3F1aXJlKzB4MjE4LzB4NWIw
DQo+IFvCoMKgIDY4LjI5NjI2MF3CoMKgwqDCoMKgwqDCoCBfX3d3X211dGV4X2xvY2suY29uc3Rw
cm9wLjArMHgxNTgvMHgyMzc4DQo+IFvCoMKgIDY4LjI5NjI3N13CoMKgwqDCoMKgwqDCoCB3d19t
dXRleF9sb2NrKzB4N2MvMHg0ZDgNCj4gW8KgwqAgNjguMjk2MjkxXcKgwqDCoMKgwqDCoMKgIGRy
bV9nZW1fc2htZW1fZnJlZSsweDdjLzB4MTk4DQo+IFvCoMKgIDY4LjI5NjMwNF3CoMKgwqDCoMKg
wqDCoCBwYW5mcm9zdF9nZW1fZnJlZV9vYmplY3QrMHgxMTgvMHgxMzgNCj4gW8KgwqAgNjguMjk2
MzE4XcKgwqDCoMKgwqDCoMKgIGRybV9nZW1fb2JqZWN0X2ZyZWUrMHg0MC8weDY4DQo+IFvCoMKg
IDY4LjI5NjMzNF3CoMKgwqDCoMKgwqDCoCBkcm1fZ2VtX3NobWVtX3Nocmlua2VyX3J1bl9vYmpl
Y3RzX3NjYW4rMHg0MmMvMHg1YjgNCj4gW8KgwqAgNjguMjk2MzUyXcKgwqDCoMKgwqDCoMKgIGRy
bV9nZW1fc2htZW1fc2hyaW5rZXJfc2Nhbl9vYmplY3RzKzB4YTQvMHgxNzANCj4gW8KgwqAgNjgu
Mjk2MzY4XcKgwqDCoMKgwqDCoMKgIGRvX3Nocmlua19zbGFiKzB4MjIwLzB4ODA4DQo+IFvCoMKg
IDY4LjI5NjM4MV3CoMKgwqDCoMKgwqDCoCBzaHJpbmtfc2xhYisweDExYy8weDQwOA0KPiBbwqDC
oCA2OC4yOTYzOTJdwqDCoMKgwqDCoMKgwqAgc2hyaW5rX25vZGUrMHg2YWMvMHhiOTANCj4gW8Kg
wqAgNjguMjk2NDAzXcKgwqDCoMKgwqDCoMKgIGRvX3RyeV90b19mcmVlX3BhZ2VzKzB4MWRjLzB4
OGQwDQo+IFvCoMKgIDY4LjI5NjQxNl3CoMKgwqDCoMKgwqDCoCB0cnlfdG9fZnJlZV9wYWdlcysw
eDFlYy8weDViMA0KPiBbwqDCoCA2OC4yOTY0MjldwqDCoMKgwqDCoMKgwqAgX19hbGxvY19wYWdl
c19zbG93cGF0aC5jb25zdHByb3AuMCsweDUyOC8weDE0NzANCj4gW8KgwqAgNjguMjk2NDQ0XcKg
wqDCoMKgwqDCoMKgIF9fYWxsb2NfcGFnZXMrMHg0ZTAvMHg1YjgNCj4gW8KgwqAgNjguMjk2NDU1
XcKgwqDCoMKgwqDCoMKgIF9fZm9saW9fYWxsb2MrMHgyNC8weDYwDQo+IFvCoMKgIDY4LjI5NjQ2
N13CoMKgwqDCoMKgwqDCoCB2bWFfYWxsb2NfZm9saW8rMHhiOC8weDJmOA0KPiBbwqDCoCA2OC4y
OTY0ODNdwqDCoMKgwqDCoMKgwqAgYWxsb2NfemVyb2VkX3VzZXJfaGlnaHBhZ2VfbW92YWJsZSsw
eDU4LzB4NjgNCj4gW8KgwqAgNjguMjk2NDk4XcKgwqDCoMKgwqDCoMKgIF9faGFuZGxlX21tX2Zh
dWx0KzB4OTE4LzB4MTJhOA0KPiBbwqDCoCA2OC4yOTY1MTNdwqDCoMKgwqDCoMKgwqAgaGFuZGxl
X21tX2ZhdWx0KzB4MTMwLzB4MzAwDQo+IFvCoMKgIDY4LjI5NjUyN13CoMKgwqDCoMKgwqDCoCBk
b19wYWdlX2ZhdWx0KzB4MWQwLzB4NTY4DQo+IFvCoMKgIDY4LjI5NjUzOV3CoMKgwqDCoMKgwqDC
oCBkb190cmFuc2xhdGlvbl9mYXVsdCsweGEwLzB4YjgNCj4gW8KgwqAgNjguMjk2NTUxXcKgwqDC
oMKgwqDCoMKgIGRvX21lbV9hYm9ydCsweDY4LzB4ZjgNCj4gW8KgwqAgNjguMjk2NTYyXcKgwqDC
oMKgwqDCoMKgIGVsMF9kYSsweDc0LzB4MTAwDQo+IFvCoMKgIDY4LjI5NjU3Ml3CoMKgwqDCoMKg
wqDCoCBlbDB0XzY0X3N5bmNfaGFuZGxlcisweDY4LzB4YzANCj4gW8KgwqAgNjguMjk2NTg1XcKg
wqDCoMKgwqDCoMKgIGVsMHRfNjRfc3luYysweDE4Yy8weDE5MA0KPiBbwqDCoCA2OC4yOTY1OTZd
DQo+IFvCoMKgIDY4LjI5NjU5Nl0gb3RoZXIgaW5mbyB0aGF0IG1pZ2h0IGhlbHAgdXMgZGVidWcg
dGhpczoNCj4gW8KgwqAgNjguMjk2NTk2XQ0KPiBbwqDCoCA2OC4yOTY2MDFdwqAgUG9zc2libGUg
dW5zYWZlIGxvY2tpbmcgc2NlbmFyaW86DQo+IFvCoMKgIDY4LjI5NjYwMV0NCj4gW8KgwqAgNjgu
Mjk2NjA0XcKgwqDCoMKgwqDCoMKgIENQVTDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBDUFUxDQo+IFvCoMKgIDY4LjI5NjYwOF3CoMKgwqDCoMKgwqDCoCAtLS0twqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLS0tLQ0KPiBbwqDCoCA2OC4yOTY2MTJd
wqDCoCBsb2NrKGZzX3JlY2xhaW0pOw0KPiBbwqDCoCA2OC4yOTY2MjJdIGxvY2socmVzZXJ2YXRp
b25fd3dfY2xhc3NfbXV0ZXgpOw0KPiBbwqDCoCA2OC4yOTY2MzNdwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbG9jayhmc19yZWNs
YWltKTsNCj4gW8KgwqAgNjguMjk2NjQ0XcKgwqAgbG9jayhyZXNlcnZhdGlvbl93d19jbGFzc19t
dXRleCk7DQo+IFvCoMKgIDY4LjI5NjY1NF0NCj4gW8KgwqAgNjguMjk2NjU0XcKgICoqKiBERUFE
TE9DSyAqKioNCg0KVGhpcyBzcGxhdCBjb3VsZCBiZSBpZ25vcmVkIGZvciBub3cuIEknbSBhd2Fy
ZSBhYm91dCBpdCwgYWx0aG91Z2gNCmhhdmVuJ3QgbG9va2VkIGNsb3NlbHkgYXQgaG93IHRvIGZp
eCBpdCBzaW5jZSBpdCdzIGEga2luZCBvZiBhIGxvY2tkZXANCm1pc3JlcG9ydGluZy4NCg0KLS0g
DQpCZXN0IHJlZ2FyZHMsDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
