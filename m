Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2384571B09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 15:21:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBE5547965
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 13:21:05 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id B0CB63F2FE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 13:21:00 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id r18so10075921edb.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 06:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lzZX+A5QVL9QazKD0haBEjpKkR86ZVAetIBUsFsytto=;
        b=hCXsz9bRJuJf0s/Z20noLgz1dGhTSXWYsx6QR11YVNpHS59XmQM1BiJKu5NJnGLMZ8
         EfxqaGbMDqNNL92d1jaQi24zEvZw/l4GQubBiYpFPsVccHWDflP2BMgkulWuy6nMcAfO
         D3K/GPiKZvy20njVnAcEsk9xy62oDquRoK0wgXI+pHqkxBrLfx3au085GlOnxnIZRkzy
         xhyEy9+7HFEBr6ywAOLKFLaUYpWM0jivLbeolObA0m9vAawbBw1QRvlTH3I4c9fV3mSt
         NDzf79hCUWrubOaBzZzyKYipyj6PbF1LPlaaUovrNEfoSsr1rZ8Wo3dud/Ei01vItqoU
         Xtkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lzZX+A5QVL9QazKD0haBEjpKkR86ZVAetIBUsFsytto=;
        b=6dqpu48GUDIMSMF03n97Q1Fwmnc8vseEnSa7q+kQrh5mGdsYufBx8Yl1vVWWcpJOUA
         gkxIwwOPsK1MwZyFhOxsuX4qzBjrGKyiLQPDDfZ0pRMqB65o1TIHVu07veXjPYRwj/EC
         nZdJyUD24AyGyx+7jMFEd5gtBbRT08hNHBMNfcgFy06RHeHguXVLaXjEQHyQjOaU+b64
         zgf+mPzwC2T8jv7KkMguGQlLGqMSDVKD4bTa+leWry7Fgva9BLBM+tEm4KPYGLEoHetQ
         MEuUGDQNFOPA46eQycW1JfWZT/2gsOMiBorFQaSDLQs6PD3zXw5nIwb1e0pn5Rj6mvZ4
         qRzw==
X-Gm-Message-State: AJIora8QBhPViTjWnxz+HZ82ClxAuCdIVYfZdbDHRSknUosu3PJ+ero9
	ncwhjmQoj3uMjaW38XnGEySp62C6+Zu8Lh6Hyto=
X-Google-Smtp-Source: AGRyM1uOvVLhZw39DwdTGXT8YQ+sS0EOX2OdZ/7cJ5fgQFnonHM4r+CJXTsL9IW6uethLnLGFZy6DBGtN+ZEhGOEY70=
X-Received: by 2002:a05:6402:28c3:b0:43a:6d78:1b64 with SMTP id
 ef3-20020a05640228c300b0043a6d781b64mr31223403edb.93.1657632059623; Tue, 12
 Jul 2022 06:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220712131201.131475-1-christian.koenig@amd.com>
