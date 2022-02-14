Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 024DA4B87E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33C683EE8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:08 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lists.linaro.org (Postfix) with ESMTPS id 598943ECFF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 19:29:32 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id j2so49471601ybu.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 11:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9iLzCF2TaMCSxVJ++G7B9k6oyEfu4Hb24dWcp9NavGo=;
        b=bvMGtJIya6i3kldlZ68PIkQqYQHrWh9etw576kRgvqubMe8pOdz7mPqNNyEWu0qYpu
         K2+jd6xSBx5ppv4DQhtAnJ/C1/ar+hoh3j4AET1ped77vG9F4QpStWrR5C/ynxDK3vKN
         F4ftSIe8zSlM/Ns0STbrln5QJiVtN8Mb1FflduG9ZT54+xcqp70wfp9WWIW2Zk6aDtuu
         Djv4CpRkBWIv6K7ZeB7+p1MAM8FavXkccQBC2frvBkJ2JfvUDXYUQVZoWaiMCLK08wlH
         BGwhSfln6q5TY9QJ0CXJOGeU35akaI0qKxsYbaroT2gei4kFJSaQtHAN9gq7j5k3cA9G
         1Q1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9iLzCF2TaMCSxVJ++G7B9k6oyEfu4Hb24dWcp9NavGo=;
        b=az+llJe3+kP0AB3aoqamf1V9UgcJ/aHxIPupkqfm2A+HJ6G8QaGLvr/DtMHwe6F81x
         8pV2vfxZ1tf45C7ZgwzqcVnb/7eVq++2d6okNeYJjhip5e2WyP0oR2wpt8hjae/LAt8p
         5tCKZCvzwko06KJhYNHwtytVClBZEekoR5SxDr0YOjNViguEXW51jjPgHECoV/1uiUiu
         BzXLAV7/pH3jp/L7JV3cxtUP5hL/n8aCdYmq+6fG6lYegu6Q92iv2TcjUcCQCp6rD3Y8
         Qx5hl1dddT7XfZ8a0ye1iQwcy2ZvHKHZw3bA9f8eyJYGtNaOo1fkxxxL8zlugQZKyKkL
         Rw6w==
X-Gm-Message-State: AOAM53345ul5xiaEgty+qBbTjv3XyCXvUY1RsbFR2WV1CK+TUzRlliUZ
	DoKAVV3r14tm9QjtAlhw1/QJANJmA/7Bwpzm2M9t1g==
X-Google-Smtp-Source: ABdhPJyWwIYYnlk3ZSzKkARKSenDfxGIdF7NYMwdRVcMXb2jVKuNZSwS8LN5JTVoMgWsqXP9by8zlQbqgPKPiLNFFWE=
X-Received: by 2002:a25:6a55:: with SMTP id f82mr574637ybc.1.1644866971626;
 Mon, 14 Feb 2022 11:29:31 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com> <Ygdfe3XSvN8iFuUc@kroah.com> <CAHRSSEwoJ67Sr_=gtSaP91cbpjJjZdOo57cfAhv3r-ye0da7PA@mail.gmail.com>
In-Reply-To: <CAHRSSEwoJ67Sr_=gtSaP91cbpjJjZdOo57cfAhv3r-ye0da7PA@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 14 Feb 2022 11:29:20 -0800
Message-ID: <CAJuCfpHf=Ewm0e9kguY3MEGVHU_cyviVXByi0oQtq7kTtOOD=A@mail.gmail.com>
To: Todd Kjos <tkjos@google.com>
X-MailFrom: surenb@google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: IFQCIHSTPUFRZIFHRZEX3PVHAOZ7Z444
X-Message-ID-Hash: IFQCIHSTPUFRZIFHRZEX3PVHAOZ7Z444
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:38 +0000
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, DRI mailing list 
 <dri-devel@lists.freedesktop.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, cgroups mailinglist <cgroups@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IFQCIHSTPUFRZIFHRZEX3PVHAOZ7Z444/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBGZWIgMTQsIDIwMjIgYXQgMTA6MzMgQU0gVG9kZCBLam9zIDx0a2pvc0Bnb29nbGUu
