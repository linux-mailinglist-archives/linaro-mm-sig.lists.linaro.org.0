Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB63D5215FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 14:53:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A33C480CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 12:53:02 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 5D3EF47FA6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 12:52:57 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id c12so12414173edv.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 05:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WI1zTOfSIg5efVZfyvBSsp8//tfBd0cdczBSSxTFZbM=;
        b=M0XRCTZL5/OCjpLOp6VQQC7z0Re+F/RgmF1UukIrioiMykPB0R7Aj13djyzrg2StTD
         VJDOyuKku0W+egHu+VrN33KttIt3d5+iHhTH3n/5IAmZek52mv17Dg1VcM7yXoyQttmc
         /ZZ+3qIfmL178zYSJkv8X3S0uvoLXDPUu45142K201/sJhbuvvpMuTRzgyPc3YuIXza6
         wIiYACOsi0KOPM/2POCEvOByBujP9Syuh5km2bLbH4e9CB0SYHbUVAnBIqvgA0oOQTmr
         7gOt+5bvgMYuCV5wk35z/SUzp8lENBLwnQYKgIQPJW4nLEsiPn9P1pvj2F4NPM8pdkaE
         AsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WI1zTOfSIg5efVZfyvBSsp8//tfBd0cdczBSSxTFZbM=;
        b=gkDYKH/VTez6j2VZ+6OPmAlx72xbk4uaED5tkcFgk7wxawQyEyDKCXHmujq3T7JnXS
         DKih82WLclQaCzwH/8+hkeEni2oE0Jdaz7Aw/U9cMml0E67RGqb36YuI+92OY51QbJmE
         mbhznbmNuSe+kExLDwizS8Xd8adOsfAxeWf/H8OEl9kM6BTosW51sEyr5tDYnnz/eOyj
         5xvY7lTrm4sQNd1/OqhH1ogkDiEtJalywpHjBE39EkV/9VQU+f62Ky3F7TS2eKGDl1Vu
         SyJVTv4gzB+6jPDLHBTbF07GLLLlnsBqe0CMVv+DLjwrfgy5eUe7HmhBfY/mtLXYm4/9
         5Z+g==
X-Gm-Message-State: AOAM533BkXcB37AeMpipN0nQopQwH3P6RCN5sxM60GTxbTX82c8I2xCn
	8pAE5iQPvfPR4IlaLpg7DfjdHIdEg24=
X-Google-Smtp-Source: ABdhPJyN5CN/JhTtUeKUlijPnHsp542eYOzriocQW2nzKpv+Am+UGABpfo9csh4/XMFj0hFFENFGfA==
X-Received: by 2002:a50:ce14:0:b0:425:cb75:5322 with SMTP id y20-20020a50ce14000000b00425cb755322mr23429940edi.386.1652187176341;
        Tue, 10 May 2022 05:52:56 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:616c:3555:9eac:59cc? ([2a02:908:1256:79a0:616c:3555:9eac:59cc])
        by smtp.gmail.com with ESMTPSA id s3-20020a170906284300b006f3ef214df2sm6096680ejc.88.2022.05.10.05.52.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 05:52:55 -0700 (PDT)
Message-ID: <ae249cf7-7367-d3c2-60e5-7bfab6e3ef73@gmail.com>
Date: Tue, 10 May 2022 14:52:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
 <YnpF1XP1tH83uBlM@kroah.com> <039e1acc-8688-2e06-1b2a-1acbe813b91e@amd.com>
 <YnpWNSdAQzG80keQ@kroah.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <YnpWNSdAQzG80keQ@kroah.com>
