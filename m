Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E955554A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jun 2022 21:39:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A575B3F1E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jun 2022 19:39:44 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 46A343EECA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 19:39:38 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id c1so26322124qvi.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jun 2022 12:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=o69t0ilR7Hk+fBWUIkW0byFF7csFuoYUt8x0EJzEGT0=;
        b=zDwj7Z7XJsqKoyOUeeRZPzgUJAK7nqOO//vwa87996d/w2rMccrCEIAd4XiRHF4jv1
         M83CN02Ox+LGfiTQ/XnTX8sy8YqoxO/JrfceWUj8TR/A0WQwkxsHArGPUv0xlkynIMUs
         b2CTm7xWBa3Vt5BxAZhaVtlwN4XyVTTwU+5kV5lpfCaXzOMR2M37RA+CIYOK08SvH/e3
         5+VHzpcPVBkvKlQDqeS4gO+iH0OhKxzzw/wkm6RkwWmaTYfeT26+pgz9CI75e45VbkDx
         xskF6MIoPzqVZRKI8xdDLED3re7VDozsmHdplmPbev3ZKGYfVqL4mD/1ahLeAi5ObmMh
         qymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=o69t0ilR7Hk+fBWUIkW0byFF7csFuoYUt8x0EJzEGT0=;
        b=Sq4KdtY6NytJ3ywC7QBB4Od5zZdl528n8KueDDrwNxUxW1Ws/d8f3gwhdkHsDw/kei
         NswXJsQWrziWyS/Ve9rXk/1yMwLZlfVeDNT8hl8XplscWus3bLqi0uI3KDEwQOPh4kjs
         o+AKnRKnu+AAjFXSD7XQsfHX2v+gQj4RQErM+yQ+NPGAEERd1cMalr6kVicyuUT9rV9T
         dbeInSafPomiImBXCUiX7C+1AWl7G7CFrntwd39WfQlWlWhSxPl3yvgj+rvnspGAkUUV
         PVt2dG2DA7xXiiIW8L8/Kzy6sb2M7DLgtTXh5/6/ZEps2La6z+i77waK6VM5aYxRCs2w
         72IA==
X-Gm-Message-State: AJIora/ZT9woSVsgIldW3dp6TJiQbF6nB5GWg8aNVcArR3Rl8MBESxui
	CwREfpF12ubPKVlzNGNFHzE1Dw==
X-Google-Smtp-Source: AGRyM1uBNURSl9Hk7+t9B98Zy80s9b7OW6cZ2Z/yFvCb5MY0v2TudFXnIjFB6e3Ii3PTZHJaY+JeLg==
X-Received: by 2002:a05:622a:292:b0:305:e2b7:bfa8 with SMTP id z18-20020a05622a029200b00305e2b7bfa8mr4668617qtw.243.1655926777927;
        Wed, 22 Jun 2022 12:39:37 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id m22-20020a05620a291600b006a370031c3esm17833638qkp.106.2022.06.22.12.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 12:39:37 -0700 (PDT)
