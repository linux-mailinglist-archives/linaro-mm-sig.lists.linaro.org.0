Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2584EAEB7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 15:48:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E3583EC0D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:48:25 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 07B4D3EF70
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Mar 2022 23:45:41 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id qa43so37361372ejc.12
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Mar 2022 16:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=mMcKlcLkl25csYGtmWB99GmowZ54MQeoPUbWxxcyFU0=;
        b=bp+YoIVGfFN/43D3vqHErY1NhIRJApUAhtw6o/hQeIyaDBqIfE66EIhFuNlzouKqsM
         ICMTNUqtiRAq88ITvYxr1uiF5OmdPGah32szvxsrVE8+TbWCoOGxOG6L25aPWaho7kdy
         3FU/jNh6QDkaRKObZiMMOkBlD8Aqv99swKSc8YZ9bFy6T0F/mbML6sVVYqbR6qCMVE6H
         bYhE/ZUbxEYhn6H6a+/VharXFDIBFPo45r3fdwvvEZ51SgbTUi25vilSjvica56rkM6I
         xTjLcOE3UXJzEYpLAj8t0ISFMLBTpHiYS87O0Yj4+2ZJb/rKhYVFzvJMGee+en585/rw
         GBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=mMcKlcLkl25csYGtmWB99GmowZ54MQeoPUbWxxcyFU0=;
        b=S4IYHlFsMAst05QlgYS6c1B638Ox8R9vxgYNVmj99pZW++FbwLYtT+WFEkuvurpPuU
         BeOhOH5/vMJt2DedlRja5rESFo/wpxrcHGW6+PT1GKpPvPoDcX6thn6oAVBir+jvNgDs
         5Ws0Qd9M0M71ZYVgROdxkRfY0BF/7L5phDGifv58RHgUC8HnL91HLeJZzr/kRLwmAgKh
         sjkPLYnflzCk8O1pR0E1ldR1gWrdqJkp4DRGVjJ/exWJwL/YUyY7sYuzSbvNWTPBi6eG
         KTvKyUDaP4wf3Xu9tEy4j6cKjS+Li8Y9PMtB76jVvioLpQVInXxRKY53oJlL2dV7HKfi
         724A==
X-Gm-Message-State: AOAM530GsTQpnl62DdigMf+PHuEET1N7takLhfPGm7UL1S5ascsaulJ3
	3NWJq1WYrmmSqpqtDDdTzGCAB+L05ApFok3RZvleEw==
X-Google-Smtp-Source: ABdhPJzivdKSx3a2ptS01jjlhP74llQ2PdFx6OA83cn+BAtPtg6OtNsv++AhnKe1mUMAW8amvG7lkgIAO9oTvOh6yGc=
X-Received: by 2002:a17:906:5d08:b0:6da:b4ea:937 with SMTP id
 g8-20020a1709065d0800b006dab4ea0937mr20516098ejt.446.1647301539672; Mon, 14
 Mar 2022 16:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-8-tjmercier@google.com> <CAHRSSEy5_h9LJB4q5_OJA7fSq=ROo68UaK+hdPz-Vj-wac1Qhg@mail.gmail.com>
