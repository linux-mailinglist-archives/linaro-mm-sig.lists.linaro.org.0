Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 696484EBF02
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FA7A3EC44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:40:18 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 662C13EA22
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 16:48:12 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id g20so22394099edw.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 09:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AGjZE0nexYYIrgZGc1/sQ9ebvM2IDXrU/8dxpFIfC6Q=;
        b=no3QyBMN97jJJhzD7cqUG00A6e2MB7KJHQvzy4ZBrorfKhZnY4KLpmH2ijl3hqJAEq
         w38SA1GGvBFZG7tP/8djpuj0BUbYdHZD9uy+WcRz+GY1qJugW+aRKiIkcr9+/i+/yCpl
         oDvJjvDBQlBi/23CI8I3sggW1bURzFDHhLeDItamtogT9SNEeMCBJHoKiJqhx70tbNX1
         Ju5tti5nJ1ezrJNTsClfOUV4Il9mdQ1cxiJnaMVkNSqyhptqkuN9M3Rj6KebwW+655E+
         EwOjKo25LrOTYBbCto5RaMfNuEZ99/RUyctw5hM2x3wHWiu5Zwfr1NE2y290i/E2Ow60
         0gfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AGjZE0nexYYIrgZGc1/sQ9ebvM2IDXrU/8dxpFIfC6Q=;
        b=wO4OopnxeKh7jbhgjuve7i+H8iXR7Krkkhd8uaJEudkBge03/xpnNsMoPO4gfiHTQo
         Qo9UiiwNOENqnSyAdhwMCxcU5WoZFkVQQpZCYR92JIHJ5GggcdW6WXB1XdkKY3Ae7QYF
         TbAkTJFU+HAxtcEzkeykHpPVKx1ceg34TxSMkRv1yOwEEA8GQH5a53khRE/6nuPKqQx9
         3LfItLn4XQiYOzld+xCA0kWNk/t2xrPOu+iXj0fGs7uFrmGIO6daIaZU6CLRKY99VLPK
         3+ah9dQ46NiSMBv6f+40YkOuSWA2R9rJAbwN275IqlrLmsMucZtl8r1egO1juxgXOwlt
         U/MA==
X-Gm-Message-State: AOAM53376hwtow4mIjV7bOjCh31nvbM41nP1bI9cHQ2Klh7THsgnuTUG
	9ygLlzGZDQh20TSZXyPpL6UBdTUtiCXrevGJrOEcOQ==
X-Google-Smtp-Source: ABdhPJwZRYX6C1CGVh68tu7TSeAiEpJ8wx/fcfVLk5Q+CMQBUqipxTaYyzGYpgmBcf1ERpmMdJvRS+InEGnYxa4P70w=
X-Received: by 2002:a50:fe81:0:b0:419:16a5:d265 with SMTP id
 d1-20020a50fe81000000b0041916a5d265mr21254515edt.4.1647967691267; Tue, 22 Mar
 2022 09:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220322095223.GG8477@blackbody.suse.cz>
