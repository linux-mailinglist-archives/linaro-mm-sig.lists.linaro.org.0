Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E62A74EBFDD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:35:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D0CB3EC2C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 11:35:23 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 510D93EEBC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 23:37:20 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id h1so3715266edj.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Mar 2022 16:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lYs3d+G/MqnkVL5mPK5nuhjYbBx01naVFSe4Xk42kfM=;
        b=lKb4AaK6N9O62KVZSBFpoXMFMKi2DX++d0hcldo7VKltrYvP1ZV+I9dYXZlx13MpxC
         U6xbiC42KS2p1EnoJU/ZpUu2VFNzNn/B5ByWL9Zt/vr5XdA+yDneUYBZIcau3mhQ0muv
         V4ah+EZCicq3OsyPu2g/e6akuJDlkHFQFQdx2jnBGU1XDVC3q67LkJ1lTpu2QD3b10Gm
         //++HMvqfQRnNJ7DQNGYM/1Pf8y6AjoqHMxScOBz3cW/cZXBbkCYsHBTNfYHMC39INi5
         cHWn+JRXaDWTnRSK6VSSXCSqWAo9ASLt+74RRIvM/eLnYs1Iz3CUqvYDSdMrTd/CQ+rq
         7Uww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lYs3d+G/MqnkVL5mPK5nuhjYbBx01naVFSe4Xk42kfM=;
        b=ZgV+RjnlOuf9P0A3N6DUzKX8fO0n+H2f1xZOXLtRuJ/WOSKU7LMAzH4xkWGVx12msa
         sdlwrykP023CIvmyzE+YC/hb3TARwwW4fVTsudqW0w6Ko6yTunBFsw3RqNoSJjy9nm0k
         RJHDK+oTgJbZkRZWQvoyxU1dJlevkwMCOTqu0YJOGppCv6ZpOFX3RchUFUDDpKNJ0Sct
         smOc4PZzYu/PnQeVelV4LSzfdiq7oqWODPDG1nnWqzy9+Suq4TSU376evVKcROrGvIsK
         IfMRlRdqyXTyMsNwho9d2+6sWZi/FqONyupIfvQcZfb1mJffo8cZjolhYEyYmhMcM0Cd
         +IcQ==
X-Gm-Message-State: AOAM5303Y95ju+FY0h2z9yzd5pcwCqx91dbUl5IYSxqV+m0MoZaGVcE7
	WfihP2Cm0r+RO0mKrjxXffvk/SiHhA3qzj7ry0QK4A==
X-Google-Smtp-Source: ABdhPJwADoSTh9axrzXODWW9/zmv/BOuIsIRoK4uginvkl+fxm/Pmh4atOmF02EcDNdhjJn90v29djoFR8TlCQGU8F0=
X-Received: by 2002:a50:9b4f:0:b0:419:49af:429c with SMTP id
 a15-20020a509b4f000000b0041949af429cmr3390112edj.276.1648078639171; Wed, 23
 Mar 2022 16:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220322095223.GG8477@blackbody.suse.cz> <CABdmKX2hZChBO09xfhqB7EbH6RY9JdmDp7zh23DaGuwidn=v4w@mail.gmail.com>
