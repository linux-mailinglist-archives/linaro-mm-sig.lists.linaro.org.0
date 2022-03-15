Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A80B94EAEBC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 15:49:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE7753EC18
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:48:59 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by lists.linaro.org (Postfix) with ESMTPS id 500C63ED8A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Mar 2022 00:50:19 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id o6so24392005ljp.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Mar 2022 17:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=iu1dDKMiO58IJTgn0Y5YT/ep6c6PH/A2I1xn5i2OO4M=;
        b=A/QKF0mF9Rm2tSG6t2Q7FLiZsPmEh4wgSlnqrxSBzJTT18Tx/25nw5YitC+o5T1NIl
         dHsn3dewSXLFAeqA/+ODgjyTVd/Tx+QWjF8zqtLmD0tIAydAS7721bsNCRqIJbtKOJmx
         0AOy5rNA4qcgql5krqMhed3+t3qfYgcMOOsOjE3tnNwFKmr/qDH771GV9A5uGgXx8oaE
         Vj+L8eHW1IIPVnDdUjCH5rbstiX6McbtDPBKBdIhI8BKsO6vPZplxqdd24rIn7fSlSIs
         voa9xljon/WNiPC2LT2+MCpCtOQTHWC9qylrpk6wockoK/XRJO4YexgeGVa3vcONg4mj
         368Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iu1dDKMiO58IJTgn0Y5YT/ep6c6PH/A2I1xn5i2OO4M=;
        b=8P61emSyZ8QnxYFodW0cU1Ig1vgDoTHvWatj8ktZohXdgkaksQM2REPkQegFdiETmH
         QAjdK4X4TgMS3UDfTBtA0rFdMFoFcRqyf4Hy4L7eBdMbNRnx6tu+eG9WrZ/pssedhsqt
         9LDwmugGsmFXJNJlFKowRPjUOQ7xemf6wYGUW7WMdFEADm0P3VfHqzax8XAIXpi6dGqg
         0JTbUEeNPOWXkAaUViZ43NkCZWnwN7CRlSPnAVRLA4mAzH2zfsZ7YFEGf8qbDYB0+EhB
         pm1LFp32y5KDkVlp/JU3SW90wH2g1Pz8/c3NGrLt8CDyUXsJM2rgoZROhDzYGRM1k4NF
         WVjw==
X-Gm-Message-State: AOAM530n0PkHEx3U3gqqkvytj5sM8lYaHDGrjmbSVXo52TA9oqRmA0WW
	uudod2F4CHbjiYlWtjg0kS0odxP5lziWU2k27x+Pig==
X-Google-Smtp-Source: ABdhPJwHgu6MX7NhAwd4EkLiDaUQTvRgHtgs0ltqyCQLgN417gcAMf2BCutJE3sfOkxZqjDgfOwUxWCmaE1PNMqduXs=
X-Received: by 2002:a2e:7c16:0:b0:244:be33:9718 with SMTP id
 x22-20020a2e7c16000000b00244be339718mr15092896ljc.467.1647305417826; Mon, 14
 Mar 2022 17:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com> <20220309165222.2843651-7-tjmercier@google.com>
