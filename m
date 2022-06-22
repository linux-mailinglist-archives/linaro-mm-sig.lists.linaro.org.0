Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 313375544C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jun 2022 11:05:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 046DD3F48B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jun 2022 09:05:30 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by lists.linaro.org (Postfix) with ESMTPS id 096813EC29
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 09:05:26 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id e40so10393997eda.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 02:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tDbYyeBEwGX8YAg3QUDWRyeGWxjD+ob964twAa4kWvc=;
        b=T6Q7g41xrVHPb5/EXilFpXnlYnOVv3yYpEH50JccewrUSviM3mUvqSgrfQec6jzuqT
         QmQdgEHQoQtM3w3cRWuR8gHZuyMVz1xG9IQ1DZXBbpE3NnJfGw6KQRe+9ykOFhRswK6M
         WbtxG+U8RSROCzFeDazB2Mk4clWtOONEjq9ibBGxWUlMd+cuhKKXMSyCX2OITLa1ijML
         PQMi7TwwJUSH+y8kAkMuSEplLoNrc9nGSJv5FvEGair385YnjpNarug0s1vlujT1imSJ
         Ei83AzV++scBxJeAngyCdhPMSARVu7b2t58ECG5jso144HxibALj490wuFwQkU+XwL7T
         AbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tDbYyeBEwGX8YAg3QUDWRyeGWxjD+ob964twAa4kWvc=;
        b=1Xti5fhmicQLaGveRuneqX6sCJwE8XXL4yvy1/oam17jGaO3oUZadB7nEhbXPq8qY5
         Jn7gsSrab7ETKtfCG5XtZVDWWKeT9IHF6IUl2lF18PCrluCj5TDHZrP7Pxp6YuYRPk5L
         lOtXbg8YFpH/OKKIGjcjNHGq6NeJ4rvF8gXjCP5D2jxwtCAUQLzeh2Kkx49OGFZAh4Pg
         9r3U2iT25+iZsC8+wWMO4zbCA6lzWcWaScTTlSJqFb4SwLKbIUe9VX0dmWjUSgVwHoDF
         oel9yLsAmVvR1MTrE5sWx5j4j2UTNnql4BxCs3fVIkcfU7nPdIGj3Vzg/k2rgtqDzrq5
         /DCQ==
X-Gm-Message-State: AJIora8LKTf/jg243utCjSqZBCBg2aFGpXNjhkbWK0+YXet2tgwLigto
	xtr9fEBO+ipnrMXpmqF17Yg=
X-Google-Smtp-Source: AGRyM1sGjrBd+ZyLKbv9JrMmQVEw2WQSCnULGkU8C+b5nzWE2vH4+sK2Wwrmw/CVvFKBmg3vAZpouA==
X-Received: by 2002:a05:6402:350f:b0:42f:68f9:ae5 with SMTP id b15-20020a056402350f00b0042f68f90ae5mr2954373edd.36.1655888725078;
        Wed, 22 Jun 2022 02:05:25 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:8f77:c83:6a3d:ee86? ([2a02:908:1256:79a0:8f77:c83:6a3d:ee86])
        by smtp.gmail.com with ESMTPSA id c19-20020aa7c753000000b004357063bf60sm9952412eds.41.2022.06.22.02.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 02:05:24 -0700 (PDT)
Message-ID: <82500226-3ac5-c62c-ac5b-363ee184dbbc@gmail.com>
Date: Wed, 22 Jun 2022 11:05:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Andy.Hsieh" <andy.hsieh@mediatek.com>,
 linux-media <linux-media@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 lkml <linux-kernel@vger.kernel.org>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <cdb508e49eb1439f4e4c327d2a6738f219e04bf8.camel@ndufresne.ca>
 <5822b325-766e-ce3c-50eb-d7f54f14fd0b@mediatek.com>
 <39f7f41a-af8d-4700-37da-9401455afb98@amd.com>
 <2aabc41c8432d09b7ceeb8e67144a639d3d86c72.camel@ndufresne.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <2aabc41c8432d09b7ceeb8e67144a639d3d86c72.camel@ndufresne.ca>
