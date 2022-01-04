Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9AF48443F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jan 2022 16:08:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 589AA3ED7E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jan 2022 15:08:36 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id AB9723ED7E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jan 2022 15:08:22 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id d9so76876811wrb.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Jan 2022 07:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=W9Bh3fUgumLp+/q/W4dvepebJC6o+IFE+HMv/nLlfio=;
        b=EFPEi1FUlJs6XPlFFfpKYRwWHX4RTpssWRFTbpKn1N5Fyq3bqyz5XabLFJqNv62XfB
         0cEqyJDxfBZmXXA0FEud20NLTAI1FoF7/xfAVYTaf5owDMGZU/9NWIkxGMxcsxnoKBfl
         CfDgi/O6Aq/PXRly1pl4GWco5U5S0YfyOu4/AxagKflnFYxxsTPcwsYnP5ZPoeCRXEdY
         k7HdbEy6lRrVcoXxVotVskERr6a3NLmnG+KeSVgIFDGqj+L+1TzGsTfAtYONWPnVYOKT
         TExmhBJs4zSgcrs+GsvWxe1UgufFwfqlAVQtrCy4EJBNWnyKcYENh5hdUgx/f3fEpicj
         TIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=W9Bh3fUgumLp+/q/W4dvepebJC6o+IFE+HMv/nLlfio=;
        b=ZLORyqOoxjklcQGLDHjNUv0IK9pk4XOAZlWu8Uve1JuSer3+PZ2YwVD7zjp2mhV2mI
         yY66MM+L3v+vJB+SKEteoEc4B/8rf79WRbnKkzsJPTf84aghmrFTr72zxO4XBuiNLlFL
         Afxd1MKPKG10GKAGdkqol+bG0L+5rnisMt/yK9HZDaqj8M3En9KB49hO7Eil3W9MHsXf
         zlFlv7FNLRvBVJSDlEEKtFLqt2hV6kBWRsKDY3QNglpGVvG00DE0kjMixiQdhSqIBMgT
         36+iyk9oUsB9IN7hwmyjomrtbAc0l2sIAZhKtZFKC2V2i3nF8kdL8qMEhRhxfDa9LHIc
         Uimw==
X-Gm-Message-State: AOAM5334s5SMqNmqJcTFGrq5UPvFIgocByr13wLjGmnCfzlrx4WbV/UI
	+HEDaksu1w/ubXVVyY8Dok01aPxRCio=
X-Google-Smtp-Source: ABdhPJwSMJ+2xGsiLFU6tc5hin8MGLy37GABx1tG7xE5ec2i5KTv5TLhulFWgyy/psXnhTyX6WVnnQ==
X-Received: by 2002:adf:f945:: with SMTP id q5mr12916536wrr.115.1641308901773;
        Tue, 04 Jan 2022 07:08:21 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:6d5e:a071:be8b:acf5? ([2a02:908:1252:fb60:6d5e:a071:be8b:acf5])
        by smtp.gmail.com with ESMTPSA id g5sm42662265wrd.100.2022.01.04.07.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jan 2022 07:08:21 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-14-christian.koenig@amd.com>
 <YcOcASxfAApIpbrf@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <d1fe9e3b-3d58-2aa8-36ae-9052192a2f0d@gmail.com>
