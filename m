Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EA24B87EC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96EEA3EEC1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:28 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id A5E7A3EC9D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 21:26:09 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id z14so12074316lfu.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 13:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=xB7MDihYGx4nWu/GuBF27GgwlKh3zzMd7sng4PC9OAg=;
        b=AlVXfUdq3X/vSQj1QADxlefqzYOIxjNWuIGVTNcQd90bTzHdMLXt1diiYfHcXmfDuo
         Aih+Ei5sv53Rvnfwr6T+Giffv/hPnsONKFFuY2MDaby2I/Gm/wkOK3W25ZFOa3QTswJK
         etjN6hFfrsFB0uHvKeOLdTbOErJPlMDj409uuOgjaLBCd7DDEDWC89ZjaA+b9qyZ40kj
         s0vZ3yX4ID2jYqbVwwVsaHm/Vvm4t/enqPFSc5JTB/j4R1JzwarD/mLvPFiGLs27GTHY
         OzNCXT4ZuoxDbUdaDSQpUyuqB1ItZusqu95/zc54s7Tn3oSLSHXezYPdHrPXDjs96Thu
         gSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=xB7MDihYGx4nWu/GuBF27GgwlKh3zzMd7sng4PC9OAg=;
        b=f/IPMmSxOYMlOJjTPNwaPjQAJcxSFkMJxb9ybboWZBdrM/HbhgXG6dG+t7JasuXcHz
         yqFeN0ffIsF6W9bR51hLmqB04NEXOfw5n4ttQzTvO3eM8JqIK8nWba1PUbVRN4fY4dM7
         mwyFHz9I7mPxwbEWBb+ZKplGlEJdxGYASYUo/Bm03NHcOyath07TgKJg7ytofBmbNnv5
         VhiSOez0uNxO77CHmXCe3OCgXMoJIoLXrciDLWSYRq8MOhk2yxXx/foTowFVi1Wxt0SM
         tT9NrikVsIJC4e40VRRCFfS2rgSkw74jppoQtOZS6fCTvzS3gjZfdoWj1Vus3W6l597C
         gHkQ==
X-Gm-Message-State: AOAM5332oQlK933vWUBl2l2MnpAFMgSoEos8/GDirYJXa1rW0CL3Bj6p
	XT5+ExC2Ob+Nuuc7j9pSnGtehAJkHp3pnm7cu5tdeg==
X-Google-Smtp-Source: ABdhPJy9LX4qMvZpJWEnI58VfURh6/MLmchoH4ymKbepXoxQzUy25zdnmOiESxtwDTq7E3tlrLuGpZ/EsyrQdVvZllE=
X-Received: by 2002:a05:6512:1699:: with SMTP id bu25mr695407lfb.403.1644873968216;
 Mon, 14 Feb 2022 13:26:08 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com> <20220211161831.3493782-7-tjmercier@google.com>
In-Reply-To: <20220211161831.3493782-7-tjmercier@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 14 Feb 2022 13:25:55 -0800
Message-ID: <CAHRSSEwWEeW2+Pd17VUNrPYSWhOu-ao7rgnk-pNROcfH6abTzA@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-MailFrom: tkjos@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DT5JGRUJ6AC5RJTAX2MGXANUGN54M2PR
X-Message-ID-Hash: DT5JGRUJ6AC5RJTAX2MGXANUGN54M2PR
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:45 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.or
 g, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DT5JGRUJ6AC5RJTAX2MGXANUGN54M2PR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBGZWIgMTEsIDIwMjIgYXQgODoxOSBBTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgYnVmZmVyIGZs
YWcgQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9OT19ORUVEDQo+IHRoYXQgYSBwcm9jZXNzIHNl
bmRpbmcgYW4gZmQgYXJyYXkgdG8gYW5vdGhlciBwcm9jZXNzIG92ZXIgYmluZGVyIElQQw0KPiBj
YW4gc2V0IHRvIHJlbGlucXVpc2ggb3duZXJzaGlwIG9mIHRoZSBmZHMgYmVpbmcgc2VudCBmb3Ig
bWVtb3J5DQo+IGFjY291bnRpbmcgcHVycG9zZXMuIElmIHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJl
IHNldCBkdXJpbmcgdGhlIGZkIGFycmF5DQo+IHRyYW5zbGF0aW9uIGFuZCB0aGUgZmQgaXMgZm9y
IGEgRE1BLUJVRiwgdGhlIGJ1ZmZlciBpcyB1bmNoYXJnZWQgZnJvbQ0KPiB0aGUgc2VuZGVyJ3Mg
Y2dyb3VwIGFuZCBjaGFyZ2VkIHRvIHRoZSByZWNlaXZpbmcgcHJvY2VzcydzIGNncm91cA0KPiBp
bnN0ZWFkLg0KPg0KPiBJdCBpcyB1cCB0byB0aGUgc2VuZGluZyBwcm9jZXNzIHRvIGVuc3VyZSB0
aGF0IGl0IGNsb3NlcyB0aGUgZmRzDQo+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgdHJhbnNm
ZXIgZmFpbGVkIG9yIHN1Y2NlZWRlZC4NCj4NCj4gTW9zdCBncmFwaGljcyBzaGFyZWQgbWVtb3J5
IGFsbG9jYXRpb25zIGluIEFuZHJvaWQgYXJlIGRvbmUgYnkgdGhlDQo+IGdyYXBoaWNzIGFsbG9j
YXRvciBIQUwgcHJvY2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHByb2Nl
c3MNCj4gYWxsb2NhdGVzIG1lbW9yeSBhbmQgc2VuZHMgdGhlIGZkcyB0byB0aGUgY2xpZW50cyBv
dmVyIGJpbmRlciBJUEMuDQo+IFRoZSBncmFwaGljcyBhbGxvY2F0b3IgSEFMIHdpbGwgbm90IHJl
dGFpbiBhbnkgcmVmZXJlbmNlcyB0byB0aGUNCj4gYnVmZmVycy4gV2hlbiB0aGUgSEFMIHNldHMg
dGhlIEJJTkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3IgZmQNCj4gYXJyYXlzIGhv
bGRpbmcgRE1BLUJVRiBmZHMsIHRoZSBncHUgY2dyb3VwIGNvbnRyb2xsZXIgd2lsbCBiZSBhYmxl
IHRvDQo+IGNvcnJlY3RseSBjaGFyZ2UgdGhlIGJ1ZmZlcnMgdG8gdGhlIGNsaWVudCBwcm9jZXNz
ZXMgaW5zdGVhZCBvZiB0aGUNCj4gZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTC4NCj4NCj4gRnJvbTog
SHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEhy
aWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPiBDby1kZXZlbG9wZWQtYnk6IFQu
Si4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFQuSi4g
TWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiBjaGFuZ2VzIGluIHYyDQo+
IC0gTW92ZSBkbWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIgZnJvbSBhIGRtYV9idWZfb3Ag
ZGVmaW5lZCBieSBldmVyeQ0KPiBoZWFwIHRvIGEgc2luZ2xlIGRtYS1idWYgZnVuY3Rpb24gZm9y
IGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCj4gQ2hyaXN0aWFuIEvDtm5pZy4NCj4N
Cj4gIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYyAgICAgICAgICAgIHwgMjYgKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gIGluY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIHwg
IDEgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2FuZHJvaWQvYmluZGVyLmMgYi9kcml2ZXJzL2FuZHJvaWQvYmluZGVyLmMN
Cj4gaW5kZXggODM1MWM1NjM4ODgwLi5mNTBkODhkZWQxODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvYW5kcm9pZC9iaW5kZXIuYw0KPiArKysgYi9kcml2ZXJzL2FuZHJvaWQvYmluZGVyLmMNCj4g
QEAgLTQyLDYgKzQyLDcgQEANCj4NCj4gICNkZWZpbmUgcHJfZm10KGZtdCkgS0JVSUxEX01PRE5B
TUUgIjogIiBmbXQNCj4NCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ICAjaW5jbHVk
ZSA8bGludXgvZmR0YWJsZS5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L2ZpbGUuaD4NCj4gICNpbmNs
dWRlIDxsaW51eC9mcmVlemVyLmg+DQo+IEBAIC0yNDgyLDggKzI0ODMsMTAgQEAgc3RhdGljIGlu
dCBiaW5kZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0X2hlYWQgKnBmX2hlYWQsDQoN
CklzIHRoaXMgb25seSBuZWVkZWQgZm9yIHRoZSBCSU5ERVJfVFlQRV9GREEgY2FzZSAobXVsdGlw
bGUgZmRzKT8gVGhpcw0KbmV2ZXIgbmVlZHMgdG8gYmUgZG9uZSBpbiB0aGUgQklOREVSX1RZUEVf
RkQgY2FzZSAoc2luZ2xlIGZkKT8NCg0KPiAgew0KPiAgICAgICAgIGJpbmRlcl9zaXplX3QgZmRp
LCBmZF9idWZfc2l6ZTsNCj4gICAgICAgICBiaW5kZXJfc2l6ZV90IGZkYV9vZmZzZXQ7DQo+ICsg
ICAgICAgYm9vbCB0cmFuc2Zlcl9ncHVfY2hhcmdlID0gZmFsc2U7DQo+ICAgICAgICAgY29uc3Qg
dm9pZCBfX3VzZXIgKnNlbmRlcl91ZmRhX2Jhc2U7DQo+ICAgICAgICAgc3RydWN0IGJpbmRlcl9w
cm9jICpwcm9jID0gdGhyZWFkLT5wcm9jOw0KPiArICAgICAgIHN0cnVjdCBiaW5kZXJfcHJvYyAq
dGFyZ2V0X3Byb2MgPSB0LT50b19wcm9jOw0KPiAgICAgICAgIGludCByZXQ7DQo+DQo+ICAgICAg
ICAgZmRfYnVmX3NpemUgPSBzaXplb2YodTMyKSAqIGZkYS0+bnVtX2ZkczsNCj4gQEAgLTI1MjEs
OCArMjUyNCwxNSBAQCBzdGF0aWMgaW50IGJpbmRlcl90cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0
IGxpc3RfaGVhZCAqcGZfaGVhZCwNCj4gICAgICAgICBpZiAocmV0KQ0KPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIHJldDsNCj4NCj4gKyAgICAgICBpZiAoSVNfRU5BQkxFRChDT05GSUdfQ0dST1VQ
X0dQVSkgJiYNCj4gKyAgICAgICAgICAgICAgIHBhcmVudC0+ZmxhZ3MgJiBCSU5ERVJfQlVGRkVS
X0ZMQUdfU0VOREVSX05PX05FRUQpDQo+ICsgICAgICAgICAgICAgICB0cmFuc2Zlcl9ncHVfY2hh
cmdlID0gdHJ1ZTsNCj4gKw0KPiAgICAgICAgIGZvciAoZmRpID0gMDsgZmRpIDwgZmRhLT5udW1f
ZmRzOyBmZGkrKykgew0KPiAgICAgICAgICAgICAgICAgdTMyIGZkOw0KPiArICAgICAgICAgICAg
ICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBncHVj
ZyAqZ3B1Y2c7DQo+ICsNCj4gICAgICAgICAgICAgICAgIGJpbmRlcl9zaXplX3Qgb2Zmc2V0ID0g
ZmRhX29mZnNldCArIGZkaSAqIHNpemVvZihmZCk7DQo+ICAgICAgICAgICAgICAgICBiaW5kZXJf
c2l6ZV90IHNlbmRlcl91b2Zmc2V0ID0gZmRpICogc2l6ZW9mKGZkKTsNCj4NCj4gQEAgLTI1MzIs
NiArMjU0MiwyMiBAQCBzdGF0aWMgaW50IGJpbmRlcl90cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0
IGxpc3RfaGVhZCAqcGZfaGVhZCwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbl9yZXBseV90byk7DQo+ICAgICAgICAgICAgICAgICBpZiAocmV0
KQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0ID4gMCA/IC1FSU5WQUwgOiBy
ZXQ7DQo+ICsNCj4gKyAgICAgICAgICAgICAgIGlmICghdHJhbnNmZXJfZ3B1X2NoYXJnZSkNCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ICsNCj4gKyAgICAgICAgICAgICAg
IGRtYWJ1ZiA9IGRtYV9idWZfZ2V0KGZkKTsNCj4gKyAgICAgICAgICAgICAgIGlmIChJU19FUlIo
ZG1hYnVmKSkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ICsNCj4gKyAg
ICAgICAgICAgICAgIGdwdWNnID0gZ3B1Y2dfZ2V0KHRhcmdldF9wcm9jLT50c2spOw0KPiArICAg
ICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIoZG1hYnVmLCBncHVjZyk7
DQo+ICsgICAgICAgICAgICAgICBpZiAocmV0KSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
IHByX3dhcm4oIiVkOiVkIFVuYWJsZSB0byB0cmFuc2ZlciBETUEtQlVGIGZkIGNoYXJnZSB0byAl
ZCIsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJvYy0+cGlkLCB0aHJlYWQt
PnBpZCwgdGFyZ2V0X3Byb2MtPnBpZCk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwdWNn
X3B1dChncHVjZyk7DQo+ICsgICAgICAgICAgICAgICB9DQo+ICsgICAgICAgICAgICAgICBkbWFf
YnVmX3B1dChkbWFidWYpOw0KPiAgICAgICAgIH0NCj4gICAgICAgICByZXR1cm4gMDsNCj4gIH0N
Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIGIvaW5j
bHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCj4gaW5kZXggMzI0NmYyYzc0Njk2Li4x
NjlmZDUwNjlhMWEgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2Jp
bmRlci5oDQo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+IEBA
IC0xMzcsNiArMTM3LDcgQEAgc3RydWN0IGJpbmRlcl9idWZmZXJfb2JqZWN0IHsNCj4NCj4gIGVu
dW0gew0KPiAgICAgICAgIEJJTkRFUl9CVUZGRVJfRkxBR19IQVNfUEFSRU5UID0gMHgwMSwNCj4g
KyAgICAgICBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVSX05PX05FRUQgPSAweDAyLA0KPiAgfTsN
Cj4NCj4gIC8qIHN0cnVjdCBiaW5kZXJfZmRfYXJyYXlfb2JqZWN0IC0gb2JqZWN0IGRlc2NyaWJp
bmcgYW4gYXJyYXkgb2YgZmRzIGluIGEgYnVmZmVyDQo+IC0tDQo+IDIuMzUuMS4yNjUuZzY5Yzhk
NzE0MmYtZ29vZw0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
