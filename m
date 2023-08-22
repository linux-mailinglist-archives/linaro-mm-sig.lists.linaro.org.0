Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A51784849
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Aug 2023 19:16:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFD7F3F34D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Aug 2023 17:16:10 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id E029C3F34D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Aug 2023 17:16:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=lySY5a8l;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-991c786369cso631149566b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Aug 2023 10:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692724565; x=1693329365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n40OSQ1aOHwb0xjPdR9jQ6wxnoOkYuHmQ4PP3H0EIQU=;
        b=lySY5a8lyrGGnlYYXmf1l1ocOBL9p7YeIXrDkyjNrsw/anYfz+6MrKn1NRW7rt0Ny1
         KihWqC/l79F/2GTS93KM2VYg0m+/U4ZVc6uNlRpIjmnSZ0Sut5sNdvCRogdQcnP1Jwjc
         HaVZ93SoZcSeQMmHWgJdoPfeVJAbkvtXKctBEytkDo8/yyOSFyWLNukLQCZ22UcVLcw9
         S9oIJ8C5urTiccIpXY4yjOWXK/FgflI2yb/rxybAUkaM2Tg4mU0dn4uJ8eecyyW0k7N1
         QTNad9C61A1jPmghWekm/9TE/GUQZqqUJr/zFssq50uYC8EQlJ98t5Se/kpQvL2a3A9J
         5AFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692724565; x=1693329365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n40OSQ1aOHwb0xjPdR9jQ6wxnoOkYuHmQ4PP3H0EIQU=;
        b=XtmpN5+WoxoLrkgPCs+EjRQP/xqr3ay7sHwyzo5mykQOmicjBRCaYZQUWqEHB05oSh
         dmlK5EsOdOVA3+NSTPf07fcJByUuZVNtzzOCaiaHrwmowZa4yuHPuBr2uV80YxbruAAl
         zoLpJyBZ6PA1BZEOzblKyqCNOJ5aV2bWaTbBlkiA6gpBx9pzqKL0C5bSLNgu1axOE18+
         iZ2QTD8LkHDfJN5FbIvVcYBh6g6eZSBHsjrqEGQTpKECG9Q/Yca0cF/SkHIv9J4ve/db
         B0bl4q2Hk1WXB4AlpbpCEH+eO8qybqTH/jGe8//uNGwd+DmIPhamaLqrgNebRKPpkD2l
         roTg==
X-Gm-Message-State: AOJu0YyRF7ZqOWsiSulCDIRaD0VJse/MJplVPOHHyh8AbT5rr8LwlMnb
	wkXuJQ/JgPN8IT1Tm7I0qtqN0jhJNdsSGCeJWr8=
X-Google-Smtp-Source: AGHT+IFI95FHGpr6x2Y7yipCMx8Cu+PjNr67/q+7Cwc3a0nItV0XK4fS+gMtRy1kJ5SZXKsg6cGwBCClIR0xrahkDBI=
X-Received: by 2002:a17:906:28d:b0:99c:3b4:940f with SMTP id
 13-20020a170906028d00b0099c03b4940fmr8855243ejf.27.1692724564539; Tue, 22 Aug
 2023 10:16:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230818145939.39697-1-robdclark@gmail.com> <a05e0c2e-fd62-4a8e-9fa4-dffaf86f7730@gmail.com>