In-Reply-To: <20220712131201.131475-1-christian.koenig@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 12 Jul 2022 09:20:47 -0400
Message-ID: <CADnq5_PSECF0b_ynF=UhXu3Os0hYZcvcQtk1pD+T3q+Z1g-Hgg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID-Hash: UDHE7LSX22GBNREK5VEAQOYGLZLRHWCA
X-Message-ID-Hash: UDHE7LSX22GBNREK5VEAQOYGLZLRHWCA
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Daniel Vetter <daniel@ffwll.ch>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_resv_usage: update explicit sync documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UDHE7LSX22GBNREK5VEAQOYGLZLRHWCA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMTIsIDIwMjIgYXQgOToxMiBBTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBNYWtlIGl0IGNsZWFyIHRo
YXQgRE1BX1JFU1ZfVVNBR0VfQk9PS01BUksgY2FuIGJlIHVzZWQgZm9yIGV4cGxpY2l0IHN5bmNl
ZA0KDQpETUFfUkVTVl9VU0FHRV9CT09LS0VFUD8NCg0KPiB1c2VyIHNwYWNlIHN1Ym1pc3Npb25z
IGFzIHdlbGwgYW5kIGRvY3VtZW50IHRoZSBydWxlcyBhcm91bmQgYWRkaW5nIHRoZQ0KPiBzYW1l
IGZlbmNlIHdpdGggZGlmZmVyZW50IHVzYWdlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gIGluY2x1ZGUv
bGludXgvZG1hLXJlc3YuaCB8IDE2ICsrKysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+IGluZGV4
IGM4Y2NiYzk0ZDVkMi4uMjY0ZTI3ZTU2ZGZmIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2RtYS1yZXN2LmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+IEBAIC02Miw2
ICs2MiwxMSBAQCBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdDsNCj4gICAqIEZvciBleGFtcGxlIHdoZW4g
YXNraW5nIGZvciBXUklURSBmZW5jZXMgdGhlbiB0aGUgS0VSTkVMIGZlbmNlcyBhcmUgcmV0dXJu
ZWQNCj4gICAqIGFzIHdlbGwuIFNpbWlsYXIgd2hlbiBhc2tlZCBmb3IgUkVBRCBmZW5jZXMgdGhl
biBib3RoIFdSSVRFIGFuZCBLRVJORUwNCj4gICAqIGZlbmNlcyBhcmUgcmV0dXJuZWQgYXMgd2Vs
bC4NCj4gKyAqDQo+ICsgKiBBbHJlYWR5IHVzZWQgZmVuY2VzIGNhbiBiZSBwcm9tb3RlZCBpbiB0
aGUgc2Vuc2UgdGhhdCBhIGZlbmNlIHdpdGgNCj4gKyAqIERNQV9SRVNWX1VTQUdFX0JPT0tNQVJL
IGNvdWxkIGJlY29tZSBETUFfUkVTVl9VU0FHRV9SRUFEIGJ5IGFkZGluZyBpdCBhZ2Fpbg0KDQpT
YW1lIGhlcmUuDQoNCldpdGggdGhhdCBmaXhlZCwNCkFja2VkLWJ5OiBBbGV4IERldWNoZXIgPGFs
ZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQoNCkFsZXgNCg0KPiArICogd2l0aCB0aGlzIHVzYWdl
LiBCdXQgZmVuY2VzIGNhbiBuZXZlciBiZSBkZWdyYWRlZCBpbiB0aGUgc2Vuc2UgdGhhdCBhIGZl
bmNlDQo+ICsgKiB3aXRoIERNQV9SRVNWX1VTQUdFX1dSSVRFIGNvdWxkIGJlY29tZSBETUFfUkVT
Vl9VU0FHRV9SRUFELg0KPiAgICovDQo+ICBlbnVtIGRtYV9yZXN2X3VzYWdlIHsNCj4gICAgICAg
ICAvKioNCj4gQEAgLTk4LDEwICsxMDMsMTUgQEAgZW51bSBkbWFfcmVzdl91c2FnZSB7DQo+ICAg
ICAgICAgICogQERNQV9SRVNWX1VTQUdFX0JPT0tLRUVQOiBObyBpbXBsaWNpdCBzeW5jLg0KPiAg
ICAgICAgICAqDQo+ICAgICAgICAgICogVGhpcyBzaG91bGQgYmUgdXNlZCBieSBzdWJtaXNzaW9u
cyB3aGljaCBkb24ndCB3YW50IHRvIHBhcnRpY2lwYXRlIGluDQo+IC0gICAgICAgICogaW1wbGlj
aXQgc3luY2hyb25pemF0aW9uLg0KPiArICAgICAgICAqIGFueSBpbXBsaWNpdCBzeW5jaHJvbml6
YXRpb24uDQo+ICsgICAgICAgICoNCj4gKyAgICAgICAgKiBUaGUgbW9zdCBjb21tb24gY2FzZSBh
cmUgcHJlZW1wdGlvbiBmZW5jZXMsIHBhZ2UgdGFibGUgdXBkYXRlcywgVExCDQo+ICsgICAgICAg
ICogZmx1c2hlcyBhcyB3ZWxsIGFzIGV4cGxpY2l0IHN5bmNlZCB1c2VyIHN1Ym1pc3Npb25zLg0K
PiAgICAgICAgICAqDQo+IC0gICAgICAgICogVGhlIG1vc3QgY29tbW9uIGNhc2UgYXJlIHByZWVt
cHRpb24gZmVuY2VzIGFzIHdlbGwgYXMgcGFnZSB0YWJsZQ0KPiAtICAgICAgICAqIHVwZGF0ZXMg
YW5kIHRoZWlyIFRMQiBmbHVzaGVzLg0KPiArICAgICAgICAqIEV4cGxpY2l0IHN5bmNlZCB1c2Vy
IHVzZXIgc3VibWlzc2lvbnMgY2FuIGJlIHByb21vdGVkIHRvDQo+ICsgICAgICAgICogRE1BX1JF
U1ZfVVNBR0VfUkVBRCBvciBETUFfUkVTVl9VU0FHRV9XUklURSBhcyBuZWVkZWQgdXNpbmcNCj4g
KyAgICAgICAgKiBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUoKSB3aGVuIGltcGxpY2l0IHN5bmNo
cm9uaXphdGlvbiBzaG91bGQNCj4gKyAgICAgICAgKiBiZWNvbWUgbmVjZXNzYXJ5IGFmdGVyIGlu
aXRpYWwgYWRkaW5nIG9mIHRoZSBmZW5jZS4NCj4gICAgICAgICAgKi8NCj4gICAgICAgICBETUFf
UkVTVl9VU0FHRV9CT09LS0VFUA0KPiAgfTsNCj4gLS0NCj4gMi4yNS4xDQo+DQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
