Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C26761632C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 13:56:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63D433EF32
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 12:56:58 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 850EB3EEC1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 12:56:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=WUpjROp4;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id ud5so45087947ejc.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 05:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q2uaugI2bLKCRBQDyZF1zpLdxkje5gCBBYFZp43Wd6I=;
        b=WUpjROp47DVLKE/YqCgRwVWs5Ba4KDwfOn2r8qsXcWESSqfu2BfoiODrYoEv32JK7D
         Yq64ykOaCSc/StqteuzicKY2xX6TuvRx5jDQMW9u5KqEkvvv2RpEuZpfA43kyPwI2/kI
         C/T5Gf69SJ7KwXPY0DPwUZydoqz2B7dOvTMf7TIb0SFGUnGHFjXeL2JJF66dlWqeAN8X
         LS/DZIS7d/YjBIqCvN0F+BW3BtuGMl/h3ysA6/L4W+5HemG/GHZy98BTEmBL/TKt4TqS
         VOwBryFxmUJSCr/WLHpbchAbIRKBK73idnzDvYtJ3MIDhAH/wTlqdxEDZAKaY6vnzNAI
         Q7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2uaugI2bLKCRBQDyZF1zpLdxkje5gCBBYFZp43Wd6I=;
        b=D9/cTo8r7c7trcqiB33lnlyOXNVH8D+j6XWN8bkxAbb7m+FggTKdR91POChbUW8vAt
         peLvBABgBxtmbJgsq/pLyfe8Zr+oTi9GIFlpDRmqB9weismlH0TFp9U5+XqhoS0A0NuC
         Rrt0DtMkgGgVPn4o4NTvBoPBxWcqc6NlhMjfxIeTXvamq9Z+oLrqhH6cR1VgI+Dz525C
         9QF67rKCjoOqdkRf4vPsqBWChA7PYo5lKjaRiEEddbW0dW4WL+y1jx/Lkh0/3DTpW/9o
         vTiHXe4bqJqFLd6OH7HvCrXzHQgZ5kfJ6RALf394UuuL9HmE++OsIyRMwd31ctnGmktw
         OqYQ==
X-Gm-Message-State: ACrzQf069pODcntLECEsua0Cz/9bFdw5IfgNEvOdGzhXZGL/Zup7AMU0
	Qj1pyNnwNwDcnbziH8RAGX8=
X-Google-Smtp-Source: AMsMyM5IIyHjuOylE5jH3gft4kmid2ugmwS2wPXe6BGGQMGneACXLozhaKbdbEpnNQo6DfccibWy3Q==
X-Received: by 2002:a17:906:9510:b0:7ad:fd3e:124b with SMTP id u16-20020a170906951000b007adfd3e124bmr4478279ejx.502.1667393797560;
        Wed, 02 Nov 2022 05:56:37 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:576c:b102:647e:9ffd? ([2a02:908:1256:79a0:576c:b102:647e:9ffd])
        by smtp.gmail.com with ESMTPSA id bo19-20020a170906d05300b007acbac07f07sm5413014ejb.51.2022.11.02.05.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:56:36 -0700 (PDT)
