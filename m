Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5AE50A5F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:38:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8914247FC2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:38:40 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 4BE793EC43
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Apr 2022 17:49:11 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id g20so15806699edw.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Apr 2022 10:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=RXCW1evSnb4oJ88sHTAFEYTq0HTuOW2ocRpwnA3InQ4=;
        b=DFediYf4lKdcEGd6wHnf3P2A1rH9d97LcubT3QP6yRNY6vUA82uDkOevPceh0sN/Wl
         AzNDVgFuK6V76WaqpSYAiG2hRF9Re4Ov3xlC/Ms7hpW9uCTQ7y898MEv8Ijbqhc6SxXo
         QvfpY4jywVuV6j8Ii/P3vkQXreEU44Hlqin6E5RTxZAap0ziUpyUXuD83coag22gB7nJ
         kP94eXAsBC1cr7hK8pVNGZaStSW21SliZd84A/wTh+8QK9KZdm23HHaRa8zC2IVlp4fq
         sk905jrtMt/I2FOoTaeCu/ArrkOR8UVb6SsiWhRhquLKZ90pI6vt79FBY7MRBMWLMUZ2
         L8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=RXCW1evSnb4oJ88sHTAFEYTq0HTuOW2ocRpwnA3InQ4=;
        b=hyxlvcEKUGhDruhHSUxCC5GiZwoiR99rSIlPSnMUFisCs3mbCtSDZ74dmMf+cHvKaJ
         TRNSR+NDHtEgO0SkWFT28rJoFG3BoRZZNc0vaHL0bmdeoB5iTKx+V4WJnbCa4bPL3XaR
         dQaeuHEKGs4OqvrEGhdRO5yJU+uBor3g2L9RJmRJMFLw/EjV5z5EOY/W0hE97GG0wPFs
         SMAajPQZqGrL6i/0h/uHV11mNJMS20CR+ezFlLZpx6jgQbRAc2mM/XP6b98mcqAjiKOI
         tGxo6ZQy4J12i5oHiq5lC/itwhMqR8MELXvyRPcpT0HYUYM7arTznoZIqUuAEAvojIZy
         2JTA==
X-Gm-Message-State: AOAM533jeKAhSJQumseN3v0f+1YlnYy9o1OV8Hp6fOcqYQr2Ey1xiKCM
	avmIttuFbNW36HMuAtiUnbIew7NFjg2AhhBi1gRCaw==
X-Google-Smtp-Source: ABdhPJy3kLISS/qYYRzMDmjCuhPu7OU3AJeQfL+t2mEx7NkNwMYgXC85KD1rOoe+vR5iNyCwy95ZqCXnaDcme/ng0CI=
X-Received: by 2002:aa7:d98f:0:b0:41c:bf0f:4c45 with SMTP id
 u15-20020aa7d98f000000b0041cbf0f4c45mr4818393eds.379.1649180950052; Tue, 05
 Apr 2022 10:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-6-tjmercier@google.com> <20220329152142.GA15794@blackbody.suse.cz>
 <CABdmKX2874NdYCBzpKLnqWhZQDkC2wKz4ZL_aFNqrec6iAutpQ@mail.gmail.com> <20220405121245.GA30368@blackbody.suse.cz>
In-Reply-To: <20220405121245.GA30368@blackbody.suse.cz>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 Apr 2022 10:48:58 -0700
Message-ID: <CABdmKX0aF5zXozbb7npcEq3PgaeDE=gaGLf+jYY4oRKW9N+46g@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IFPQPYH5Y4QRDAW55K3FF5MQIXS3P4Q4
X-Message-ID-Hash: IFPQPYH5Y4QRDAW55K3FF5MQIXS3P4Q4
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:38:35 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Ka
 lesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, Shuah Khan <skhan@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IFPQPYH5Y4QRDAW55K3FF5MQIXS3P4Q4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgNSwgMjAyMiBhdCA1OjEyIEFNIE1pY2hhbCBLb3V0bsO9IDxta291dG55QHN1