In-Reply-To: <CABdmKX2hZChBO09xfhqB7EbH6RY9JdmDp7zh23DaGuwidn=v4w@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 23 Mar 2022 16:37:08 -0700
Message-ID: <CABdmKX3Un=k3yU1BuCnEEoZkOqMovVrjcg=GiqDEtLZD_awX3g@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C33AYSSCDTZVNRGHWCGAJ6LKE7MG3GOV
X-Message-ID-Hash: C33AYSSCDTZVNRGHWCGAJ6LKE7MG3GOV
X-Mailman-Approved-At: Wed, 30 Mar 2022 11:35:20 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, "Subject: Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function Reply-To: In-Reply-To:" <CABdmKX3+mTjxWzgrv44SKWT7mdGnQKMrv6c26d=iWdNPG7f1VQ@mail.gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C33AYSSCDTZVNRGHWCGAJ6LKE7MG3GOV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgOTo0NyBBTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMjo1MiBBTSBN
aWNoYWwgS291dG7DvSA8bWtvdXRueUBzdXNlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBNb24s
IE1hciAyMSwgMjAyMiBhdCAwNDo1NDoyNlBNIC0wNzAwLCAiVC5KLiBNZXJjaWVyIg0KPiA+IDx0
am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiBTaW5jZSB0aGUgY2hhcmdlIGlzIGR1
cGxpY2F0ZWQgaW4gdHdvIGNncm91cHMgZm9yIGEgc2hvcnQgcGVyaW9kDQo+ID4gPiBiZWZvcmUg
aXQgaXMgdW5jaGFyZ2VkIGZyb20gdGhlIHNvdXJjZSBjZ3JvdXAgSSBndWVzcyB0aGUgc2l0dWF0
aW9uDQo+ID4gPiB5b3UncmUgdGhpbmtpbmcgYWJvdXQgaXMgYSBnbG9iYWwgKG9yIGNvbW1vbiBh
bmNlc3RvcikgbGltaXQ/DQo+ID4NCj4gPiBUaGUgY29tbW9uIGFuY2VzdG9yIHdhcyBvbiBteSBt
aW5kIChhZnRlciB0aGUgc2VsZi1zaG9ydGN1dCkuDQo+ID4NCj4gPiA+IEkgY2FuIHNlZSBob3cg
dGhhdCB3b3VsZCBiZSBhIHByb2JsZW0gZm9yIHRyYW5zZmVycyBkb25lIHRoaXMgd2F5IGFuZA0K
PiA+ID4gYW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gc3dhcCB0aGUgb3JkZXIgb2YgdGhlIGNo
YXJnZSBvcGVyYXRpb25zOg0KPiA+ID4gZmlyc3QgdW5jaGFyZ2UsIHRoZW4gdHJ5X2NoYXJnZS4g
VG8gYmUgY2VydGFpbiB0aGUgdW5jaGFyZ2UgaXMNCj4gPiA+IHJldmVyc2libGUgaWYgdGhlIHRy
eV9jaGFyZ2UgZmFpbHMsIEkgdGhpbmsgSSdkIG5lZWQgZWl0aGVyIGEgbXV0ZXgNCj4gPiA+IHVz
ZWQgYXQgYWxsIGdwdWNnXypjaGFyZ2UgY2FsbCBzaXRlcyBvciBhY2Nlc3MgdG8gdGhlIGdwdWNn
X211dGV4LA0KPiA+DQo+ID4gWWVzLCB0aGF0J2QgcHJvdmlkZSBzYWZlIGNvbmRpdGlvbnMgZm9y
IHN1Y2ggb3BlcmF0aW9ucywgYWx0aG91Z2ggSSdtDQo+ID4gbm90IHN1cmUgdGhlc2Ugc3BlY2lh
bCB0eXBlcyBvZiBtZW1vcnkgY2FuIGFmZm9yZCBnbG9iYWwgbG9jayBvbiB0aGVpcg0KPiA+IGZh
c3QgcGF0aHMuDQo+DQo+IEkgaGF2ZSBhIGJlbmNobWFyayBJIHRoaW5rIGlzIHN1aXRhYmxlLCBz
byBsZXQgbWUgdHJ5IHRoaXMgY2hhbmdlIHRvDQo+IHRoZSB0cmFuc2ZlciBpbXBsZW1lbnRhdGlv
biBhbmQgc2VlIGhvdyBpdCBjb21wYXJlcy4NCg0KSSBhZGRlZCBhIG11dGV4IHRvIHN0cnVjdCBn
cHVjZyB3aGljaCBpcyBsb2NrZWQgd2hlbiBjaGFyZ2luZyB0aGUNCmNncm91cCBpbml0aWFsbHkg
ZHVyaW5nIGFsbG9jYXRpb24sIGFuZCBhbHNvIG9ubHkgZm9yIHRoZSBzb3VyY2UNCmNncm91cCBk
dXJpbmcgZG1hX2J1Zl9jaGFyZ2VfdHJhbnNmZXIuIFRoZW4gSSB1c2VkIGEgbXVsdGl0aHJlYWRl
ZA0KYmVuY2htYXJrIHdoZXJlIGVhY2ggdGhyZWFkIGFsbG9jYXRlcyA0LCA4LCAxNiwgb3IgMzIg
RE1BIGJ1ZmZlcnMgYW5kDQp0aGVuIHNlbmRzIHRoZW0gdGhyb3VnaCBCaW5kZXIgdG8gYW5vdGhl
ciBwcm9jZXNzIHdpdGggY2hhcmdlIHRyYW5zZmVyDQplbmFibGVkLiBUaGlzIHdhcyBpbnRlbmRl
ZCB0byBnZW5lcmF0ZSBjb250ZW50aW9uIGZvciB0aGUgbXV0ZXggaW4NCmRtYV9idWZfY2hhcmdl
X3RyYW5zZmVyLiBUaGUgcmVzdWx0cyBvZiB0aGlzIGJlbmNobWFyayBzaG93IHRoYXQgdGhlDQpk
aWZmZXJlbmNlIGJldHdlZW4gYSBtdXRleCBwcm90ZWN0ZWQgY2hhcmdlIHRyYW5zZmVyIGFuZCBh
bg0KdW5wcm90ZWN0ZWQgY2hhcmdlIHRyYW5zZmVyIGlzIHdpdGhpbiBtZWFzdXJlbWVudCBub2lz
ZS4gVGhlIHdvcnN0DQpkYXRhIHBvaW50IHNob3dzIGFib3V0IDMlIG92ZXJoZWFyZCBmb3IgdGhl
IG11dGV4Lg0KDQpTbyBJJ2xsIHByZXAgdGhpcyBjaGFuZ2UgZm9yIHRoZSBuZXh0IHJldmlzaW9u
LiBUaGFua3MgZm9yIHBvaW50aW5nIGl0IG91dC4NCj4NCj4gPg0KPiA+ID4gd2hpY2ggaW1wbGll
cyBhZGRpbmcgdHJhbnNmZXIgc3VwcG9ydCB0byBncHUuYyBhcyBwYXJ0IG9mIHRoZSBncHVjZ18q
DQo+ID4gPiBBUEkgaXRzZWxmIGFuZCBjYWxsaW5nIGl0IGhlcmUuIEFtIEkgZm9sbG93aW5nIGNv
cnJlY3RseSBoZXJlPw0KPiA+DQo+ID4gTXkgaWRlYSB3YXMgdG8gcHJvdmlkZSBhIHNwZWNpYWwg
QVBJIChhcGFydCBmcm9tDQo+ID4gZ3B1Y3Bfe3RyeV9jaGFyZ2UsdW5jaGFyZ2V9KSB0byBmYWNp
bGl0YXRlIHRyYW5zZmVycy4uLg0KPiA+DQo+ID4gPiBUaGlzIHNlcmllcyBkb2Vzbid0IGFjdHVh
bGx5IGFkZCBsaW1pdCBzdXBwb3J0IGp1c3QgYWNjb3VudGluZywgYnV0DQo+ID4gPiBJJ2QgbGlr
ZSB0byBnZXQgaXQgcmlnaHQgaGVyZS4NCj4gPg0KPiA+IC4uLndoaWNoIGNvdWxkIGJlIGltcGxl
bWVudGVkIChvciBjaGFuZ2VkKSBkZXBlbmRpbmcgb24gaG93IHRoZSBjaGFyZ2luZw0KPiA+IGlz
IHJlYWxpemVkIGludGVybmFsbHkuDQo+ID4NCj4gPg0KPiA+IE1pY2hhbA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
