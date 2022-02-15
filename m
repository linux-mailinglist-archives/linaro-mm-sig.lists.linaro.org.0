Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C90E84B87EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C0BA3ECAA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:40 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 99D223E824
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Feb 2022 00:03:50 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id f17so29549902edd.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 16:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=goL4SDS7AKRornMukk78aUmCRfQsSfNIpL54XKAlePs=;
        b=XzWME/tX9Pwn10nvDtBLix/JWvTxUWXpra89PLWebeGid3kJF+yJ94sCAp3TEJ2Pb7
         KG+sCzgGuo2pIRe0MLD2cGyPkH9DnNc4+Ycb3JPr0uTMGORv8lpEhVpJcM44oxYId87N
         mtZE6Uf/V6v6acN77V0+9wlwvLosHWzh/Ohh4kdpAKLU/nb4OYpkbF+ZHYTD6xz1sO1C
         gFbbdJdvLk14r+s/gvut3A9KnLjWkee0MkMQ92QylFULzIK2e64RbU0SODfunYR0uoJL
         dT8C0AKHleHQkF1jN8kfi3K2yMpxQjflv9wArFKb5HhuIO4KJiqOhHiDExOSjEXWShO0
         O3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=goL4SDS7AKRornMukk78aUmCRfQsSfNIpL54XKAlePs=;
        b=u+LIfUHqPqUTnhJgh654NXTxIOkXoypRHq3byM+Hak+O9PSwkGf4dq6SqYOlKIfFit
         wFQXZDpyH2jhMl44I7OLQryHm+bL6SOytz/he3yJ1oZxLWOLMWQZs3WtpWz03aVS8VU5
         OADQElWIx+qutls1+qrVi0FabaNnMgp1a02bRGDq0UWLXSOy8B2W8Emf+vU2MAm6Ca4l
         dtIX0MhXR46QqUxbGoDVVx5m3dFYVXu46FhimDmfh8ExGNbzybmxrxlZ6CyGWRfHSnJP
         yTD6uZjaO58tA7KAD+QWGc3n1JD82jsYQpWXJAAiY5SOglX4xy0RQFa1rNH7gTWONmwz
         UhLQ==
X-Gm-Message-State: AOAM5335+eFMqfiPxZ3nwmgJsQ1kBz6TSA0FjqbP2Gs9Pk5/doP51tuC
	kSzC00PiLseZcp9GcomgB2cNlw2xuyDE5g2l45mYTQb4ss/MdpWH
X-Google-Smtp-Source: ABdhPJxAtnWhygjfdRdPmkvAqKQauo1KJKZ52IV82X0eQflqoUGfUG0iTb+vi8L0jmGH8ye8Rphg9kzZiPnIMct0HzM=
X-Received: by 2002:a05:6402:5c9:: with SMTP id n9mr1308182edx.207.1644883429474;
 Mon, 14 Feb 2022 16:03:49 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com> <CAHRSSEwWEeW2+Pd17VUNrPYSWhOu-ao7rgnk-pNROcfH6abTzA@mail.gmail.com>
In-Reply-To: <CAHRSSEwWEeW2+Pd17VUNrPYSWhOu-ao7rgnk-pNROcfH6abTzA@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 14 Feb 2022 16:03:38 -0800
Message-ID: <CABdmKX33PDEioxdQSFpQEFdK58kDo==JeUN_1m_NB__5qGMJ0Q@mail.gmail.com>
To: Todd Kjos <tkjos@google.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HKL7CYGLSK4SBD5PS2DJX2VPXDIRFU2B
X-Message-ID-Hash: HKL7CYGLSK4SBD5PS2DJX2VPXDIRFU2B
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:49 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media
 @vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKL7CYGLSK4SBD5PS2DJX2VPXDIRFU2B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBGZWIgMTQsIDIwMjIgYXQgMToyNiBQTSBUb2RkIEtqb3MgPHRram9zQGdvb2dsZS5j
