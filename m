Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A236A722ADE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 17:22:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A09503EBFD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 15:22:15 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lists.linaro.org (Postfix) with ESMTPS id B2F6A3E94C
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jun 2023 15:22:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=PmI2vPsn;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-394c7ba4cb5so3401240b6e.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Jun 2023 08:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685978529; x=1688570529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ownFhAOJ49PkdCY/ElX6rAxTLNeHPzeq4mznvKgyoCM=;
        b=PmI2vPsng+rdUr3wY1rs4RCuBu6dzmI7/2gJjL9H+RgWI+JJhWKnCseHxLxsGLSYt+
         VI5l2Oyo3052z/uTfpJi3wPv674gduL/0ctQmP1cnvXkIneLoi/k8xqBkCH6+wQ1p/nh
         2z/9JOBkiVHtKHskN+Ph40moVJhs+PEWR5AOhRNN7VV5UkCHv1bxRqjJ9D036msS6Ji/
         evOHJ8N/U1op0XQt6YMHnorGrSSOWBNwZD12hH8JnyJFowUh3ed77YHLxHoDWDaZlXgF
         a1K5icKxJjEptcjjelAProwntmsYZ4Eym7hd+BC4GHy5U4gwuNLv91PyMFtkpCGjL9Ij
         4bGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685978529; x=1688570529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ownFhAOJ49PkdCY/ElX6rAxTLNeHPzeq4mznvKgyoCM=;
        b=NhAOW5UouB15utvLBgtZsq1fv5I6pUqfGDA5L22DeX6AljmY0vapCvZhyonN1oILpR
         obJ0VM9QakV4dHpDqazCbIYIVjVKoeqUdHas0pHcotYKTUQjzWSfI4BK6Mxfh47XXdMI
         0YJGeJZ1j3VmzNSAIEEHWPg4UUiS9iYaaeIWsai74ro8Kplc/nJ7z4ET+T+0OIxw5Xhm
         TI7WIDYvbf0yHiXXXOG9aOnroXqbog1UEXuzYkp49+KkraZ/SCGPoqTdy0DjbSIWZ+I/
         imt4e50DFn3zN7Qa6TIv3jbHeKjsUaNOgXTarLbhksRdWfMp3JCXfhXx0vD+6FzBuVGs
         TzQA==
X-Gm-Message-State: AC+VfDwbrg1sUGvl0JY4R2OVf9807UJ0/J/XlfB3NJRijpmxHWyO+Ddp
	LO71PUSDH20Uqa60jO0ccg1wQa6I27h/7E7QN6Y=
X-Google-Smtp-Source: ACHHUZ6UGZNvBqYMQ3/CqE2fGvsTmTRJM2EW2RZ/4t9luyD1O0fKQABDsXBaz/nEdC+C/lqa8j6+9PDMqZEFFXOnXHE=
X-Received: by 2002:a54:4598:0:b0:39a:bc50:db96 with SMTP id
 z24-20020a544598000000b0039abc50db96mr2647242oib.41.1685978529045; Mon, 05
 Jun 2023 08:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230603074345.17907-1-lm0963hack@gmail.com> <e337dec6-0b0e-7e53-e38d-ae1791b98418@amd.com>