Date: Tue, 4 Jan 2022 16:08:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YcOcASxfAApIpbrf@phenom.ffwll.local>
Content-Language: en-US
Message-ID-Hash: 5KUSMZ4ZL72FOUF5ZCEEKGMUSQJPHRE3
X-Message-ID-Hash: 5KUSMZ4ZL72FOUF5ZCEEKGMUSQJPHRE3
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/24] dma-buf: drop the DAG approach for the dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KUSMZ4ZL72FOUF5ZCEEKGMUSQJPHRE3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMTIuMjEgdW0gMjI6NDMgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIERl
YyAwNywgMjAyMSBhdCAwMTozNDowMFBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gU28gZmFyIHdlIGhhZCB0aGUgYXBwcm9hY2ggb2YgdXNpbmcgYSBkaXJlY3RlZCBhY3ljbGlj
DQo+PiBncmFwaCB3aXRoIHRoZSBkbWFfcmVzdiBvYmouDQo+Pg0KPj4gVGhpcyB0dXJuZWQgb3V0
IHRvIGhhdmUgbWFueSBkb3duc2lkZXMsIGVzcGVjaWFsbHkgaXQgbWVhbnMNCj4+IHRoYXQgZXZl
cnkgc2luZ2xlIGRyaXZlciBhbmQgdXNlciBvZiB0aGlzIGludGVyZmFjZSBuZWVkcw0KPj4gdG8g
YmUgYXdhcmUgb2YgdGhpcyByZXN0cmljdGlvbiB3aGVuIGFkZGluZyBmZW5jZXMuIElmIHRoZQ0K
Pj4gcnVsZXMgZm9yIHRoZSBEQUcgYXJlIG5vdCBmb2xsb3dlZCB0aGVuIHdlIGVuZCB1cCB3aXRo
DQo+PiBwb3RlbnRpYWwgaGFyZCB0byBkZWJ1ZyBtZW1vcnkgY29ycnVwdGlvbiwgaW5mb3JtYXRp
b24NCj4+IGxlYWtzIG9yIGV2ZW4gZWxlcGhhbnQgYmlnIHNlY3VyaXR5IGhvbGVzIGJlY2F1c2Ug
d2UgYWxsb3cNCj4+IHVzZXJzcGFjZSB0byBhY2Nlc3MgZnJlZWQgdXAgbWVtb3J5Lg0KPj4NCj4+
IFNpbmNlIHdlIGFscmVhZHkgdG9vayBhIHN0ZXAgYmFjayBmcm9tIHRoYXQgYnkgYWx3YXlzDQo+
PiBsb29raW5nIGF0IGFsbCBmZW5jZXMgd2Ugbm93IGdvIGEgc3RlcCBmdXJ0aGVyIGFuZCBzdG9w
DQo+PiBkcm9wcGluZyB0aGUgc2hhcmVkIGZlbmNlcyB3aGVuIGEgbmV3IGV4Y2x1c2l2ZSBvbmUg
aXMNCj4+IGFkZGVkLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYyB8IDEzIC0tLS0tLS0tLS0tLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGRlbGV0
aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+PiBpbmRleCA5YWNjZWFiYzkzOTkuLmVjYjJm
ZjYwNmJhYyAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+PiAr
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KPiBObyBkb2MgdXBkYXRlIGF0IGFsbCEN
Cg0KU2NyYXRjaGluZyBteSBoZWFkIEknbSBwcmV0dHkgc3VyZSBJJ3ZlIHVwZGF0ZWQgYXQgbGVh
c3QgdGhlIGtlcm5lbGRvYyANCmZvciBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgpLiBNdXN0IGhh
dmUgZ29uZSBsb3N0IGluIHNvbWUgcmViYXNlLg0KDQo+DQo+IEkgY2hlY2tlZCwgd2UncmUgbm90
IHRoYXQgc2hpdHR5IHdpdGggZG9jcywNCg0KV2VsbCBJIHdvdWxkbid0IHNheSBzaGl0dHksIGJ1
dCB0aGV5IGFyZSBub3QgcGVyZmVjdCBlaXRoZXIuDQoNCj4gICBNaW5pbWFsbHkgdGhlIERPQzog
c2VjdGlvbg0KPiBoZWFkZXIgYW5kIGFsc28gdGhlIHN0cnVjdCBkbWFfcmVzdiBrZXJuZWxkb2Mu
IEFsc28gdGhlcmUncyBtYXliZSBtb3JlDQo+IHJlZmVyZW5jZXMgYW5kIHN0dWZmIEkndmUgbWlz
c2VkIG9uIGEgcXVpY2sgbG9vaywgcGxlYXNlIGNoZWNrIGZvciB0aGVtDQo+IChlLmcuIGRtYV9i
dWYucmVzdiBrZXJuZWxkb2MgaXMgcmF0aGVyIGltcG9ydGFudCB0byBrZWVwIGNvcnJlY3QgdG9v
KS4NCj4NCj4gQ29kZSBpdHNlbGYgZG9lcyB3aGF0IGl0IHNheXMgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlLCBidXQgd2UgcmVhbGx5IG5lZWQNCj4gdGhlIG1vc3QgYWNjdXJhdGUgZG9jcyB3ZSBjYW4g
Z2V0IGZvciB0aGlzIHN0dWZmLCBvciB0aGUgY29uZnVzaW9uIHdpbGwNCj4gcGVyc2lzdCA6LS8N
Cg0KWWVhaCBjb21wbGV0ZWx5IGFncmVlLCBnb2luZyB0byBmaXggdGhhdC4NCg0KVGhhbmtzLA0K
Q2hyaXN0aWFuLg0KDQo+DQo+IENoZWVycywgRGFuaWVsDQo+DQo+PiBAQCAtMzgzLDI5ICszODMs
MTYgQEAgRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9yZXBsYWNlX2ZlbmNlcyk7DQo+PiAgIHZvaWQg
ZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKQ0KPj4gICB7DQo+PiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGRfZmVuY2Ug
PSBkbWFfcmVzdl9leGNsX2ZlbmNlKG9iaik7DQo+PiAtCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpv
bGQ7DQo+PiAtCXUzMiBpID0gMDsNCj4+ICAgDQo+PiAgIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChv
YmopOw0KPj4gICANCj4+IC0Jb2xkID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqKTsNCj4+IC0J
aWYgKG9sZCkNCj4+IC0JCWkgPSBvbGQtPnNoYXJlZF9jb3VudDsNCj4+IC0NCj4+ICAgCWRtYV9m
ZW5jZV9nZXQoZmVuY2UpOw0KPj4gICANCj4+ICAgCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZvYmot
PnNlcSk7DQo+PiAgIAkvKiB3cml0ZV9zZXFjb3VudF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNz
YXJ5IG1lbW9yeSBiYXJyaWVyICovDQo+PiAgIAlSQ1VfSU5JVF9QT0lOVEVSKG9iai0+ZmVuY2Vf
ZXhjbCwgZmVuY2UpOw0KPj4gLQlpZiAob2xkKQ0KPj4gLQkJb2xkLT5zaGFyZWRfY291bnQgPSAw
Ow0KPj4gICAJd3JpdGVfc2VxY291bnRfZW5kKCZvYmotPnNlcSk7DQo+PiAgIA0KPj4gLQkvKiBp
bnBsYWNlIHVwZGF0ZSwgbm8gc2hhcmVkIGZlbmNlcyAqLw0KPj4gLQl3aGlsZSAoaS0tKQ0KPj4g
LQkJZG1hX2ZlbmNlX3B1dChyY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKG9sZC0+c2hhcmVkW2ld
LA0KPj4gLQkJCQkJCWRtYV9yZXN2X2hlbGQob2JqKSkpOw0KPj4gLQ0KPj4gICAJZG1hX2ZlbmNl
X3B1dChvbGRfZmVuY2UpOw0KPj4gICB9DQo+PiAgIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfYWRk
X2V4Y2xfZmVuY2UpOw0KPj4gLS0gDQo+PiAyLjI1LjENCj4+DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
