Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 314D7635F04
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 14:12:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E63B3ECED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 13:12:36 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 0DC8C3ECED
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 13:12:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=CbKrP7ED;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id kt23so42653451ejc.7
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 05:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bvs98D7kn/blwT63+h55cu2gonMJ65ywZrI5Z5R+q8s=;
        b=CbKrP7EDuQM1+snQr1Bb3MbhbQ1msQARnAhP8lLIaw8jsoWgtUxr2YZuSk/BGmdbmJ
         CHML6hqeeAqT5QapkEJBOq5hHCB/AFN2yNlNe0UTVNNzfzV9/OUQvXEwNyHqnNUkvY1T
         XUteu4rleCYD+KdeDTBkycgH+nx6bdv7x5woMj/jfEdULmuRFG1kYORmlhBvWNHyjq/x
         H7opk6T9ej6goLupldeCS1Ai/LJlUZUOxPUAiwU0bK3GQ4OL9oZmnaLbFfWEJQr0UdrJ
         8M3M4FzvBqbSzpKZSgEd1wobGpuhu0JxJgOdz4rmFVlq1zq8VKc+WvA4aSOCyLsvSPc7
         tlWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bvs98D7kn/blwT63+h55cu2gonMJ65ywZrI5Z5R+q8s=;
        b=eye4EBBzCUA3EjlAAqz0Y/Z95fibPpiIVUdGwSlmV5+QxiBY1206vmBObJG4tblODB
         vAs6+WXYrvPVOpeHEu2ykTDFxmLK4g/6T/hSiQuonVX2Nt2DemcMZVz8ZA/a3T2qZxTV
         VNUPR9yp3QMUo43L8yvr9j7ZMo83bRwPYNadunJUMnnwDDOC41nL4+0HViE+/81PMP+V
         Kg+eQ64XXoLo8xgePLTKARD5UDgUnjZvTzif0IIFeJlfAooI5LPXlRF8C8typG3Mapsq
         XZxvPWCG98bltTUZUXUSsTo2iqxNN6uMCeu8TQVhGYWIoX2iIlm6bOqaUx56AupMN0M5
         zLrA==
X-Gm-Message-State: ANoB5pl87BdMToTnAHShFv1kZrsauOUEHwCG2UB26PO9ka6fgyqJyCpQ
	MhA9PlfFEdFtcFUvb3WnK00=
X-Google-Smtp-Source: AA0mqf5Nj1HAYv/xJhMhjUhsdKhcctZzH8JOkFU/AOEqdt3oRJ5z0AWvGNokuhO7wHbBhMGKlisOWQ==
X-Received: by 2002:a17:906:1ecf:b0:7ad:902c:d1d6 with SMTP id m15-20020a1709061ecf00b007ad902cd1d6mr12072437ejj.143.1669209147048;
        Wed, 23 Nov 2022 05:12:27 -0800 (PST)
Received: from ?IPV6:2a02:908:1256:79a0:d2d7:ceea:efc2:af43? ([2a02:908:1256:79a0:d2d7:ceea:efc2:af43])
        by smtp.gmail.com with ESMTPSA id mh23-20020a170906eb9700b007af105a87cbsm7152028ejb.152.2022.11.23.05.12.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 05:12:26 -0800 (PST)
Message-ID: <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
Date: Wed, 23 Nov 2022 14:12:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Y34XvmtHfb4ZwopN@ziepe.ca>
X-Rspamd-Queue-Id: 0DC8C3ECED
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.218.44:from,2a02:908:1256:79a0:d2d7:ceea:efc2:af43:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,patchwork.freedesktop.org:url,intel.com:email];
	NEURAL_HAM(-0.00)[-0.907];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,patchwork.freedesktop.org:url,mail-ej1-f44.google.com:rdns,mail-ej1-f44.google.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: A27ELJ6LOGABFUG3FOLPVMJKY2GTBKO3