b20+IHdyb3RlOg0KPg0KPiBPbiBGcmksIEZlYiAxMSwgMjAyMiBhdCA4OjE5IEFNIFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBp
bnRyb2R1Y2VzIGEgYnVmZmVyIGZsYWcgQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9OT19ORUVE
DQo+ID4gdGhhdCBhIHByb2Nlc3Mgc2VuZGluZyBhbiBmZCBhcnJheSB0byBhbm90aGVyIHByb2Nl
c3Mgb3ZlciBiaW5kZXIgSVBDDQo+ID4gY2FuIHNldCB0byByZWxpbnF1aXNoIG93bmVyc2hpcCBv
ZiB0aGUgZmRzIGJlaW5nIHNlbnQgZm9yIG1lbW9yeQ0KPiA+IGFjY291bnRpbmcgcHVycG9zZXMu
IElmIHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJlIHNldCBkdXJpbmcgdGhlIGZkIGFycmF5DQo+ID4g
dHJhbnNsYXRpb24gYW5kIHRoZSBmZCBpcyBmb3IgYSBETUEtQlVGLCB0aGUgYnVmZmVyIGlzIHVu
Y2hhcmdlZCBmcm9tDQo+ID4gdGhlIHNlbmRlcidzIGNncm91cCBhbmQgY2hhcmdlZCB0byB0aGUg
cmVjZWl2aW5nIHByb2Nlc3MncyBjZ3JvdXANCj4gPiBpbnN0ZWFkLg0KPiA+DQo+ID4gSXQgaXMg
dXAgdG8gdGhlIHNlbmRpbmcgcHJvY2VzcyB0byBlbnN1cmUgdGhhdCBpdCBjbG9zZXMgdGhlIGZk
cw0KPiA+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgdHJhbnNmZXIgZmFpbGVkIG9yIHN1Y2Nl
ZWRlZC4NCj4gPg0KPiA+IE1vc3QgZ3JhcGhpY3Mgc2hhcmVkIG1lbW9yeSBhbGxvY2F0aW9ucyBp
biBBbmRyb2lkIGFyZSBkb25lIGJ5IHRoZQ0KPiA+IGdyYXBoaWNzIGFsbG9jYXRvciBIQUwgcHJv
Y2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHByb2Nlc3MNCj4gPiBhbGxv
Y2F0ZXMgbWVtb3J5IGFuZCBzZW5kcyB0aGUgZmRzIHRvIHRoZSBjbGllbnRzIG92ZXIgYmluZGVy
IElQQy4NCj4gPiBUaGUgZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTCB3aWxsIG5vdCByZXRhaW4gYW55
IHJlZmVyZW5jZXMgdG8gdGhlDQo+ID4gYnVmZmVycy4gV2hlbiB0aGUgSEFMIHNldHMgdGhlIEJJ
TkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3IgZmQNCj4gPiBhcnJheXMgaG9sZGlu
ZyBETUEtQlVGIGZkcywgdGhlIGdwdSBjZ3JvdXAgY29udHJvbGxlciB3aWxsIGJlIGFibGUgdG8N
Cj4gPiBjb3JyZWN0bHkgY2hhcmdlIHRoZSBidWZmZXJzIHRvIHRoZSBjbGllbnQgcHJvY2Vzc2Vz
IGluc3RlYWQgb2YgdGhlDQo+ID4gZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTC4NCj4gPg0KPiA+IEZy
b206IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0KPiA+IENvLWRldmVsb3Bl
ZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+IGNo
YW5nZXMgaW4gdjINCj4gPiAtIE1vdmUgZG1hLWJ1ZiBjZ3JvdXAgY2hhcmdlIHRyYW5zZmVyIGZy
b20gYSBkbWFfYnVmX29wIGRlZmluZWQgYnkgZXZlcnkNCj4gPiBoZWFwIHRvIGEgc2luZ2xlIGRt
YS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCj4gPiBD
aHJpc3RpYW4gS8O2bmlnLg0KPiA+DQo+ID4gIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYyAgICAg
ICAgICAgIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS91YXBp
L2xpbnV4L2FuZHJvaWQvYmluZGVyLmggfCAgMSArDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjcg
aW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYW5kcm9pZC9iaW5k
ZXIuYyBiL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0KPiA+IGluZGV4IDgzNTFjNTYzODg4MC4u
ZjUwZDg4ZGVkMTg4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0KPiA+IEBAIC00Miw2ICs0Miw3IEBA
DQo+ID4NCj4gPiAgI2RlZmluZSBwcl9mbXQoZm10KSBLQlVJTERfTU9ETkFNRSAiOiAiIGZtdA0K
PiA+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51
eC9mZHRhYmxlLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9maWxlLmg+DQo+ID4gICNpbmNsdWRl
IDxsaW51eC9mcmVlemVyLmg+DQo+ID4gQEAgLTI0ODIsOCArMjQ4MywxMCBAQCBzdGF0aWMgaW50
IGJpbmRlcl90cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0IGxpc3RfaGVhZCAqcGZfaGVhZCwNCj4N
Cj4gSXMgdGhpcyBvbmx5IG5lZWRlZCBmb3IgdGhlIEJJTkRFUl9UWVBFX0ZEQSBjYXNlIChtdWx0
aXBsZSBmZHMpPyBUaGlzDQo+IG5ldmVyIG5lZWRzIHRvIGJlIGRvbmUgaW4gdGhlIEJJTkRFUl9U
WVBFX0ZEIGNhc2UgKHNpbmdsZSBmZCk/DQo+DQoNCkN1cnJlbnRseSB0aGlzIGlzIHRoZSBjYXNl
IGFzIHRoZXJlIGlzIG5vIHVzZXIgd2hvIHdvdWxkIGJlbmVmaXQgZnJvbQ0KdGhlIHNpbmdsZSBm
ZCBjYXNlLiBUaGUgb25seSBrbm93biB1c2VyIGlzIHRoZSBncmFsbG9jIEhBTCB3aGljaA0KYWx3
YXlzIHVzZXMgQklOREVSX1RZUEVfRkRBIHRvIHNlbmQgZG1hYnVmcy4gSSBndWVzcyB3ZSBjb3Vs
ZCBtb3ZlIHRoZQ0KY29kZSBpbnRvIGJpbmRlcl90cmFuc2xhdGVfZmQgaWYgd2Ugd2VyZSB3aWxs
aW5nIHRvIGJyaW5nIGJhY2sNCmJpbmRlcl9mZF9vYmplY3QncyBmbGFncyBmaWVsZC4gVGhpcyBs
b29rcyBwb3NzaWJsZSwgYnV0IEkgdGhpbmsgaXQnZA0KYmUgYSBtb3JlIGludHJ1c2l2ZSBjaGFu
Z2UuDQoNCj4gPiAgew0KPiA+ICAgICAgICAgYmluZGVyX3NpemVfdCBmZGksIGZkX2J1Zl9zaXpl
Ow0KPiA+ICAgICAgICAgYmluZGVyX3NpemVfdCBmZGFfb2Zmc2V0Ow0KPiA+ICsgICAgICAgYm9v
bCB0cmFuc2Zlcl9ncHVfY2hhcmdlID0gZmFsc2U7DQo+ID4gICAgICAgICBjb25zdCB2b2lkIF9f
dXNlciAqc2VuZGVyX3VmZGFfYmFzZTsNCj4gPiAgICAgICAgIHN0cnVjdCBiaW5kZXJfcHJvYyAq
cHJvYyA9IHRocmVhZC0+cHJvYzsNCj4gPiArICAgICAgIHN0cnVjdCBiaW5kZXJfcHJvYyAqdGFy
Z2V0X3Byb2MgPSB0LT50b19wcm9jOw0KPiA+ICAgICAgICAgaW50IHJldDsNCj4gPg0KPiA+ICAg
ICAgICAgZmRfYnVmX3NpemUgPSBzaXplb2YodTMyKSAqIGZkYS0+bnVtX2ZkczsNCj4gPiBAQCAt
MjUyMSw4ICsyNTI0LDE1IEBAIHN0YXRpYyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShz
dHJ1Y3QgbGlzdF9oZWFkICpwZl9oZWFkLA0KPiA+ICAgICAgICAgaWYgKHJldCkNCj4gPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPg0KPiA+ICsgICAgICAgaWYgKElTX0VOQUJMRUQo
Q09ORklHX0NHUk9VUF9HUFUpICYmDQo+ID4gKyAgICAgICAgICAgICAgIHBhcmVudC0+ZmxhZ3Mg
JiBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVSX05PX05FRUQpDQo+ID4gKyAgICAgICAgICAgICAg
IHRyYW5zZmVyX2dwdV9jaGFyZ2UgPSB0cnVlOw0KPiA+ICsNCj4gPiAgICAgICAgIGZvciAoZmRp
ID0gMDsgZmRpIDwgZmRhLT5udW1fZmRzOyBmZGkrKykgew0KPiA+ICAgICAgICAgICAgICAgICB1
MzIgZmQ7DQo+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ID4g
KyAgICAgICAgICAgICAgIHN0cnVjdCBncHVjZyAqZ3B1Y2c7DQo+ID4gKw0KPiA+ICAgICAgICAg
ICAgICAgICBiaW5kZXJfc2l6ZV90IG9mZnNldCA9IGZkYV9vZmZzZXQgKyBmZGkgKiBzaXplb2Yo
ZmQpOw0KPiA+ICAgICAgICAgICAgICAgICBiaW5kZXJfc2l6ZV90IHNlbmRlcl91b2Zmc2V0ID0g
ZmRpICogc2l6ZW9mKGZkKTsNCj4gPg0KPiA+IEBAIC0yNTMyLDYgKzI1NDIsMjIgQEAgc3RhdGlj
IGludCBiaW5kZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0X2hlYWQgKnBmX2hlYWQs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bl9yZXBseV90byk7DQo+ID4gICAgICAgICAgICAgICAgIGlmIChyZXQpDQo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIHJldCA+IDAgPyAtRUlOVkFMIDogcmV0Ow0KPiA+ICsNCj4g
PiArICAgICAgICAgICAgICAgaWYgKCF0cmFuc2Zlcl9ncHVfY2hhcmdlKQ0KPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAgZG1h
YnVmID0gZG1hX2J1Zl9nZXQoZmQpOw0KPiA+ICsgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGRt
YWJ1ZikpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4gKw0KPiA+
ICsgICAgICAgICAgICAgICBncHVjZyA9IGdwdWNnX2dldCh0YXJnZXRfcHJvYy0+dHNrKTsNCj4g
PiArICAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIoZG1hYnVmLCBn
cHVjZyk7DQo+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQpIHsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBwcl93YXJuKCIlZDolZCBVbmFibGUgdG8gdHJhbnNmZXIgRE1BLUJVRiBmZCBj
aGFyZ2UgdG8gJWQiLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJvYy0+
cGlkLCB0aHJlYWQtPnBpZCwgdGFyZ2V0X3Byb2MtPnBpZCk7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZ3B1Y2dfcHV0KGdwdWNnKTsNCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICsg
ICAgICAgICAgICAgICBkbWFfYnVmX3B1dChkbWFidWYpOw0KPiA+ICAgICAgICAgfQ0KPiA+ICAg
ICAgICAgcmV0dXJuIDA7DQo+ID4gIH0NCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xp
bnV4L2FuZHJvaWQvYmluZGVyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIu
aA0KPiA+IGluZGV4IDMyNDZmMmM3NDY5Ni4uMTY5ZmQ1MDY5YTFhIDEwMDY0NA0KPiA+IC0tLSBh
L2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+ID4gKysrIGIvaW5jbHVkZS91
YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCj4gPiBAQCAtMTM3LDYgKzEzNyw3IEBAIHN0cnVj
dCBiaW5kZXJfYnVmZmVyX29iamVjdCB7DQo+ID4NCj4gPiAgZW51bSB7DQo+ID4gICAgICAgICBC
SU5ERVJfQlVGRkVSX0ZMQUdfSEFTX1BBUkVOVCA9IDB4MDEsDQo+ID4gKyAgICAgICBCSU5ERVJf
QlVGRkVSX0ZMQUdfU0VOREVSX05PX05FRUQgPSAweDAyLA0KPiA+ICB9Ow0KPiA+DQo+ID4gIC8q
IHN0cnVjdCBiaW5kZXJfZmRfYXJyYXlfb2JqZWN0IC0gb2JqZWN0IGRlc2NyaWJpbmcgYW4gYXJy
YXkgb2YgZmRzIGluIGEgYnVmZmVyDQo+ID4gLS0NCj4gPiAyLjM1LjEuMjY1Lmc2OWM4ZDcxNDJm
LWdvb2cNCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