In-Reply-To: <a05e0c2e-fd62-4a8e-9fa4-dffaf86f7730@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 22 Aug 2023 10:15:52 -0700
Message-ID: <CAF6AEGs+6cveKbv=onEJSZJERk8m56YJzza6A2+eLd3+6MuWMg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Queue-Id: E029C3F34D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.218.50:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XDCN2CQ6T3UO7KLCOTVDMJYJQXSNT2DC
X-Message-ID-Hash: XDCN2CQ6T3UO7KLCOTVDMJYJQXSNT2DC
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XDCN2CQ6T3UO7KLCOTVDMJYJQXSNT2DC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMjIsIDIwMjMgYXQgNjowMeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxja29l
bmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IEFtIDE4LjA4LjIzIHVt
IDE2OjU5IHNjaHJpZWIgUm9iIENsYXJrOg0KPiA+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJr
QGNocm9taXVtLm9yZz4NCj4gPg0KPiA+IElmIGEgc2lnbmFsIGNhbGxiYWNrIHJlbGVhc2VzIHRo
ZSBzd19zeW5jIGZlbmNlLCB0aGF0IHdpbGwgdHJpZ2dlciBhDQo+ID4gZGVhZGxvY2sgYXMgdGhl
IHRpbWVsaW5lX2ZlbmNlX3JlbGVhc2UgcmVjdXJzZXMgb250byB0aGUgZmVuY2UtPmxvY2sNCj4g
PiAodXNlZCBib3RoIGZvciBzaWduYWxpbmcgYW5kIHRoZSB0aGUgdGltZWxpbmUgdHJlZSkuDQo+
ID4NCj4gPiBUbyBhdm9pZCB0aGF0LCB0ZW1wb3JhcmlseSBob2xkIGFuIGV4dHJhIHJlZmVyZW5j
ZSB0byB0aGUgc2lnbmFsbGVkDQo+ID4gZmVuY2VzIHVudGlsIGFmdGVyIHdlIGRyb3AgdGhlIGxv
Y2suDQo+ID4NCj4gPiAoVGhpcyBpcyBhbiBhbHRlcm5hdGl2ZSBpbXBsZW1lbnRhdGlvbiBvZiBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExNjY0NzE3Lw0KPiA+IHdoaWNoIGF2
b2lkcyBzb21lIHBvdGVudGlhbCBVQUYgaXNzdWVzIHdpdGggdGhlIG9yaWdpbmFsIHBhdGNoLikN
Cj4gPg0KPiA+IHYyOiBSZW1vdmUgbm93IG9ic29sZXRlIGNvbW1lbnQsIHVzZSBsaXN0X21vdmVf
dGFpbCgpIGFuZA0KPiA+ICAgICAgbGlzdF9kZWxfaW5pdCgpDQo+ID4NCj4gPiBSZXBvcnRlZC1i
eTogQmFzIE5pZXV3ZW5odWl6ZW4gPGJhc0BiYXNuaWV1d2VuaHVpemVuLm5sPg0KPiA+IEZpeGVz
OiBkM2M2ZGQxZmIzMGQgKCJkbWEtYnVmL3N3X3N5bmM6IFN5bmNocm9uaXplIHNpZ25hbCB2cyBz
eW5jcHQgZnJlZSIpDQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hy
b21pdW0ub3JnPg0KPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KDQpUaGFua3MsIGFueSBjaGFuY2UgeW91IGNvdWxkIHRha2UgdGhp
cyB2aWEgZHJtLW1pc2M/DQoNCkJSLA0KLVINCg0KPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9k
bWEtYnVmL3N3X3N5bmMuYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQ0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMu
Yw0KPiA+IGluZGV4IDYzZjBhZWI2NmRiNi4uZjBhMzUyNzdmZDg0IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3df
c3luYy5jDQo+ID4gQEAgLTE5MSw2ICsxOTEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9m
ZW5jZV9vcHMgdGltZWxpbmVfZmVuY2Vfb3BzID0gew0KPiA+ICAgICovDQo+ID4gICBzdGF0aWMg
dm9pZCBzeW5jX3RpbWVsaW5lX3NpZ25hbChzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNp
Z25lZCBpbnQgaW5jKQ0KPiA+ICAgew0KPiA+ICsgICAgIExJU1RfSEVBRChzaWduYWxsZWQpOw0K
PiA+ICAgICAgIHN0cnVjdCBzeW5jX3B0ICpwdCwgKm5leHQ7DQo+ID4NCj4gPiAgICAgICB0cmFj
ZV9zeW5jX3RpbWVsaW5lKG9iaik7DQo+ID4gQEAgLTIwMywyMSArMjA0LDIwIEBAIHN0YXRpYyB2
b2lkIHN5bmNfdGltZWxpbmVfc2lnbmFsKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2ln
bmVkIGludCBpbmMpDQo+ID4gICAgICAgICAgICAgICBpZiAoIXRpbWVsaW5lX2ZlbmNlX3NpZ25h
bGVkKCZwdC0+YmFzZSkpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+DQo+
ID4gLSAgICAgICAgICAgICBsaXN0X2RlbF9pbml0KCZwdC0+bGluayk7DQo+ID4gKyAgICAgICAg
ICAgICBkbWFfZmVuY2VfZ2V0KCZwdC0+YmFzZSk7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAg
bGlzdF9tb3ZlX3RhaWwoJnB0LT5saW5rLCAmc2lnbmFsbGVkKTsNCj4gPiAgICAgICAgICAgICAg
IHJiX2VyYXNlKCZwdC0+bm9kZSwgJm9iai0+cHRfdHJlZSk7DQo+ID4NCj4gPiAtICAgICAgICAg
ICAgIC8qDQo+ID4gLSAgICAgICAgICAgICAgKiBBIHNpZ25hbCBjYWxsYmFjayBtYXkgcmVsZWFz
ZSB0aGUgbGFzdCByZWZlcmVuY2UgdG8gdGhpcw0KPiA+IC0gICAgICAgICAgICAgICogZmVuY2Us
IGNhdXNpbmcgaXQgdG8gYmUgZnJlZWQuIFRoYXQgb3BlcmF0aW9uIGhhcyB0byBiZQ0KPiA+IC0g
ICAgICAgICAgICAgICogbGFzdCB0byBhdm9pZCBhIHVzZSBhZnRlciBmcmVlIGluc2lkZSB0aGlz
IGxvb3AsIGFuZCBtdXN0DQo+ID4gLSAgICAgICAgICAgICAgKiBiZSBhZnRlciB3ZSByZW1vdmUg
dGhlIGZlbmNlIGZyb20gdGhlIHRpbWVsaW5lIGluIG9yZGVyIHRvDQo+ID4gLSAgICAgICAgICAg
ICAgKiBwcmV2ZW50IGRlYWRsb2NraW5nIG9uIHRpbWVsaW5lLT5sb2NrIGluc2lkZQ0KPiA+IC0g
ICAgICAgICAgICAgICogdGltZWxpbmVfZmVuY2VfcmVsZWFzZSgpLg0KPiA+IC0gICAgICAgICAg
ICAgICovDQo+ID4gICAgICAgICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgmcHQtPmJh
c2UpOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycSgmb2JqLT5s
b2NrKTsNCj4gPiArDQo+ID4gKyAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHB0LCBuZXh0
LCAmc2lnbmFsbGVkLCBsaW5rKSB7DQo+ID4gKyAgICAgICAgICAgICBsaXN0X2RlbF9pbml0KCZw
dC0+bGluayk7DQo+ID4gKyAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KCZwdC0+YmFzZSk7DQo+
ID4gKyAgICAgfQ0KPiA+ICAgfQ0KPiA+DQo+ID4gICAvKioNCj4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
