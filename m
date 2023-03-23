Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C87EC6C6A0F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 14:54:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D74FC3EC33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 13:54:31 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lists.linaro.org (Postfix) with ESMTPS id 0B4C33E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 13:54:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=fABtsO48;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id d24-20020a9d72d8000000b0069fb53b68a3so291477otk.11
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 06:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679579656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QjOvv/ZPDbSli/SQ67teItUX/ZV6UdqvrawXfnsTP9c=;
        b=fABtsO48pFpSWP4FcJ3dhrQvnIbnb6omivu7xuuBdoBA4dAX6OWqKUf4WBRar8getR
         uUDMYAy1h2w23MXumxi25yo+48vMiJEIn5x8S1NDp366vvkhUGWs+owx8UORr2HoHxlB
         ykH2TgdVhWu5Fksfm3zSNiK49GwWe2X3eh6MX118M+k0gIdAaLNdDqMqn75WkLB4TfR0
         r9/ieRqMhlAB9Kw0+rhmW7lPPju/rMRdNh0TgpA3bu3aA0pl3Qbg/wT4E4pMSI3LEu2y
         yN7mf0oNFNDE0wW+qiibGf6aTFeFcMYFoCHx22IFdOen1v8Yj2+ioZPS7pS0fo1NhOXY
         mGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679579656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QjOvv/ZPDbSli/SQ67teItUX/ZV6UdqvrawXfnsTP9c=;
        b=MsrrGHFw5MxkoxA54iIxwB6FlHjXPU1j+sj6G3/KQCpxb/80S65E88jjdFnsQ8qmxH
         1JsV0QxZuFu25kgP+mu523wdFIKFz2W73aUqfHYesjtmmDBI4JVQA5lYX1FpQCc5ODtz
         +TNEDFY+jMh6xeiR2tKSjNKaxSNbobLXayXS6ewMtvbMGimEZ0YLv6hCZ44K4LpkXi3k
         krSJBMRi1fmkOe0MslqK/nzGvUA3+ftkTqxIYjapjKF4N3TE17h1XpCHJvDTgGvWS1G7
         eRN4DwYETz92BKau4GGYkW9HZrph8unux0S6Yx1rfSSUoNSm6QsfsVhbbjKSEkum0IS3
         1ifQ==
X-Gm-Message-State: AO0yUKWHj+s6nVsX82AoQ1a+2Q1XRetthqmEATfsZ4GRHUi7E+xG8bqj
	+PH8eOH8iG007dgrSnsY2AhY3kZBCH/MpBp2ri4=
X-Google-Smtp-Source: AK7set+pjqtGtPO6GLHBGh9hBOwDRWaRvZoOvDszymMlwhM38Q5UfQVowYMdv7Wz5SBe768rCFIMjR8hTTsUyroJSF4=
X-Received: by 2002:a05:6830:1483:b0:68b:cd1e:1ef1 with SMTP id
 s3-20020a056830148300b0068bcd1e1ef1mr2274617otq.7.1679579656288; Thu, 23 Mar
 2023 06:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
