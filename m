Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C1E4EBEFD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7DFB3EC45
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:40:08 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 6207A3EA2C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 15:42:08 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id a17so21101885edm.9
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 08:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nlDmFglz7whj/r0GBRKFJ24ATNTxPzzUgtpMW7485f4=;
        b=CND1Tv8y6h1wN3nXUQIKzu8LJkbk/862t1GsMuYd+VkdxovrTkb3al98dhDbupbe12
         QXuRoX6v14abx56NU7QF+9NGYzOFXPjIFilEb5iGh5vpslTno0fzKgvJfg5koKbmHz5d
         vYj7LoRwC6XkP+3DLboyZVHpk8OUGbhumdqo9fqMS2jco8PbB4d+WrP5GBaK+jgACVjc
         H3mKuCT2WW6HfHHoK5gzbP10+klCOPRsnAr11BVA7ZEnncpigY41CsoHDPS8S3Dlr0Ns
         iZHZ/WcuewTT+kVQ6KA2kKz4zO/JxPoHq3uYjMYs2gCqp960E+gWubc8R1ajqLYXIZYY
         OQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nlDmFglz7whj/r0GBRKFJ24ATNTxPzzUgtpMW7485f4=;
        b=eaqTZACTXTWu7QKg9PMbs01UdgYqUH7sCfc5Uxw3YZ7C0noQjxQXxHqmjzSUl96ZrF
         kVY0OPqADrY031bISsN3PuOarjmrdif9mCuVWuiyY59NSnIUfYYYxfPwn/KXINP0yI99
         693pueZ1mY90Oz+LcNy46cUdXNvcoE1oGnmw+kwp/S6tisL1gfXEWenzIYq4hYFjPMHk
         7y6CcVak8WryDa6qVklEcREf8XN9N0s1h64D6xA1Nk/pn0Gx/tkE5UQpFJOhbJdxB3tm
         5IsPBgr2OpLcIWvMXlSgfqqX9TDD8l6IKuqvihz0zLAxChBgFND9eQCK5cuNlugRFiWr
         FXiw==
X-Gm-Message-State: AOAM532X6Kxq5xnNAGAqg6utGTfA+Oexrl/VcvQvUDUTHkftmC6x93u4
	nzypZcSo5ERr27JcBj2JwkSJLXyQAPHdN2H932ltqw==
X-Google-Smtp-Source: ABdhPJyfaNCeAne2eFe8CfwRN/f/oVNmY2Y/pOhZZsuRaOYGVMOQUibxtTc32t6sxxUnC/B69PTQ0uqLWnTvQDvhzLc=
X-Received: by 2002:a05:6402:1e96:b0:418:ff57:ada2 with SMTP id
 f22-20020a0564021e9600b00418ff57ada2mr27039663edf.197.1647963727136; Tue, 22
 Mar 2022 08:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-2-tjmercier@google.com> <20220321173726.GA9640@blackbody.suse.cz>
