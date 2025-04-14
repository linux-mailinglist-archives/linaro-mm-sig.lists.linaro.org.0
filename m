Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24522A88233
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:31:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D80F454D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:31:29 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by lists.linaro.org (Postfix) with ESMTPS id C76CC454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:31:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="hs/WWuIK";
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.221.180 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-523df743d05so234294e0c.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744637474; x=1745242274; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYko5P0Uj9dxBvgZY4N+74k0M8yvQGkjvUrVryWcOYM=;
        b=hs/WWuIKmL4Fp1u+GUy9jfdAEvkByRXOd2YJfmftZGixPjKGAfxBJmr2G3vcIHMIwt
         Xe8+dD7InLPU/oI0FXq6qKfv2YfXeetKBM1gS382fcVRcoSHePY39ISIVmNRqHKhgAn8
         AWBFy+mqonBdqoc1imOC7P+8YV8Izp+kcMvKn5qjA+HXFYr/f0UysbtT6JAuzEihDS/L
         fb+BIl4nXOMawWcshfOvt4IZFbS+22W0DWyNXuHHxTllXE/aROClPILx5TvXa4KeP7XI
         kbqTTbKjU0fvwHc86sMA5D75DaUqes/1kqdZamBeK8UkWP7gWyN6fDygq7a9O5EaKzaB
         wtZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744637474; x=1745242274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VYko5P0Uj9dxBvgZY4N+74k0M8yvQGkjvUrVryWcOYM=;
        b=LweAEzu71M9iLKhj25mLIJi3f1V6o2Gsifzeh8oCGjrSKSHJBJbMmBqhOeUG1phWr3
         Lj/4uVEo9zv/goDsq7/fEVeVt/WypVsVphY35NxDA4OXlRmturVmm4mVFqdp+dRwCOBH
         6JShd5ApjpAQjHnSHf1hOUis8qmQnuzvNDCD5T4fykGsAD5kMiXkRMicYBWhHda2/pXI
         iAke4XZ8NFWY2Eg+ra3aZIdksFtlwtU4bRLQA2ciiQqPBfmUb2h/x+IcyTmET87BVDRZ
         dUpudt3+xXsXpUA6L2MceEXzr3tj6+V+UOLkrE73GBnoIUg1attYv0RCjwuM5GLd9Ndo
         WKlA==
X-Forwarded-Encrypted: i=1; AJvYcCXIpCRKifA7S+y8noHuHsW4vglLtEmsObJDxEBtCxuYgVnuEkjiOwQYqLIU5NszMd0czHBf6SA0FMu+3ebO@lists.linaro.org
X-Gm-Message-State: AOJu0Yy0QlXLpR2R1LwFTs1BfblK6axalWujSQ2P1JYNE80GyccFG9/M
	9Ahn+8/LGie7guRMENZr4ZgqqzjgFi3lul9UeVLztY0hqQgc2Zq/GxgB+hkptvUEMVfHDS0vDHp
	U/6O3a/CCfAfNwF6BU3mMt+6hgu8=
X-Gm-Gg: ASbGncvo4MQmrYpj487GNyRZWWbcofcro6i3XWnZ2QXBY0Lq8jpFZ5sZow2EENc2fVg
	lLYeAhPOnTJcT6xi3RKqxNxTu3+YllieK9QtPRzD0HGAq7kGIfyuKArdkemxaR3H95piR94l2wx
	+Ov/HtFXfYfOvcCyz/wGB4lg==
X-Google-Smtp-Source: AGHT+IHU9FwQkANqVWq6HB4deVY97gLIMf5+FLJTdy75WKChAzk9OeMBEaB4Pi9kHLb3C3nJNsVYA0qgr7byQiE5wXc=
X-Received: by 2002:a05:6122:da1:b0:516:20fe:d5d8 with SMTP id
 71dfb90a1353d-527c359ccf4mr1741010e0c.2.1744637474078; Mon, 14 Apr 2025
 06:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250414132848.679855-1-sashal@kernel.org> <20250414132848.679855-11-sashal@kernel.org>
