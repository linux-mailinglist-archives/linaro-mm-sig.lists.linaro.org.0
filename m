Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0575B4EBEF9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:39:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35A073EC3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:39:57 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 128B13EF90
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 23:54:39 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id pv16so33052987ejb.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 16:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qiaO27WzdyEkhPCgtVcKJYNpZr9WKp2+zwnsf/1VvSc=;
        b=Ri8yuR7/Vfc3fPL9gQLx7nlC2w5WarFCPritcrnsHpSsxuLwI5G3Voo8JeXcgyszLb
         +2uoYc1aMEeZckMfuvJ2tS1RQ4sV4x2bEw3/t6bZI8mymUrBIyCvE8fdVOZNpVekttmd
         gL3/aF9rUmS8p0UDTQfskhyx+I2egHowIc+sQ/N03tFWDWkkas9yz9J6z6/pRbfJotOJ
         Hya7yMo0Sw59opqFkSYTZhc7F9NiPgJ8uwx1p8C0nJ00wLf8jKvLHqjCFphRAZgfpYi+
         VVSQCs5iHmIrTMa+g/VlfDJHcUV27McnejGmfZoaaKiH2IvdAJP5kg+Lda21FYCK3UME
         MrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qiaO27WzdyEkhPCgtVcKJYNpZr9WKp2+zwnsf/1VvSc=;
        b=oqI36oyylX4H//8DnIM5H4epDo8sRnNIGBJMJrFLSO5VpP6kmY+D63Rq5v4sx5y9F/
         W8AU1MROeetuCzyfypGvWknIl33bqQl4uxY8QAmUe48bPajSv5JmfZrDdx7zc39cc6vT
         v1LvYzgLa2VmwOoCm7806PemmiFyweEyYKaoogErPHOkXw9ndkBuup5qs6w1zVoF7jzU
         2i81sWGhWWU7F8GQLBZ5TplLWmiGYK8TUgJqPYbofgyn9U05ZNNZKVK5b7TkafWF7JGh
         UpjV48acmvD9irMkoKfKESVowlT43Fp+LLBtgTsd1+Mk5+hQGu3mOkw7/0d26g/XW3Pz
         QtVg==
X-Gm-Message-State: AOAM531AkY60l1fOp1MGzq57rYgIB/s0YcOaRxGbdhyFGjlM2wCu06b9
	YE9VHnPpG0BZ/PblNeOdQqi5TreZYxP1VbbHOe68Yg==
X-Google-Smtp-Source: ABdhPJwljarBa64DW7LUA/1wDxvFxLHgPtNYizJ4BJSCb3j/73bGTaegZtVwv4hXKy5Ey64Opp4zZ4UPfFj0Fl96E/A=
X-Received: by 2002:a17:907:3eaa:b0:6df:b058:96a with SMTP id
 hs42-20020a1709073eaa00b006dfb058096amr18101556ejc.368.1647906877844; Mon, 21
 Mar 2022 16:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-6-tjmercier@google.com> <20220321174530.GB9640@blackbody.suse.cz>
In-Reply-To: <20220321174530.GB9640@blackbody.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 21 Mar 2022 16:54:26 -0700
Message-ID: <CABdmKX3+mTjxWzgrv44SKWT7mdGnQKMrv6c26d=iWdNPG7f1VQ@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JZQRRL7ZGBCUEZ6WGHUS6KWKEKBGZ6FH
X-Message-ID-Hash: JZQRRL7ZGBCUEZ6WGHUS6KWKEKBGZ6FH
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:47 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Ken
 ny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JZQRRL7ZGBCUEZ6WGHUS6KWKEKBGZ6FH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMjEsIDIwMjIgYXQgMTA6NDUgQU0gTWljaGFsIEtvdXRuw70gPG1rb3V0bnlA
