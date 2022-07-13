Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E527057355B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jul 2022 13:27:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE476479AE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jul 2022 11:27:36 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 026F23F495
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jul 2022 11:27:32 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id mf4so18131289ejc.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jul 2022 04:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=basnieuwenhuizen.nl; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=cgbVqpds8mhTKeUXizYnEEoGmAd2rC6hze58WchI2BM=;
        b=YE8DIUKEKR81wAdiKdIdXPiVSalzHYH7NiL2C5V6iUyw/U4tQsO8cTTuNu/adU8fyD
         E8fm6cQ2pKPhPyvgxSzZFCLhHKzeHtboii2CGvQcd4XogCVJgBRpwytlV6CQ0wCAfHea
         AMIf6iz0sdEyy03hBciyNKRUGeDIDiCL8LxrSt4EpvWdPxSEsSO074ldQXBIeNzwuzmj
         yRHOIz5ox+htnE2+DlgT0jifhG4TJ4fbp4QRXAfKQy1i51Pq/kzbAMJoE5GaUI8X5MLI
         9pQ98Z71WcDiLMrOMK9KB/5LqNtMDcjz7FcCp7MUdfm19ZnuI3/m4UG5K+7+CGjdMHdq
         CRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=cgbVqpds8mhTKeUXizYnEEoGmAd2rC6hze58WchI2BM=;
        b=U9C9eBrxVAAM+I7B5cT3ZelaDv1LlOqUlgSeR2IGDXYfW5HlbiDxpYq4jAP7xWC0mp
         DtPcdxdSUC5AIZITsfV7klzDJ6rfQCTVDZz2Yk2Vu49wdMUw8U3yi3vJxNQ7Ap7kkL6U
         2mDx9e3xlKNCDCL9a9G7z8T6/I/LrKFsJVuaB2QxQP+4z63YJwYIk9JnEpN4CWjzkXOD
         yn+OXGwiGt/wpTJMGQa1oCOYaEwSWHa4cWu/GqG6LxoD/AjxsKHHBISGoZyPYBVqSQhj
         c92QtKqHWSyV0myxQkY9eSrztM7ywLmD0ciErsEkfXI2TyxkrrjxiNiCaiDX0j2cfTpO
         o5Cw==
X-Gm-Message-State: AJIora9ML9aH+R22eaN6XSLj0tJ1yFMbp0n8o9p5Ku3W8dukAIenfY3j
	0SAyXY2aGF/SEafHtQ8/+WyndLKvm767il2U+Tj1sQ==
X-Google-Smtp-Source: AGRyM1tHwm40kKIWPERFKsHDjnmslgZwhxHHbdVXqQbznHIUujskOLvaWC2g4hKKQJ6jrd9rtwfArZWg/KjJFIOPUh8=
X-Received: by 2002:a17:906:c781:b0:726:c967:8d1b with SMTP id
 cw1-20020a170906c78100b00726c9678d1bmr3093574ejb.54.1657711651034; Wed, 13
 Jul 2022 04:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220712131201.131475-1-christian.koenig@amd.com>
 <CADnq5_PSECF0b_ynF=UhXu3Os0hYZcvcQtk1pD+T3q+Z1g-Hgg@mail.gmail.com> <a3dfc73f-5867-d442-b74d-a890a42753bd@amd.com>