In-Reply-To: <20250414132848.679855-11-sashal@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 14 Apr 2025 09:31:01 -0400
X-Gm-Features: ATxdqUHGTxjstZXt6MENE-PXqnTQyUOB_COxTyDCeu_fpv9Pwmta6iiK5pHbslw
Message-ID: <CADnq5_PqqY07uBERuSGC--+=dsffxydrPrvzt7pw6SfmmqbDjw@mail.gmail.com>
To: Sasha Levin <sashal@kernel.org>
X-Rspamd-Queue-Id: C76CC454D5
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,ffwll.ch,gmail.com,linaro.org,intel.com,igalia.com,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.221.180:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.180:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.221.180:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UZBGTFJOYW2AVTUTFBYOG2VH5QFSH2OV
X-Message-ID-Hash: UZBGTFJOYW2AVTUTFBYOG2VH5QFSH2OV
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Felix Kuehling <felix.kuehling@amd.com>, Pak Nin Lui <pak.lui@amd.com>, Alex Deucher <alexander.deucher@amd.com>, simona@ffwll.ch, sumit.semwal@linaro.org, Yunxiang.Li@amd.com, matthew.auld@intel.com, tvrtko.ursulin@igalia.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH AUTOSEL 6.12 11/30] drm/amdgpu: allow pinning DMA-bufs into VRAM if all importers can do P2P
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZBGTFJOYW2AVTUTFBYOG2VH5QFSH2OV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgOToyOeKAr0FNIFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4NCj4gWyBVcHN0cmVhbSBjb21taXQgZjVlN2ZhYmQxZjVjNjViMmUw
NzdlZmNkYjExOGNmYTY3ZWFlNzMxMSBdDQo+DQo+IFRyeSBwaW5uaW5nIGludG8gVlJBTSB0byBh
bGxvdyBQMlAgd2l0aCBSRE1BIE5JQ3Mgd2l0aG91dCBPRFANCj4gc3VwcG9ydCBpZiBhbGwgYXR0
YWNobWVudHMgY2FuIGRvIFAyUC4gSWYgYW55IGF0dGFjaG1lbnQgY2FuJ3QgZG8NCj4gUDJQIGp1
c3QgcGluIGludG8gR1RUIGluc3RlYWQuDQo+DQo+IEFja2VkLWJ5OiBTaW1vbmEgVmV0dGVyIDxz
aW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEZlbGl4IEt1ZWhs
aW5nIDxmZWxpeC5rdWVobGluZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogRmVsaXggS3VlaGxp
bmcgPGZlbGl4Lmt1ZWhsaW5nQGFtZC5jb20+DQo+IFRlc3RlZC1ieTogUGFrIE5pbiBMdWkgPHBh
ay5sdWlAYW1kLmNvbT4NCj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwu
Y2g+DQo+IFNpZ25lZC1vZmYtYnk6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1k
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0K
DQpUaGlzIHNob3VsZCBub3QgZ28gdG8gc3RhYmxlLiAgSXQgZGVwZW5kcyBvbiBkbWVtIGdyb3Vw
cy4NCg0KDQpBbGV4DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jIHwgMjUgKysrKysrKysrKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+IGluZGV4IDhlODFhODNkMzdkODQuLjgz
MzkwMTQzYzJlOWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2RtYV9idWYuYw0KPiBAQCAtNzIsMTEgKzcyLDI1IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9i
dWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+ICAgKi8NCj4gIHN0YXRpYyBpbnQg
YW1kZ3B1X2RtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4g
IHsNCj4gLSAgICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGF0dGFjaC0+ZG1hYnVm
LT5wcml2Ow0KPiAtICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9i
byhvYmopOw0KPiArICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBhdHRhY2gtPmRtYWJ1
ZjsNCj4gKyAgICAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8oZG1h
YnVmLT5wcml2KTsNCj4gKyAgICAgICB1MzIgZG9tYWlucyA9IGJvLT5wcmVmZXJyZWRfZG9tYWlu
czsNCj4NCj4gLSAgICAgICAvKiBwaW4gYnVmZmVyIGludG8gR1RUICovDQo+IC0gICAgICAgcmV0
dXJuIGFtZGdwdV9ib19waW4oYm8sIEFNREdQVV9HRU1fRE9NQUlOX0dUVCk7DQo+ICsgICAgICAg
ZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsNCj4gKw0KPiArICAgICAgIC8qDQo+
ICsgICAgICAgICogVHJ5IHBpbm5pbmcgaW50byBWUkFNIHRvIGFsbG93IFAyUCB3aXRoIFJETUEg
TklDcyB3aXRob3V0IE9EUA0KPiArICAgICAgICAqIHN1cHBvcnQgaWYgYWxsIGF0dGFjaG1lbnRz
IGNhbiBkbyBQMlAuIElmIGFueSBhdHRhY2htZW50IGNhbid0IGRvDQo+ICsgICAgICAgICogUDJQ
IGp1c3QgcGluIGludG8gR1RUIGluc3RlYWQuDQo+ICsgICAgICAgICovDQo+ICsgICAgICAgbGlz
dF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKQ0KPiAr
ICAgICAgICAgICAgICAgaWYgKCFhdHRhY2gtPnBlZXIycGVlcikNCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZG9tYWlucyAmPSB+QU1ER1BVX0dFTV9ET01BSU5fVlJBTTsNCj4gKw0KPiArICAg
ICAgIGlmIChkb21haW5zICYgQU1ER1BVX0dFTV9ET01BSU5fVlJBTSkNCj4gKyAgICAgICAgICAg
ICAgIGJvLT5mbGFncyB8PSBBTURHUFVfR0VNX0NSRUFURV9DUFVfQUNDRVNTX1JFUVVJUkVEOw0K
PiArDQo+ICsgICAgICAgcmV0dXJuIGFtZGdwdV9ib19waW4oYm8sIGRvbWFpbnMpOw0KPiAgfQ0K
Pg0KPiAgLyoqDQo+IEBAIC0xMzEsOSArMTQ1LDYgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAq
YW1kZ3B1X2RtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4g
ICAgICAgICAgICAgICAgIHIgPSB0dG1fYm9fdmFsaWRhdGUoJmJvLT50Ym8sICZiby0+cGxhY2Vt
ZW50LCAmY3R4KTsNCj4gICAgICAgICAgICAgICAgIGlmIChyKQ0KPiAgICAgICAgICAgICAgICAg
ICAgICAgICByZXR1cm4gRVJSX1BUUihyKTsNCj4gLQ0KPiAtICAgICAgIH0gZWxzZSBpZiAoYm8t
PnRiby5yZXNvdXJjZS0+bWVtX3R5cGUgIT0gVFRNX1BMX1RUKSB7DQo+IC0gICAgICAgICAgICAg
ICByZXR1cm4gRVJSX1BUUigtRUJVU1kpOw0KPiAgICAgICAgIH0NCj4NCj4gICAgICAgICBzd2l0
Y2ggKGJvLT50Ym8ucmVzb3VyY2UtPm1lbV90eXBlKSB7DQo+IC0tDQo+IDIuMzkuNQ0KPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