Y29tPiB3cm90ZToNCj4NCj4gT24gRnJpLCBGZWIgMTEsIDIwMjIgYXQgMTE6MTkgUE0gR3JlZyBL
cm9haC1IYXJ0bWFuDQo+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6DQo+ID4N
Cj4gPiBPbiBGcmksIEZlYiAxMSwgMjAyMiBhdCAwNDoxODoyOVBNICswMDAwLCBULkouIE1lcmNp
ZXIgd3JvdGU6DQo+DQo+IFRpdGxlOiAiYW5kcm9pZDogYmluZGVyOiBBZGQgYSBidWZmZXIgZmxh
ZyB0byByZWxpbnF1aXNoIG93bmVyc2hpcCBvZiBmZHMiDQo+DQo+IFBsZWFzZSBkcm9wIHRoZSAi
YW5kcm9pZDoiIGZyb20gdGhlIHRpdGxlLg0KPg0KPiA+ID4gVGhpcyBwYXRjaCBpbnRyb2R1Y2Vz
IGEgYnVmZmVyIGZsYWcgQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9OT19ORUVEDQo+ID4gPiB0
aGF0IGEgcHJvY2VzcyBzZW5kaW5nIGFuIGZkIGFycmF5IHRvIGFub3RoZXIgcHJvY2VzcyBvdmVy
IGJpbmRlciBJUEMNCj4gPiA+IGNhbiBzZXQgdG8gcmVsaW5xdWlzaCBvd25lcnNoaXAgb2YgdGhl
IGZkcyBiZWluZyBzZW50IGZvciBtZW1vcnkNCj4gPiA+IGFjY291bnRpbmcgcHVycG9zZXMuIElm
IHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJlIHNldCBkdXJpbmcgdGhlIGZkIGFycmF5DQo+ID4gPiB0
cmFuc2xhdGlvbiBhbmQgdGhlIGZkIGlzIGZvciBhIERNQS1CVUYsIHRoZSBidWZmZXIgaXMgdW5j
aGFyZ2VkIGZyb20NCj4gPiA+IHRoZSBzZW5kZXIncyBjZ3JvdXAgYW5kIGNoYXJnZWQgdG8gdGhl
IHJlY2VpdmluZyBwcm9jZXNzJ3MgY2dyb3VwDQo+ID4gPiBpbnN0ZWFkLg0KPiA+ID4NCj4gPiA+
IEl0IGlzIHVwIHRvIHRoZSBzZW5kaW5nIHByb2Nlc3MgdG8gZW5zdXJlIHRoYXQgaXQgY2xvc2Vz
IHRoZSBmZHMNCj4gPiA+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgdHJhbnNmZXIgZmFpbGVk
IG9yIHN1Y2NlZWRlZC4NCj4gPiA+DQo+ID4gPiBNb3N0IGdyYXBoaWNzIHNoYXJlZCBtZW1vcnkg
YWxsb2NhdGlvbnMgaW4gQW5kcm9pZCBhcmUgZG9uZSBieSB0aGUNCj4gPiA+IGdyYXBoaWNzIGFs
bG9jYXRvciBIQUwgcHJvY2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHBy
b2Nlc3MNCj4gPiA+IGFsbG9jYXRlcyBtZW1vcnkgYW5kIHNlbmRzIHRoZSBmZHMgdG8gdGhlIGNs
aWVudHMgb3ZlciBiaW5kZXIgSVBDLg0KPiA+ID4gVGhlIGdyYXBoaWNzIGFsbG9jYXRvciBIQUwg
d2lsbCBub3QgcmV0YWluIGFueSByZWZlcmVuY2VzIHRvIHRoZQ0KPiA+ID4gYnVmZmVycy4gV2hl
biB0aGUgSEFMIHNldHMgdGhlIEJJTkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3Ig
ZmQNCj4gPiA+IGFycmF5cyBob2xkaW5nIERNQS1CVUYgZmRzLCB0aGUgZ3B1IGNncm91cCBjb250
cm9sbGVyIHdpbGwgYmUgYWJsZSB0bw0KPiA+ID4gY29ycmVjdGx5IGNoYXJnZSB0aGUgYnVmZmVy
cyB0byB0aGUgY2xpZW50IHByb2Nlc3NlcyBpbnN0ZWFkIG9mIHRoZQ0KPiA+ID4gZ3JhcGhpY3Mg
YWxsb2NhdG9yIEhBTC4NCj4gPiA+DQo+ID4gPiBGcm9tOiBIcmlkeWEgVmFsc2FyYWp1IDxocmlk
eWFAZ29vZ2xlLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEhyaWR5YSBWYWxzYXJhanUgPGhy
aWR5YUBnb29nbGUuY29tPg0KPiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBULkouIE1lcmNpZXIgPHRq
bWVyY2llckBnb29nbGUuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0
am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gY2hhbmdlcyBpbiB2Mg0KPiA+
ID4gLSBNb3ZlIGRtYS1idWYgY2dyb3VwIGNoYXJnZSB0cmFuc2ZlciBmcm9tIGEgZG1hX2J1Zl9v
cCBkZWZpbmVkIGJ5IGV2ZXJ5DQo+ID4gPiBoZWFwIHRvIGEgc2luZ2xlIGRtYS1idWYgZnVuY3Rp
b24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCj4gPiA+IENocmlzdGlhbiBL
w7ZuaWcuDQo+ID4gPg0KPiA+ID4gIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYyAgICAgICAgICAg
IHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+ICBpbmNsdWRlL3VhcGkvbGlu
dXgvYW5kcm9pZC9iaW5kZXIuaCB8ICAxICsNCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDI3IGlu
c2VydGlvbnMoKykNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hbmRyb2lkL2Jp
bmRlci5jIGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQo+ID4gPiBpbmRleCA4MzUxYzU2Mzg4
ODAuLmY1MGQ4OGRlZDE4OCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvYW5kcm9pZC9iaW5k
ZXIuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQo+ID4gPiBAQCAtNDIs
NiArNDIsNyBAQA0KPiA+ID4NCj4gPiA+ICAjZGVmaW5lIHByX2ZtdChmbXQpIEtCVUlMRF9NT0RO
QU1FICI6ICIgZm10DQo+ID4gPg0KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+
ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2ZkdGFibGUuaD4NCj4gPiA+ICAjaW5jbHVkZSA8bGludXgv
ZmlsZS5oPg0KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9mcmVlemVyLmg+DQo+ID4gPiBAQCAtMjQ4
Miw4ICsyNDgzLDEwIEBAIHN0YXRpYyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShzdHJ1
Y3QgbGlzdF9oZWFkICpwZl9oZWFkLA0KPiA+ID4gIHsNCj4gPiA+ICAgICAgIGJpbmRlcl9zaXpl
X3QgZmRpLCBmZF9idWZfc2l6ZTsNCj4gPiA+ICAgICAgIGJpbmRlcl9zaXplX3QgZmRhX29mZnNl
dDsNCj4gPiA+ICsgICAgIGJvb2wgdHJhbnNmZXJfZ3B1X2NoYXJnZSA9IGZhbHNlOw0KPiA+ID4g
ICAgICAgY29uc3Qgdm9pZCBfX3VzZXIgKnNlbmRlcl91ZmRhX2Jhc2U7DQo+ID4gPiAgICAgICBz
dHJ1Y3QgYmluZGVyX3Byb2MgKnByb2MgPSB0aHJlYWQtPnByb2M7DQo+ID4gPiArICAgICBzdHJ1
Y3QgYmluZGVyX3Byb2MgKnRhcmdldF9wcm9jID0gdC0+dG9fcHJvYzsNCj4gPiA+ICAgICAgIGlu
dCByZXQ7DQo+ID4gPg0KPiA+ID4gICAgICAgZmRfYnVmX3NpemUgPSBzaXplb2YodTMyKSAqIGZk
YS0+bnVtX2ZkczsNCj4gPiA+IEBAIC0yNTIxLDggKzI1MjQsMTUgQEAgc3RhdGljIGludCBiaW5k
ZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0X2hlYWQgKnBmX2hlYWQsDQo+ID4gPiAg
ICAgICBpZiAocmV0KQ0KPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ID4NCj4g
PiA+ICsgICAgIGlmIChJU19FTkFCTEVEKENPTkZJR19DR1JPVVBfR1BVKSAmJg0KPiA+ID4gKyAg
ICAgICAgICAgICBwYXJlbnQtPmZsYWdzICYgQklOREVSX0JVRkZFUl9GTEFHX1NFTkRFUl9OT19O
RUVEKQ0KPiA+ID4gKyAgICAgICAgICAgICB0cmFuc2Zlcl9ncHVfY2hhcmdlID0gdHJ1ZTsNCj4g
PiA+ICsNCj4gPiA+ICAgICAgIGZvciAoZmRpID0gMDsgZmRpIDwgZmRhLT5udW1fZmRzOyBmZGkr
Kykgew0KPiA+ID4gICAgICAgICAgICAgICB1MzIgZmQ7DQo+ID4gPiArICAgICAgICAgICAgIHN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ID4gPiArICAgICAgICAgICAgIHN0cnVjdCBncHVjZyAq
Z3B1Y2c7DQo+ID4gPiArDQo+ID4gPiAgICAgICAgICAgICAgIGJpbmRlcl9zaXplX3Qgb2Zmc2V0
ID0gZmRhX29mZnNldCArIGZkaSAqIHNpemVvZihmZCk7DQo+ID4gPiAgICAgICAgICAgICAgIGJp
bmRlcl9zaXplX3Qgc2VuZGVyX3VvZmZzZXQgPSBmZGkgKiBzaXplb2YoZmQpOw0KPiA+ID4NCj4g
PiA+IEBAIC0yNTMyLDYgKzI1NDIsMjIgQEAgc3RhdGljIGludCBiaW5kZXJfdHJhbnNsYXRlX2Zk
X2FycmF5KHN0cnVjdCBsaXN0X2hlYWQgKnBmX2hlYWQsDQo+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbl9yZXBseV90byk7DQo+ID4gPiAgICAg
ICAgICAgICAgIGlmIChyZXQpDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJl
dCA+IDAgPyAtRUlOVkFMIDogcmV0Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICAgICAgICBpZiAo
IXRyYW5zZmVyX2dwdV9jaGFyZ2UpDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGlu
dWU7DQo+ID4gPiArDQo+ID4gPiArICAgICAgICAgICAgIGRtYWJ1ZiA9IGRtYV9idWZfZ2V0KGZk
KTsNCj4gPiA+ICsgICAgICAgICAgICAgaWYgKElTX0VSUihkbWFidWYpKQ0KPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICAgICAgICBn
cHVjZyA9IGdwdWNnX2dldCh0YXJnZXRfcHJvYy0+dHNrKTsNCj4gPiA+ICsgICAgICAgICAgICAg
cmV0ID0gZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIoZG1hYnVmLCBncHVjZyk7DQo+ID4gPiArICAg
ICAgICAgICAgIGlmIChyZXQpIHsNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBwcl93YXJu
KCIlZDolZCBVbmFibGUgdG8gdHJhbnNmZXIgRE1BLUJVRiBmZCBjaGFyZ2UgdG8gJWQiLA0KPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJvYy0+cGlkLCB0aHJlYWQtPnBpZCwg
dGFyZ2V0X3Byb2MtPnBpZCk7DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgZ3B1Y2dfcHV0
KGdwdWNnKTsNCj4gPiA+ICsgICAgICAgICAgICAgfQ0KPiA+ID4gKyAgICAgICAgICAgICBkbWFf
YnVmX3B1dChkbWFidWYpOw0KPg0KPiBTaW5jZSB3ZSBhcmUgY3JlYXRpbmcgYSBuZXcgZ3B1IGNn
cm91cCBhYnN0cmFjdGlvbiwgY291bGRuJ3QgdGhpcw0KPiAidHJhbnNmZXIiIGJlIGRvbmUgaW4g
dXNlcnNwYWNlIGJ5IHRoZSB0YXJnZXQgaW5zdGVhZCBvZiBpbiB0aGUga2VybmVsDQo+IGRyaXZl
cj8gVGhlbiB0aGlzIHBhdGNoIHdvdWxkIHJlZHVjZSB0byBqdXN0IGEgZmxhZyBvbiB0aGUgYnVm
ZmVyDQo+IG9iamVjdC4NCg0KQXJlIHlvdSBzdWdnZXN0aW5nIHRvIGhhdmUgYSB1c2Vyc3BhY2Ug
YWNjZXNzaWJsZSBjZ3JvdXAgaW50ZXJmYWNlIGZvcg0KdHJhbnNmZXJyaW5nIGJ1ZmZlciBjaGFy
Z2VzIGFuZCB0aGUgdGFyZ2V0IHByb2Nlc3MgdG8gdXNlIHRoYXQNCmludGVyZmFjZSBmb3IgcmVx
dWVzdGluZyB0aGUgYnVmZmVyIHRvIGJlIGNoYXJnZWQgdG8gaXRzIGNncm91cD8NCkknbSB3b3Jy
aWVkIGFib3V0IHRoZSBjYXNlIHdoZW4gdGhlIHRhcmdldCBwcm9jZXNzIGRvZXMgbm90IHJlcXVl
c3QNCnRoZSB0cmFuc2ZlciBhZnRlciByZWNlaXZpbmcgdGhlIGJ1ZmZlciB3aXRoIHRoaXMgZmxh
ZyBzZXQuIFRoZSBjaGFyZ2UNCndvdWxkIHN0YXkgd2l0aCB0aGUgd3JvbmcgcHJvY2VzcyBhbmQg
YWNjb3VudGluZyB3aWxsIGJlIGludmFsaWQuDQoNClRlY2huaWNhbGx5LCBzaW5jZSB0aGUgcHJv
cG9zZWQgY2dyb3VwIHN1cHBvcnRzIGNoYXJnZSB0cmFuc2ZlciBmcm9tDQp0aGUgdmVyeSBiZWdp
bm5pbmcsIHRoZSB1c2Vyc3BhY2UgY2FuIGNoZWNrIGlmIHRoZSBjZ3JvdXAgaXMgbW91bnRlZA0K
YW5kIGlmIHNvIHRoZW4gaXQga25vd3MgdGhpcyBmZWF0dXJlIGlzIHN1cHBvcnRlZC4NCg0KPiBU
aGlzIGFsc28gc29sdmVzIHRoZSBpc3N1ZSB0aGF0IEdyZWcgYnJvdWdodCB1cCBhYm91dA0KPiB1
c2Vyc3BhY2UgbmVlZGluZyB0byBrbm93IHdoZXRoZXIgdGhlIGtlcm5lbCBpbXBsZW1lbnRzIHRo
aXMgZmVhdHVyZQ0KPiAob2xkZXIga2VybmVsIHJ1bm5pbmcgd2l0aCBuZXdlciB1c2Vyc3BhY2Up
LiBJIHRoaW5rIHdlIGNvdWxkIGp1c3QNCj4gcmVzZXJ2ZSBzb21lIGZsYWdzIGZvciB1c2Vyc3Bh
Y2UgdG8gdXNlIChhbmQgc2luY2UgdGhvc2UgZmxhZ3MgYXJlDQo+ICJyZXNlcnZlZCIgZm9yIG9s
ZGVyIGtlcm5lbHMsIHRoaXMgd291bGQgZW5hYmxlIHRoaXMgZmVhdHVyZSBldmVuIGZvcg0KPiBv
bGQga2VybmVscykNCj4NCj4gPiA+ICAgICAgIH0NCj4gPiA+ICAgICAgIHJldHVybiAwOw0KPiA+
ID4gIH0NCj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5k
ZXIuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+ID4gPiBpbmRleCAz
MjQ2ZjJjNzQ2OTYuLjE2OWZkNTA2OWExYSAxMDA2NDQNCj4gPiA+IC0tLSBhL2luY2x1ZGUvdWFw
aS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+ID4gPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgv
YW5kcm9pZC9iaW5kZXIuaA0KPiA+ID4gQEAgLTEzNyw2ICsxMzcsNyBAQCBzdHJ1Y3QgYmluZGVy
X2J1ZmZlcl9vYmplY3Qgew0KPiA+ID4NCj4gPiA+ICBlbnVtIHsNCj4gPiA+ICAgICAgIEJJTkRF
Ul9CVUZGRVJfRkxBR19IQVNfUEFSRU5UID0gMHgwMSwNCj4gPiA+ICsgICAgIEJJTkRFUl9CVUZG
RVJfRkxBR19TRU5ERVJfTk9fTkVFRCA9IDB4MDIsDQo+ID4gPiAgfTsNCj4gPiA+DQo+ID4gPiAg
Lyogc3RydWN0IGJpbmRlcl9mZF9hcnJheV9vYmplY3QgLSBvYmplY3QgZGVzY3JpYmluZyBhbiBh
cnJheSBvZiBmZHMgaW4gYSBidWZmZXINCj4gPiA+IC0tDQo+ID4gPiAyLjM1LjEuMjY1Lmc2OWM4
ZDcxNDJmLWdvb2cNCj4gPiA+DQo+ID4NCj4gPiBIb3cgZG9lcyB1c2Vyc3BhY2Uga25vdyB0aGF0
IGJpbmRlciBzdXBwb3J0cyB0aGlzIG5ldyBmbGFnPyAgQW5kIHdoZXJlDQo+ID4gaXMgdGhlIHVz
ZXJzcGFjZSB0ZXN0IGZvciB0aGlzIG5ldyBmZWF0dXJlPyAgSXNuJ3QgdGhlcmUgYSBiaW5kZXIg
dGVzdA0KPiA+IGZyYW1ld29yayBzb21ld2hlcmU/DQo+ID4NCj4gPiB0aGFua3MsDQo+ID4NCj4g
PiBncmVnIGstaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