In-Reply-To: <CAHRSSEy5_h9LJB4q5_OJA7fSq=ROo68UaK+hdPz-Vj-wac1Qhg@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 14 Mar 2022 16:45:28 -0700
Message-ID: <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com>
To: Todd Kjos <tkjos@google.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L774HSN2PATS6M4X3W77WAAES5ITEFEJ
X-Message-ID-Hash: L774HSN2PATS6M4X3W77WAAES5ITEFEJ
X-Mailman-Approved-At: Tue, 29 Mar 2022 13:48:21 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L774HSN2PATS6M4X3W77WAAES5ITEFEJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMTAsIDIwMjIgYXQgMTE6MzMgQU0gVG9kZCBLam9zIDx0a2pvc0Bnb29nbGUu
Y29tPiB3cm90ZToNCj4NCj4gT24gV2VkLCBNYXIgOSwgMjAyMiBhdCA4OjUyIEFNIFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gVGhlIGtlcm5lbCBp
bnRlcmZhY2Ugc2hvdWxkIHVzZSB0eXBlcyB0aGF0IHRoZSBrZXJuZWwgZGVmaW5lcyBpbnN0ZWFk
IG9mDQo+ID4gcGlkX3QgYW5kIHVpZF90LCB3aG9zZSBkZWZpbml0b24gaXMgb3duZWQgYnkgbGli
Yy4gVGhpcyBmaXhlcyB0aGUgaGVhZGVyDQo+ID4gc28gdGhhdCBpdCBjYW4gYmUgaW5jbHVkZWQg
d2l0aG91dCBmaXJzdCBpbmNsdWRpbmcgc3lzL3R5cGVzLmguDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+ICBp
bmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIuaCB8IDQgKystLQ0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIGIvaW5jbHVkZS91YXBp
L2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCj4gPiBpbmRleCAxNjlmZDUwNjlhMWEuLmFhMjg0NTRk
YmNhMyAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIu
aA0KPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+ID4gQEAg
LTI4OSw4ICsyODksOCBAQCBzdHJ1Y3QgYmluZGVyX3RyYW5zYWN0aW9uX2RhdGEgew0KPiA+DQo+
ID4gICAgICAgICAvKiBHZW5lcmFsIGluZm9ybWF0aW9uIGFib3V0IHRoZSB0cmFuc2FjdGlvbi4g
Ki8NCj4gPiAgICAgICAgIF9fdTMyICAgICAgICAgICBmbGFnczsNCj4gPiAtICAgICAgIHBpZF90
ICAgICAgICAgICBzZW5kZXJfcGlkOw0KPiA+IC0gICAgICAgdWlkX3QgICAgICAgICAgIHNlbmRl
cl9ldWlkOw0KPiA+ICsgICAgICAgX19rZXJuZWxfcGlkX3QgIHNlbmRlcl9waWQ7DQo+ID4gKyAg
ICAgICBfX2tlcm5lbF91aWRfdCAgc2VuZGVyX2V1aWQ7DQo+DQo+IEFyZSB3ZSBndWFyYW50ZWVk
IHRoYXQgdGhpcyBkb2VzIG5vdCBhZmZlY3QgdGhlIFVBUEkgYXQgYWxsPyBVc2Vyc3BhY2UNCj4g
Y29kZSB1c2luZyB0aGlzIGRlZmluaXRpb24gd2lsbCBoYXZlIHRvIHJ1biB3aXRoIGtlcm5lbHMg
dXNpbmcgdGhlIG9sZA0KPiBkZWZpbml0aW9uIGFuZCB2aXNhLXZlcnNhLg0KDQpBIHN0YW5kYXJk
cyBjb21wbGlhbnQgdXNlcnNwYWNlIHNob3VsZCBiZSBleHBlY3RpbmcgYSBzaWduZWQgaW50ZWdl
cg0KdHlwZSBoZXJlLiBTbyB0aGUgb25seSB3YXkgSSBjYW4gdGhpbmsgdXNlcnNwYWNlIHdvdWxk
IGJlIGFmZmVjdGVkIGlzDQppZjoNCjEpIHBpZF90IGlzIGEgbG9uZyBBTkQNCjIpIHNpemVvZihs
b25nKSA+IHNpemVvZihpbnQpIEFORA0KMykgQ29uc3VtZXJzIG9mIHRoZSBwaWRfdCBkZWZpbml0
aW9uIGFjdHVhbGx5IGF0dGVtcHQgdG8gbXV0YXRlIHRoZQ0KcmVzdWx0IHRvIG1ha2UgdXNlIG9m
IGV4dHJhIGJpdHMgaW4gdGhlIHZhcmlhYmxlICh3aGljaCBhcmUgbm90IHRoZXJlKQ0KDQpUaGlz
IHNlZW1zIGV4dHJlbWVseSB1bmxpa2VseS4gRm9yIGluc3RhbmNlIGp1c3Qgb24gdGhlIHRvcGlj
IG9mIHRoZQ0KZmlyc3QgaXRlbSwgYWxsIG9mIHRoZSBDIGxpYnJhcnkgaW1wbGVtZW50YXRpb25z
IHdpdGggcGlkX3QNCmRlZmluaXRpb25zIGxpbmtlZCBoZXJlIHVzZSBhbiBpbnQsIGV4Y2VwdCBm
b3IgQmlvbmljIHdoaWNoIHR5cGRlZnMNCnBpZF90IHRvIF9fa2VybmVsX3BpZF90IGFuZCBTb3J0
aXggd2hpY2ggdXNlcyBsb25nLg0KaHR0cHM6Ly93aWtpLm9zZGV2Lm9yZy9DX0xpYnJhcnkNCg0K
SG93ZXZlciBJIHdvdWxkIGFyZ3VlIHRoaXMgaXMgYWxyZWFkeSBicm9rZW4gYW5kIHNob3VsZCBj
b3VudCBhcyBhIGJ1Zw0KZml4IHNpbmNlIEkgY2FuJ3QgZG8gdGhpczoNCg0KJCBjYXQgYmluZGVy
X2luY2x1ZGUuYyA7IGdjYyBiaW5kZXJfaW5jbHVkZS5jDQojaW5jbHVkZSA8bGludXgvYW5kcm9p
ZC9iaW5kZXIuaD4NCmludCBtYWluKCkge30NCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBiaW5kZXJf
aW5jbHVkZS5jOjE6DQovdXNyL2luY2x1ZGUvbGludXgvYW5kcm9pZC9iaW5kZXIuaDoyOTE6OTog
ZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmHBpZF904oCZDQogIDI5MSB8ICAgICAgICAgcGlk
X3QgICAgICAgICAgIHNlbmRlcl9waWQ7DQogICAgICB8ICAgICAgICAgXn5+fn4NCi91c3IvaW5j
bHVkZS9saW51eC9hbmRyb2lkL2JpbmRlci5oOjI5Mjo5OiBlcnJvcjogdW5rbm93biB0eXBlIG5h
bWUg4oCYdWlkX3TigJkNCiAgMjkyIHwgICAgICAgICB1aWRfdCAgICAgICAgICAgc2VuZGVyX2V1
aWQ7DQogICAgICB8ICAgICAgICAgXn5+fn4NCg0KVGhpcyBpcyBhbHNvIHRoZSBvbmx5IG9jY3Vy
cmVuY2Ugb2YgcGlkX3QgaW4gYWxsIG9mDQppbmNsdWRlL3VhcGkvbGludXguIEFsbCA0MCsgb3Ro
ZXIgdXNlcyBhcmUgX19rZXJuZWxfcGlkX3QsIGFuZCBJIGRvbid0DQpzZWUgd2h5IHRoZSBiaW5k
ZXIgaGVhZGVyIHNob3VsZCBiZSBkaWZmZXJlbnQuDQoNCg0KPg0KPiA+ICAgICAgICAgYmluZGVy
X3NpemVfdCAgIGRhdGFfc2l6ZTsgICAgICAvKiBudW1iZXIgb2YgYnl0ZXMgb2YgZGF0YSAqLw0K
PiA+ICAgICAgICAgYmluZGVyX3NpemVfdCAgIG9mZnNldHNfc2l6ZTsgICAvKiBudW1iZXIgb2Yg
Ynl0ZXMgb2Ygb2Zmc2V0cyAqLw0KPiA+DQo+ID4gLS0NCj4gPiAyLjM1LjEuNjE2LmcwYmRjYmI0
NDY0LWdvb2cNCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
