Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD90F6A5FF1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 20:48:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85AC54423F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 19:48:31 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lists.linaro.org (Postfix) with ESMTPS id 6AB423F1F4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 19:48:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ige+8up2;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id bp19so6233363oib.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 11:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677613691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6AWgk38+dTcU1+mejGb2/o+ftP8MTujuhC/3B4ExDQ=;
        b=ige+8up2DEpf5jbuZZLbqAXPllK21I8pU7z6B62/+rsiqOUHgf+tPXTEf+e1slNMgu
         i2cYxHHAkwFZjGq8mzku6wjj2KNMMtvD5Bj/MKrCrbe7OOsHTeuVfdoOeDdLnmzCW5Eq
         0IS938xQdPcLDKNCTK6c7ZQr4hIWBFvPFqZ0w8ssnsTKGbWqFc3/HQnTA/BztQCNO8Ng
         MDZRmbzYiV1mKcbQFlPfNi3Fn7G/a9kkC7gOMoeP5uM35tmn+t+pchgqdWE7BwmjyVuQ
         KDz3y5HhklWDT2WVZOYY5hfICg7iyZ9HgSNBqoCCO+QfpyQWPcVTlfg0NfVVnwN/Bf/S
         bC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677613691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u6AWgk38+dTcU1+mejGb2/o+ftP8MTujuhC/3B4ExDQ=;
        b=6VccoNdcIC0F5LxtZXLbggcCaUAmcm/dQLZEvZAk3kTeHGDJ/RIJk0zQrIcgevtvCY
         valPD8RhiW/1js06gseqL0D4apQ02WSWTLrMdx585N5NFI88W+IlrZ25zhMQM6Ch2bnf
         4O1SfJSDZvyyLJPBMn7sTm0aRf51VSNGCj9kIkSJT/t/Hn2jOM+J570QI5bvqwFtuD0z
         fByo6L0ymfooeSstHAKu+WmxICxcWuQO3wmHC51aNmtVqapdaQugUAhkQqlOs/4SrRn3
         0K/ZHkXgmjoHfs1abUNSiqN4iZVXDPxZjbI1Gvzgk1D3SRPbog4FzqSy0jQQZ7xSGeaI
         GVpw==
X-Gm-Message-State: AO0yUKWEbgr9csqOTkcnuEm5iPDIC5ztn9aIqRPSf5YcvlHS1KVPRnpQ
	YIaiFRbEVgidz6b4E657oo59MQ5rjFgOOVgQCTg=
X-Google-Smtp-Source: AK7set9keJVYa+i1zqh5jp2cnA3sA6/AAsEU28TAnr0uVeyTvTrcT5iO0UESk31AobEWgbOlPb04AX6066Qk2dlbA5k=
X-Received: by 2002:a05:6808:1cf:b0:384:253:642d with SMTP id
 x15-20020a05680801cf00b003840253642dmr1372513oic.3.1677613690814; Tue, 28 Feb
 2023 11:48:10 -0800 (PST)
MIME-Version: 1.0
References: <20230227193535.2822389-1-robdclark@gmail.com> <20230227193535.2822389-8-robdclark@gmail.com>
 <20230228112310.39274fcf@eldfell>
