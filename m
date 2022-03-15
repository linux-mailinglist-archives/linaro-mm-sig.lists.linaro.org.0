Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6989E4EAEB9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 15:48:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F7B63EC1C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:48:41 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id 9A38B3ED8A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Mar 2022 00:11:39 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id bt26so30135012lfb.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Mar 2022 17:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wKU4ZRqHh+/7R0KNuwH0gJELjq2wS0wK12KdzbWieg8=;
        b=pdvGf9PQdPL+jc2z0MSpu+kjnnZ0nHo4cryyXO4GFzrOWzzVTepjpBoNHTaE5+75bw
         d4VQEWt7imtT/TZ1UoujoFiquSI+9E7m+ThkkWoyWi+NQdu+QjPDRjH5KIfNJ/ZJCqHe
         wjyXN2uVrnZm+UyCFSacS1mv7NDERQ6PhQESj4QO2FkimAccprmrU6pc52zKBsITFDja
         gC5Oaweu+0IukaAZaELGkgb/0HwzwXkztXvDRCSedoxtmzVa5na/Iqy+oufxaPnjMp//
         X2NpOHkJ2Xep3wu3lyieE5LytahX0zC0ab4HUWMmTOWR6NF6gC0IihKhyOGQSkwmUu/9
         EmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wKU4ZRqHh+/7R0KNuwH0gJELjq2wS0wK12KdzbWieg8=;
        b=QsOdhRzUNsX6cyZHS+uvj2jueijx1uYlwUkpD5qWIcvxcx5yUkRB7Wdpeyyas5UJBq
         frb+EnpgPJiIqagiCevuG/LI9bD13pbIsewInKy+rOM1r8RgW6g81mgyyZsRR0mpLLWn
         VNIXbdrhvrkU4wqiQ3qqjDzJJJH8RIr7QIM2LFlRob/RfZ7uV2foAwX6kHAFHVxbY4+C
         VbVZYz4cwpl1WBXEmqUEtrkcNu0v1Ty8QX+zAauMuAcTqPOUr3LyBQ710bMe8wkBhqV0
         elE0SYbS0RunN9RzCquLSF0Agy5NX9dREbD7KBbJ9/ljNTgYyJ/LCtBGCDIPfp8bWqC7
         d1Mg==
X-Gm-Message-State: AOAM533OYw7DUUmfTejV1l9CpldBaRN3U7n+8USSfrZItL6Wc81K6nJT
	JgwBm+/8wEbEO48jRaHp5dNLaXP4q5LAIg/jmg9qWg==
X-Google-Smtp-Source: ABdhPJxPtvXRGpRay/asNi1i55O48lEOmE5yWTDcG4DlXbCoDcVr3r6f/V+w4+w607DlldBSh6to9lYM41nQDiqqXho=
X-Received: by 2002:ac2:5fe3:0:b0:448:5ba2:445f with SMTP id
 s3-20020ac25fe3000000b004485ba2445fmr15394525lfg.682.1647303098171; Mon, 14
 Mar 2022 17:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-8-tjmercier@google.com> <CAHRSSEy5_h9LJB4q5_OJA7fSq=ROo68UaK+hdPz-Vj-wac1Qhg@mail.gmail.com>
 <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com>
