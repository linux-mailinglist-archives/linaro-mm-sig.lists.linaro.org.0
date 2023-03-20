Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB1A6C22C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 21:33:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0660441F3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 20:33:07 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lists.linaro.org (Postfix) with ESMTPS id CA2C93E928
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 20:32:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=HeqJeprr;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id be16so9742862oib.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 13:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679344373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PtNLjV7iuzWid1kzKLl77sk4WYUZ8FOv4+N6gzs8sI=;
        b=HeqJeprrNl5/vk7X1eAw7lmrGamJCZjLBSnMVH3QHjezjvIoMR73/Wq8ZzqKOkFB5N
         atRxNwUb3cHURFE7latn17tFQ8yLJkHprLyjdp9Vydlntu+0A5EHB2rJyKtrS1+1y81I
         ukl33H9vCwntemYpjEToqC/v5hhPXFuEq8ZaBA9NaY0FOUXxqpLwP7C1O9cdG1B1DSRC
         PXqRrgbikK/KHC2NlWdIWC9Wmq/rASHk5jI+K7czu3cPa4UzKrykhI9QBV8WWZAtlPPO
         bK9sT7n00/rWO8dSAo1TPubS2mnScaGxD4le5Sb3lmSymjIEnMRn4O6kvifzG6r0IGoz
         oEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679344373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2PtNLjV7iuzWid1kzKLl77sk4WYUZ8FOv4+N6gzs8sI=;
        b=nhxp1ccp6Ol2vmRoipLtdrrPvnBibqU5qMGX0W12BcyMwZFposRIBmdtl7iE1xBRrW
         6X/0245HpiB0uNwRyRM1JO3nT6WxCp/TNo9BTonZB/6eTxzJxJNZLhy+C8E8lDX/BCMP
         ZqrWMErQSpairdUku7ZtmBgTSMbZ4WQbmwRXFdMtRcqDDCy1DTMByXZ6AvoR8pAxEf3w
         XTB1OAvvf4pQTMJZrUL1cRof0GO7ZVVEu1WruBsl35pLGpiV6+d1j4AiP/0AFKZ7d6iX
         9bChVQ6u1qVQuCm0jAs/8u2YHtAsTOcZx7j5txzpU3DCFMBGZRmLzZtEG5SYh95GMP4t
         44mA==
X-Gm-Message-State: AO0yUKUDn71zoysGZqAvKxU+Qichdyh6UsQF/Ky7YyvhIIVxAOeknSnc
	Z8WSDUtiYNVNhWvdXwec6W75Ke9UwTcnSdRA2iE=
X-Google-Smtp-Source: AK7set+Z8dm+jxrjXl9udF5iuBLZsy2vXRBn1hk4Q0LgCSqrniaiZyZA8FUks4Jf+kvfsz6lfqPFa4aG1yMoSgx//Zc=
X-Received: by 2002:aca:1009:0:b0:384:1cf9:912e with SMTP id
 9-20020aca1009000000b003841cf9912emr445842oiq.5.1679344373225; Mon, 20 Mar
 2023 13:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230320144356.803762-1-robdclark@gmail.com> <20230320144356.803762-2-robdclark@gmail.com>
 <25bd9a77-a703-6eb6-e142-5da9e54754a0@amd.com>