c3VzZS5jb20+IHdyb3RlOg0KPg0KPiBIZWxsby4NCj4NCj4gT24gV2VkLCBNYXIgMDksIDIwMjIg
YXQgMDQ6NTI6MTVQTSArMDAwMCwgIlQuSi4gTWVyY2llciIgPHRqbWVyY2llckBnb29nbGUuY29t
PiB3cm90ZToNCj4gPiAraW50IGRtYV9idWZfY2hhcmdlX3RyYW5zZmVyKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBncHVjZyAqZ3B1Y2cpDQo+ID4gK3sNCj4gPiArI2lmZGVmIENPTkZJ
R19DR1JPVVBfR1BVDQo+ID4gKyAgICAgc3RydWN0IGdwdWNnICpjdXJyZW50X2dwdWNnOw0KPiA+
ICsgICAgIGludCByZXQgPSAwOw0KPiA+ICsNCj4gPiArICAgICAvKg0KPiA+ICsgICAgICAqIFZl
cmlmeSB0aGF0IHRoZSBjZ3JvdXAgb2YgdGhlIHByb2Nlc3MgcmVxdWVzdGluZyB0aGUgdHJhbnNm
ZXIgaXMgdGhlDQo+ID4gKyAgICAgICogc2FtZSBhcyB0aGUgb25lIHRoZSBidWZmZXIgaXMgY3Vy
cmVudGx5IGNoYXJnZWQgdG8uDQo+ID4gKyAgICAgICovDQo+ID4gKyAgICAgY3VycmVudF9ncHVj
ZyA9IGdwdWNnX2dldChjdXJyZW50KTsNCj4gPiArICAgICBtdXRleF9sb2NrKCZkbWFidWYtPmxv
Y2spOw0KPiA+ICsgICAgIGlmIChjdXJyZW50X2dwdWNnICE9IGRtYWJ1Zi0+Z3B1Y2cpIHsNCj4g
PiArICAgICAgICAgICAgIHJldCA9IC1FUEVSTTsNCj4gPiArICAgICAgICAgICAgIGdvdG8gZXJy
Ow0KPiA+ICsgICAgIH0NCj4NCj4gQWRkIGEgc2hvcnRjdXQgZm9yIGdwdWNnID09IGN1cnJlbnRf
Z3B1Y2c/DQoNCkdvb2QgaWRlYSwgdGhhbmsgeW91IQ0KDQo+DQo+ID4gKw0KPiA+ICsgICAgIHJl
dCA9IGdwdWNnX3RyeV9jaGFyZ2UoZ3B1Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2LCBkbWFidWYtPnNp
emUpOw0KPiA+ICsgICAgIGlmIChyZXQpDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycjsNCj4g
PiArDQo+ID4gKyAgICAgZG1hYnVmLT5ncHVjZyA9IGdwdWNnOw0KPiA+ICsNCj4gPiArICAgICAv
KiB1bmNoYXJnZSB0aGUgYnVmZmVyIGZyb20gdGhlIGNncm91cCBpdCdzIGN1cnJlbnRseSBjaGFy
Z2VkIHRvLiAqLw0KPiA+ICsgICAgIGdwdWNnX3VuY2hhcmdlKGN1cnJlbnRfZ3B1Y2csIGRtYWJ1
Zi0+Z3B1Y2dfZGV2LCBkbWFidWYtPnNpemUpOw0KPg0KPiBJIHRoaW5rIGdwdWNnXyogQVBJIHdv
dWxkIG5lZWQgdG8gY2F0ZXIgZm9yIHN1Y2ggdHJhbnNmZXJzIHRvbyBzaW5jZQ0KPiBwb3NzaWJs
eSB0cmFuc2l0aW9uYWwgYnJlYWNoIG9mIGEgbGltaXQgZHVyaW5nIHRoZSB0cmFuc2ZlciBtYXkN
Cj4gdW5uZWNlc3NhcmlseSBmYWlsIHRoZSBvcGVyYXRpb24uDQoNClNpbmNlIHRoZSBjaGFyZ2Ug
aXMgZHVwbGljYXRlZCBpbiB0d28gY2dyb3VwcyBmb3IgYSBzaG9ydCBwZXJpb2QNCmJlZm9yZSBp
dCBpcyB1bmNoYXJnZWQgZnJvbSB0aGUgc291cmNlIGNncm91cCBJIGd1ZXNzIHRoZSBzaXR1YXRp
b24NCnlvdSdyZSB0aGlua2luZyBhYm91dCBpcyBhIGdsb2JhbCAob3IgY29tbW9uIGFuY2VzdG9y
KSBsaW1pdD8gSSBjYW4NCnNlZSBob3cgdGhhdCB3b3VsZCBiZSBhIHByb2JsZW0gZm9yIHRyYW5z
ZmVycyBkb25lIHRoaXMgd2F5IGFuZCBhbg0KYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gc3dhcCB0
aGUgb3JkZXIgb2YgdGhlIGNoYXJnZSBvcGVyYXRpb25zOiBmaXJzdA0KdW5jaGFyZ2UsIHRoZW4g
dHJ5X2NoYXJnZS4gVG8gYmUgY2VydGFpbiB0aGUgdW5jaGFyZ2UgaXMgcmV2ZXJzaWJsZSBpZg0K
dGhlIHRyeV9jaGFyZ2UgZmFpbHMsIEkgdGhpbmsgSSdkIG5lZWQgZWl0aGVyIGEgbXV0ZXggdXNl
ZCBhdCBhbGwNCmdwdWNnXypjaGFyZ2UgY2FsbCBzaXRlcyBvciBhY2Nlc3MgdG8gdGhlIGdwdWNn
X211dGV4LCB3aGljaCBpbXBsaWVzDQphZGRpbmcgdHJhbnNmZXIgc3VwcG9ydCB0byBncHUuYyBh
cyBwYXJ0IG9mIHRoZSBncHVjZ18qIEFQSSBpdHNlbGYgYW5kDQpjYWxsaW5nIGl0IGhlcmUuIEFt
IEkgZm9sbG93aW5nIGNvcnJlY3RseSBoZXJlPw0KDQpUaGlzIHNlcmllcyBkb2Vzbid0IGFjdHVh
bGx5IGFkZCBsaW1pdCBzdXBwb3J0IGp1c3QgYWNjb3VudGluZywgYnV0DQpJJ2QgbGlrZSB0byBn
ZXQgaXQgcmlnaHQgaGVyZS4NCg0KPg0KPiBNeSAwLjAy4oKsLA0KPiBNaWNoYWwNCg0KVGhhbmtz
IQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
