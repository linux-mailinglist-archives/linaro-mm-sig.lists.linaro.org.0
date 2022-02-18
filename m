Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1454EABEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:06:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2B823EC1D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 11:06:33 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1A2DF3EE60
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Feb 2022 19:12:57 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id u18so17098796edt.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Feb 2022 11:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=kFx5mVaEHwZpR1G+osdopjqc+OzJyT2vvM3+pSprCFk=;
        b=EQ+kstcsfvyoiVxpZH4DOveKWuo8ZLZzYUIop0Vlthf3r2DTADG1kDnjLZlmhEiEk+
         6G1pQYgdE0Nh9wv/F/mr614cojFdmQRp2bm+wGYz7pZOcacHQguC10UzY7EM+1ffc44f
         Wm1l5TaMSkrezOOuca+rkd439a22duxj7f/9y8nVcQJWPTcyz8zTDf/7iz5H+ApzRhTQ
         NbqGdRr/U/H9RUKkTlGKY86fsffbY3C0Y3yyKrxlpGI6ol/qaBZxmLnCbHD8+AclEyv0
         7/rPTsF6rq9ujxffbMlZt2i1zvBQfzL4TUlU49jq+ZYhmHm7rxl9MwWPEqQDFslXytJ8
         Gf+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=kFx5mVaEHwZpR1G+osdopjqc+OzJyT2vvM3+pSprCFk=;
        b=w2Q0zjchG9nb0ed8z7xoDoFK/ck7BR9F44fSCqSPa0sPM1PfNUD5VzYerhPk/Y9bDK
         tNl3GgrpnrJjs9VDElQcDiQAtNd6whDZdV0dYmo4bIzQJusQiL65rwzwGfotaitOROwk
         wepefP0I6MzrP5E2dNf8zGOrMpN/phKjgCYQfQFd6iPkhh/YNeFlT7QNCt05DH1HSmXv
         OCrc/W3Nuj5y6uG7TYYhM2uP43p7eFaR2Y6yhs/pT6emdFIWpZwYb0V7On6VfEuP2gzL
         4ntpy1k9/65ZHX+82hM8fr525ubvseLdp6QmlOecx0Npa3fHlASJTmMglCWTGS+9f5Zz
         snMQ==
X-Gm-Message-State: AOAM532wtm/07lUaqTKp/ArbNiW3IBsM2yzFUxVrbaIToq5MTY91Xrqv
	nDEJZJ2O+vBFrsr2suXF/El8wTNV2d1j8tbg3zfAuA==
X-Google-Smtp-Source: ABdhPJx3RFzhIbi2OeHNvwEo2c7s9U+9friyhOB0W2+wJsBDRyonLy4N3OFnI5CX3I+UAblAArNaJNvZqMIqINE8LuU=
X-Received: by 2002:aa7:c0d0:0:b0:410:d576:8808 with SMTP id
 j16-20020aa7c0d0000000b00410d5768808mr9831902edp.340.1645211575981; Fri, 18
 Feb 2022 11:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
In-Reply-To: <20220211161831.3493782-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 18 Feb 2022 11:12:44 -0800
Message-ID: <CABdmKX3qO7UW-HGXMdZZdVi1P8FnKDh0H=TGT_ct=tHoAeVxbw@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>,
	Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SNTBGRE5LEVOGCILB4ANBTGVYJ7MHC4Z