c2UuY29tPiB3cm90ZToNCj4NCj4gT24gRnJpLCBBcHIgMDEsIDIwMjIgYXQgMTE6NDE6MzZBTSAt
MDcwMCwgIlQuSi4gTWVyY2llciIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPiBU
aGlzIGxpbmsgZG9lc24ndCB3b3JrIGZvciBtZSwgYnV0IEkgdGhpbmsgeW91J3JlIHJlZmVycmlu
ZyB0byB0aGUNCj4gPiBkaXNjdXNzaW9uIGFib3V0IHlvdXIgIlJBTV9iYWNrZWRfYnVmZmVycyIg
Y29tbWVudCBmcm9tIE1hcmNoIDIzcmQuDQo+DQo+IChPb3BzLCBpdCdzIGEgbm9uLXB1YmxpYyBt
ZXNzYWdlLiBCdXQgeWVzLCB5b3UgZ3Vlc3NlZCBpdCByaWdodCA7LSkpDQo+DQo+ID4gQW55d2F5
IHRoZSB0ZXN0IEkgZGlkIGdvZXMgbGlrZSB0aGlzOiBlbmFibGUgbWVtY2cgYW5kIGdwdSBjZ291
cHMNCj4gPiB0cmFja2luZyBhbmQgcnVuIGEgcHJvY2VzcyB0aGF0IGFsbG9jYXRlcyAxMDBNaUIg
b2YgZG1hYnVmcy4gT2JzZXJ2ZQ0KPiA+IG1lbWNnIGFuZCBncHUgYWNjb3VudGluZyB2YWx1ZXMg
YmVmb3JlIGFuZCBhZnRlciB0aGUgYWxsb2NhdGlvbi4NCj4NCj4gVGhhbmtzIGZvciB0aGlzIG1l
YXN1cmVtZW50L2RlbS9kZW1vby4NCj4NCj4gPiBCZWZvcmUNCj4gPiAjIGNhdCBtZW1vcnkuY3Vy
cmVudCBncHUubWVtb3J5LmN1cnJlbnQNCj4gPiAxNDkwOTQ0MA0KPiA+IHN5c3RlbSAwDQo+ID4N
Cj4gPiA8VGVzdCBwcm9ncmFtIGRvZXMgdGhlIGFsbG9jYXRpb24gb2YgMTAwTWlCIG9mIGRtYWJ1
ZnM+DQo+ID4NCj4gPiBBZnRlcg0KPiA+ICMgY2F0IG1lbW9yeS5jdXJyZW50IGdwdS5tZW1vcnku
Y3VycmVudA0KPiA+IDQ4MDI1NjAwDQo+ID4gc3lzdGVtIDEwNDg1NzYwMA0KPiA+DQo+ID4gU28g
dGhlIG1lbWNnIHZhbHVlIGluY3JlYXNlcyBieSBhYm91dCAzMCBNaUIgd2hpbGUgdGhlIGdwdSB2
YWx1ZXMNCj4gPiBpbmNyZWFzZXMgYnkgMTAwIE1pQi4NCj4NCj4gPiBUaGlzIGlzIHdpdGgga21l
bSBlbmFibGVkLCBhbmQgdGhlIC9wcm9jL21hcHMNCj4gPiBmaWxlIGZvciB0aGlzIHByb2Nlc3Mg
aW5kaWNhdGVzIHRoYXQgdGhlIG1ham9yaXR5IG9mIHRoYXQgMzAgTWlCIGlzDQo+ID4ga2VybmVs
IG1lbW9yeS4NCj4NCj4gPiBJIHRoaW5rIHRoaXMgcmVzdWx0IHNob3dzIHRoYXQgbmVpdGhlciB0
aGUga2VybmVsIG5vciBwcm9jZXNzIG1lbW9yeQ0KPiA+IG92ZXJsYXAgd2l0aCB0aGUgZ3B1IGNn
cm91cCB0cmFja2luZyBvZiB0aGVzZSBhbGxvY2F0aW9ucy4NCj4NCj4gSXQgZGVwZW5kcyBob3cg
dGhlIHNlbWFudGljcyBvZiB0aGUgJ3N5c3RlbScgZW50cnkgaXMgZGVmaW5lZCwgbm8/DQo+IEFz
IEkgZ3Jhc3BlZCBmcm9tIG90aGVyIHRocmVhZCwgdGhlICd0b3RhbCcgaXMgZ29pbmcgdG8gYmUg
cmVtb3ZlZCwgc28NCj4gJ3N5c3RlbScgcmVwcmVzZW50cyBleGNsdXNpdmVseSBkZXZpY2UgbWVt
b3J5Pw0KPg0KVGhhdCdzIHJpZ2h0LiBUaGUgc3lzdGVtIGNoYXJnZXMgKHNvb24gdG8gYmUgcmVu
YW1lZCAic3lzdGVtLWhlYXAiKQ0KcmVzdWx0IG9ubHkgZnJvbSBhbiBhbGxvY2F0b3IgKGluIHRo
aXMgY2FzZSB0aGUgc3lzdGVtIGhlYXApIGRlY2lkaW5nDQp0byBjYWxsIGdwdWNnX3RyeV9jaGFy
Z2UgZm9yIHRoZSBidWZmZXIgd2hpY2ggaXMgZW50aXJlbHkgZGV2aWNlDQptZW1vcnkuDQo+DQo+
ID4gU28gZGVzcGl0ZSB0aGUgZmFjdCB0aGF0IHRoZXNlIGJ1ZmZlcnMgYXJlIGluIG1haW4gbWVt
b3J5LCB0aGV5IGFyZQ0KPiA+IGFsbG9jYXRlZCBpbiBhIHdheSB0aGF0IGRvZXMgbm90IHJlc3Vs
dCBpbiBtZW1jZyBhdHRyaWJ1dGlvbi4gKEl0DQo+ID4gbG9va3MgdG8gbWUgbGlrZSBfX0dGUF9B
Q0NPVU5UIGlzIG5vdCBzZXQgZm9yIHRoZXNlLikNCj4NCj4gKEkgdGhvdWdodCB5b3Uga25ldyB3
aGF0IGRtYWJ1ZnMgeW91ciBwcm9ncmFtIHVzZWQgOi1wKQ0KPg0KSSdtIGNvbWluZyB1cCB0byBz
cGVlZCBvbiBhIGxvdCBvZiBuZXctdG8tbWUgY29kZSBoZXJlLiA6KQ0KSnVzdCBmb3IgY29tcGxl
dGVuZXNzLCB0aGVzZSBidWZmZXJzIHdlcmUgYWxsb2NhdGVkIHdpdGgNCmxpYmRtYWJ1ZmhlYXAn
cyBBbGxvY1N5c3RlbS4NCg0KPiBTbywgdGhlIGdvYWwgaXMgdG8gZG8gdGhlIHRyYWNraW5nIGFu
ZCBtaWdyYXRpb25zIG9ubHkgdmlhIHRoZSBncHUgY2cNCj4gbGF5ZXIsIHJlZ2FyZGxlc3MgaG93
IG1lbWNnIGNoYXJnZXMgaXQgKG9yIG5vdCkuDQo+DQo+IChJIGhhdmUgbm8gb3BpbmlvbiBvbiB0
aGF0LCBJJ20ganVzdCBzdW1taW5nIGl0IHNvIHRoYXQgd2UncmUgb24gdGhlDQo+IHNhbWUgcGFn
ZS4pDQo+DQpZZXMsIHRoaXMgcmVmbGVjdHMgbXkgaW50ZW50aW9uIGFuZCBjdXJyZW50IHN0YXRl
IG9mIHRoZSBjb2RlIGluIHRoaXMgc2VyaWVzLg0KDQo+IE1pY2hhbA0KDQpUaGFua3MsDQpULkou
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