Message-ID-Hash: ZPIQQ7YM7JAWAMKXDOT4UPIZQAE7ILCE
X-Message-ID-Hash: ZPIQQ7YM7JAWAMKXDOT4UPIZQAE7ILCE
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, "Sharma, Shashank" <Shashank.Sharma@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZPIQQ7YM7JAWAMKXDOT4UPIZQAE7ILCE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjEuMDYuMjIgdW0gMTc6NDIgc2NocmllYiBOaWNvbGFzIER1ZnJlc25lOg0KPiBIaSBDaHJp
c3RpYW4gYW5kIEFuZHksDQo+DQo+IExlIG1hcmRpIDIxIGp1aW4gMjAyMiDDoCAxMjozNCArMDIw
MCwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPj4gIMKgSGkgQW5keSwNCj4+ICAgDQo+
PiAgwqBBbSAyMS4wNi4yMiB1bSAxMjoxNyBzY2hyaWViIEFuZHkuSHNpZWg6DQo+PiAgIA0KPj4+
IE9uIDIvMTYvMjEgNDozOSBBTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToNCj4+Pj4gTGUgbHVu
ZGkgMTUgZsOpdnJpZXIgMjAyMSDDoCAwOTo1OCArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOp
Y3JpdMKgOg0KPj4+Pj4gSGkgZ3V5cywNCj4+Pj4+DQo+Pj4+PiB3ZSBhcmUgY3VycmVudGx5IHdv
cmtpbmcgYW4gRnJlZXN5bmMgYW5kIGRpcmVjdCBzY2FuIG91dCBmcm9tIHN5c3RlbQ0KPj4+Pj4g
bWVtb3J5IG9uIEFNRCBBUFVzIGluIEErQSBsYXB0b3BzLg0KPj4+Pj4NCj4+Pj4+IE9uIHByb2Js
ZW0gd2Ugc3R1bWJsZWQgb3ZlciBpcyB0aGF0IG91ciBkaXNwbGF5IGhhcmR3YXJlIG5lZWRzIHRv
IHNjYW4NCj4+Pj4+IG91dCBmcm9tIHVuY2FjaGVkIHN5c3RlbSBtZW1vcnkgYW5kIHdlIGN1cnJl
bnRseSBkb24ndCBoYXZlIGEgd2F5IHRvDQo+Pj4+PiBjb21tdW5pY2F0ZSB0aGF0IHRocm91Z2gg
RE1BLWJ1Zi4NCj4+Pj4+DQo+Pj4+PiBGb3Igb3VyIHNwZWNpZmljIHVzZSBjYXNlIGF0IGhhbmQg
d2UgYXJlIGdvaW5nIHRvIGltcGxlbWVudCBzb21ldGhpbmcNCj4+Pj4+IGRyaXZlciBzcGVjaWZp
YywgYnV0IHRoZSBxdWVzdGlvbiBpcyBzaG91bGQgd2UgaGF2ZSBzb21ldGhpbmcgbW9yZQ0KPj4+
Pj4gZ2VuZXJpYyBmb3IgdGhpcz8NCj4+Pj4gSG9wZWZ1bGx5IEknbSBnZXR0aW5nIHRoaXMgcmln
aHQsIGJ1dCB0aGlzIG1ha2VzIG1lIHRoaW5rIG9mIGEgbG9uZw0KPj4+PiBzdGFuZGluZw0KPj4+
PiBpc3N1ZSBJJ3ZlIG1ldCB3aXRoIEludGVsIERSTSBhbmQgVVZDIGRyaXZlci4gSWYgSSBsZXQg
dGhlIFVWQyBkcml2ZXINCj4+Pj4gYWxsb2NhdGUNCj4+Pj4gdGhlIGJ1ZmZlciwgYW5kIGltcG9y
dCB0aGUgcmVzdWx0aW5nIERNQUJ1ZiAoY2FjaGVhYmxlIG1lbW9yeSB3cml0dGVuIHdpdGgNCj4+
Pj4gYSBjcHUNCj4+Pj4gY29weSBpbiB0aGUga2VybmVsKSBpbnRvIERSTSwgd2UgY2FuIHNlZSBj
YWNoZSBhcnRpZmFjdCBiZWluZyBkaXNwbGF5ZWQuDQo+Pj4+IFdoaWxlDQo+Pj4+IGlmIEkgdXNl
IHRoZSBEUk0gZHJpdmVyIG1lbW9yeSAoZHVtYiBidWZmZXIgaW4gdGhhdCBjYXNlKSBpdCdzIGNs
ZWFuDQo+Pj4+IGJlY2F1c2UNCj4+Pj4gdGhlcmUgaXMgYSBkcml2ZXIgc3BlY2lmaWMgc29sdXRp
b24gdG8gdGhhdC4NCj4+Pj4NCj4+Pj4gVGhlcmUgaXMgbm8gb2J2aW91cyB3YXkgZm9yIHVzZXJz
cGFjZSBhcHBsaWNhdGlvbiB0byBrbm93IHdoYXQncyBpcw0KPj4+PiByaWdodC93cm9uZw0KPj4+
PiB3YXkgYW5kIGluIGZhY3QgaXQgZmVlbHMgbGlrZSB0aGUga2VybmVsIGNvdWxkIHNvbHZlIHRo
aXMgc29tZWhvdyB3aXRob3V0DQo+Pj4+IGhhdmluZw0KPj4+PiB0byBpbmZvcm0gdXNlcnNwYWNl
IChwZXJoYXBzKS4NCj4+Pj4NCj4+Pj4+IEFmdGVyIGFsbCB0aGUgc3lzdGVtIG1lbW9yeSBhY2Nl
c3MgcGF0dGVybiBpcyBhIFBDSWUgZXh0ZW5zaW9uIGFuZCBhcw0KPj4+Pj4gc3VjaCBzb21ldGhp
bmcgZ2VuZXJpYy4NCj4+Pj4+DQo+Pj4+PiBSZWdhcmRzLA0KPj4+Pj4gQ2hyaXN0aWFuLg0KPj4+
Pg0KPj4+IEhpIEFsbCwNCj4+Pg0KPj4+IFdlIGFsc28gZW5jb3VudGVyZWQgdGhlIFVWQyBjYWNo
ZSBpc3N1ZSBvbiBBUk12OCBDUFUgaW4gTWVkaWF0ZWsgU29DIHdoZW4NCj4+PiB1c2luZyBVVkMg
ZG1hYnVmLWV4cG9ydCBhbmQgZmVlZGluZyB0aGUgZG1hYnVmIHRvIHRoZSBEUk0gZGlzcGxheSBi
eSB0aGUNCj4+PiBmb2xsb3dpbmcgR1N0cmVhbWVyIGNvbW1hbmQ6DQo+Pj4NCj4+PiAjIGdzdC1s
YXVuY2gtMS4wIHY0bDJzcmMgZGV2aWNlPS9kZXYvdmlkZW8wIGlvLW1vZGU9ZG1hYnVmICEga21z
c2luaw0KPj4+DQo+Pj4gVVZDIGRyaXZlciB1c2VzIHZpZGVvYnVmMi12bWFsbG9jIHRvIGFsbG9j
YXRlIGJ1ZmZlcnMgYW5kIGlzIGFibGUgdG8gZXhwb3J0DQo+Pj4gdGhlbSBhcyBkbWFidWYuIEJ1
dCBVVkMgdXNlcyBtZW1jcHkoKSB0byBmaWxsIHRoZSBmcmFtZSBidWZmZXIgYnkgQ1BVDQo+Pj4g
d2l0aG91dA0KPj4+IGZsdXNoaW5nIHRoZSBjYWNoZS4gU28gaWYgdGhlIGRpc3BsYXkgaGFyZHdh
cmUgZGlyZWN0bHkgdXNlcyB0aGUgYnVmZmVyLCB0aGUNCj4+PiBpbWFnZSBzaG93biBvbiB0aGUg
c2NyZWVuIHdpbGwgYmUgZGlydHkuDQo+Pj4NCj4+PiBIZXJlIGFyZSBzb21lIGV4cGVyaW1lbnRz
Og0KPj4+DQo+Pj4gMS4gQnkgZG9pbmcgc29tZSBtZW1vcnkgb3BlcmF0aW9ucyAoZS5nLiBkZXZt
ZW0pIHdoZW4gc3RyZWFtaW5nIHRoZSBVVkMsDQo+Pj4gIMKgwqDCoHRoZSBpc3N1ZSBpcyBtaXRp
Z2F0ZWQuIEkgZ3Vlc3MgdGhlIGNhY2hlIGlzIHN3YXBwZWQgcmFwaWRseS4NCj4+PiAyLiBCeSBy
ZXBsYWNpbmcgdGhlIG1lbWNweSgpIHdpdGggbWVtY3B5X2ZsdXNoY2FjaGUoKSBpbiB0aGUgVVZD
IGRyaXZlciwNCj4+PiAgwqDCoMKgdGhlIGlzc3VlIGRpc2FwcGVhcnMuDQo+Pj4gMy4gQnkgYWRk
aW5nIC5maW5pc2ggY2FsbGJhY2sgaW4gdmlkZW9idWYyLXZtYWxsb2MuYyB0byBmbHVzaCB0aGUg
Y2FjaGUNCj4+PiAgwqDCoMKgYmVmb3JlIHJldHVybmluZyB0aGUgYnVmZmVyLCB0aGUgaXNzdWUg
ZGlzYXBwZWFycy4NCj4+Pg0KPj4+IEl0IHNlZW1zIHRvIGxhY2sgYSBjYWNoZSBmbHVzaCBzdGFn
ZSBpbiBlaXRoZXIgVVZDIG9yIERpc3BsYXkuIFdlIG1heSBhbHNvDQo+Pj4gbmVlZCBjb21tdW5p
Y2F0aW9uIGJldHdlZW4gdGhlIHByb2R1Y2VyIGFuZCBjb25zdW1lci4gVGhlbiwgdGhleSBjYW4g
ZGVjaWRlDQo+Pj4gd2hvIGlzIHJlc3BvbnNpYmxlIGZvciB0aGUgZmx1c2hpbmcgdG8gYXZvaWQg
Zmx1c2hpbmcgY2FjaGUgdW5jb25kaXRpb25hbGx5DQo+Pj4gbGVhZGluZyB0byB0aGUgcGVyZm9y
bWFuY2UgaW1wYWN0Lg0KPj4gICANCj4+ICDCoFdlbGwsIHRoYXQncyBub3Qgd2hhdCB0aGlzIG1h
aWwgdGhyZWFkIHdhcyBhbGwgYWJvdXQuDQo+PiAgIA0KPj4gIMKgVGhlIGlzc3VlIHlvdSBhcmUg
ZmFjaW5nIGlzIHRoYXQgc29tZWJvZHkgaXMgZm9yZ2V0dGluZyB0byBmbHVzaCBjYWNoZXMsIGJ1
dA0KPj4gdGhlIGlzc3VlIGRpc2N1c3NlZCBpbiB0aGlzIHRocmVhZCBoZXJlIGlzIHRoYXQgd2Ug
aGF2ZSBoYXJkd2FyZSB3aGljaA0KPj4gYnlwYXNzZXMgY2FjaGVzIGFsdG9nZXRoZXIuDQo+PiAg
IA0KPj4gIMKgQXMgZmFyIGFzIEkgY2FuIHNlZSBpbiB5b3VyIGNhc2UgVVZDIGp1c3QgYWxsb2Nh
dGVzIG5vcm1hbCBjYWNoZWQgc3lzdGVtDQo+PiBtZW1vcnkgdGhyb3VnaCB2aWRlb2J1ZjItdm1h
bGxvYygpIGFuZCBpdCBpcyBwZXJmZWN0bHkgdmFsaWQgdG8gZmlsbCB0aGF0DQo+PiB1c2luZyBt
ZW1jcHkoKS4NCj4+ICAgDQo+PiAgwqBJZiBzb21lIGhhcmR3YXJlIHRoZW4gYWNjZXNzZXMgdGhv
c2UgYnVmZmVycyBieXBhc3NpbmcgQ1BVIGNhY2hlcyB0aGVuIGl0IGlzDQo+PiB0aGUgcmVzcG9u
c2liaWxpdHkgb2YgdGhlIGltcG9ydGluZyBkcml2ZXIgYW5kL29yIERNQSBzdWJzeXN0ZW0gdG8g
Zmx1c2ggdGhlDQo+PiBjYWNoZXMgYWNjb3JkaW5nbHkuDQo+IEkndmUgdHJhY2tlZCB0aGlzIGRv
d24gdG8gdmlkZW9idWYyLXZtYWxsb2MuYyBmYWlsaW5nIHRvIGxvb2sgZm9yIGNvaGVyZW5jeQ0K
PiBkdXJpbmcgImF0dGFjaCgpIi4gSXQgaXMgYWxzbyBtaXNzaW5nIGJlZ2luXy9lbmQgYWNjZXNz
IGltcGxlbWVudGF0aW9uIGZvciB0aGUNCj4gY2FzZSBpdCBnZXQgYXR0YWNoZWQgdG8gYSBub24t
Y29oZXJlbnQgZGV2aWNlLiBTZWVtcyBmaXhhYmxlIHRob3VnaCwgYnV0ICJJJ20NCj4gZmFyIGZy
b20gYW4gZXhwZXJ0IiwgYnV0IG1vcmUgc29tZSByYW5kb20gcGVyc29uIHJlYWRpbmcgY29kZSBh
bmQgY29tbWVudHMuDQoNCldlbGwgdGhhdCBpcyBwZXJmZWN0bHkgZXhwZWN0ZWQgYmVoYXZpb3Is
IHZpZGVvYnVmMi12bWFsbG9jIHJldHVybiANCm5vcm1hbCBjYWNoZWQgc3lzdGVtIG1lbW9yeS4N
Cg0KU28gaXQgZG9lc24ndCBjYXJlIGZvciB0aGUgY29oZXJlbmN5IG9mIHRoZSBidWZmZXIuDQoN
CldoYXQgc2hvdWxkIGhhcHBlbiBpbnN0ZWFkIGlzIHRoYXQgdGhlIGRpc3BsYXkgZGV2aWNlIG5l
ZWRzIHRvIG1ha2Ugc3VyZSANCnRoYXQgaXQgY2FuIGNvaGVyZW50bHkgYWNjZXNzIHRoZSBkYXRh
IGFuZCB0aGF0J3Mgbm90IHRoZSBjYXNlIGhlcmUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4NCj4gcmVnYXJkcywNCj4gTmljb2xhcw0KPg0KPj4gICANCj4+ICDCoFJlZ2FyZHMsDQo+PiAg
wqBDaHJpc3RpYW4uDQo+PiAgIA0KPj4gICANCj4+PiBSZWdhcmRzLA0KPj4+IEFuZHkgSHNpZWgN
Cj4+Pg0KPj4+ICoqKioqKioqKioqKiogTUVESUFURUsgQ29uZmlkZW50aWFsaXR5IE5vdGljZSAq
KioqKioqKioqKioqKioqKioqKg0KPj4+IFRoZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaW4gdGhp
cyBlLW1haWwgbWVzc2FnZSAoaW5jbHVkaW5nIGFueQ0KPj4+IGF0dGFjaG1lbnRzKSBtYXkgYmUg
Y29uZmlkZW50aWFsLCBwcm9wcmlldGFyeSwgcHJpdmlsZWdlZCwgb3Igb3RoZXJ3aXNlDQo+Pj4g
ZXhlbXB0IGZyb20gZGlzY2xvc3VyZSB1bmRlciBhcHBsaWNhYmxlIGxhd3MuIEl0IGlzIGludGVu
ZGVkIHRvIGJlDQo+Pj4gY29udmV5ZWQgb25seSB0byB0aGUgZGVzaWduYXRlZCByZWNpcGllbnQo
cykuIEFueSB1c2UsIGRpc3NlbWluYXRpb24sDQo+Pj4gZGlzdHJpYnV0aW9uLCBwcmludGluZywg
cmV0YWluaW5nIG9yIGNvcHlpbmcgb2YgdGhpcyBlLW1haWwgKGluY2x1ZGluZyBpdHMNCj4+PiBh
dHRhY2htZW50cykgYnkgdW5pbnRlbmRlZCByZWNpcGllbnQocykgaXMgc3RyaWN0bHkgcHJvaGli
aXRlZCBhbmQgbWF5DQo+Pj4gYmUgdW5sYXdmdWwuIElmIHlvdSBhcmUgbm90IGFuIGludGVuZGVk
IHJlY2lwaWVudCBvZiB0aGlzIGUtbWFpbCwgb3IgYmVsaWV2ZQ0KPj4+IHRoYXQgeW91IGhhdmUg
cmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlcg0K
Pj4+IGltbWVkaWF0ZWx5IChieSByZXBseWluZyB0byB0aGlzIGUtbWFpbCksIGRlbGV0ZSBhbnkg
YW5kIGFsbCBjb3BpZXMgb2YNCj4+PiB0aGlzIGUtbWFpbCAoaW5jbHVkaW5nIGFueSBhdHRhY2ht
ZW50cykgZnJvbSB5b3VyIHN5c3RlbSwgYW5kIGRvIG5vdA0KPj4+IGRpc2Nsb3NlIHRoZSBjb250
ZW50IG9mIHRoaXMgZS1tYWlsIHRvIGFueSBvdGhlciBwZXJzb24uIFRoYW5rIHlvdSENCj4+ICAg
DQo+PiAgIA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcNCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