In-Reply-To: <20230228112310.39274fcf@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Feb 2023 11:47:59 -0800
Message-ID: <CAF6AEGve4Jx-TJZe_+PF4ekyBzCzxZBdwMeGQ1WoRawwX1tsxg@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6AB423F1F4
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.167.180:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.180:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: CMFYEILQUTGRIDF7ZTQJNRJ5WKWVHDTJ
X-Message-ID-Hash: CMFYEILQUTGRIDF7ZTQJNRJ5WKWVHDTJ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 07/15] dma-buf/sw_sync: Add fence deadline support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CMFYEILQUTGRIDF7ZTQJNRJ5WKWVHDTJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMToyMyBBTSBQZWtrYSBQYWFsYW5lbiA8cHBhYWxhbmVu
QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIE1vbiwgMjcgRmViIDIwMjMgMTE6MzU6MTMgLTA4
MDANCj4gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gPiBGcm9t
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4NCj4gPiBUaGlzIGNvbnNp
c3RzIG9mIHNpbXBseSBzdG9yaW5nIHRoZSBtb3N0IHJlY2VudCBkZWFkbGluZSwgYW5kIGFkZGlu
ZyBhbg0KPiA+IGlvY3RsIHRvIHJldHJpZXZlIHRoZSBkZWFkbGluZS4gIFRoaXMgY2FuIGJlIHVz
ZWQgaW4gY29uanVuY3Rpb24gd2l0aA0KPiA+IHRoZSBTRVRfREVBRExJTkUgaW9jdGwgb24gYSBm
ZW5jZSBmZCBmb3IgdGVzdGluZy4gIEllLiBjcmVhdGUgdmFyaW91cw0KPiA+IHN3X3N5bmMgZmVu
Y2VzLCBtZXJnZSB0aGVtIGludG8gYSBmZW5jZS1hcnJheSwgc2V0IGRlYWRsaW5lIG9uIHRoZQ0K
PiA+IGZlbmNlLWFycmF5IGFuZCBjb25maXJtIHRoYXQgaXQgaXMgcHJvcGFnYXRlZCBwcm9wZXJs
eSB0byBlYWNoIGZlbmNlLg0KPiA+DQo+ID4gdjI6IFN3aXRjaCBVQUJJIHRvIGV4cHJlc3MgZGVh
ZGxpbmUgYXMgdTY0DQo+ID4gdjM6IE1vcmUgdmVyYm9zZSBVQVBJIGRvY3MsIHNob3cgaG93IHRv
IGNvbnZlcnQgZnJvbSB0aW1lc3BlYw0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KPiA+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZG1h
LWJ1Zi9zd19zeW5jLmMgICAgICB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCj4gPiAgZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaCAgIHwgIDIgKysNCj4gPiAgaW5j
bHVkZS91YXBpL2xpbnV4L3N5bmNfZmlsZS5oIHwgIDYgKysrLQ0KPiA+ICAzIGZpbGVzIGNoYW5n
ZWQsIDY1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0K
PiA+IGluZGV4IDM0OGIzYTkxNzBmYS4uM2UyMzE1ZWU5NTViIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3lu
Yy5jDQo+ID4gQEAgLTUyLDEyICs1MiwyOCBAQCBzdHJ1Y3Qgc3dfc3luY19jcmVhdGVfZmVuY2Vf
ZGF0YSB7DQo+ID4gICAgICAgX19zMzIgICBmZW5jZTsgLyogZmQgb2YgbmV3IGZlbmNlICovDQo+
ID4gIH07DQo+ID4NCj4gPiArLyoqDQo+ID4gKyAqIHN0cnVjdCBzd19zeW5jX2dldF9kZWFkbGlu
ZSAtIGdldCB0aGUgZGVhZGxpbmUgaGludCBvZiBhIHN3X3N5bmMgZmVuY2UNCj4gPiArICogQGRl
YWRsaW5lX25zOiBhYnNvbHV0ZSB0aW1lIG9mIHRoZSBkZWFkbGluZQ0KPiA+ICsgKiBAcGFkOiAg
ICAgbXVzdCBiZSB6ZXJvDQo+ID4gKyAqIEBmZW5jZV9mZDogICAgICAgIHRoZSBzd19zeW5jIGZl
bmNlIGZkIChpbikNCj4gPiArICoNCj4gPiArICogVGhlIHRpbWViYXNlIGZvciB0aGUgZGVhZGxp
bmUgaXMgQ0xPQ0tfTU9OT1RPTklDIChzYW1lIGFzIHZibGFuaykNCj4NCj4gSGksDQo+DQo+IHRo
ZSBjb21taXQgbWVzc2FnZSBleHBsYWlucyB0aGlzIHJldHVybnMgdGhlICJtb3N0IHJlY2VudCIg
ZGVhZGxpbmUsDQo+IGJ1dCB0aGUgZG9jIGhlcmUgZm9yZ2V0cyB0byBtZW50aW9uIHRoYXQuIEkg
c3VwcG9zZSB0aGF0IG1lYW5zIHRoZQ0KPiBtb3N0IHJlY2VudGx5IHNldCBkZWFkbGluZSBhbmQg
bm90IHRoZSBkZWFkbGluZSBmdXJ0aGVzdCBmb3J3YXJkIGluDQo+IHRpbWUgKGxhcmdlc3QgdmFs
dWUpLg0KPg0KPiBJcyAibW9zdCByZWNlbnQiIHRoZSBhcHByb3ByaWF0ZSBiZWhhdmlvdXIgd2hl
biBtdWx0aXBsZSBkZWFkbGluZXMgaGF2ZQ0KPiBiZWVuIHNldD8gV291bGQgeW91IG5vdCB3YW50
IHRoZSBlYXJsaWVzdCBkZWFkbGluZSBzZXQgc28gZmFyIGluc3RlYWQ/DQoNCkl0J3Mgbm90IHdo
YXQgYSAibm9ybWFsIiBpbXBsZW1lbnRhdGlvbiBvZiAtPnNldF9kZWFkbGluZSgpIHdvdWxkIGRv
Lg0KQnV0IGl0IHdhcyB1c2VmdWwgZm9yIGRldGVybWluaW5nIHRoYXQgdGhlIGRlYWRsaW5lIHBy
b3BhZ2F0ZXMNCmNvcnJlY3RseSB0aHJvdWdoIGNvbXBvc2l0ZSAoYXJyYXkvY2hhaW4pIGZlbmNl
cy4NCg0KSSBndWVzcyBJIGNvdWxkIGNoYW5nZSB0aGUgdGVzdCB0byB3b3JrIHdpdGggYSBtb3Jl
IG5vcm1hbA0KLT5zZXRfZGVhZGxpbmUoKSBpbXBsZW1lbnRhdGlvbiAod2hpY2ggd291bGQganVz
dCB0cmFjayB0aGUgbmVhcmVzdA0KKGluIHRpbWUpIGRlYWRsaW5lKS4NCg0KPiBXaGF0IGlmIG5v
bmUgaGFzIGJlZW4gc2V0Pw0KDQp5b3UnZCBnZXQgemVyby4uIEkgc3VwcG9zZSBJIGNvdWxkIG1h
a2UgaXQgcmV0dXJuIGFuIGVycm9yIGluc3RlYWQuLg0KDQpCUiwNCi1SDQoNCj4gPiArICovDQo+
ID4gK3N0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSB7DQo+ID4gKyAgICAgX191NjQgICBkZWFk
bGluZV9uczsNCj4gPiArICAgICBfX3UzMiAgIHBhZDsNCj4gPiArICAgICBfX3MzMiAgIGZlbmNl
X2ZkOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgI2RlZmluZSBTV19TWU5DX0lPQ19NQUdJQyAgICAn
VycNCj4gPg0KPiA+ICAjZGVmaW5lIFNXX1NZTkNfSU9DX0NSRUFURV9GRU5DRSAgICAgX0lPV1Io
U1dfU1lOQ19JT0NfTUFHSUMsIDAsXA0KPiA+ICAgICAgICAgICAgICAgc3RydWN0IHN3X3N5bmNf
Y3JlYXRlX2ZlbmNlX2RhdGEpDQo+ID4NCj4gPiAgI2RlZmluZSBTV19TWU5DX0lPQ19JTkMgICAg
ICAgICAgICAgICAgICAgICAgX0lPVyhTV19TWU5DX0lPQ19NQUdJQywgMSwgX191MzIpDQo+ID4g
KyNkZWZpbmUgU1dfU1lOQ19HRVRfREVBRExJTkUgICAgICAgICBfSU9XUihTV19TWU5DX0lPQ19N
QUdJQywgMiwgXA0KPiA+ICsgICAgICAgICAgICAgc3RydWN0IHN3X3N5bmNfZ2V0X2RlYWRsaW5l
KQ0KPiA+DQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9m
ZW5jZV9vcHM7DQo+ID4NCj4gPiBAQCAtMTcxLDYgKzE4NywxMyBAQCBzdGF0aWMgdm9pZCB0aW1l
bGluZV9mZW5jZV90aW1lbGluZV92YWx1ZV9zdHIoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+
ID4gICAgICAgc25wcmludGYoc3RyLCBzaXplLCAiJWQiLCBwYXJlbnQtPnZhbHVlKTsNCj4gPiAg
fQ0KPiA+DQo+ID4gK3N0YXRpYyB2b2lkIHRpbWVsaW5lX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4gPiArew0KPiA+ICsgICAg
IHN0cnVjdCBzeW5jX3B0ICpwdCA9IGRtYV9mZW5jZV90b19zeW5jX3B0KGZlbmNlKTsNCj4gPiAr
DQo+ID4gKyAgICAgcHQtPmRlYWRsaW5lID0gZGVhZGxpbmU7DQo+ID4gK30NCj4gPiArDQo+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7
DQo+ID4gICAgICAgLmdldF9kcml2ZXJfbmFtZSA9IHRpbWVsaW5lX2ZlbmNlX2dldF9kcml2ZXJf
bmFtZSwNCj4gPiAgICAgICAuZ2V0X3RpbWVsaW5lX25hbWUgPSB0aW1lbGluZV9mZW5jZV9nZXRf
dGltZWxpbmVfbmFtZSwNCj4gPiBAQCAtMTc5LDYgKzIwMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2ZlbmNlX29wcyB0aW1lbGluZV9mZW5jZV9vcHMgPSB7DQo+ID4gICAgICAgLnJlbGVh
c2UgPSB0aW1lbGluZV9mZW5jZV9yZWxlYXNlLA0KPiA+ICAgICAgIC5mZW5jZV92YWx1ZV9zdHIg
PSB0aW1lbGluZV9mZW5jZV92YWx1ZV9zdHIsDQo+ID4gICAgICAgLnRpbWVsaW5lX3ZhbHVlX3N0
ciA9IHRpbWVsaW5lX2ZlbmNlX3RpbWVsaW5lX3ZhbHVlX3N0ciwNCj4gPiArICAgICAuc2V0X2Rl
YWRsaW5lID0gdGltZWxpbmVfZmVuY2Vfc2V0X2RlYWRsaW5lLA0KPiA+ICB9Ow0KPiA+DQo+ID4g
IC8qKg0KPiA+IEBAIC0zODcsNiArNDExLDM3IEBAIHN0YXRpYyBsb25nIHN3X3N5bmNfaW9jdGxf
aW5jKHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosIHVuc2lnbmVkIGxvbmcgYXJnKQ0KPiA+ICAg
ICAgIHJldHVybiAwOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIGludCBzd19zeW5jX2lvY3Rs
X2dldF9kZWFkbGluZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBsb25nIGFy
ZykNCj4gPiArew0KPiA+ICsgICAgIHN0cnVjdCBzd19zeW5jX2dldF9kZWFkbGluZSBkYXRhOw0K
PiA+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPiA+ICsgICAgIHN0cnVjdCBzeW5j
X3B0ICpwdDsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGNvcHlfZnJvbV91c2VyKCZkYXRhLCAodm9p
ZCBfX3VzZXIgKilhcmcsIHNpemVvZihkYXRhKSkpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4g
LUVGQVVMVDsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGRhdGEuZGVhZGxpbmVfbnMgfHwgZGF0YS5w
YWQpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+ID4gKyAgICAg
ZmVuY2UgPSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGRhdGEuZmVuY2VfZmQpOw0KPiA+ICsgICAgIGlm
ICghZmVuY2UpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+ID4g
KyAgICAgcHQgPSBkbWFfZmVuY2VfdG9fc3luY19wdChmZW5jZSk7DQo+ID4gKyAgICAgaWYgKCFw
dCkNCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiArDQo+ID4g
KyAgICAgZGF0YS5kZWFkbGluZV9ucyA9IGt0aW1lX3RvX25zKHB0LT5kZWFkbGluZSk7DQo+ID4g
Kw0KPiA+ICsgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPiA+ICsNCj4gPiArICAgICBpZiAo
Y29weV90b191c2VyKCh2b2lkIF9fdXNlciAqKWFyZywgJmRhdGEsIHNpemVvZihkYXRhKSkpDQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVGQVVMVDsNCj4gPiArDQo+ID4gKyAgICAgcmV0dXJu
IDA7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBsb25nIHN3X3N5bmNfaW9jdGwoc3RydWN0
IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgbG9uZyBhcmcpDQo+ID4gIHsNCj4gPiBAQCAtMzk5LDYgKzQ1NCw5IEBAIHN0
YXRpYyBsb25nIHN3X3N5bmNfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBj
bWQsDQo+ID4gICAgICAgY2FzZSBTV19TWU5DX0lPQ19JTkM6DQo+ID4gICAgICAgICAgICAgICBy
ZXR1cm4gc3dfc3luY19pb2N0bF9pbmMob2JqLCBhcmcpOw0KPiA+DQo+ID4gKyAgICAgY2FzZSBT
V19TWU5DX0dFVF9ERUFETElORToNCj4gPiArICAgICAgICAgICAgIHJldHVybiBzd19zeW5jX2lv
Y3RsX2dldF9kZWFkbGluZShvYmosIGFyZyk7DQo+ID4gKw0KPiA+ICAgICAgIGRlZmF1bHQ6DQo+
ID4gICAgICAgICAgICAgICByZXR1cm4gLUVOT1RUWTsNCj4gPiAgICAgICB9DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmggYi9kcml2ZXJzL2RtYS1idWYvc3lu
Y19kZWJ1Zy5oDQo+ID4gaW5kZXggNjE3NmU1MmJhMmQ3Li4yZTAxNDZkMGJkYmIgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCj4gPiBAQCAtNTUsMTEgKzU1LDEzIEBAIHN0YXRpYyBpbmxp
bmUgc3RydWN0IHN5bmNfdGltZWxpbmUgKmRtYV9mZW5jZV9wYXJlbnQoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpDQo+ID4gICAqIEBiYXNlOiBiYXNlIGZlbmNlIG9iamVjdA0KPiA+ICAgKiBAbGlu
azogbGluayBvbiB0aGUgc3luYyB0aW1lbGluZSdzIGxpc3QNCj4gPiAgICogQG5vZGU6IG5vZGUg
aW4gdGhlIHN5bmMgdGltZWxpbmUncyB0cmVlDQo+ID4gKyAqIEBkZWFkbGluZTogdGhlIG1vc3Qg
cmVjZW50bHkgc2V0IGZlbmNlIGRlYWRsaW5lDQo+ID4gICAqLw0KPiA+ICBzdHJ1Y3Qgc3luY19w
dCB7DQo+ID4gICAgICAgc3RydWN0IGRtYV9mZW5jZSBiYXNlOw0KPiA+ICAgICAgIHN0cnVjdCBs
aXN0X2hlYWQgbGluazsNCj4gPiAgICAgICBzdHJ1Y3QgcmJfbm9kZSBub2RlOw0KPiA+ICsgICAg
IGt0aW1lX3QgZGVhZGxpbmU7DQo+ID4gIH07DQo+ID4NCj4gPiAgZXh0ZXJuIGNvbnN0IHN0cnVj
dCBmaWxlX29wZXJhdGlvbnMgc3dfc3luY19kZWJ1Z2ZzX2ZvcHM7DQo+ID4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9zeW5j
X2ZpbGUuaA0KPiA+IGluZGV4IDQ5MzI1Y2Y2NzQ5Yi4uZGM2NjQ1YjI1OThiIDEwMDY0NA0KPiA+
IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9zeW5jX2ZpbGUuaA0KPiA+ICsrKyBiL2luY2x1ZGUv
dWFwaS9saW51eC9zeW5jX2ZpbGUuaA0KPiA+IEBAIC03Miw3ICs3MiwxMSBAQCBzdHJ1Y3Qgc3lu
Y19maWxlX2luZm8gew0KPiA+ICAgKiBAZGVhZGxpbmVfbnM6IGFic29sdXRlIHRpbWUgb2YgdGhl
IGRlYWRsaW5lDQo+ID4gICAqIEBwYWQ6ICAgICBtdXN0IGJlIHplcm8NCj4gPiAgICoNCj4gPiAt
ICogVGhlIHRpbWViYXNlIGZvciB0aGUgZGVhZGxpbmUgaXMgQ0xPQ0tfTU9OT1RPTklDIChzYW1l
IGFzIHZibGFuaykNCj4gPiArICogVGhlIHRpbWViYXNlIGZvciB0aGUgZGVhZGxpbmUgaXMgQ0xP
Q0tfTU9OT1RPTklDIChzYW1lIGFzIHZibGFuaykuICBGb3INCj4gPiArICogZXhhbXBsZToNCj4g
PiArICoNCj4gPiArICogICAgIGNsb2NrX2dldHRpbWUoQ0xPQ0tfTU9OT1RPTklDLCAmdCk7DQo+
ID4gKyAqICAgICBkZWFkbGluZV9ucyA9ICh0LnR2X3NlYyAqIDEwMDAwMDAwMDBMKSArIHQudHZf
bnNlYyArIGR1cmF0aW9uX25zDQo+DQo+IFNob3VsZG4ndCB0aGlzIGh1bmsgYmUgaW4gcGF0Y2gg
NSBpbnN0ZWFkPw0KPg0KPiBXaGF0J3MgZHVyYXRpb25fbnM/IE1heWJlIG5zX3VudGlsX215X2Rl
YWRsaW5lIHdvdWxkIGJlIG1vcmUgY2xlYXIgdGhhdA0KPiBpdCBpcyBzb21ldGhpbmcgdXNlcnNw
YWNlIGZyZWVseSBjaG9vc2VzPw0KPg0KPiA+ICAgKi8NCj4gPiAgc3RydWN0IHN5bmNfc2V0X2Rl
YWRsaW5lIHsNCj4gPiAgICAgICBfX3U2NCAgIGRlYWRsaW5lX25zOw0KPg0KPg0KPiBUaGFua3Ms
DQo+IHBxDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