In-Reply-To: <20220321173726.GA9640@blackbody.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 22 Mar 2022 08:41:55 -0700
Message-ID: <CABdmKX10jqubJr49JENaHpFnqHV88+Fb7iNZNH4T1Cy7n9y=ag@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V7MMZXOFNPQV6SUPMXMEE33HA6A65BT5
X-Message-ID-Hash: V7MMZXOFNPQV6SUPMXMEE33HA6A65BT5
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:52 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 1/8] gpu: rfc: Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V7MMZXOFNPQV6SUPMXMEE33HA6A65BT5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMTA6MzcgQU0gTWljaGFsIEtvdXRuw70gPG1rb3V0bnlA
c3VzZS5jb20+IHdyb3RlOg0KPg0KPiBIZWxsby4NCj4NCj4gT24gV2VkLCBNYXIgMDksIDIwMjIg
YXQgMDQ6NTI6MTFQTSArMDAwMCwgIlQuSi4gTWVyY2llciIgPHRqbWVyY2llckBnb29nbGUuY29t
PiB3cm90ZToNCj4gPiArVGhlIG5ldyBjZ3JvdXAgY29udHJvbGxlciB3b3VsZDoNCj4gPiArDQo+
ID4gKyogQWxsb3cgc2V0dGluZyBwZXItY2dyb3VwIGxpbWl0cyBvbiB0aGUgdG90YWwgc2l6ZSBv
ZiBidWZmZXJzIGNoYXJnZWQgdG8gaXQuDQo+DQo+IFdoYXQgaXMgdGhlIG1lYW5pbmcgb2YgdGhl
IHRvdGFsPyAoSSBvbmx5IGhhdmUgdmVyeSBuYcOvdmUNCj4gdW5kZXJzdGFuZGluZyBvZiB0aGUg
ZGV2aWNlIGJ1ZmZlcnMuKQ0KDQpTbyAidG90YWwiIGlzIHVzZWQgdHdpY2UgaGVyZSBpbiB0d28g
ZGlmZmVyZW50IGNvbnRleHRzLg0KVGhlIGZpcnN0IG9uZSBpcyB0aGUgZ2xvYmFsICJHUFUiIGNn
cm91cCBjb250ZXh0LiBBcyBpbiBhbnkgYnVmZmVyDQp0aGF0IGFueSBleHBvcnRlciBjbGFpbXMg
aXMgYSBHUFUgYnVmZmVyLCByZWdhcmRsZXNzIG9mIHdoZXJlL2hvdyBpdA0KaXMgYWxsb2NhdGVk
LiBTbyB0aGlzIHJlZmVycyB0byB0aGUgc3VtIG9mIGFsbCBncHUgYnVmZmVycyBvZiBhbnkNCnR5
cGUvc291cmNlLiBBbiBleHBvcnRlciBjb250cmlidXRlcyB0byB0aGlzIHRvdGFsIGJ5IHJlZ2lz
dGVyaW5nIGENCmNvcnJlc3BvbmRpbmcgZ3B1Y2dfZGV2aWNlIGFuZCBtYWtpbmcgY2hhcmdlcyBh
Z2FpbnN0IHRoYXQgZGV2aWNlIHdoZW4NCml0IGV4cG9ydHMuDQpUaGUgc2Vjb25kIG9uZSBpcyBp
biBhIHBlciBkZXZpY2UgY29udGV4dC4gVGhpcyBhbGxvd3MgdXMgdG8gbWFrZSBhDQpkaXN0aW5j
dGlvbiBiZXR3ZWVuIGRpZmZlcmVudCB0eXBlcyBvZiBHUFUgbWVtb3J5IGJhc2VkIG9uIHdobw0K
ZXhwb3J0ZWQgdGhlIGJ1ZmZlci4gQSBzaW5nbGUgcHJvY2VzcyBjYW4gbWFrZSB1c2Ugb2Ygc2V2
ZXJhbA0KZGlmZmVyZW50IHR5cGVzIG9mIGRtYSBidWZmZXJzIChmb3IgZXhhbXBsZSBjYWNoZWQg
YW5kIHVuY2FjaGVkDQp2ZXJzaW9ucyBvZiB0aGUgc2FtZSB0eXBlIG9mIG1lbW9yeSksIGFuZCBp
dCB3b3VsZCBiZSB1c2VmdWwgdG8gaGF2ZQ0KZGlmZmVyZW50IGxpbWl0cyBmb3IgZWFjaC4gVGhl
c2UgYXJlIGRpc3Rpbmd1aXNoZWQgYnkgdGhlIGRldmljZSBuYW1lDQpzdHJpbmcgY2hvc2VuIHdo
ZW4gdGhlIGdwdWNnX2RldmljZSBpcyBmaXJzdCByZWdpc3RlcmVkLg0KDQo+DQo+IElzIGl0IGxp
a2UgYSkgdGhlcmUncyBnbG9iYWwgcG9vbCBvZiBtZW1vcnkgdGhhdCBpcyBwYXJ0aXRpb25lZCBh
bW9uZw0KPiBpbmRpdmlkdWFsIGRldmljZXMgb3IgYikgZWFjaCBkZXZpY2UgaGFzIGl0cyBvd24g
c3BlY2lmaWMgdHlwZSBvZiBtZW1vcnkNCj4gYW5kIGFkZGluZyBhY3Jvc3MgdHdvIGRldmljZXMg
aXMgYWRkaW5nIGFwcGxlcyBhbmQgb3JhbmdlcyBvciBjKSB0aGVyZQ0KPiBjYW4gYmUgdmFyaW91
cyBkZXZpY2VzIGJvdGggb2YgYSkgYW5kIGIpIHR5cGU/DQoNClNvIEkgZ3Vlc3MgdGhlIG1vc3Qg
Y29ycmVjdCBhbnN3ZXIgdG8gdGhpcyBxdWVzdGlvbiBpcyBjLg0KDQoNCj4NCj4gKEFwb2xvZ2ll
cyBub3QgcmVwbHlpbmcgdG8gcHJldmlvdXMgdmVyc2lvbnMgYW5kIHBvc3NpYmx5IG1pc3NpbmcN
Cj4gYW55dGhpbmcuKQ0KPg0KPiBUaGFua3MsDQo+IE1pY2hhbA0KPg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