Message-ID-Hash: 2L5RAUZM7LKIBSLOLA3XS5GQQXPQ2OXO
X-Message-ID-Hash: 2L5RAUZM7LKIBSLOLA3XS5GQQXPQ2OXO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Charan Teja Kalla <quic_charante@quicinc.com>, sumit.semwal@linaro.org, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2L5RAUZM7LKIBSLOLA3XS5GQQXPQ2OXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDUuMjIgdW0gMTQ6MTAgc2NocmllYiBHcmVnIEtIOg0KPiBPbiBUdWUsIE1heSAxMCwg
MjAyMiBhdCAwMTozNTo0MVBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gQW0g
MTAuMDUuMjIgdW0gMTM6MDAgc2NocmllYiBHcmVnIEtIOg0KPj4+IE9uIFR1ZSwgTWF5IDEwLCAy
MDIyIGF0IDAzOjUzOjMyUE0gKzA1MzAsIENoYXJhbiBUZWphIEthbGxhIHdyb3RlOg0KPj4+PiBU
aGUgZG1hYnVmIGZpbGUgdXNlcyBnZXRfbmV4dF9pbm8oKSh0aHJvdWdoIGRtYV9idWZfZ2V0Zmls
ZSgpIC0+DQo+Pj4+IGFsbG9jX2Fub25faW5vZGUoKSkgdG8gZ2V0IGFuIGlub2RlIG51bWJlciBh
bmQgdXNlcyB0aGUgc2FtZSBhcyBhDQo+Pj4+IGRpcmVjdG9yeSBuYW1lIHVuZGVyIC9zeXMva2Vy
bmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm8+LiBUaGlzIGRpcmVjdG9yeSBpcw0KPj4+PiB1c2VkIHRv
IGNvbGxlY3QgdGhlIGRtYWJ1ZiBzdGF0cyBhbmQgaXQgaXMgY3JlYXRlZCB0aHJvdWdoDQo+Pj4+
IGRtYV9idWZfc3RhdHNfc2V0dXAoKS4gQXQgY3VycmVudCwgZmFpbHVyZSB0byBjcmVhdGUgdGhp
cyBkaXJlY3RvcnkNCj4+Pj4gZW50cnkgY2FuIG1ha2UgdGhlIGRtYV9idWZfZXhwb3J0KCkgdG8g
ZmFpbC4NCj4+Pj4NCj4+Pj4gTm93LCBhcyB0aGUgZ2V0X25leHRfaW5vKCkgY2FuIGRlZmluaXRl
bHkgZ2l2ZSBhIHJlcGV0aXRpdmUgaW5vZGUgbm8NCj4+Pj4gY2F1c2luZyB0aGUgZGlyZWN0b3J5
IGVudHJ5IGNyZWF0aW9uIHRvIGZhaWwgd2l0aCAtRUVYSVNULiBUaGlzIGlzIGENCj4+Pj4gcHJv
YmxlbSBvbiB0aGUgc3lzdGVtcyB3aGVyZSBkbWFidWYgc3RhdHMgZnVuY3Rpb25hbGl0eSBpcyBl
bmFibGVkIG9uDQo+Pj4+IHRoZSBwcm9kdWN0aW9uIGJ1aWxkcyBjYW4gbWFrZSB0aGUgZG1hX2J1
Zl9leHBvcnQoKSwgdGhvdWdoIHRoZSBkbWFidWYNCj4+Pj4gbWVtb3J5IGlzIGFsbG9jYXRlZCBz
dWNjZXNzZnVsbHksIHRvIGZhaWwganVzdCBiZWNhdXNlIGl0IGNvdWxkbid0DQo+Pj4+IGNyZWF0
ZSBzdGF0cyBlbnRyeS4NCj4+PiBUaGVuIG1heWJlIHdlIHNob3VsZCBub3QgZmFpbCB0aGUgY3Jl
YXRpb24gcGF0aCBvZiB0aGUga29iamVjdCBmYWlscyB0bw0KPj4+IGJlIGNyZWF0ZWQ/ICBJdCdz
IGp1c3QgZm9yIGRlYnVnZ2luZywgaXQgc2hvdWxkIGJlIGZpbmUgaWYgdGhlIGNyZWF0aW9uDQo+
Pj4gb2YgaXQgaXNuJ3QgdGhlcmUuDQo+PiBXZWxsIGlmIGl0J3MganVzdCBmb3IgZGVidWdnaW5n
IHRoZW4gaXQgc2hvdWxkIGJlIHVuZGVyIGRlYnVnZnMgYW5kIG5vdA0KPj4gc3lzZnMuDQo+IEkn
bGwgbm90ZSB0aGF0IHRoZSBvcmlnaW5hbCBwYXRjaCBzZXJpZXMgZm9yIHRoaXMgZGVzY3JpYmVk
IHdoeSB0aGlzIHdhcw0KPiBtb3ZlZCBmcm9tIGRlYnVnZnMgdG8gc3lzZnMuDQo+DQo+Pj4+IFRo
aXMgaXNzdWUgd2UgYXJlIGFibGUgdG8gc2VlIG9uIHRoZSBzbmFwZHJhZ29uIHN5c3RlbSB3aXRo
aW4gMTMgZGF5cw0KPj4+PiB3aGVyZSB0aGVyZSBhbHJlYWR5IGV4aXN0cyBhIGRpcmVjdG9yeSB3
aXRoIGlub2RlIG5vICIxMjI2MDIiIHNvDQo+Pj4+IGRtYV9idWZfc3RhdHNfc2V0dXAoKSBmYWls
ZWQgd2l0aCAtRUVYSVNUIGFzIGl0IGlzIHRyeWluZyB0byBjcmVhdGUNCj4+Pj4gdGhlIHNhbWUg
ZGlyZWN0b3J5IGVudHJ5Lg0KPj4+Pg0KPj4+PiBUbyBtYWtlIHRoZSBkaXJlY3RvcnkgZW50cnkg
YXMgdW5pcXVlLCBhcHBlbmQgdGhlIGlub2RlIGNyZWF0aW9uIHRpbWUgdG8NCj4+Pj4gdGhlIGlu
b2RlLiBXaXRoIHRoaXMgY2hhbmdlIHRoZSBzdGF0cyBkaXJlY3RvcnkgZW50cmllcyB3aWxsIGJl
IGluIHRoZQ0KPj4+PiBmb3JtYXQgb2Y6IC9zeXMva2VybmVsL2RtYWJ1Zi9idWZmZXJzLzxpbm9k
ZSBubz4tPGlub2RlIGNyZWF0aW9uIHRpbWUgaW4NCj4+Pj4gc2Vjcz4uDQo+Pj4gQXMgeW91IGFy
ZSBjaGFuZ2luZyB0aGUgZm9ybWF0IGhlcmUsIHNob3VsZG4ndCB0aGUgRG9jdW1lbnRhdGlvbi9B
QkkvDQo+Pj4gZW50cnkgZm9yIHRoaXMgYWxzbyBiZSBjaGFuZ2VkPw0KPj4gQXMgZmFyIGFzIEkg
Y2FuIHNlZSB0aGF0IGlzIGV2ZW4gYW4gVUFQSSBicmVhaywgbm90IHN1cmUgaWYgd2UgY2FuIGFs
bG93DQo+PiB0aGF0Lg0KPiBXaHk/ICBEZXZpY2UgbmFtZXMgY2hhbmdlIGFsbCB0aGUgdGltZSBh
bmQgc2hvdWxkIG5ldmVyIGJlIHN0YXRpYy4gIEENCj4gYnVmZmVyIG5hbWUgc2hvdWxkIGp1c3Qg
YmUgYSB1bmlxdWUgaWRlbnRpZmllciBpbiB0aGF0IGRpcmVjdG9yeSwgdGhhdCdzDQo+IGFsbC4g
IE5vIHJ1bGVzIG9uIHRoZSBmb3JtYXR0aW5nIG9mIGl0IHVubGVzcyBmb3Igc29tZSByZWFzb24g
dGhlIG5hbWUNCj4gYmVpbmcgdGhlIGlub2RlIG51bWJlciB3YXMgc29tZWhvdyBiZWluZyB1c2Vk
IGluIHVzZXJzcGFjZSBmb3IgdGhhdA0KPiBudW1iZXI/DQoNCk15IGltcHJlc3Npb24gd2FzIHRo
YXQgd2UgZG9jdW1lbnRlZCB0aGF0IHNob3VsZCBoYXZlIGJlZW4gYSBudW1iZXIsIGJ1dCANCkkg
bWlnaHQgYmUgd3Jvbmcgb24gdGhpcy4gQW5kIGlmIGl0J3Mgbm90IGRvY3VtZW50ZWQgdG8gYmUg
YSBudW1iZXIsIEkgDQp0aGluayBpdCBzaG91bGQgYmUuDQoNClRoZSBiYWNrZ3JvdW5kIGlzIHRo
YXQgeW91IHByb2JhYmx5IG5lZWQgdG8gYXNzb2NpYXRlIHRoZSBETUEtYnVmIHdpdGggDQpzb21l
IHVzZXJzcGFjZSBzdHJ1Y3R1cmUgZm9yIGFjY291bnRpbmcgYW5kIHRoYXQgYmVjb21lcyBlYXNp
ZXIgd2hlbiB5b3UgDQpjYW4ganVzdCBwdXQgdGhlbSBpbnRvIGEgcmFkaXguDQoNClJlZ2FyZHMs
DQpDaHJpc3RpYW4uDQoNCj4NCj4gdGhhbmtzLA0KPg0KPiBncmVnIGstaA0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