In-Reply-To: <e337dec6-0b0e-7e53-e38d-ae1791b98418@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 5 Jun 2023 11:21:58 -0400
Message-ID: <CADnq5_N=enSchma5R7d8q9t8SkJ_Z7oFxDFHp3a+ypqenO=DYA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.963];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	BLOCKLISTDE_FAIL(0.00)[209.85.167.177:server fail];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.177:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B2F6A3E94C
X-Spamd-Bar: --------
Message-ID-Hash: LCFXYKNH7QSTPPFAPO7GQJF6FKFESZOQ
X-Message-ID-Hash: LCFXYKNH7QSTPPFAPO7GQJF6FKFESZOQ
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Min Li <lm0963hack@gmail.com>, alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/radeon: fix race condition UAF in radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LCFXYKNH7QSTPPFAPO7GQJF6FKFESZOQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gTW9uLCBKdW4gNSwgMjAyMyBhdCA0OjEz4oCvQU0gQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0g
MDMuMDYuMjMgdW0gMDk6NDMgc2NocmllYiBNaW4gTGk6DQo+ID4gVXNlcnNwYWNlIGNhbiByYWNl
IHRvIGZyZWUgdGhlIGdvYmoocm9iaiBjb252ZXJ0ZWQgZnJvbSksIHJvYmogc2hvdWxkIG5vdA0K
PiA+IGJlIGFjY2Vzc2VkIGFnYWluIGFmdGVyIGRybV9nZW1fb2JqZWN0X3B1dCwgb3RoZXJ3aXRo
IGl0IHdpbGwgcmVzdWx0IGluDQo+ID4gdXNlLWFmdGVyLWZyZWUuDQo+ID4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBNaW4gTGkgPGxtMDk2M2hhY2tAZ21haWwuY29tPg0KPg0KPiBSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPg0KPiA+IC0tLQ0K
PiA+IENoYW5nZXMgaW4gdjI6DQo+ID4gLSBSZW1vdmUgdW51c2VkIHJvYmosIGF2b2lkIGNvbXBp
bGUgY29tcGxhaW4NCj4gPg0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZ2Vt
LmMgfCA0ICstLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2dlbS5jDQo+ID4gaW5k
ZXggYmRjNWFmMjNmMDA1Li5kM2Y1ZGRiYzE3MDQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fZ2VtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl9nZW0uYw0KPiA+IEBAIC00NTksNyArNDU5LDYgQEAgaW50IHJhZGVvbl9nZW1f
c2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+
ICAgICAgIHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2ID0gZGV2LT5kZXZfcHJpdmF0ZTsNCj4g
PiAgICAgICBzdHJ1Y3QgZHJtX3JhZGVvbl9nZW1fc2V0X2RvbWFpbiAqYXJncyA9IGRhdGE7DQo+
ID4gICAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpnb2JqOw0KPiA+IC0gICAgIHN0cnVjdCBy
YWRlb25fYm8gKnJvYmo7DQo+ID4gICAgICAgaW50IHI7DQo+ID4NCj4gPiAgICAgICAvKiBmb3Ig
bm93IGlmIHNvbWVvbmUgcmVxdWVzdHMgZG9tYWluIENQVSAtDQo+ID4gQEAgLTQ3MiwxMyArNDcx
LDEyIEBAIGludCByYWRlb25fZ2VtX3NldF9kb21haW5faW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwNCj4gPiAgICAgICAgICAgICAgIHVwX3JlYWQoJnJkZXYtPmV4Y2x1
c2l2ZV9sb2NrKTsNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU5PRU5UOw0KPiA+ICAgICAg
IH0NCj4gPiAtICAgICByb2JqID0gZ2VtX3RvX3JhZGVvbl9ibyhnb2JqKTsNCj4gPg0KPiA+ICAg
ICAgIHIgPSByYWRlb25fZ2VtX3NldF9kb21haW4oZ29iaiwgYXJncy0+cmVhZF9kb21haW5zLCBh
cmdzLT53cml0ZV9kb21haW4pOw0KPiA+DQo+ID4gICAgICAgZHJtX2dlbV9vYmplY3RfcHV0KGdv
YmopOw0KPiA+ICAgICAgIHVwX3JlYWQoJnJkZXYtPmV4Y2x1c2l2ZV9sb2NrKTsNCj4gPiAtICAg
ICByID0gcmFkZW9uX2dlbV9oYW5kbGVfbG9ja3VwKHJvYmotPnJkZXYsIHIpOw0KPiA+ICsgICAg
IHIgPSByYWRlb25fZ2VtX2hhbmRsZV9sb2NrdXAocmRldiwgcik7DQo+ID4gICAgICAgcmV0dXJu
IHI7DQo+ID4gICB9DQo+ID4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
