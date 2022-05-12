Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE884524BC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 May 2022 13:35:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CDC1404A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 May 2022 11:34:59 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 96C413EC4C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 May 2022 11:34:54 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id n10so9638236ejk.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 May 2022 04:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=mYnxmb7ZLbw85x8pvcfGdGU+kJfIKz2pfuO8TVv/FGM=;
        b=SnS6Paxpf8PoWaD+UVdJuIJw9yQcHiEYMw13JvL+Gach2bPrhxV10wRfsqP3HfW/yl
         rFeWgWTB5F/nEn5QuC5KzGRykUy+roHjDvt0lJS/rjaflSZFFomtIAoAWZCB9vIrlnVA
         QOLSwVNF8pedlBYU1IktAfZ3ZQGMNPk37+YFGN2wuYxtWPaQW4v/lr97tsRYddBDRc+P
         KvpOgcyRzwh2Q2g7CuGkSdqwlR91zLc2dOOn8gsqVd0nhv1S0aQEz+7Yuulo8h38Ov1n
         R9s6vQN+JSLpr5UEN5CunvhhYYH2kXBKetQaoyknmTkMHX2J0ngTP++bcrar0b2/m5bz
         OJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mYnxmb7ZLbw85x8pvcfGdGU+kJfIKz2pfuO8TVv/FGM=;
        b=Jz1TxFojoH88v6LurcrE5HSHv2SSi26rSC/LjcN1TzgRVAkh/Ejil+0ipIjgk1jfkY
         tkaDftR8OxuiNeWo7J0UIRTflXd3uQO/Qlwuxvlj1/K6hRJPLrSlXbbR5U6xGro5Aeko
         488PGEOpKlqrFxxzrPRYdeuMvncX6Au1F4EBXvIBy2CKuPhed9l7wzQGwA4cExFcz0+v
         2T45BnM1Ue1+a1tZ/nji+n56fTmt8u7L+JTPng45vu3hm52hDkWWpVdjEinkqxSHO+So
         hrNYoz2SD9NqGbg/7okeFUSNRU///PHYplMvyNQb9aMe9dIOPyHoP2yiu3X0FlEzRAAX
         eHaA==
X-Gm-Message-State: AOAM531/otpjNmkXO/w53t/lDrBLkV5eKKgZgOjmWYyMAnW/hwaow7mv
	NbkwxIgVTLGNQ9Rm0teJ2mQ=
X-Google-Smtp-Source: ABdhPJyA15RXWPQxaZozBxyF3PPbZ9V60JlKnqFjWEJJywxLyihsXE9vmcecqiP/p8FFG0F9aJFoLw==
X-Received: by 2002:a17:907:60d3:b0:6f5:c4c3:2f96 with SMTP id hv19-20020a17090760d300b006f5c4c32f96mr27380366ejc.724.1652355293558;
        Thu, 12 May 2022 04:34:53 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea033.dip0.t-ipconnect.de. [91.14.160.51])
        by smtp.gmail.com with ESMTPSA id n14-20020a170906700e00b006f3ef214e34sm1994117ejj.154.2022.05.12.04.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 04:34:52 -0700 (PDT)