In-Reply-To: <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 23 Mar 2023 06:54:05 -0700
Message-ID: <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B4C33E8AB
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.49:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.210.49:from];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: P75RSAZYQV7N22WOQERR7RB4TSJWM5PG
X-Message-ID-Hash: P75RSAZYQV7N22WOQERR7RB4TSJWM5PG
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P75RSAZYQV7N22WOQERR7RB4TSJWM5PG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgMTI6MzXigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMjIuMDMuMjMgdW0gMjM6NDQg
c2NocmllYiBSb2IgQ2xhcms6DQo+ID4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21p
dW0ub3JnPg0KPiA+DQo+ID4gQ29udGFpbmVyIGZlbmNlcyBoYXZlIGJ1cm5lciBjb250ZXh0cywg
d2hpY2ggbWFrZXMgdGhlIHRyaWNrIHRvIHN0b3JlIGF0DQo+ID4gbW9zdCBvbmUgZmVuY2UgcGVy
IGNvbnRleHQgc29tZXdoYXQgdXNlbGVzcyBpZiB3ZSBkb24ndCB1bndyYXAgYXJyYXkgb3INCj4g
PiBjaGFpbiBmZW5jZXMuDQo+DQo+IE1obSwgd2UgaW50ZW50aW9uYWxseSBrZXB0IHRoZW0gbm90
IHVud3JhcHBlZCBzaW5jZSB0aGlzIHdheSB0aGV5IG9ubHkNCj4gb2NjdXB5IG9uZSBmZW5jZSBz
bG90Lg0KPg0KPiBCdXQgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIHVud3JhcCB0aGVtIGlmIHlvdSBh
ZGQgbWFueSBvZiB0aG9zZSBkZXBlbmRlbmNpZXMuDQo+DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gLS0tDQo+ID4gdGJoLCBJ
J20gbm90IHN1cmUgd2h5IHdlIHdlcmVuJ3QgZG9pbmcgdGhpcyBhbHJlYWR5LCB1bmxlc3MgdGhl
cmUgaXMNCj4gPiBzb21ldGhpbmcgSSdtIG92ZXJsb29raW5nDQo+ID4NCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgNDMgKysrKysrKysrKysrKysrKystLS0t
LS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+ID4g
aW5kZXggYzJlZTQ0ZDYyMjRiLi5mNTllNTMzNWFmYmIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiA+IEBAIC00MSwyMCArNDEsMjEgQEANCj4gPiAg
ICAqIDQuIEVudGl0aWVzIHRoZW1zZWx2ZXMgbWFpbnRhaW4gYSBxdWV1ZSBvZiBqb2JzIHRoYXQg
d2lsbCBiZSBzY2hlZHVsZWQgb24NCj4gPiAgICAqICAgIHRoZSBoYXJkd2FyZS4NCj4gPiAgICAq
DQo+ID4gICAgKiBUaGUgam9icyBpbiBhIGVudGl0eSBhcmUgYWx3YXlzIHNjaGVkdWxlZCBpbiB0
aGUgb3JkZXIgdGhhdCB0aGV5IHdlcmUgcHVzaGVkLg0KPiA+ICAgICovDQo+ID4NCj4gPiAgICNp
bmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvd2FpdC5oPg0K
PiA+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvY29t
cGxldGlvbi5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLXVud3JhcC5oPg0KPiA+
ICAgI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQo+ID4gICAjaW5jbHVkZSA8dWFwaS9saW51
eC9zY2hlZC90eXBlcy5oPg0KPiA+DQo+ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0K
PiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+DQo+ID4gICAjaW5jbHVkZSA8ZHJtL2dwdV9z
Y2hlZHVsZXIuaD4NCj4gPiAgICNpbmNsdWRlIDxkcm0vc3BzY19xdWV1ZS5oPg0KPiA+DQo+ID4g
ICAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMNCj4gPiAgICNpbmNsdWRlICJncHVfc2NoZWR1
bGVyX3RyYWNlLmgiDQo+ID4gQEAgLTY2NSw0MSArNjY2LDI3IEBAIHZvaWQgZHJtX3NjaGVkX2pv
Yl9hcm0oc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYikNCj4gPiAgICAgICBzY2hlZCA9IGVudGl0
eS0+cnEtPnNjaGVkOw0KPiA+DQo+ID4gICAgICAgam9iLT5zY2hlZCA9IHNjaGVkOw0KPiA+ICAg
ICAgIGpvYi0+c19wcmlvcml0eSA9IGVudGl0eS0+cnEgLSBzY2hlZC0+c2NoZWRfcnE7DQo+ID4g
ICAgICAgam9iLT5pZCA9IGF0b21pYzY0X2luY19yZXR1cm4oJnNjaGVkLT5qb2JfaWRfY291bnQp
Ow0KPiA+DQo+ID4gICAgICAgZHJtX3NjaGVkX2ZlbmNlX2luaXQoam9iLT5zX2ZlbmNlLCBqb2It
PmVudGl0eSk7DQo+ID4gICB9DQo+ID4gICBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9qb2JfYXJt
KTsNCj4gPg0KPiA+IC0vKioNCj4gPiAtICogZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSAt
IGFkZHMgdGhlIGZlbmNlIGFzIGEgam9iIGRlcGVuZGVuY3kNCj4gPiAtICogQGpvYjogc2NoZWR1
bGVyIGpvYiB0byBhZGQgdGhlIGRlcGVuZGVuY2llcyB0bw0KPiA+IC0gKiBAZmVuY2U6IHRoZSBk
bWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4NCj4gPiAtICoNCj4g
PiAtICogTm90ZSB0aGF0IEBmZW5jZSBpcyBjb25zdW1lZCBpbiBib3RoIHRoZSBzdWNjZXNzIGFu
ZCBlcnJvciBjYXNlcy4NCj4gPiAtICoNCj4gPiAtICogUmV0dXJuczoNCj4gPiAtICogMCBvbiBz
dWNjZXNzLCBvciBhbiBlcnJvciBvbiBmYWlsaW5nIHRvIGV4cGFuZCB0aGUgYXJyYXkuDQo+ID4g
LSAqLw0KPiA+IC1pbnQgZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiAqam9iLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkNCj4gPiArc3RhdGljIGludCBfYWRkX2RlcGVuZGVuY3koc3RydWN0
IGRybV9zY2hlZF9qb2IgKmpvYiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+DQo+IFBsZWFz
ZSBrZWVwIHRoZSBkcm1fc2NoZWRfam9iXyBwcmVmaXggaGVyZSBldmVuIGZvciBzdGF0aWMgZnVu
Y3Rpb25zLg0KPiBUaGUgc3ltYm9sIF9hZGRfZGVwZW5kZW5jeSBqdXN0IHN1Y2tzIGluIGEgYmFj
a3RyYWNlLCBlc3BlY2lhbGx5IHdoZW4NCj4gaXQncyB0YWlsIG9wdGltaXplZC4NCj4NCj4gPiAg
IHsNCj4gPiAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICplbnRyeTsNCj4gPiAgICAgICB1bnNpZ25l
ZCBsb25nIGluZGV4Ow0KPiA+ICAgICAgIHUzMiBpZCA9IDA7DQo+ID4gICAgICAgaW50IHJldDsN
Cj4gPg0KPiA+IC0gICAgIGlmICghZmVuY2UpDQo+ID4gLSAgICAgICAgICAgICByZXR1cm4gMDsN
Cj4gPiAtDQo+ID4gICAgICAgLyogRGVkdXBsaWNhdGUgaWYgd2UgYWxyZWFkeSBkZXBlbmQgb24g
YSBmZW5jZSBmcm9tIHRoZSBzYW1lIGNvbnRleHQuDQo+ID4gICAgICAgICogVGhpcyBsZXRzIHRo
ZSBzaXplIG9mIHRoZSBhcnJheSBvZiBkZXBzIHNjYWxlIHdpdGggdGhlIG51bWJlciBvZg0KPiA+
ICAgICAgICAqIGVuZ2luZXMgaW52b2x2ZWQsIHJhdGhlciB0aGFuIHRoZSBudW1iZXIgb2YgQk9z
Lg0KPiA+ICAgICAgICAqLw0KPiA+ICAgICAgIHhhX2Zvcl9lYWNoKCZqb2ItPmRlcGVuZGVuY2ll
cywgaW5kZXgsIGVudHJ5KSB7DQo+ID4gICAgICAgICAgICAgICBpZiAoZW50cnktPmNvbnRleHQg
IT0gZmVuY2UtPmNvbnRleHQpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0K
PiA+DQo+ID4gICAgICAgICAgICAgICBpZiAoZG1hX2ZlbmNlX2lzX2xhdGVyKGZlbmNlLCBlbnRy
eSkpIHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChlbnRyeSk7DQo+
ID4gQEAgLTcwOSwyMCArNjk2LDQ2IEBAIGludCBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5
KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+ID4gICAgICAgICAgICAgICB9DQo+ID4gICAg
ICAgICAgICAgICByZXR1cm4gMDsNCj4gPiAgICAgICB9DQo+ID4NCj4gPiAgICAgICByZXQgPSB4
YV9hbGxvYygmam9iLT5kZXBlbmRlbmNpZXMsICZpZCwgZmVuY2UsIHhhX2xpbWl0XzMyYiwgR0ZQ
X0tFUk5FTCk7DQo+ID4gICAgICAgaWYgKHJldCAhPSAwKQ0KPiA+ICAgICAgICAgICAgICAgZG1h
X2ZlbmNlX3B1dChmZW5jZSk7DQo+ID4NCj4gPiAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICAgfQ0K
PiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3kgLSBh
ZGRzIHRoZSBmZW5jZSBhcyBhIGpvYiBkZXBlbmRlbmN5DQo+ID4gKyAqIEBqb2I6IHNjaGVkdWxl
ciBqb2IgdG8gYWRkIHRoZSBkZXBlbmRlbmNpZXMgdG8NCj4gPiArICogQGZlbmNlOiB0aGUgZG1h
X2ZlbmNlIHRvIGFkZCB0byB0aGUgbGlzdCBvZiBkZXBlbmRlbmNpZXMuDQo+ID4gKyAqDQo+ID4g
KyAqIE5vdGUgdGhhdCBAZmVuY2UgaXMgY29uc3VtZWQgaW4gYm90aCB0aGUgc3VjY2VzcyBhbmQg
ZXJyb3IgY2FzZXMuDQo+ID4gKyAqDQo+ID4gKyAqIFJldHVybnM6DQo+ID4gKyAqIDAgb24gc3Vj
Y2Vzcywgb3IgYW4gZXJyb3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFycmF5Lg0KPiA+ICsg
Ki8NCj4gPiAraW50IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3koc3RydWN0IGRybV9zY2hl
ZF9qb2IgKmpvYiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpDQo+DQo+IE1heWJlIG5hbWUgdGhlIG5ldyBmdW5jdGlvbiBkcm1fc2No
ZWRfam9iX3Vud3JhcF9hZGRfZGVwZW5kZW5jeSBvcg0KPiBzb21ldGhpbmcgbGlrZSB0aGlzLg0K
Pg0KPiBJIG5lZWQgdG8gZG91YmxlIGNoZWNrLCBidXQgSSB0aGluayBmb3Igc29tZSBjYXNlcyB3
ZSBkb24ndCBuZWVkIG9yDQo+IGRvbid0IGV2ZW4gd2FudCB0aGlzIGluIHRoZSBkcml2ZXIuDQoN
CkknZCBiZSBjdXJpb3VzIHRvIGtub3cgdGhlIGNhc2VzIHdoZXJlIHlvdSBkb24ndCB3YW50IHRo
aXMuLiBvbmUgdGhpbmcNCkkgd2FzIHRoaW5raW5nIGFib3V0LCB3aGF0IGlmIHlvdSBoYXZlIGEg
Y29udGFpbmVyIGZlbmNlIHdpdGggdHdvDQpjb250YWluZWQgZmVuY2VzLiAgT25lIGlzIG9uIHRo
ZSBzYW1lIGN0eCBhcyB0aGUgam9iLCBvbmUgaXMgbm90IGJ1dA0Kc2lnbmFscyBzb29uZXIuICBZ
b3UgZW5kIHVwIGFydGlmaWNpYWxseSB3YWl0aW5nIG9uIGJvdGgsIHdoaWNoIHNlZW1zDQpzdWIt
b3B0aW1hbC4NCg0KQW55d2F5cywgSSBjYW4gbWFrZSB0aGlzIGEgbmV3IGVudHJ5cG9pbnQgd2hp
Y2ggdW53cmFwcywgYW5kL29yIHJlbmFtZQ0KdGhlIGludGVybmFsIHN0YXRpYyBmdW5jdGlvbiwg
aWYgd2UgdGhpbmsgdGhpcyBpcyBhIGdvb2QgaWRlYS4NCg0KQlIsDQotUg0KDQo+IENocmlzdGlh
bi4NCj4NCj4gPiArew0KPiA+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwIGl0ZXI7DQo+
ID4gKyAgICAgc3RydWN0IGRtYV9mZW5jZSAqZjsNCj4gPiArICAgICBpbnQgcmV0ID0gMDsNCj4g
PiArDQo+ID4gKyAgICAgZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaCAoZiwgJml0ZXIsIGZlbmNl
KSB7DQo+ID4gKyAgICAgICAgICAgICByZXQgPSBfYWRkX2RlcGVuZGVuY3koam9iLCBmKTsNCj4g
PiArICAgICAgICAgICAgIGlmIChyZXQpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFr
Ow0KPiA+ICsgICAgIH0NCj4gPiArDQo+ID4gKyAgICAgcmV0dXJuIHJldDsNCj4gPiArfQ0KPiA+
ICAgRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KTsNCj4gPg0KPiA+
ICAgLyoqDQo+ID4gICAgKiBkcm1fc2NoZWRfam9iX2FkZF9yZXN2X2RlcGVuZGVuY2llcyAtIGFk
ZCBhbGwgZmVuY2VzIGZyb20gdGhlIHJlc3YgdG8gdGhlIGpvYg0KPiA+ICAgICogQGpvYjogc2No
ZWR1bGVyIGpvYiB0byBhZGQgdGhlIGRlcGVuZGVuY2llcyB0bw0KPiA+ICAgICogQHJlc3Y6IHRo
ZSBkbWFfcmVzdiBvYmplY3QgdG8gZ2V0IHRoZSBmZW5jZXMgZnJvbQ0KPiA+ICAgICogQHVzYWdl
OiB0aGUgZG1hX3Jlc3ZfdXNhZ2UgdG8gdXNlIHRvIGZpbHRlciB0aGUgZmVuY2VzDQo+ID4gICAg
Kg0KPiA+ICAgICogVGhpcyBhZGRzIGFsbCBmZW5jZXMgbWF0Y2hpbmcgdGhlIGdpdmVuIHVzYWdl
IGZyb20gQHJlc3YgdG8gQGpvYi4NCj4gPiAgICAqIE11c3QgYmUgY2FsbGVkIHdpdGggdGhlIEBy
ZXN2IGxvY2sgaGVsZC4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