Message-ID: <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Daniel Vetter <daniel@ffwll.ch>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>
Date: Wed, 22 Jun 2022 15:39:36 -0400
In-Reply-To: <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: 6GP2HIBAQXUKC45L5XCIFB3KLHP5MIBL
X-Message-ID-Hash: 6GP2HIBAQXUKC45L5XCIFB3KLHP5MIBL
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, lkml <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "Sharma, Shashank" <Shashank.Sharma@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6GP2HIBAQXUKC45L5XCIFB3KLHP5MIBL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWFyZGkgMTYgZsOpdnJpZXIgMjAyMSDDoCAxMDoyNSArMDEwMCwgRGFuaWVsIFZldHRlciBh
IMOpY3JpdMKgOg0KPiBTbyBJIHRoaW5rIGlmIEFNRCBhbHNvIGd1YXJhbnRlZXMgdG8gZHJvcCBj
bGVhbiBjYWNoZWxpbmVzIGp1c3QgZG8gdGhlDQo+IHNhbWUgdGhpbmcgd2UgZG8gcmlnaHQgbm93
IGZvciBpbnRlbCBpbnRlZ3JhdGVkICsgZGlzY3JldGUgYW1kLCBidXQgaW4NCj4gcmVzZXJ2ZS4g
SXQncyBmcmFnaWxlLCBidXQgaXQgZG9lcyB3b3JrLg0KDQpTb3JyeSB0byBkaXNydXB0LCBidXQg
aWYgeW91IHBhc3MgVjRMMiB2bWFsbG9jIGRhdGEgdG8gSW50ZWwgZGlzcGxheSBkcml2ZXIsIHlv
dQ0KYWxzbyBnZXQgbmljZSBkaXJ0IG9uIHRoZSBzY3JlZW4uIElmIHlvdSBoYXZlIGEgVVZDIHdl
YmNhbSB0aGF0IHByb2R1Y2VzIGEgcGl4ZWwNCmZvcm1hdCBjb21wYXRpYmxlIHdpdGggeW91ciBk
aXNwbGF5LCB5b3UgY2FuIHJlcHJvZHVjZSB0aGUgaXNzdWUgcXVpdGUgZWFzaWx5DQp3aXRoOg0K
DQogIGdzdC1sYXVuY2gtMS4wIHY0bDJzcmMgZGV2aWNlPS9kZXYvdmlkZW8wICEga21zc2luaw0K
DQpwLnMuIHNvbWUgZnJhbWUtcmF0ZSBhcmUgbGVzcyBsaWtlbHkgdG8gZXhoaWJpdCB0aGUgaXNz
dWUsIG1ha2Ugc3VyZSB5b3UgY3JlYXRlDQptb3ZlbWVudCB0byBzZWUgaXQuDQoNClRoZSBvbmx5
IHNvbHV0aW9uIEkgY291bGQgdGhpbmsgb2YgKG5vdCBpbXBsZW1lbnRlZCkgd2FzIHRvIGRldGVj
dCBpbiB0aGUNCmF0dGFjaCgpIGNhbGwgd2hhdCB0aGUgaW1wb3J0ZXJzIGNhbiBkbyAod2l0aCBk
ZXYtPmNvaGVyZW50X2RtYV9tYXNrIGlmIEkNCnJlY2FsbCksIGFuZCBvdGhlcndpc2UgZmx1c2gg
dGhlIGNhY2hlIGltbWVkaWF0ZWx5IGFuZCBzdGFydCBmbHVzaGluZyB0aGUgY2FjaGUNCmZyb20g
bm93IG9uIHNpZ25hbGxpbmcgaXQgZm9yIERRQlVGIChpbiB2YjIgd29ya3F1ZXVlIG9yIGRxYnVm
IGlvY3RsLCBJIGRvbid0DQpoYXZlIGFuIGlkZWEgeWV0KS4gSSBiZXQgdGhpcyBpZGVhIGlzIGlu
YXBwbGljYWJsZSB0byB3ZXJlIHlvdSBoYXZlIGZlbmNlcywgd2UNCmRvbid0IGhhdmUgdGhhdCBp
biB2NGwyLg0KDQpUaGlzIGlkZWEgd2FzIGhpbnRlZCBieSBSb2JlcnQgQmVja2V0IChub3cgaW4g
Q0MpLCBidXQgcGVyaGFwcyBJIHBpY2tlZCBpdCB1cA0Kd3JvbmcsIGV4cGxhaW5pbmcgaXQgd3Jv
bmcsIGV0Yy4gSSdtIG5vIGV4cGVydCwganVzdCBub3RpY2VkIHRoZXJlIHdhc24ndCByZWFsbHkN
CmEgZ29vZCBwbGFuIGZvciB0aGF0LCBzbyBvbmUgbmVlZHMgdG8gbWFrZSBvbmUgdXAuIEknbSBu
b3QgYXdhcmUgb2ggYW4gaW1wb3J0ZXINCmNvdWxkIGtub3cgaG93IHRoZSBtZW1vcnkgd2FzIGFs
bG9jYXRlZCBieSB0aGUgZXhwb3J0ZXIsIGFuZCB3b3JzdCwgaG93IGFuDQppbXBvcnRlciBjb3Vs
ZCBmaWd1cmUtb3V0IHRoYXQgdGhlIGV4cG9ydCBpcyBnb2luZyB0byBwcm9kdWNlIGJ1ZmZlciB3
aXRoIGhvdA0KQ1BVIGNhY2hlIChVVkMgZHJpdmVyIGRvZXMgbWVtY3B5IGZyb20gVVNCIGNodW5r
cyBvZiB2YXJpYWJsZSBzaXplIHRvIHByb2R1Y2UgYQ0KZml4ZWQgc2l6ZSBpbWFnZSkuDQoNCk5p
Y29sYXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