Message-ID: <35eeda2b-4570-4871-73f2-18b880b84284@gmail.com>
Date: Wed, 2 Nov 2022 13:56:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
 <20221102141954.7d362068@eldfell>
 <cc470b3d-a611-044f-2b35-cc827c962f9b@gmail.com>
 <20221102145036.30c70134@eldfell>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20221102145036.30c70134@eldfell>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 850EB3EEC1
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[ndufresne.ca,fooishbar.org,pengutronix.de,linaro.org,ffwll.ch,gmail.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: VHJLASFZ654QGZBBWGPB7G3O4UGUKSHR
X-Message-ID-Hash: VHJLASFZ654QGZBBWGPB7G3O4UGUKSHR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VHJLASFZ654QGZBBWGPB7G3O4UGUKSHR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMTEuMjIgdW0gMTM6NTAgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoNCj4gT24gV2VkLCAy
IE5vdiAyMDIyIDEzOjI3OjE4ICswMTAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVp
Y2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4+IEFtIDAyLjExLjIyIHVtIDEzOjE5
IHNjaHJpZWIgUGVra2EgUGFhbGFuZW46DQo+Pj4gT24gV2VkLCAyIE5vdiAyMDIyIDEyOjE4OjAx
ICswMTAwDQo+Pj4gQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFp
bC5jb20+IHdyb3RlOg0KPj4+ICAgDQo+Pj4+IEFtIDAxLjExLjIyIHVtIDIyOjA5IHNjaHJpZWIg
Tmljb2xhcyBEdWZyZXNuZToNCj4+Pj4+IFtTTklQXQ0KPj4+Pj4+PiBCdXQgdGhlIGNsaWVudCBp
cyBqdXN0IGEgdmlkZW8gcGxheWVyLiBJdCBkb2Vzbid0IHVuZGVyc3RhbmQgaG93IHRvDQo+Pj4+
Pj4+IGFsbG9jYXRlIEJPcyBmb3IgUGFuZnJvc3Qgb3IgQU1EIG9yIGV0bmF2aXYuIFNvIHdpdGhv
dXQgYSB1bml2ZXJzYWwNCj4+Pj4+Pj4gYWxsb2NhdG9yIChhZ2FpbiAuLi4pLCAnanVzdCBhbGxv
Y2F0ZSBvbiB0aGUgR1BVJyBpc24ndCBhIHVzZWZ1bA0KPj4+Pj4+PiByZXNwb25zZSB0byB0aGUg
Y2xpZW50Lg0KPj4+Pj4+IFdlbGwgZXhhY3RseSB0aGF0J3MgdGhlIHBvaW50IEknbSByYWlzaW5n
OiBUaGUgY2xpZW50ICptdXN0KiB1bmRlcnN0YW5kDQo+Pj4+Pj4gdGhhdCENCj4+Pj4+Pg0KPj4+
Pj4+IFNlZSB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gaGFuZGxlIGFsbCByZXN0cmljdGlvbnMgaGVy
ZSwgY29oZXJlbmN5IG9mIHRoZQ0KPj4+Pj4+IGRhdGEgaXMganVzdCBvbmUgb2YgdGhlbS4NCj4+
Pj4+Pg0KPj4+Pj4+IEZvciBleGFtcGxlIHRoZSBtdWNoIG1vcmUgaW1wb3J0YW50IHF1ZXN0aW9u
IGlzIHRoZSBsb2NhdGlvbiBvZiB0aGUgZGF0YQ0KPj4+Pj4+IGFuZCBmb3IgdGhpcyBhbGxvY2F0
aW5nIGZyb20gdGhlIFY0TDIgZGV2aWNlIGlzIGluIG1vc3QgY2FzZXMganVzdCBub3QNCj4+Pj4+
PiBnb2luZyB0byBmbHkuDQo+Pj4+PiBJdCBmZWVscyBsaWtlIHRoaXMgaXMgYSBnZW5lcmljIHN0
YXRlbWVudCBhbmQgdGhlcmUgaXMgbm8gcmVhc29uIGl0IGNvdWxkIG5vdCBiZQ0KPj4+Pj4gdGhl
IG90aGVyIHdheSBhcm91bmQuDQo+Pj4+IEFuZCBleGFjdGx5IHRoYXQncyBteSBwb2ludC4gWW91
IGFsd2F5cyBuZWVkIHRvIGxvb2sgYXQgYm90aCB3YXlzIHRvDQo+Pj4+IHNoYXJlIHRoZSBidWZm
ZXIgYW5kIGNhbid0IGFzc3VtZSB0aGF0IG9uZSB3aWxsIGFsd2F5cyB3b3JrLg0KPj4+Pg0KPj4+
PiBBcyBmYXIgYXMgSSBjYW4gc2VlIGl0IHlvdSBndXlzIGp1c3QgYWxsb2NhdGUgYSBidWZmZXIg
ZnJvbSBhIFY0TDINCj4+Pj4gZGV2aWNlLCBmaWxsIGl0IHdpdGggZGF0YSBhbmQgc2VuZCBpdCB0
byBXYXlsYW5kIGZvciBkaXNwbGF5aW5nLg0KPj4+Pg0KPj4+PiBUbyBiZSBob25lc3QgSSdtIHJl
YWxseSBzdXJwcmlzZWQgdGhhdCB0aGUgV2F5bGFuZCBndXlzIGhhc24ndCBwdXNoZWQNCj4+Pj4g
YmFjayBvbiB0aGlzIHByYWN0aWNlIGFscmVhZHkuDQo+Pj4gV2hhdCBzaG91bGQgd2UgV2F5bGFu
ZCBwZW9wbGUgYmUgcHVzaGluZyBiYWNrIG9uIGV4YWN0bHk/IEFuZCB3aGVyZSBpcw0KPj4+IG91
ciBhdXRob3JpdHkgYW5kIG9wcG9ydHVuaXR5IHRvIGRvIHNvPw0KPj4+DQo+Pj4gVGhlIFdheWxh
bmQgcHJvdG9jb2wgZG1hYnVmIGV4dGVuc2lvbiBhbGxvd3MgYSBncmFjZWZ1bCBmYWlsdXJlIGlm
IHRoZQ0KPj4+IFdheWxhbmQgY29tcG9zaXRvciBjYW5ub3QgdXNlIHRoZSBnaXZlbiBkbWFidWYg
YXQgYWxsLCBnaXZpbmcgdGhlDQo+Pj4gY2xpZW50IGFuIG9wcG9ydHVuaXR5IHRvIHRyeSBzb21l
dGhpbmcgZWxzZS4NCj4+IFRoYXQncyBleGFjdGx5IHdoYXQgSSBtZWFudCB3aXRoIHB1c2hpbmcg
YmFjayA6KQ0KPj4NCj4+IEkgd2Fzbid0IGF3YXJlIHRoYXQgdGhpcyBoYW5kbGluZyBpcyBhbHJl
YWR5IGltcGxlbWVudGVkLg0KPiBXZWxsLi4uIGl0J3MgIm9wdGlvbmFsIi4gVGhlIFdheWxhbmQg
ZG1hYnVmIHByb3RvY29sIGhhcyB0d28gY2FzZXMgZm9yDQo+IGEgY2xpZW50L2FwcDoNCj4NCj4g
YSkgeW91IGRvIHRoZSByaWdodCB0aGluZyBhbmQgd2FpdCBmb3IgdGhlIGNvbXBvc2l0b3IgdG8g
YWNrIHRoYXQgdGhlDQo+ICAgICBkbWFidWYgd29ya3MgKHRoZSByZXBseSBzaG91bGQgY29tZSBw
cmV0dHkgbXVjaCBpbW1lZGlhdGVseSwgbm90DQo+ICAgICBuZWVkaW5nIHRoZSBjb21wb3NpdG9y
IHRvIGFjdHVhbGx5IGNvbXBvc2l0ZSksIG9yDQo+DQo+IGIpIHlvdSBqdXN0IHNlbmQgdGhlIGRt
YWJ1ZiBhbmQgY29udGludWUgYXMgaWYgaXQgYWx3YXlzIHdvcmtlZC4gSWYgaXQNCj4gICAgIGRv
ZXNuJ3QsIHlvdSBtaWdodCBnZXQgYSBwcm90b2NvbCBlcnJvciBsYXRlciBhbmQgYmUgZGlzY29u
bmVjdGVkLg0KPg0KPiBHdWVzcyB3aGljaCBvbmUgTWVzYSB1c2VzPw0KPg0KPiBJJ3ZlIGJlZW4g
dG9sZCBNZXNhIGhhcyBubyB3YXkgdG8gaGFuZGxlIGEgZmFpbHVyZSB0aGVyZSwgc28gaXQNCj4g
ZG9lc24ndC4gSSB3b3VsZCBub3QgYmUgc3VycHJpc2VkIGlmIG90aGVycyBqdXN0IGNvcHkgdGhh
dCBiZWhhdmlvdXIuDQo+DQo+IEkgcmVjYWxsIHBlcnNvbmFsbHkgYmVpbmcgYWdhaW5zdCBhZGRp
bmcgb3B0aW9uIGIpIHRvIGJlZ2luIHdpdGgsIGJ1dA0KPiB0aGVyZSBpdCBpcywgYWRkZWQgZm9y
IE1lc2EgSUlSQy4NCg0KV2VsbCBJJ20gbm90IHN1cmUgaWYgdGhvc2UgcHJvamVjdHMgYWN0dWFs
bHkgdXNlZCBYIG9yIFdheWxhbmQsIGJ1dCB3ZSANCmRpZCBoYWQgY2FzZXMgd2hlcmUgdGhpcyB3
YXMgcmVhbGx5IHVzZWQuDQoNCklJUkMgaW4gdGhlIGNhc2Ugb2YgUHJpbWUgb2ZmbG9hZGluZyB3
ZSBub3cgYWxsb2NhdGUgYSBidWZmZXIgZnJvbSB0aGUgDQpkaXNwbGF5aW5nIGRldmljZSBpbiBN
ZXNhIGFuZCBkbyB0aGUgY29weSBmcm9tIHRoZSByZW5kZXJpbmcgR1BVIHRvIHRoZSANCmRpc3Bs
YXlpbmcgR1BVIG9uIHRoZSBjbGllbnQgc2lkZS4NCg0KVGhlIGJhY2tncm91bmQgaXMgdGhhdCB0
aGlzIGdhdmUgdXMgbXVjaCBiZXR0ZXIgY29udHJvbCB3aGljaCBlbmdpbmUgYW5kIA0KcGFyYW1l
dGVycyB3aGVyZSB1c2VkIGZvciB0aGUgY29weSByZXN1bHRpbmcgaW4gYSBuaWNlIHBlcmZvcm1h
bmNlIA0KaW1wcm92ZW1lbnQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