In-Reply-To: <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 14 Mar 2022 17:11:25 -0700
Message-ID: <CAHRSSEx0ggFW5JqvQKJLzOLsSK4A4gERM62aXNU6XVkJn8QK7Q@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-MailFrom: tkjos@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EYOPRY2WIW4P34676P7GHBSWFZ2CPZMN
X-Message-ID-Hash: EYOPRY2WIW4P34676P7GHBSWFZ2CPZMN
X-Mailman-Approved-At: Tue, 29 Mar 2022 13:48:23 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EYOPRY2WIW4P34676P7GHBSWFZ2CPZMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMTQsIDIwMjIgYXQgNDo0NSBQTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gT24gVGh1LCBNYXIgMTAsIDIwMjIgYXQgMTE6MzMgQU0g
VG9kZCBLam9zIDx0a2pvc0Bnb29nbGUuY29tPiB3cm90ZToNCj4gPg0KPiA+IE9uIFdlZCwgTWFy
IDksIDIwMjIgYXQgODo1MiBBTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3
cm90ZToNCj4gPiA+DQo+ID4gPiBUaGUga2VybmVsIGludGVyZmFjZSBzaG91bGQgdXNlIHR5cGVz
IHRoYXQgdGhlIGtlcm5lbCBkZWZpbmVzIGluc3RlYWQgb2YNCj4gPiA+IHBpZF90IGFuZCB1aWRf
dCwgd2hvc2UgZGVmaW5pdG9uIGlzIG93bmVkIGJ5IGxpYmMuIFRoaXMgZml4ZXMgdGhlIGhlYWRl
cg0KPiA+ID4gc28gdGhhdCBpdCBjYW4gYmUgaW5jbHVkZWQgd2l0aG91dCBmaXJzdCBpbmNsdWRp
bmcgc3lzL3R5cGVzLmguDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVy
IDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGluY2x1ZGUvdWFwaS9s
aW51eC9hbmRyb2lkL2JpbmRlci5oIHwgNCArKy0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmggYi9pbmNsdWRlL3VhcGkvbGludXgv
YW5kcm9pZC9iaW5kZXIuaA0KPiA+ID4gaW5kZXggMTY5ZmQ1MDY5YTFhLi5hYTI4NDU0ZGJjYTMg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIuaA0K
PiA+ID4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCj4gPiA+IEBA
IC0yODksOCArMjg5LDggQEAgc3RydWN0IGJpbmRlcl90cmFuc2FjdGlvbl9kYXRhIHsNCj4gPiA+
DQo+ID4gPiAgICAgICAgIC8qIEdlbmVyYWwgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHRyYW5zYWN0
aW9uLiAqLw0KPiA+ID4gICAgICAgICBfX3UzMiAgICAgICAgICAgZmxhZ3M7DQo+ID4gPiAtICAg
ICAgIHBpZF90ICAgICAgICAgICBzZW5kZXJfcGlkOw0KPiA+ID4gLSAgICAgICB1aWRfdCAgICAg
ICAgICAgc2VuZGVyX2V1aWQ7DQo+ID4gPiArICAgICAgIF9fa2VybmVsX3BpZF90ICBzZW5kZXJf
cGlkOw0KPiA+ID4gKyAgICAgICBfX2tlcm5lbF91aWRfdCAgc2VuZGVyX2V1aWQ7DQo+ID4NCj4g
PiBBcmUgd2UgZ3VhcmFudGVlZCB0aGF0IHRoaXMgZG9lcyBub3QgYWZmZWN0IHRoZSBVQVBJIGF0
IGFsbD8gVXNlcnNwYWNlDQo+ID4gY29kZSB1c2luZyB0aGlzIGRlZmluaXRpb24gd2lsbCBoYXZl
IHRvIHJ1biB3aXRoIGtlcm5lbHMgdXNpbmcgdGhlIG9sZA0KPiA+IGRlZmluaXRpb24gYW5kIHZp
c2EtdmVyc2EuDQo+DQo+IEEgc3RhbmRhcmRzIGNvbXBsaWFudCB1c2Vyc3BhY2Ugc2hvdWxkIGJl
IGV4cGVjdGluZyBhIHNpZ25lZCBpbnRlZ2VyDQo+IHR5cGUgaGVyZS4gU28gdGhlIG9ubHkgd2F5
IEkgY2FuIHRoaW5rIHVzZXJzcGFjZSB3b3VsZCBiZSBhZmZlY3RlZCBpcw0KPiBpZjoNCj4gMSkg
cGlkX3QgaXMgYSBsb25nIEFORA0KPiAyKSBzaXplb2YobG9uZykgPiBzaXplb2YoaW50KSBBTkQN
Cj4gMykgQ29uc3VtZXJzIG9mIHRoZSBwaWRfdCBkZWZpbml0aW9uIGFjdHVhbGx5IGF0dGVtcHQg
dG8gbXV0YXRlIHRoZQ0KPiByZXN1bHQgdG8gbWFrZSB1c2Ugb2YgZXh0cmEgYml0cyBpbiB0aGUg
dmFyaWFibGUgKHdoaWNoIGFyZSBub3QgdGhlcmUpDQo+DQo+IFRoaXMgc2VlbXMgZXh0cmVtZWx5
IHVubGlrZWx5LiBGb3IgaW5zdGFuY2UganVzdCBvbiB0aGUgdG9waWMgb2YgdGhlDQo+IGZpcnN0
IGl0ZW0sIGFsbCBvZiB0aGUgQyBsaWJyYXJ5IGltcGxlbWVudGF0aW9ucyB3aXRoIHBpZF90DQo+
IGRlZmluaXRpb25zIGxpbmtlZCBoZXJlIHVzZSBhbiBpbnQsIGV4Y2VwdCBmb3IgQmlvbmljIHdo
aWNoIHR5cGRlZnMNCj4gcGlkX3QgdG8gX19rZXJuZWxfcGlkX3QgYW5kIFNvcnRpeCB3aGljaCB1
c2VzIGxvbmcuDQo+IGh0dHBzOi8vd2lraS5vc2Rldi5vcmcvQ19MaWJyYXJ5DQo+DQo+IEhvd2V2
ZXIgSSB3b3VsZCBhcmd1ZSB0aGlzIGlzIGFscmVhZHkgYnJva2VuIGFuZCBzaG91bGQgY291bnQg
YXMgYSBidWcNCj4gZml4IHNpbmNlIEkgY2FuJ3QgZG8gdGhpczoNCj4NCj4gJCBjYXQgYmluZGVy
X2luY2x1ZGUuYyA7IGdjYyBiaW5kZXJfaW5jbHVkZS5jDQo+ICNpbmNsdWRlIDxsaW51eC9hbmRy
b2lkL2JpbmRlci5oPg0KPiBpbnQgbWFpbigpIHt9DQo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBi
aW5kZXJfaW5jbHVkZS5jOjE6DQo+IC91c3IvaW5jbHVkZS9saW51eC9hbmRyb2lkL2JpbmRlci5o
OjI5MTo5OiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYcGlkX3TigJkNCj4gICAyOTEgfCAg
ICAgICAgIHBpZF90ICAgICAgICAgICBzZW5kZXJfcGlkOw0KPiAgICAgICB8ICAgICAgICAgXn5+
fn4NCj4gL3Vzci9pbmNsdWRlL2xpbnV4L2FuZHJvaWQvYmluZGVyLmg6MjkyOjk6IGVycm9yOiB1
bmtub3duIHR5cGUgbmFtZSDigJh1aWRfdOKAmQ0KPiAgIDI5MiB8ICAgICAgICAgdWlkX3QgICAg
ICAgICAgIHNlbmRlcl9ldWlkOw0KPiAgICAgICB8ICAgICAgICAgXn5+fn4NCj4NCj4gVGhpcyBp
cyBhbHNvIHRoZSBvbmx5IG9jY3VycmVuY2Ugb2YgcGlkX3QgaW4gYWxsIG9mDQo+IGluY2x1ZGUv
dWFwaS9saW51eC4gQWxsIDQwKyBvdGhlciB1c2VzIGFyZSBfX2tlcm5lbF9waWRfdCwgYW5kIEkg
ZG9uJ3QNCj4gc2VlIHdoeSB0aGUgYmluZGVyIGhlYWRlciBzaG91bGQgYmUgZGlmZmVyZW50Lg0K
DQpJdCBsb29rcyBsaWtlIHRob3NlIG90aGVyIGNhc2VzIHVzZWQgdG8gYmUgcGlkX3QsIGJ1dCB3
ZXJlIGNoYW5nZWQgdG8NCl9fa2VybmVsX3BpZF90Lg0KDQpBY2tlZC1ieTogVG9kZCBLam9zIDx0
a2pvc0Bnb29nbGUuY29tPg0KDQo+DQo+DQo+ID4NCj4gPiA+ICAgICAgICAgYmluZGVyX3NpemVf
dCAgIGRhdGFfc2l6ZTsgICAgICAvKiBudW1iZXIgb2YgYnl0ZXMgb2YgZGF0YSAqLw0KPiA+ID4g
ICAgICAgICBiaW5kZXJfc2l6ZV90ICAgb2Zmc2V0c19zaXplOyAgIC8qIG51bWJlciBvZiBieXRl
cyBvZiBvZmZzZXRzICovDQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IDIuMzUuMS42MTYuZzBiZGNi
YjQ0NjQtZ29vZw0KPiA+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