X-Message-ID-Hash: SNTBGRE5LEVOGCILB4ANBTGVYJ7MHC4Z
X-Mailman-Approved-At: Tue, 29 Mar 2022 11:06:06 +0000
CC: Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SNTBGRE5LEVOGCILB4ANBTGVYJ7MHC4Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBGZWIgMTEsIDIwMjIgYXQgODoxOCBBTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBn
b29nbGUuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBwYXRjaCBzZXJpZXMgcmV2aXNpdHMgdGhlIHBy
b3Bvc2FsIGZvciBhIEdQVSBjZ3JvdXAgY29udHJvbGxlciB0bw0KPiB0cmFjayBhbmQgbGltaXQg
bWVtb3J5IGFsbG9jYXRpb25zIGJ5IHZhcmlvdXMgZGV2aWNlL2FsbG9jYXRvcg0KPiBzdWJzeXN0
ZW1zLiBUaGUgcGF0Y2ggc2VyaWVzIGFsc28gY29udGFpbnMgYSBzaW1wbGUgcHJvdG90eXBlIHRv
DQo+IGlsbHVzdHJhdGUgaG93IEFuZHJvaWQgaW50ZW5kcyB0byBpbXBsZW1lbnQgRE1BLUJVRiBh
bGxvY2F0b3INCj4gYXR0cmlidXRpb24gdXNpbmcgdGhlIEdQVSBjZ3JvdXAgY29udHJvbGxlci4g
VGhlIHByb3RvdHlwZSBkb2VzIG5vdA0KPiBpbmNsdWRlIHJlc291cmNlIGxpbWl0IGVuZm9yY2Vt
ZW50cy4NCj4NCj4gQ2hhbmdlbG9nOg0KPg0KPiB2MjoNCj4gU2VlIHRoZSBwcmV2aW91cyByZXZp
c2lvbiBvZiB0aGlzIGNoYW5nZSBzdWJtaXR0ZWQgYnkgSHJpZHlhIFZhbHNhcmFqdQ0KPiBhdDog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwMTE1MDEwNjIyLjMxODU5MjEtMS1ocmlk
eWFAZ29vZ2xlLmNvbS8NCj4NCj4gTW92ZSBkbWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIg
ZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBieSBldmVyeQ0KPiBoZWFwIHRvIGEgc2luZ2xlIGRt
YS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZldHRlciBhbmQNCj4gQ2hy
aXN0aWFuIEvDtm5pZy4gUG9pbnRlcnMgdG8gc3RydWN0IGdwdWNnIGFuZCBzdHJ1Y3QgZ3B1Y2df
ZGV2aWNlDQo+IHRyYWNraW5nIHRoZSBjdXJyZW50IGFzc29jaWF0aW9ucyB3ZXJlIGFkZGVkIHRv
IHRoZSBkbWFfYnVmIHN0cnVjdCB0bw0KPiBhY2hpZXZlIHRoaXMuDQo+DQo+IEZpeCBpbmNvcnJl
Y3QgS2NvbmZpZyBoZWxwIHNlY3Rpb24gaW5kZW50YXRpb24gcGVyIFJhbmR5IER1bmxhcC4NCj4N
Cj4gSGlzdG9yeSBvZiB0aGUgR1BVIGNncm91cCBjb250cm9sbGVyDQo+ID09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KPiBUaGUgR1BVL0RSTSBjZ3JvdXAgY29udHJvbGxlciBj
YW1lIGludG8gYmVpbmcgd2hlbiBhIGNvbnNlbnN1c1sxXQ0KPiB3YXMgcmVhY2hlZCB0aGF0IHRo
ZSByZXNvdXJjZXMgaXQgdHJhY2tlZCB3ZXJlIHVuc3VpdGFibGUgdG8gYmUgaW50ZWdyYXRlZA0K
PiBpbnRvIG1lbWNnLiBPcmlnaW5hbGx5LCB0aGUgcHJvcG9zZWQgY29udHJvbGxlciB3YXMgc3Bl
Y2lmaWMgdG8gdGhlIERSTQ0KPiBzdWJzeXN0ZW0gYW5kIHdhcyBpbnRlbmRlZCB0byB0cmFjayBH
RU0gYnVmZmVycyBhbmQgR1BVLXNwZWNpZmljDQo+IHJlc291cmNlc1syXS4gSW4gb3JkZXIgdG8g
aGVscCBlc3RhYmxpc2ggYSB1bmlmaWVkIG1lbW9yeSBhY2NvdW50aW5nIG1vZGVsDQo+IGZvciBh
bGwgR1BVIGFuZCBhbGwgcmVsYXRlZCBzdWJzeXN0ZW1zLCBEYW5pZWwgVmV0dGVyIHB1dCBmb3J0
aCBhDQo+IHN1Z2dlc3Rpb24gdG8gbW92ZSBpdCBvdXQgb2YgdGhlIERSTSBzdWJzeXN0ZW0gc28g
dGhhdCBpdCBjYW4gYmUgdXNlZCBieQ0KPiBvdGhlciBETUEtQlVGIGV4cG9ydGVycyBhcyB3ZWxs
WzNdLiBUaGlzIFJGQyBwcm9wb3NlcyBhbiBpbnRlcmZhY2UgdGhhdA0KPiBkb2VzIHRoZSBzYW1l
Lg0KPg0KPiBbMV06IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9kcmktZGV2
ZWwvY292ZXIvMjAxOTA1MDExNDA0MzguOTUwNi0xLWJyaWFuLndlbHR5QGludGVsLmNvbS8jMjI2
MjQ3MDUNCj4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbWQtZ2Z4LzIwMjEwMTI2MjE0
NjI2LjE2MjYwLTEtYnJpYW4ud2VsdHlAaW50ZWwuY29tLw0KPiBbM106IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FtZC1nZngvWUNWT2w4JTJGODdicVJTUWVpQHBoZW5vbS5mZndsbC5sb2NhbC8N
Cj4NCj4gVC5KLiBNZXJjaWVyICg2KToNCj4gICBncHU6IHJmYzogUHJvcG9zYWwgZm9yIGEgR1BV
IGNncm91cCBjb250cm9sbGVyDQo+ICAgY2dyb3VwOiBncHU6IEFkZCBhIGNncm91cCBjb250cm9s
bGVyIGZvciBhbGxvY2F0b3IgYXR0cmlidXRpb24gb2YgR1BVDQo+ICAgICBtZW1vcnkNCj4gICBk
bWFidWY6IFVzZSB0aGUgR1BVIGNncm91cCBjaGFyZ2UvdW5jaGFyZ2UgQVBJcw0KPiAgIGRtYWJ1
ZjogaGVhcHM6IGV4cG9ydCBzeXN0ZW1faGVhcCBidWZmZXJzIHdpdGggR1BVIGNncm91cCBjaGFy
Z2luZw0KPiAgIGRtYWJ1ZjogQWRkIGdwdSBjZ3JvdXAgY2hhcmdlIHRyYW5zZmVyIGZ1bmN0aW9u
DQo+ICAgYW5kcm9pZDogYmluZGVyOiBBZGQgYSBidWZmZXIgZmxhZyB0byByZWxpbnF1aXNoIG93
bmVyc2hpcCBvZiBmZHMNCj4NCj4gIERvY3VtZW50YXRpb24vZ3B1L3JmYy9ncHUtY2dyb3VwLnJz
dCB8IDE5NSArKysrKysrKysrKysrKysrKw0KPiAgRG9jdW1lbnRhdGlvbi9ncHUvcmZjL2luZGV4
LnJzdCAgICAgIHwgICA0ICsNCj4gIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYyAgICAgICAgICAg
ICB8ICAyNiArKysNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICB8IDEw
MCArKysrKysrKysNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgICB8ICAy
NyArKysNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jICB8ICAgMyArDQo+
ICBpbmNsdWRlL2xpbnV4L2Nncm91cF9ncHUuaCAgICAgICAgICAgfCAxMjcgKysrKysrKysrKysN
Cj4gIGluY2x1ZGUvbGludXgvY2dyb3VwX3N1YnN5cy5oICAgICAgICB8ICAgNCArDQo+ICBpbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgfCAgMjIgKy0NCj4gIGluY2x1ZGUvbGlu
dXgvZG1hLWhlYXAuaCAgICAgICAgICAgICB8ICAxMSArDQo+ICBpbmNsdWRlL3VhcGkvbGludXgv
YW5kcm9pZC9iaW5kZXIuaCAgfCAgIDEgKw0KPiAgaW5pdC9LY29uZmlnICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICA3ICsNCj4gIGtlcm5lbC9jZ3JvdXAvTWFrZWZpbGUgICAgICAgICAgICAg
ICB8ICAgMSArDQo+ICBrZXJuZWwvY2dyb3VwL2dwdS5jICAgICAgICAgICAgICAgICAgfCAzMDQg
KysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAxNCBmaWxlcyBjaGFuZ2VkLCA4MzAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2dwdS9yZmMvZ3B1LWNncm91cC5yc3QNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNs
dWRlL2xpbnV4L2Nncm91cF9ncHUuaA0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGtlcm5lbC9jZ3Jv
dXAvZ3B1LmMNCj4NCj4gLS0NCj4gMi4zNS4xLjI2NS5nNjljOGQ3MTQyZi1nb29nDQo+DQoNCkdl
bnRsZSBudWRnZSB0byBHUFUgbWFpbnRhaW5lcnMgdG8gcGxlYXNlIHByb3ZpZGUgdGhlaXIgZmVl
ZGJhY2sgb24NCnRoaXMgUkZDLiBUaGFua3MhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