In-Reply-To: <20220322095223.GG8477@blackbody.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 22 Mar 2022 09:47:59 -0700
Message-ID: <CABdmKX2hZChBO09xfhqB7EbH6RY9JdmDp7zh23DaGuwidn=v4w@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HQPQXNGFLAXTNTY7P3V5PJJBZCUJVLSG
X-Message-ID-Hash: HQPQXNGFLAXTNTY7P3V5PJJBZCUJVLSG
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:58 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, "Subject: Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function Reply-To: In-Reply-To:" <CABdmKX3+mTjxWzgrv44SKWT7mdGnQKMrv6c26d=iWdNPG7f1VQ@mail.gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HQPQXNGFLAXTNTY7P3V5PJJBZCUJVLSG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMjo1MiBBTSBNaWNoYWwgS291dG7DvSA8bWtvdXRueUBz
dXNlLmNvbT4gd3JvdGU6DQo+DQo+IE9uIE1vbiwgTWFyIDIxLCAyMDIyIGF0IDA0OjU0OjI2UE0g
LTA3MDAsICJULkouIE1lcmNpZXIiDQo+IDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+
ID4gU2luY2UgdGhlIGNoYXJnZSBpcyBkdXBsaWNhdGVkIGluIHR3byBjZ3JvdXBzIGZvciBhIHNo
b3J0IHBlcmlvZA0KPiA+IGJlZm9yZSBpdCBpcyB1bmNoYXJnZWQgZnJvbSB0aGUgc291cmNlIGNn
cm91cCBJIGd1ZXNzIHRoZSBzaXR1YXRpb24NCj4gPiB5b3UncmUgdGhpbmtpbmcgYWJvdXQgaXMg
YSBnbG9iYWwgKG9yIGNvbW1vbiBhbmNlc3RvcikgbGltaXQ/DQo+DQo+IFRoZSBjb21tb24gYW5j
ZXN0b3Igd2FzIG9uIG15IG1pbmQgKGFmdGVyIHRoZSBzZWxmLXNob3J0Y3V0KS4NCj4NCj4gPiBJ
IGNhbiBzZWUgaG93IHRoYXQgd291bGQgYmUgYSBwcm9ibGVtIGZvciB0cmFuc2ZlcnMgZG9uZSB0
aGlzIHdheSBhbmQNCj4gPiBhbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBzd2FwIHRoZSBvcmRl
ciBvZiB0aGUgY2hhcmdlIG9wZXJhdGlvbnM6DQo+ID4gZmlyc3QgdW5jaGFyZ2UsIHRoZW4gdHJ5
X2NoYXJnZS4gVG8gYmUgY2VydGFpbiB0aGUgdW5jaGFyZ2UgaXMNCj4gPiByZXZlcnNpYmxlIGlm
IHRoZSB0cnlfY2hhcmdlIGZhaWxzLCBJIHRoaW5rIEknZCBuZWVkIGVpdGhlciBhIG11dGV4DQo+
ID4gdXNlZCBhdCBhbGwgZ3B1Y2dfKmNoYXJnZSBjYWxsIHNpdGVzIG9yIGFjY2VzcyB0byB0aGUg
Z3B1Y2dfbXV0ZXgsDQo+DQo+IFllcywgdGhhdCdkIHByb3ZpZGUgc2FmZSBjb25kaXRpb25zIGZv
ciBzdWNoIG9wZXJhdGlvbnMsIGFsdGhvdWdoIEknbQ0KPiBub3Qgc3VyZSB0aGVzZSBzcGVjaWFs
IHR5cGVzIG9mIG1lbW9yeSBjYW4gYWZmb3JkIGdsb2JhbCBsb2NrIG9uIHRoZWlyDQo+IGZhc3Qg
cGF0aHMuDQoNCkkgaGF2ZSBhIGJlbmNobWFyayBJIHRoaW5rIGlzIHN1aXRhYmxlLCBzbyBsZXQg
bWUgdHJ5IHRoaXMgY2hhbmdlIHRvDQp0aGUgdHJhbnNmZXIgaW1wbGVtZW50YXRpb24gYW5kIHNl
ZSBob3cgaXQgY29tcGFyZXMuDQoNCj4NCj4gPiB3aGljaCBpbXBsaWVzIGFkZGluZyB0cmFuc2Zl
ciBzdXBwb3J0IHRvIGdwdS5jIGFzIHBhcnQgb2YgdGhlIGdwdWNnXyoNCj4gPiBBUEkgaXRzZWxm
IGFuZCBjYWxsaW5nIGl0IGhlcmUuIEFtIEkgZm9sbG93aW5nIGNvcnJlY3RseSBoZXJlPw0KPg0K
PiBNeSBpZGVhIHdhcyB0byBwcm92aWRlIGEgc3BlY2lhbCBBUEkgKGFwYXJ0IGZyb20NCj4gZ3B1
Y3Bfe3RyeV9jaGFyZ2UsdW5jaGFyZ2V9KSB0byBmYWNpbGl0YXRlIHRyYW5zZmVycy4uLg0KPg0K
PiA+IFRoaXMgc2VyaWVzIGRvZXNuJ3QgYWN0dWFsbHkgYWRkIGxpbWl0IHN1cHBvcnQganVzdCBh
Y2NvdW50aW5nLCBidXQNCj4gPiBJJ2QgbGlrZSB0byBnZXQgaXQgcmlnaHQgaGVyZS4NCj4NCj4g
Li4ud2hpY2ggY291bGQgYmUgaW1wbGVtZW50ZWQgKG9yIGNoYW5nZWQpIGRlcGVuZGluZyBvbiBo
b3cgdGhlIGNoYXJnaW5nDQo+IGlzIHJlYWxpemVkIGludGVybmFsbHkuDQo+DQo+DQo+IE1pY2hh
bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