In-Reply-To: <a3dfc73f-5867-d442-b74d-a890a42753bd@amd.com>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Wed, 13 Jul 2022 13:27:13 +0200
Message-ID: <CAP+8YyHLy9=ueEcgVbk6nnAr=aqJXW1f31xm37gkGVrzdG3o=g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: ICXBQA2TVMOOBTBFSXCVF2BJ2TFGO5U3
X-Message-ID-Hash: ICXBQA2TVMOOBTBFSXCVF2BJ2TFGO5U3
X-MailFrom: bas@basnieuwenhuizen.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_resv_usage: update explicit sync documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ICXBQA2TVMOOBTBFSXCVF2BJ2TFGO5U3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2l0aCB0aGF0IGNoYW5nZWQNCg0KUmV2aWV3ZWQtYnk6IEJhcyBOaWV1d2VuaHVpemVuIDxiYXNA
YmFzbmlldXdlbmh1aXplbi5ubD4NCg0KVGhhbmtzIQ0KDQpPbiBUdWUsIEp1bCAxMiwgMjAyMiBh
dCAzOjIzIFBNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdy
b3RlOg0KPg0KPiBBbSAxMi4wNy4yMiB1bSAxNToyMCBzY2hyaWViIEFsZXggRGV1Y2hlcjoNCj4g
PiBPbiBUdWUsIEp1bCAxMiwgMjAyMiBhdCA5OjEyIEFNIENocmlzdGlhbiBLw7ZuaWcNCj4gPiA8
Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPiA+PiBNYWtlIGl0IGNs
ZWFyIHRoYXQgRE1BX1JFU1ZfVVNBR0VfQk9PS01BUksgY2FuIGJlIHVzZWQgZm9yIGV4cGxpY2l0
IHN5bmNlZA0KPiA+IERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQPw0KPg0KPiBDcmFwcHkgYXV0b2Nv
cnJlY3QgYW5kIGNvcHkmcGFzdGUuIFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQuDQo+DQo+
IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+PiB1c2VyIHNwYWNlIHN1Ym1pc3Npb25zIGFzIHdlbGwg
YW5kIGRvY3VtZW50IHRoZSBydWxlcyBhcm91bmQgYWRkaW5nIHRoZQ0KPiA+PiBzYW1lIGZlbmNl
IHdpdGggZGlmZmVyZW50IHVzYWdlcy4NCj4gPj4NCj4gPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBp
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggfCAxNiArKysrKysrKysrKysrLS0tDQo+ID4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmgNCj4gPj4gaW5kZXggYzhjY2JjOTRkNWQyLi4yNjRlMjdlNTZkZmYgMTAwNjQ0DQo+
ID4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPiA+PiArKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1yZXN2LmgNCj4gPj4gQEAgLTYyLDYgKzYyLDExIEBAIHN0cnVjdCBkbWFfcmVzdl9s
aXN0Ow0KPiA+PiAgICAqIEZvciBleGFtcGxlIHdoZW4gYXNraW5nIGZvciBXUklURSBmZW5jZXMg
dGhlbiB0aGUgS0VSTkVMIGZlbmNlcyBhcmUgcmV0dXJuZWQNCj4gPj4gICAgKiBhcyB3ZWxsLiBT
aW1pbGFyIHdoZW4gYXNrZWQgZm9yIFJFQUQgZmVuY2VzIHRoZW4gYm90aCBXUklURSBhbmQgS0VS
TkVMDQo+ID4+ICAgICogZmVuY2VzIGFyZSByZXR1cm5lZCBhcyB3ZWxsLg0KPiA+PiArICoNCj4g
Pj4gKyAqIEFscmVhZHkgdXNlZCBmZW5jZXMgY2FuIGJlIHByb21vdGVkIGluIHRoZSBzZW5zZSB0
aGF0IGEgZmVuY2Ugd2l0aA0KPiA+PiArICogRE1BX1JFU1ZfVVNBR0VfQk9PS01BUksgY291bGQg
YmVjb21lIERNQV9SRVNWX1VTQUdFX1JFQUQgYnkgYWRkaW5nIGl0IGFnYWluDQo+ID4gU2FtZSBo
ZXJlLg0KPiA+DQo+ID4gV2l0aCB0aGF0IGZpeGVkLA0KPiA+IEFja2VkLWJ5OiBBbGV4IERldWNo
ZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQo+ID4NCj4gPiBBbGV4DQo+ID4NCj4gPj4g
KyAqIHdpdGggdGhpcyB1c2FnZS4gQnV0IGZlbmNlcyBjYW4gbmV2ZXIgYmUgZGVncmFkZWQgaW4g
dGhlIHNlbnNlIHRoYXQgYSBmZW5jZQ0KPiA+PiArICogd2l0aCBETUFfUkVTVl9VU0FHRV9XUklU
RSBjb3VsZCBiZWNvbWUgRE1BX1JFU1ZfVVNBR0VfUkVBRC4NCj4gPj4gICAgKi8NCj4gPj4gICBl
bnVtIGRtYV9yZXN2X3VzYWdlIHsNCj4gPj4gICAgICAgICAgLyoqDQo+ID4+IEBAIC05OCwxMCAr
MTAzLDE1IEBAIGVudW0gZG1hX3Jlc3ZfdXNhZ2Ugew0KPiA+PiAgICAgICAgICAgKiBARE1BX1JF
U1ZfVVNBR0VfQk9PS0tFRVA6IE5vIGltcGxpY2l0IHN5bmMuDQo+ID4+ICAgICAgICAgICAqDQo+
ID4+ICAgICAgICAgICAqIFRoaXMgc2hvdWxkIGJlIHVzZWQgYnkgc3VibWlzc2lvbnMgd2hpY2gg
ZG9uJ3Qgd2FudCB0byBwYXJ0aWNpcGF0ZSBpbg0KPiA+PiAtICAgICAgICAqIGltcGxpY2l0IHN5
bmNocm9uaXphdGlvbi4NCj4gPj4gKyAgICAgICAgKiBhbnkgaW1wbGljaXQgc3luY2hyb25pemF0
aW9uLg0KPiA+PiArICAgICAgICAqDQo+ID4+ICsgICAgICAgICogVGhlIG1vc3QgY29tbW9uIGNh
c2UgYXJlIHByZWVtcHRpb24gZmVuY2VzLCBwYWdlIHRhYmxlIHVwZGF0ZXMsIFRMQg0KPiA+PiAr
ICAgICAgICAqIGZsdXNoZXMgYXMgd2VsbCBhcyBleHBsaWNpdCBzeW5jZWQgdXNlciBzdWJtaXNz
aW9ucy4NCj4gPj4gICAgICAgICAgICoNCj4gPj4gLSAgICAgICAgKiBUaGUgbW9zdCBjb21tb24g
Y2FzZSBhcmUgcHJlZW1wdGlvbiBmZW5jZXMgYXMgd2VsbCBhcyBwYWdlIHRhYmxlDQo+ID4+IC0g
ICAgICAgICogdXBkYXRlcyBhbmQgdGhlaXIgVExCIGZsdXNoZXMuDQo+ID4+ICsgICAgICAgICog
RXhwbGljaXQgc3luY2VkIHVzZXIgdXNlciBzdWJtaXNzaW9ucyBjYW4gYmUgcHJvbW90ZWQgdG8N
Cj4gPj4gKyAgICAgICAgKiBETUFfUkVTVl9VU0FHRV9SRUFEIG9yIERNQV9SRVNWX1VTQUdFX1dS
SVRFIGFzIG5lZWRlZCB1c2luZw0KPiA+PiArICAgICAgICAqIGRtYV9idWZfaW1wb3J0X3N5bmNf
ZmlsZSgpIHdoZW4gaW1wbGljaXQgc3luY2hyb25pemF0aW9uIHNob3VsZA0KPiA+PiArICAgICAg
ICAqIGJlY29tZSBuZWNlc3NhcnkgYWZ0ZXIgaW5pdGlhbCBhZGRpbmcgb2YgdGhlIGZlbmNlLg0K
PiA+PiAgICAgICAgICAgKi8NCj4gPj4gICAgICAgICAgRE1BX1JFU1ZfVVNBR0VfQk9PS0tFRVAN
Cj4gPj4gICB9Ow0KPiA+PiAtLQ0KPiA+PiAyLjI1LjENCj4gPj4NCj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPj4gTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+ID4+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