X-Message-ID-Hash: A27ELJ6LOGABFUG3FOLPVMJKY2GTBKO3
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A27ELJ6LOGABFUG3FOLPVMJKY2GTBKO3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMTEuMjIgdW0gMTM6NTMgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFdlZCwg
Tm92IDIzLCAyMDIyIGF0IDAxOjQ5OjQxUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAyMy4xMS4yMiB1bSAxMzo0NiBzY2hyaWViIEphc29uIEd1bnRob3JwZToNCj4+PiBP
biBXZWQsIE5vdiAyMywgMjAyMiBhdCAxMTowNjo1NUFNICswMTAwLCBEYW5pZWwgVmV0dGVyIHdy
b3RlOg0KPj4+DQo+Pj4+PiBNYXliZSBhIEdGUCBmbGFnIHRvIHNldCB0aGUgcGFnZSByZWZlcmVu
Y2UgY291bnQgdG8gemVybyBvciBzb21ldGhpbmcNCj4+Pj4+IGxpa2UgdGhpcz8NCj4+Pj4gSG0g
eWVhaCB0aGF0IG1pZ2h0IHdvcmsuIEknbSBub3Qgc3VyZSB3aGF0IGl0IHdpbGwgYWxsIGJyZWFr
IHRob3VnaD8NCj4+Pj4gQW5kIHdlJ2QgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCB1bmRlcmZsb3dp
bmcgdGhlIHBhZ2UgcmVmY291bnQgZGllcyBpbg0KPj4+PiBhIGJhY2t0cmFjZS4NCj4+PiBNdWNr
aW5nIHdpdGggdGhlIHJlZmNvdW50IGxpa2UgdGhpcyB0byBwcm90ZWN0IGFnYWluc3QgY3Jhenkg
b3V0IG9mDQo+Pj4gdHJlZSBkcml2ZXMgc2VlbXMgaG9ycmlibGUuLg0KPj4gV2VsbCBub3Qgb25s
eSBvdXQgb2YgdHJlZSBkcml2ZXJzLiBUaGUgaW50cmVlIEtWTSBnb3QgdGhhdCBob3JyaWJsZQ0K
Pj4gd3JvbmcgYXMgd2VsbCwgdGhvc2Ugd2hlcmUgdGhlIGxhdGVzdCBndXlzIGNvbXBsYWluaW5n
IGFib3V0IGl0Lg0KPiBrdm0gd2FzIHRha2luZyByZWZzIG9uIHNwZWNpYWwgUFRFcz8gVGhhdCBz
ZWVtcyByZWFsbHkgdW5saWtlbHk/DQoNCldlbGwgdGhlbiBsb29rIGF0IHRoaXMgY29kZSBoZXJl
Og0KDQpjb21taXQgYWRkNmEwY2QxYzViYTUxYjIwMWUxMzYxYjA1YTVkZjgxNzA4MzYxOA0KQXV0
aG9yOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQuY29tPg0KRGF0ZTrCoMKgIFR1ZSBK
dW4gNyAxNzo1MToxOCAyMDE2ICswMjAwDQoNCiDCoMKgwqAgS1ZNOiBNTVU6IHRyeSB0byBmaXgg
dXAgcGFnZSBmYXVsdHMgYmVmb3JlIGdpdmluZyB1cA0KDQogwqDCoMKgIFRoZSB2R1BVIGZvbGtz
IHdvdWxkIGxpa2UgdG8gdHJhcCB0aGUgZmlyc3QgYWNjZXNzIHRvIGEgQkFSIGJ5IHNldHRpbmcN
CiDCoMKgwqAgdm1fb3BzIG9uIHRoZSBWTUFzIHByb2R1Y2VkIGJ5IG1tYXAtaW5nIGEgVkZJTyBk
ZXZpY2UuwqAgVGhlIGZhdWx0IA0KaGFuZGxlcg0KIMKgwqDCoCB0aGVuIGNhbiB1c2UgcmVtYXBf
cGZuX3JhbmdlIHRvIHBsYWNlIHNvbWUgbm9uLXJlc2VydmVkIHBhZ2VzIGluIA0KdGhlIFZNQS4N
Cg0KIMKgwqDCoCBUaGlzIGtpbmQgb2YgVk1fUEZOTUFQIG1hcHBpbmcgaXMgbm90IGhhbmRsZWQg
YnkgS1ZNLCBidXQgZm9sbG93X3Bmbg0KIMKgwqDCoCBhbmQgZml4dXBfdXNlcl9mYXVsdCB0b2dl
dGhlciBoZWxwIHN1cHBvcnRpbmcgaXQuwqAgVGhlIHBhdGNoIGFsc28gDQpzdXBwb3J0cw0KIMKg
wqDCoCBWTV9NSVhFRE1BUCB2bWFzIHdoZXJlIHRoZSBwZm5zIGFyZSBub3QgcmVzZXJ2ZWQgYW5k
IHRodXMgc3ViamVjdCB0bw0KIMKgwqDCoCByZWZlcmVuY2UgY291bnRpbmcuDQoNCiDCoMKgwqAg
Q2M6IFhpYW8gR3Vhbmdyb25nIDxndWFuZ3JvbmcueGlhb0BsaW51eC5pbnRlbC5jb20+DQogwqDC
oMKgIENjOiBBbmRyZWEgQXJjYW5nZWxpIDxhYXJjYW5nZUByZWRoYXQuY29tPg0KIMKgwqDCoCBD
YzogUmFkaW0gS3LEjW3DocWZIDxya3JjbWFyQHJlZGhhdC5jb20+DQogwqDCoMKgIFRlc3RlZC1i
eTogTmVvIEppYSA8Y2ppYUBudmlkaWEuY29tPg0KIMKgwqDCoCBSZXBvcnRlZC1ieTogS2lydGkg
V2Fua2hlZGUgPGt3YW5raGVkZUBudmlkaWEuY29tPg0KIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBQ
YW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQuY29tPg0KDQpBbmQgc2VlIGFsc28gdGhlIGRp
c2N1c3Npb24gaGVyZTogDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
NDE0MTIzLw0KDQphcyB3ZWxsIGFzIGhlcmU6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9wYXRjaC80OTkxOTAvDQoNCkkgY2FuJ3QgY291bnQgaG93IG9mdGVuIEkgaGF2ZSBwb2lu
dGVkIG91dCB0aGF0IHRoaXMgaXMgYWJzb2x1dGVseSANCmlsbGVnYWwgYW5kIEtWTSBjYW4ndCB0
b3VjaCBwYWdlcyBpbiBWTUFzIHdpdGggVk1fUEZOTUFQLg0KDQo+Pj4gVGhlIFdBUk5fT04ocGFn
X2NvdW50KHApICE9IDEpIHNlZW1zIGxpa2UgYSByZWFzb25hYmxlIHRoaW5nIHRvIGRvDQo+Pj4g
dGhvdWdoLCB0aG91Z2ggeW91IG11c3QgY29tYmluZSB0aGlzIHdpdGggdGhlIHNwZWNpYWwgUFRF
IGZsYWcuLg0KPj4gVGhhdCdzIG5vdCBzdWZmaWNpZW50LiBUaGUgcGFnZXMgYXJlIHJlbGVhc2Vk
IG11Y2ggbGF0ZXIgdGhhbiB0aGluZ3MNCj4+IGFjdHVhbGx5IGdvIHdyb25nLiBJbiBtb3N0IGNh
c2VzIHRoaXMgV0FSTl9PTiBoZXJlIHdvbid0IGhpdC4NCj4gSG93IHNvPyBBcyBsb25nIGFzIHRo
ZSBwYWdlIGlzIG1hcHBlZCBpbnRvIHRoZSBQVEUgdGhlcmUgaXMgbm8gaXNzdWUNCj4gd2l0aCBj
b3JydXB0aW9uLiBJZiBkbWFidWYgY2hlY2tzIHRoZSByZWZjb3VudCBhZnRlciBpdCBkb2VzIHRo
ZSB1bm1hcA0KPiBtYXBwaW5nIHJhbmdlIGl0IHNob3VsZCBjYXRjaCBhbnkgYm9ndXMgcGluIHRo
YXQgbWlnaHQgYmUgY29uZnVzZWQNCj4gYWJvdXQgYWRkcmVzcyBjb2hlcmVuY3kuDQoNClllYWgs
IHRoYXQgd291bGQgd29yay4gVGhlIHByb2JsZW0gaXMgdGhpcyBXQVJOX09OKCkgY29tZXMgbXVj
aCBsYXRlci4NCg0KVGhlIGRldmljZSBkcml2ZXJzIHVzdWFsbHkga2VlcCB0aGUgcGFnZSBhcm91
bmQgZm9yIGEgd2hpbGUgZXZlbiBhZnRlciANCml0IGlzIHVubWFwcGVkLiBJSVJDIHRoZSBjbGVh
bnVwIHdvcmtlciBvbmx5IHJ1bnMgZXZlcnkgMTBtcyBvciBzby4NCg0KQ2hyaXN0aWFuLg0KDQo+
DQo+IEphc29uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