In-Reply-To: <25bd9a77-a703-6eb6-e142-5da9e54754a0@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 20 Mar 2023 13:32:41 -0700
Message-ID: <CAF6AEGuhkEy-RebX76wT+MVYvsArDKmHsqcBcdE95p2bW_zfGg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CA2C93E928
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,vger.kernel.org,chromium.org,quicinc.com,linaro.org,poorly.run,gmail.com,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.169:from]
Message-ID-Hash: UOUIPEAO5KF5PXQSTOUHJON5DHX66WNW
X-Message-ID-Hash: UOUIPEAO5KF5PXQSTOUHJON5DHX66WNW
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/23] drm/msm: Pre-allocate hw_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UOUIPEAO5KF5PXQSTOUHJON5DHX66WNW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMjAsIDIwMjMgYXQgOTo1MuKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPg0KPg0KPiBBbSAyMC4wMy4yMyB1bSAx
NTo0MyBzY2hyaWViIFJvYiBDbGFyazoNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0Bj
aHJvbWl1bS5vcmc+DQo+ID4NCj4gPiBBdm9pZCBhbGxvY2F0aW5nIG1lbW9yeSBpbiBqb2JfcnVu
KCkgYnkgcHJlLWFsbG9jYXRpbmcgdGhlIGh3X2ZlbmNlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPiA+IC0tLQ0KPiA+ICAgZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYyAgICAgIHwgMTIgKysrKysrKysrLS0tDQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5oICAgICAgfCAgMyArKy0NCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyB8ICA3ICsrKysrKysNCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9tc20vbXNtX3JpbmdidWZmZXIuYyB8ICAyICstDQo+ID4gICA0IGZpbGVz
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2ZlbmNlLmMNCj4gPiBpbmRleCA1NjY0MTQwOGVhNzQuLmJhYjNkODRmMTY4NiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9mZW5jZS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2UuYw0KPiA+IEBAIC05OSw3ICs5OSw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBtc21fZmVuY2Vfb3BzID0gew0KPiA+
ICAgfTsNCj4gPg0KPiA+ICAgc3RydWN0IGRtYV9mZW5jZSAqDQo+ID4gLW1zbV9mZW5jZV9hbGxv
YyhzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHgpDQo+ID4gK21zbV9mZW5jZV9hbGxvYyh2
b2lkKQ0KPiA+ICAgew0KPiA+ICAgICAgIHN0cnVjdCBtc21fZmVuY2UgKmY7DQo+ID4NCj4gPiBA
QCAtMTA3LDEwICsxMDcsMTYgQEAgbXNtX2ZlbmNlX2FsbG9jKHN0cnVjdCBtc21fZmVuY2VfY29u
dGV4dCAqZmN0eCkNCj4gPiAgICAgICBpZiAoIWYpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsNCj4gPg0KPiA+ICsgICAgIHJldHVybiAmZi0+YmFzZTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArdm9pZA0KPiA+ICttc21fZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4KQ0KPiA+ICt7DQo+ID4gKyAg
ICAgc3RydWN0IG1zbV9mZW5jZSAqZiA9IHRvX21zbV9mZW5jZShmZW5jZSk7DQo+ID4gKw0KPiA+
ICAgICAgIGYtPmZjdHggPSBmY3R4Ow0KPiA+DQo+ID4gICAgICAgZG1hX2ZlbmNlX2luaXQoJmYt
PmJhc2UsICZtc21fZmVuY2Vfb3BzLCAmZmN0eC0+c3BpbmxvY2ssDQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgZmN0eC0+Y29udGV4dCwgKytmY3R4LT5sYXN0X2ZlbmNlKTsNCj4gPiAtDQo+ID4g
LSAgICAgcmV0dXJuICZmLT5iYXNlOw0KPiA+ICAgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9mZW5jZS5oIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZmVuY2Uu
aA0KPiA+IGluZGV4IDdmMTc5OGM1NGNkMS4uZjkxM2ZhMjJkOGZlIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2ZlbmNlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9mZW5jZS5oDQo+ID4gQEAgLTYxLDcgKzYxLDggQEAgdm9pZCBtc21fZmVuY2Vf
Y29udGV4dF9mcmVlKHN0cnVjdCBtc21fZmVuY2VfY29udGV4dCAqZmN0eCk7DQo+ID4gICBib29s
IG1zbV9mZW5jZV9jb21wbGV0ZWQoc3RydWN0IG1zbV9mZW5jZV9jb250ZXh0ICpmY3R4LCB1aW50
MzJfdCBmZW5jZSk7DQo+ID4gICB2b2lkIG1zbV91cGRhdGVfZmVuY2Uoc3RydWN0IG1zbV9mZW5j
ZV9jb250ZXh0ICpmY3R4LCB1aW50MzJfdCBmZW5jZSk7DQo+ID4NCj4gPiAtc3RydWN0IGRtYV9m
ZW5jZSAqIG1zbV9mZW5jZV9hbGxvYyhzdHJ1Y3QgbXNtX2ZlbmNlX2NvbnRleHQgKmZjdHgpOw0K
PiA+ICtzdHJ1Y3QgZG1hX2ZlbmNlICogbXNtX2ZlbmNlX2FsbG9jKHZvaWQpOw0KPiA+ICt2b2lk
IG1zbV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3QgbXNtX2ZlbmNl
X2NvbnRleHQgKmZjdHgpOw0KPiA+DQo+ID4gICBzdGF0aWMgaW5saW5lIGJvb2wNCj4gPiAgIGZl
bmNlX2JlZm9yZSh1aW50MzJfdCBhLCB1aW50MzJfdCBiKQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9nZW1fc3VibWl0LmMNCj4gPiBpbmRleCBiZTRiZjc3MTAzY2QuLjI1NzBjMDE4YjBjYiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMNCj4gPiBAQCAtNDEsNiAr
NDEsMTMgQEAgc3RhdGljIHN0cnVjdCBtc21fZ2VtX3N1Ym1pdCAqc3VibWl0X2NyZWF0ZShzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+ICAgICAgIGlmICghc3VibWl0KQ0KPiA+ICAgICAgICAg
ICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+ID4NCj4gPiArICAgICBzdWJtaXQtPmh3
X2ZlbmNlID0gbXNtX2ZlbmNlX2FsbG9jKCk7DQo+ID4gKyAgICAgaWYgKElTX0VSUihzdWJtaXQt
Pmh3X2ZlbmNlKSkgew0KPiA+ICsgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihzdWJtaXQtPmh3
X2ZlbmNlKTsNCj4gPiArICAgICAgICAgICAgIGtmcmVlKHN1Ym1pdCk7DQo+ID4gKyAgICAgICAg
ICAgICByZXR1cm4gRVJSX1BUUihyZXQpOw0KPiA+ICsgICAgIH0NCj4gPiArDQo+ID4gICAgICAg
cmV0ID0gZHJtX3NjaGVkX2pvYl9pbml0KCZzdWJtaXQtPmJhc2UsIHF1ZXVlLT5lbnRpdHksIHF1
ZXVlKTsNCj4gPiAgICAgICBpZiAocmV0KSB7DQo+ID4gICAgICAgICAgICAgICBrZnJlZShzdWJt
aXQpOw0KPg0KPiBZb3UgcHJvYmFibHkgbmVlZCBzb21lIGVycm9yIGhhbmRsaW5nIGhlcmUgb3Ig
b3RoZXJ3aXNlIGxlYWsNCj4gc3VibWl0LT5od19mZW5jZS4NCg0KYWgsIHJpZ2h0Li4gdGh4DQoN
CkJSLA0KLVINCg0KPiBBcGFydCBmcm9tIHRoYXQgbG9va3MgZ29vZCB0byBtZS4NCj4NCj4gQ2hy
aXN0aWFuLg0KPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5n
YnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5nYnVmZmVyLmMNCj4gPiBpbmRl
eCA1N2E4ZTk1NjQ1NDAuLmE2MmI0NWU1YThjMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9yaW5nYnVmZmVyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9yaW5nYnVmZmVyLmMNCj4gPiBAQCAtMTgsNyArMTgsNyBAQCBzdGF0aWMgc3RydWN0IGRt
YV9mZW5jZSAqbXNtX2pvYl9ydW4oc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYikNCj4gPiAgICAg
ICBzdHJ1Y3QgbXNtX2dwdSAqZ3B1ID0gc3VibWl0LT5ncHU7DQo+ID4gICAgICAgaW50IGk7DQo+
ID4NCj4gPiAtICAgICBzdWJtaXQtPmh3X2ZlbmNlID0gbXNtX2ZlbmNlX2FsbG9jKGZjdHgpOw0K
PiA+ICsgICAgIG1zbV9mZW5jZV9pbml0KHN1Ym1pdC0+aHdfZmVuY2UsIGZjdHgpOw0KPiA+DQo+
ID4gICAgICAgZm9yIChpID0gMDsgaSA8IHN1Ym1pdC0+bnJfYm9zOyBpKyspIHsNCj4gPiAgICAg
ICAgICAgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gJnN1Ym1pdC0+Ym9zW2ldLm9i
ai0+YmFzZTsNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