Message-ID: <50832f62-491f-f06f-b38d-74175942a27c@gmail.com>
Date: Thu, 12 May 2022 13:34:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <bd90027c-5158-0d53-9b05-97a9e62309b3@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <bd90027c-5158-0d53-9b05-97a9e62309b3@amd.com>
Message-ID-Hash: NOMPMXXQGTPK3CTF6EVXUVSPMQHLQ3DZ
X-Message-ID-Hash: NOMPMXXQGTPK3CTF6EVXUVSPMQHLQ3DZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-buf: cleanup dma_fence_unwrap selftest v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NOMPMXXQGTPK3CTF6EVXUVSPMQHLQ3DZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGV5IERhbmllbCwNCg0KYSBnZW50bGUgcGluZyBvbiB0aGlzIGhlcmUuIFRob3NlIHBhdGNoZXMg
Y29tZSBiZWZvcmUgbXkgZHJtLWV4ZWMgd29yaywgDQpzbyB3b3VsZCBiZSBuaWNlIGlmIHdlIGNv
dWxkIGdldCB0aGF0IHJldmlld2VkIGZpcnN0Lg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCkFt
IDA2LjA1LjIyIHVtIDE2OjExIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4gSSBoYWQgdG8g
c2VuZCB0aGlzIG91dCBvbmNlIG1vcmUuDQo+DQo+IFRoaXMgdGltZSB3aXRoIHRoZSByaWdodCBt
YWlsIGFkZHJlc3NlcyBhbmQgYSBtdWNoIHNpbXBsaWZpZWQgcGF0Y2ggIzMuDQo+DQo+IENocmlz
dGlhbi4NCj4NCj4gQW0gMDYuMDUuMjIgdW0gMTY6MTAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmln
Og0KPj4gVGhlIHNlbGZ0ZXN0cywgZml4IHRoZSBlcnJvciBoYW5kbGluZywgcmVtb3ZlIHVudXNl
ZCBmdW5jdGlvbnMgYW5kIHN0b3ANCj4+IGxlYWtpbmcgbWVtb3J5IGluIGZhaWxlZCB0ZXN0cy4N
Cj4+DQo+PiB2MjogZml4IHRoZSBtZW1vcnkgbGVhayBjb3JyZWN0bHkuDQo+Pg0KPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4g
LS0tDQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5jIHwgNDggKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMgDQo+PiBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEt
ZmVuY2UtdW53cmFwLmMNCj4+IGluZGV4IDAzOWYwMTZiNTdiZS4uZTIwYzVhN2RjZmU0IDEwMDY0
NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPj4gQEAgLTQsMjcgKzQs
MTkgQEANCj4+IMKgwqAgKiBDb3B5cmlnaHQgKEMpIDIwMjIgQWR2YW5jZWQgTWljcm8gRGV2aWNl
cywgSW5jLg0KPj4gwqDCoCAqLw0KPj4gwqAgKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4N
Cj4+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+DQo+PiArI2luY2x1ZGUgPGxp
bnV4L2RtYS1mZW5jZS1jaGFpbi5oPg0KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS11
bndyYXAuaD4NCj4+IC0jaWYgMA0KPj4gLSNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4NCj4+IC0j
aW5jbHVkZSA8bGludXgva3RocmVhZC5oPg0KPj4gLSNpbmNsdWRlIDxsaW51eC9tbS5oPg0KPj4g
LSNpbmNsdWRlIDxsaW51eC9zY2hlZC9zaWduYWwuaD4NCj4+IC0jaW5jbHVkZSA8bGludXgvc2xh
Yi5oPg0KPj4gLSNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPg0KPj4gLSNpbmNsdWRlIDxsaW51
eC9yYW5kb20uaD4NCj4+IC0jZW5kaWYNCj4+IMKgIMKgICNpbmNsdWRlICJzZWxmdGVzdC5oIg0K
Pj4gwqAgwqAgI2RlZmluZSBDSEFJTl9TWiAoNCA8PCAxMCkNCj4+IMKgIC1zdGF0aWMgaW5saW5l
IHN0cnVjdCBtb2NrX2ZlbmNlIHsNCj4+ICtzdHJ1Y3QgbW9ja19mZW5jZSB7DQo+PiDCoMKgwqDC
oMKgIHN0cnVjdCBkbWFfZmVuY2UgYmFzZTsNCj4+IMKgwqDCoMKgwqAgc3BpbmxvY2tfdCBsb2Nr
Ow0KPj4gLX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KPj4gLcKgwqDC
oCByZXR1cm4gY29udGFpbmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCj4+IC19
DQo+PiArfTsNCj4+IMKgIMKgIHN0YXRpYyBjb25zdCBjaGFyICptb2NrX25hbWUoc3RydWN0IGRt
YV9mZW5jZSAqZikNCj4+IMKgIHsNCj4+IEBAIC00NSw3ICszNyw4IEBAIHN0YXRpYyBzdHJ1Y3Qg
ZG1hX2ZlbmNlICptb2NrX2ZlbmNlKHZvaWQpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IE5VTEw7DQo+PiDCoCDCoMKgwqDCoMKgIHNwaW5fbG9ja19pbml0KCZmLT5sb2NrKTsNCj4+IC3C
oMKgwqAgZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2UsICZtb2NrX29wcywgJmYtPmxvY2ssIDAsIDAp
Ow0KPj4gK8KgwqDCoCBkbWFfZmVuY2VfaW5pdCgmZi0+YmFzZSwgJm1vY2tfb3BzLCAmZi0+bG9j
aywNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9jb250ZXh0X2Fs
bG9jKDEpLCAxKTsNCj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJuICZmLT5iYXNlOw0KPj4gwqAgfQ0K
Pj4gQEAgLTU5LDcgKzUyLDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKm1vY2tfYXJyYXko
dW5zaWduZWQgaW50IA0KPj4gbnVtX2ZlbmNlcywgLi4uKQ0KPj4gwqAgwqDCoMKgwqDCoCBmZW5j
ZXMgPSBrY2FsbG9jKG51bV9mZW5jZXMsIHNpemVvZigqZmVuY2VzKSwgR0ZQX0tFUk5FTCk7DQo+
PiDCoMKgwqDCoMKgIGlmICghZmVuY2VzKQ0KPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiBOVUxM
Ow0KPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gZXJyb3JfcHV0Ow0KPj4gwqAgwqDCoMKgwqDCoCB2
YV9zdGFydCh2YWxpc3QsIG51bV9mZW5jZXMpOw0KPj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBp
IDwgbnVtX2ZlbmNlczsgKytpKQ0KPj4gQEAgLTcwLDEzICs2MywxNyBAQCBzdGF0aWMgc3RydWN0
IGRtYV9mZW5jZSAqbW9ja19hcnJheSh1bnNpZ25lZCBpbnQgDQo+PiBudW1fZmVuY2VzLCAuLi4p
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1h
X2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMSwgZmFsc2UpOw0KPj4gwqDCoMKgwqDCoCBpZiAoIWFycmF5
KQ0KPj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gY2xlYW51cDsNCj4+ICvCoMKgwqDCoMKgwqDCoCBn
b3RvIGVycm9yX2ZyZWU7DQo+PiDCoMKgwqDCoMKgIHJldHVybiAmYXJyYXktPmJhc2U7DQo+PiDC
oCAtY2xlYW51cDoNCj4+IC3CoMKgwqAgZm9yIChpID0gMDsgaSA8IG51bV9mZW5jZXM7ICsraSkN
Cj4+IC3CoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNlc1tpXSk7DQo+PiArZXJyb3Jf
ZnJlZToNCj4+IMKgwqDCoMKgwqAga2ZyZWUoZmVuY2VzKTsNCj4+ICsNCj4+ICtlcnJvcl9wdXQ6
DQo+PiArwqDCoMKgIHZhX3N0YXJ0KHZhbGlzdCwgbnVtX2ZlbmNlcyk7DQo+PiArwqDCoMKgIGZv
ciAoaSA9IDA7IGkgPCBudW1fZmVuY2VzOyArK2kpDQo+PiArwqDCoMKgwqDCoMKgwqAgZG1hX2Zl
bmNlX3B1dCh2YV9hcmcodmFsaXN0LCB0eXBlb2YoKmZlbmNlcykpKTsNCj4+ICvCoMKgwqAgdmFf
ZW5kKHZhbGlzdCk7DQo+PiDCoMKgwqDCoMKgIHJldHVybiBOVUxMOw0KPj4gwqAgfQ0KPj4gwqAg
QEAgLTExMyw3ICsxMTAsNiBAQCBzdGF0aWMgaW50IHNhbml0eWNoZWNrKHZvaWQgKmFyZykNCj4+
IMKgwqDCoMKgwqAgaWYgKCFjaGFpbikNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVO
T01FTTsNCj4+IMKgIC3CoMKgwqAgZG1hX2ZlbmNlX3NpZ25hbChmKTsNCj4+IMKgwqDCoMKgwqAg
ZG1hX2ZlbmNlX3B1dChjaGFpbik7DQo+PiDCoMKgwqDCoMKgIHJldHVybiBlcnI7DQo+PiDCoCB9
DQo+PiBAQCAtMTU0LDEwICsxNTAsOCBAQCBzdGF0aWMgaW50IHVud3JhcF9hcnJheSh2b2lkICph
cmcpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gLUVJTlZBTDsNCj4+IMKgwqDCoMKgwqAg
fQ0KPj4gwqAgLcKgwqDCoCBkbWFfZmVuY2Vfc2lnbmFsKGYxKTsNCj4+IC3CoMKgwqAgZG1hX2Zl
bmNlX3NpZ25hbChmMik7DQo+PiDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoYXJyYXkpOw0KPj4g
LcKgwqDCoCByZXR1cm4gMDsNCj4+ICvCoMKgwqAgcmV0dXJuIGVycjsNCj4+IMKgIH0NCj4+IMKg
IMKgIHN0YXRpYyBpbnQgdW53cmFwX2NoYWluKHZvaWQgKmFyZykNCj4+IEBAIC0xOTYsMTAgKzE5
MCw4IEBAIHN0YXRpYyBpbnQgdW53cmFwX2NoYWluKHZvaWQgKmFyZykNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBlcnIgPSAtRUlOVkFMOw0KPj4gwqDCoMKgwqDCoCB9DQo+PiDCoCAtwqDCoMKgIGRt
YV9mZW5jZV9zaWduYWwoZjEpOw0KPj4gLcKgwqDCoCBkbWFfZmVuY2Vfc2lnbmFsKGYyKTsNCj4+
IMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChjaGFpbik7DQo+PiAtwqDCoMKgIHJldHVybiAwOw0K
Pj4gK8KgwqDCoCByZXR1cm4gZXJyOw0KPj4gwqAgfQ0KPj4gwqAgwqAgc3RhdGljIGludCB1bndy
YXBfY2hhaW5fYXJyYXkodm9pZCAqYXJnKQ0KPj4gQEAgLTI0MiwxMCArMjM0LDggQEAgc3RhdGlj
IGludCB1bndyYXBfY2hhaW5fYXJyYXkodm9pZCAqYXJnKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGVyciA9IC1FSU5WQUw7DQo+PiDCoMKgwqDCoMKgIH0NCj4+IMKgIC3CoMKgwqAgZG1hX2ZlbmNl
X3NpZ25hbChmMSk7DQo+PiAtwqDCoMKgIGRtYV9mZW5jZV9zaWduYWwoZjIpOw0KPj4gwqDCoMKg
wqDCoCBkbWFfZmVuY2VfcHV0KGNoYWluKTsNCj4+IC3CoMKgwqAgcmV0dXJuIDA7DQo+PiArwqDC
oMKgIHJldHVybiBlcnI7DQo+PiDCoCB9DQo+PiDCoCDCoCBpbnQgZG1hX2ZlbmNlX3Vud3JhcCh2
b2lkKQ0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