In-Reply-To: <20220309165222.2843651-7-tjmercier@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 14 Mar 2022 17:50:05 -0700
Message-ID: <CAHRSSEwY=1ns9LZSZi-yiYgx1UDE2_+L-+VFYPdWVqRuTSkYhw@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-MailFrom: tkjos@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YFXVWWOXJ4QJJAIMBPUI2SBRMEEYI52Y
X-Message-ID-Hash: YFXVWWOXJ4QJJAIMBPUI2SBRMEEYI52Y
X-Mailman-Approved-At: Tue, 29 Mar 2022 13:48:29 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 6/8] binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YFXVWWOXJ4QJJAIMBPUI2SBRMEEYI52Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXIgOSwgMjAyMiBhdCA4OjUyIEFNIFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdv
b2dsZS5jb20+IHdyb3RlOg0KPg0KPiBGcm9tOiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29v
Z2xlLmNvbT4NCj4NCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgYnVmZmVyIGZsYWcgQklOREVS
X0JVRkZFUl9GTEFHX1NFTkRFUl9OT19ORUVEDQo+IHRoYXQgYSBwcm9jZXNzIHNlbmRpbmcgYW4g
ZmQgYXJyYXkgdG8gYW5vdGhlciBwcm9jZXNzIG92ZXIgYmluZGVyIElQQw0KPiBjYW4gc2V0IHRv
IHJlbGlucXVpc2ggb3duZXJzaGlwIG9mIHRoZSBmZHMgYmVpbmcgc2VudCBmb3IgbWVtb3J5DQo+
IGFjY291bnRpbmcgcHVycG9zZXMuIElmIHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJlIHNldCBkdXJp
bmcgdGhlIGZkIGFycmF5DQo+IHRyYW5zbGF0aW9uIGFuZCB0aGUgZmQgaXMgZm9yIGEgRE1BLUJV
RiwgdGhlIGJ1ZmZlciBpcyB1bmNoYXJnZWQgZnJvbQ0KPiB0aGUgc2VuZGVyJ3MgY2dyb3VwIGFu
ZCBjaGFyZ2VkIHRvIHRoZSByZWNlaXZpbmcgcHJvY2VzcydzIGNncm91cA0KPiBpbnN0ZWFkLg0K
Pg0KPiBJdCBpcyB1cCB0byB0aGUgc2VuZGluZyBwcm9jZXNzIHRvIGVuc3VyZSB0aGF0IGl0IGNs
b3NlcyB0aGUgZmRzDQo+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgdHJhbnNmZXIgZmFpbGVk
IG9yIHN1Y2NlZWRlZC4NCj4NCj4gTW9zdCBncmFwaGljcyBzaGFyZWQgbWVtb3J5IGFsbG9jYXRp
b25zIGluIEFuZHJvaWQgYXJlIGRvbmUgYnkgdGhlDQo+IGdyYXBoaWNzIGFsbG9jYXRvciBIQUwg
cHJvY2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHByb2Nlc3MNCj4gYWxs
b2NhdGVzIG1lbW9yeSBhbmQgc2VuZHMgdGhlIGZkcyB0byB0aGUgY2xpZW50cyBvdmVyIGJpbmRl
ciBJUEMuDQo+IFRoZSBncmFwaGljcyBhbGxvY2F0b3IgSEFMIHdpbGwgbm90IHJldGFpbiBhbnkg
cmVmZXJlbmNlcyB0byB0aGUNCj4gYnVmZmVycy4gV2hlbiB0aGUgSEFMIHNldHMgdGhlIEJJTkRF
Ul9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3IgZmQNCj4gYXJyYXlzIGhvbGRpbmcgRE1B
LUJVRiBmZHMsIHRoZSBncHUgY2dyb3VwIGNvbnRyb2xsZXIgd2lsbCBiZSBhYmxlIHRvDQo+IGNv
cnJlY3RseSBjaGFyZ2UgdGhlIGJ1ZmZlcnMgdG8gdGhlIGNsaWVudCBwcm9jZXNzZXMgaW5zdGVh
ZCBvZiB0aGUNCj4gZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTC4NCj4NCj4gU2luY2UgdGhpcyBpcyBh
IG5ldyBmZWF0dXJlIGV4cG9zZWQgdG8gdXNlcnNwYWNlLCB0aGUga2VybmVsIGFuZCB1c2Vyc3Bh
Y2UNCj4gbXVzdCBiZSBjb21wYXRpYmxlIGZvciB0aGUgYWNjb3VudGluZyB0byB3b3JrIGZvciB0
cmFuc2ZlcnMuIEluIGFsbCBjYXNlcw0KPiB0aGUgYWxsb2NhdGlvbiBhbmQgdHJhbnNwb3J0IG9m
IERNQSBidWZmZXJzIHZpYSBiaW5kZXIgd2lsbCBzdWNjZWVkLCBidXQNCj4gb25seSB3aGVuIGJv
dGggdGhlIGtlcm5lbCBzdXBwb3J0cywgYW5kIHVzZXJzcGFjZSBkZXBlbmRzIG9uIHRoaXMgZmVh
dHVyZQ0KPiB3aWxsIHRoZSB0cmFuc2ZlciBhY2NvdW50aW5nIHdvcmsuIFRoZSBwb3NzaWJsZSBz
Y2VuYXJpb3MgYXJlIGRldGFpbGVkDQo+IGJlbG93Og0KPg0KPiAxLiBuZXcga2VybmVsICsgb2xk
IHVzZXJzcGFjZQ0KPiBUaGUga2VybmVsIHN1cHBvcnRzIHRoZSBmZWF0dXJlIGJ1dCB1c2Vyc3Bh
Y2UgZG9lcyBub3QgdXNlIGl0LiBUaGUgb2xkDQo+IHVzZXJzcGFjZSB3b24ndCBtb3VudCB0aGUg
bmV3IGNncm91cCBjb250cm9sbGVyLCBhY2NvdW50aW5nIGlzIG5vdA0KPiBwZXJmb3JtZWQsIGNo
YXJnZSBpcyBub3QgdHJhbnNmZXJyZWQuDQo+DQo+IDIuIG9sZCBrZXJuZWwgKyBuZXcgdXNlcnNw
YWNlDQo+IFRoZSBuZXcgY2dyb3VwIGNvbnRyb2xsZXIgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUg
a2VybmVsLCBhY2NvdW50aW5nIGlzDQo+IG5vdCBwZXJmb3JtZWQsIGNoYXJnZSBpcyBub3QgdHJh
bnNmZXJyZWQuDQo+DQo+IDMuIG9sZCBrZXJuZWwgKyBvbGQgdXNlcnNwYWNlDQo+IFNhbWUgYXMg
IzINCj4NCj4gNC4gbmV3IGtlcm5lbCArIG5ldyB1c2Vyc3BhY2UNCj4gQ2dyb3VwIGlzIG1vdW50
ZWQsIGZlYXR1cmUgaXMgc3VwcG9ydGVkIGFuZCB1c2VkLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBI
cmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVC5K
LiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0KQWNrZWQtYnk6IFRvZGQgS2pvcyA8
dGtqb3NAZ29vZ2xlLmNvbT4NCg0KPg0KPiAtLS0NCj4gdjMgY2hhbmdlcw0KPiBSZW1vdmUgYW5k
cm9pZCBmcm9tIHRpdGxlIHBlciBUb2RkIEtqb3MuDQo+DQo+IFVzZSBtb3JlIGNvbW1vbiBkdWFs
IGF1dGhvciBjb21taXQgbWVzc2FnZSBmb3JtYXQgcGVyIEpvaG4gU3R1bHR6Lg0KPg0KPiBJbmNs
dWRlIGRldGFpbHMgb24gYmVoYXZpb3IgZm9yIGFsbCBjb21iaW5hdGlvbnMgb2Yga2VybmVsL3Vz
ZXJzcGFjZQ0KPiB2ZXJzaW9ucyBpbiBjaGFuZ2Vsb2cgKHRoYW5rcyBTdXJlbiBCYWdoZGFzYXJ5
YW4pIHBlciBHcmVnIEtyb2FoLUhhcnRtYW4uDQo+DQo+IHYyIGNoYW5nZXMNCj4gTW92ZSBkbWEt
YnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieSBl
dmVyeQ0KPiBoZWFwIHRvIGEgc2luZ2xlIGRtYS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBw
ZXIgRGFuaWVsIFZldHRlciBhbmQNCj4gQ2hyaXN0aWFuIEvDtm5pZy4NCj4gLS0tDQo+ICBkcml2
ZXJzL2FuZHJvaWQvYmluZGVyLmMgICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrDQo+ICBpbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIuaCB8ICAxICsNCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9hbmRyb2lkL2JpbmRlci5jIGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQo+IGluZGV4
IDgzNTFjNTYzODg4MC4uZjUwZDg4ZGVkMTg4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2FuZHJv
aWQvYmluZGVyLmMNCj4gKysrIGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQo+IEBAIC00Miw2
ICs0Miw3IEBADQo+DQo+ICAjZGVmaW5lIHByX2ZtdChmbXQpIEtCVUlMRF9NT0ROQU1FICI6ICIg
Zm10DQo+DQo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4
L2ZkdGFibGUuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9maWxlLmg+DQo+ICAjaW5jbHVkZSA8bGlu
dXgvZnJlZXplci5oPg0KPiBAQCAtMjQ4Miw4ICsyNDgzLDEwIEBAIHN0YXRpYyBpbnQgYmluZGVy
X3RyYW5zbGF0ZV9mZF9hcnJheShzdHJ1Y3QgbGlzdF9oZWFkICpwZl9oZWFkLA0KPiAgew0KPiAg
ICAgICAgIGJpbmRlcl9zaXplX3QgZmRpLCBmZF9idWZfc2l6ZTsNCj4gICAgICAgICBiaW5kZXJf
c2l6ZV90IGZkYV9vZmZzZXQ7DQo+ICsgICAgICAgYm9vbCB0cmFuc2Zlcl9ncHVfY2hhcmdlID0g
ZmFsc2U7DQo+ICAgICAgICAgY29uc3Qgdm9pZCBfX3VzZXIgKnNlbmRlcl91ZmRhX2Jhc2U7DQo+
ICAgICAgICAgc3RydWN0IGJpbmRlcl9wcm9jICpwcm9jID0gdGhyZWFkLT5wcm9jOw0KPiArICAg
ICAgIHN0cnVjdCBiaW5kZXJfcHJvYyAqdGFyZ2V0X3Byb2MgPSB0LT50b19wcm9jOw0KPiAgICAg
ICAgIGludCByZXQ7DQo+DQo+ICAgICAgICAgZmRfYnVmX3NpemUgPSBzaXplb2YodTMyKSAqIGZk
YS0+bnVtX2ZkczsNCj4gQEAgLTI1MjEsOCArMjUyNCwxNSBAQCBzdGF0aWMgaW50IGJpbmRlcl90
cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0IGxpc3RfaGVhZCAqcGZfaGVhZCwNCj4gICAgICAgICBp
ZiAocmV0KQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4NCj4gKyAgICAgICBpZiAo
SVNfRU5BQkxFRChDT05GSUdfQ0dST1VQX0dQVSkgJiYNCj4gKyAgICAgICAgICAgICAgIHBhcmVu
dC0+ZmxhZ3MgJiBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVSX05PX05FRUQpDQo+ICsgICAgICAg
ICAgICAgICB0cmFuc2Zlcl9ncHVfY2hhcmdlID0gdHJ1ZTsNCj4gKw0KPiAgICAgICAgIGZvciAo
ZmRpID0gMDsgZmRpIDwgZmRhLT5udW1fZmRzOyBmZGkrKykgew0KPiAgICAgICAgICAgICAgICAg
dTMyIGZkOw0KPiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gKyAg
ICAgICAgICAgICAgIHN0cnVjdCBncHVjZyAqZ3B1Y2c7DQo+ICsNCj4gICAgICAgICAgICAgICAg
IGJpbmRlcl9zaXplX3Qgb2Zmc2V0ID0gZmRhX29mZnNldCArIGZkaSAqIHNpemVvZihmZCk7DQo+
ICAgICAgICAgICAgICAgICBiaW5kZXJfc2l6ZV90IHNlbmRlcl91b2Zmc2V0ID0gZmRpICogc2l6
ZW9mKGZkKTsNCj4NCj4gQEAgLTI1MzIsNiArMjU0MiwyMiBAQCBzdGF0aWMgaW50IGJpbmRlcl90
cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0IGxpc3RfaGVhZCAqcGZfaGVhZCwNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbl9yZXBseV90byk7DQo+
ICAgICAgICAgICAgICAgICBpZiAocmV0KQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gcmV0ID4gMCA/IC1FSU5WQUwgOiByZXQ7DQo+ICsNCj4gKyAgICAgICAgICAgICAgIGlmICgh
dHJhbnNmZXJfZ3B1X2NoYXJnZSkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
DQo+ICsNCj4gKyAgICAgICAgICAgICAgIGRtYWJ1ZiA9IGRtYV9idWZfZ2V0KGZkKTsNCj4gKyAg
ICAgICAgICAgICAgIGlmIChJU19FUlIoZG1hYnVmKSkNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY29udGludWU7DQo+ICsNCj4gKyAgICAgICAgICAgICAgIGdwdWNnID0gZ3B1Y2dfZ2V0KHRh
cmdldF9wcm9jLT50c2spOw0KPiArICAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl9jaGFyZ2Vf
dHJhbnNmZXIoZG1hYnVmLCBncHVjZyk7DQo+ICsgICAgICAgICAgICAgICBpZiAocmV0KSB7DQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHByX3dhcm4oIiVkOiVkIFVuYWJsZSB0byB0cmFuc2Zl
ciBETUEtQlVGIGZkIGNoYXJnZSB0byAlZCIsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcHJvYy0+cGlkLCB0aHJlYWQtPnBpZCwgdGFyZ2V0X3Byb2MtPnBpZCk7DQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGdwdWNnX3B1dChncHVjZyk7DQo+ICsgICAgICAgICAgICAgICB9
DQo+ICsgICAgICAgICAgICAgICBkbWFfYnVmX3B1dChkbWFidWYpOw0KPiAgICAgICAgIH0NCj4g
ICAgICAgICByZXR1cm4gMDsNCj4gIH0NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51
eC9hbmRyb2lkL2JpbmRlci5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgN
Cj4gaW5kZXggMzI0NmYyYzc0Njk2Li4xNjlmZDUwNjlhMWEgMTAwNjQ0DQo+IC0tLSBhL2luY2x1
ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51
eC9hbmRyb2lkL2JpbmRlci5oDQo+IEBAIC0xMzcsNiArMTM3LDcgQEAgc3RydWN0IGJpbmRlcl9i
dWZmZXJfb2JqZWN0IHsNCj4NCj4gIGVudW0gew0KPiAgICAgICAgIEJJTkRFUl9CVUZGRVJfRkxB
R19IQVNfUEFSRU5UID0gMHgwMSwNCj4gKyAgICAgICBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVS
X05PX05FRUQgPSAweDAyLA0KPiAgfTsNCj4NCj4gIC8qIHN0cnVjdCBiaW5kZXJfZmRfYXJyYXlf
b2JqZWN0IC0gb2JqZWN0IGRlc2NyaWJpbmcgYW4gYXJyYXkgb2YgZmRzIGluIGEgYnVmZmVyDQo+
IC0tDQo+IDIuMzUuMS42MTYuZzBiZGNiYjQ0NjQtZ29vZw0KPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
