Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5BF61199F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 19:50:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7302C3F5AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 17:50:30 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id D28033F573
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 17:50:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="dZ//xXyl";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id b20-20020a05600c4e1400b003cc28585e2fso4369480wmq.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 10:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M0CVd1s/OtsmW1e6UD0yEVPg+6CWPruQMBLEjGPjgA8=;
        b=dZ//xXylcKTfP9m7DecajDs4Cng4ZXlkiLplvDc48RUYMBufjsbCguWe6wqkRv28fH
         anSaJ8yy4EeOeI07FZSlHUKgJYV1aPDWR0gLQePJzjNnFvrSpk3AUreYMrD71/CpJ61v
         cWrpeBQR2XAVgzwR+8XnBZkE2alaSQnD3RNELcSRuMXipOD5VsNkDC1+E8rsthVFI3xi
         UWJa/oDK4sPtmr0ZU/DEeyC8eAQrhWXAYUBb+D5/pXWQYnZF6/DY4vg9+/rBup1b/fjF
         YCHURv+NGUTTS3RneYERAHxyRPBSUzn1J7DIvtDufqZAftRGERz/7QhB+ciMU7UmMG6c
         ecIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M0CVd1s/OtsmW1e6UD0yEVPg+6CWPruQMBLEjGPjgA8=;
        b=olDy8MK0rWTtC9TYmacSNtFfxe5EC1+aS++wlb6LFcif/QYjZW84rINzSde9SkUjE7
         j4W9qHFdKq6qO+94pSmlpqG0uTUaC0ZQmluaqT0VD9UbuwY2JMqDBLjK8InCs+3cosc8
         Gcrzxc/22pb4R2S7TzhG+7JZno2zZHjSsM79V1Rj0EenqWcbV9wgJ3FYErGmEuA0ilwo
         pXKcNDqyuzPOoC4ecmsDSmXgLsrMZ/iDdjrcQOlxujbiC8+kaNJcOuSnFL1YvIADfzJS
         pV6uMPbHYRjNEkW+xZbmaz9briaPEVjAjy26Wmsw29NDLowGNFg2TAeZMZY31nzcUYaU
         wWeg==
X-Gm-Message-State: ACrzQf3f/A5f9NmIcq02J7fkGoTyF1YG/IGMP65Ox4hZgddpzTm13CAc
	/yjRLz6g2U7/GBF1XiZRu/c=
X-Google-Smtp-Source: AMsMyM67I3tLMEtadyTmEU0a3QWcfGmJQGBxnorhqIoqIwLzIVXOaqJO1ObAlwru52SWo5P9vb/mfQ==
X-Received: by 2002:a05:600c:3789:b0:3c6:beed:fecf with SMTP id o9-20020a05600c378900b003c6beedfecfmr283591wmr.174.1666979412831;
        Fri, 28 Oct 2022 10:50:12 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:9377:d2f2:2ed:af4b? ([2a02:908:1256:79a0:9377:d2f2:2ed:af4b])
        by smtp.gmail.com with ESMTPSA id p38-20020a05600c1da600b003b497138093sm5159334wms.47.2022.10.28.10.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 10:50:12 -0700 (PDT)
Message-ID: <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
Date: Fri, 28 Oct 2022 19:50:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Lucas Stach <l.stach@pengutronix.de>, ppaalanen@gmail.com,
 sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----------
X-Rspamd-Queue-Id: D28033F573
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a02:908:1256:79a0:9377:d2f2:2ed:af4b:received,209.85.128.43:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.927];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[ndufresne.ca,pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 6VIF462YOHDWDCSZSPDZ2A626ISMK3WQ
X-Message-ID-Hash: 6VIF462YOHDWDCSZSPDZ2A626ISMK3WQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6VIF462YOHDWDCSZSPDZ2A626ISMK3WQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTmljb2xhcywNCg0KQW0gMjguMTAuMjIgdW0gMTc6NDYgc2NocmllYiBOaWNvbGFzIER1ZnJl
c25lOg0KPiBIaSwNCj4NCj4ganVzdCBkcm9wcGluZyBzb21lIHJlYWwgbGl2ZSB1c2UgY2FzZSwg
c29ycnkgSSdtIG5vdCByZWFsbHkgcHJvcG9zaW5nIHNvbHV0aW9ucywNCj4gSSBiZWxpZXZlIHlv
dSBhcmUgbXVjaCBtb3JlIGtub3dsZWRnZWFibGUgaW4gdGhpcyByZWdhcmQuDQoNCldlbGwsIEkg
dGhpbmsgZWFjaCBvZiB1cyBoYXMgYSBsb3Qgb2Ygc3BlY2lhbGl6ZWQga25vd2xlZGdlLiBGb3Ig
ZXhhbXBsZSANCkkgZG9uJ3Qga25vdyB0byBtdWNoIGFib3V0IGdyYWxsb2MvbWluaWdibS4gU28g
dGhpcyBpbnB1dCBpcyB2ZXJ5IHZhbHVhYmxlLg0KDQo+IExlIHZlbmRyZWRpIDI4IG9jdG9icmUg
MjAyMiDDoCAxNjoyNiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPj4gQW0g
MjguMTAuMjIgdW0gMTM6NDIgc2NocmllYiBMdWNhcyBTdGFjaDoNCj4+PiBBbSBGcmVpdGFnLCBk
ZW0gMjguMTAuMjAyMiB1bSAxMDo0MCArMDIwMCBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+
Pj4+IEJ1dCBlc3NlbnRpYWxseSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uIFRoZSBvbmx5IGFsdGVy
bmF0aXZlIEkgY2FuIHNlZSBpcw0KPj4+PiB0byByZXZlcnNlIHRoZSByb2xlIG9mIGV4cG9ydGVy
IGFuZCBpbXBvcnRlci4NCj4+Pj4NCj4+PiBJIGRvbid0IHRoaW5rIHRoYXQgd291bGQgd29yayBn
ZW5lcmFsbHkgZWl0aGVyLCBhcyBidWZmZXIgZXhwb3J0ZXIgYW5kDQo+Pj4gaW1wb3J0ZXIgaXNu
J3QgYWx3YXlzIGEgMToxIHRoaW5nLiBBcyBzb29uIGFzIGFueSBhdHRhY2hlZCBpbXBvcnRlciBo
YXMNCj4+PiBhIGRpZmZlcmVudCBjb2hlcmVuY3kgYmVoYXZpb3IgdGhhbiB0aGUgb3RoZXJzLCB0
aGluZ3MgZmFsbCBhcGFydC4NCj4+IEkndmUganVzdCBtZW50aW9uZWQgaXQgYmVjYXVzZSBzb21l
Ym9keSBub3RlZCB0aGF0IHdoZW4geW91IHJldmVyc2UgdGhlDQo+PiByb2xlcyBvZiBleHBvcnRl
ciBhbmQgaW1wb3J0ZXIgd2l0aCB0aGUgVjRMIGRyaXZlciBhbmQgaTkxNSB0aGVuIHRoZSB1c2UN
Cj4+IGNhc2Ugc3VkZGVubHkgc3RhcnRzIHdvcmtpbmcuDQo+IFRob3VnaCwgaXRzIG5vdCBnZW5l
cmljYWxseSBwb3NzaWJsZSB0byByZXZlcnNlIHRoZXNlIHJvbGVzLiBJZiB5b3Ugd2FudCB0byBk
bw0KPiBzbywgeW91IGVuZHVwIGhhdmluZyB0byBkbyBsaWtlIEFuZHJvaWQgKGdyYWxsb2MpIGFu
ZCBDaHJvbWVPUyAobWluaWdibSksDQo+IGJlY2F1c2UgeW91IHdpbGwgaGF2ZSB0byBhbGxvY2F0
ZSBEUk0gYnVmZmVycyB0aGF0IGtub3dzIGFib3V0IGltcG9ydGVyIHNwZWNpZmljDQo+IHJlcXVp
cmVtZW50cy4gU2VlIGxpbmsgWzFdIGZvciB3aGF0IGl0IGxvb2tzIGxpa2UgZm9yIFJLMzM5OSwg
d2l0aCBNb3Rpb24gVmVjdG9yDQo+IHNpemUgY2FsY3VsYXRpb24gY29waWVkIGZyb20gdGhlIGtl
cm5lbCBkcml2ZXIgaW50byBhIHVzZXJzcGFjZSBsaWIgKGFyZ3VhYmx5DQo+IHRoYXQgd2FzIGF2
YWlsYWJsZSBmcm9tIFY0TDIgc2l6ZWltYWdlLCBidXQgdGhpcyBpcyB0ZWNobmljYWxseSBkaWZm
aWN1bHQgdG8NCj4gY29tbXVuaWNhdGUgd2l0aGluIHRoZSBzb2Z0d2FyZSBsYXllcnMpLiBJZiB5
b3UgY291bGQgbGV0IHRoZSBkZWNvZGVyIGV4cG9ydA0KPiAod2l0aCBwcm9wZXIgY2FjaGUgbWFu
YWdlbWVudCkgdGhlIG5vbi1nZW5lcmljIGNvZGUgd291bGQgbm90IGJlIG5lZWRlZC4NCg0KWWVh
aCwgYnV0IEkgY2FuIGFsc28gcmV2ZXJzZSB0aGUgYXJndW1lbnQ6DQoNCkdldHRpbmcgdGhlIHBh
cmFtZXRlcnMgZm9yIFY0TCByaWdodCBzbyB0aGF0IHdlIGNhbiBzaGFyZSB0aGUgaW1hZ2UgaXMg
DQp0cmlja3ksIGJ1dCBnZXR0aW5nIHRoZSBwYXJhbWV0ZXJzIHNvIHRoYXQgdGhlIHN0dWZmIGlz
IGFjdHVhbGx5IA0KZGlyZWN0bHkgZGlzcGxheWFibGUgYnkgR1BVcyBpcyBldmVuIHRyaWNraWVy
Lg0KDQpFc3NlbnRpYWxseSB5b3UgbmVlZCB0byBsb29rIGF0IGJvdGggc2lkZXMgYW5kIGludGVy
ZmVyZW5jZSB0byBnZXQgdG8gYSANCmNvbW1vbiBncm91bmQsIGUuZy4gYWxpZ25tZW50LCBwaXRj
aCwgd2lkdGgvaGVpZ2h0LCBwYWRkaW5nLCBldGMuLi4uLg0KDQpEZWNpZGluZyBmcm9tIHdoaWNo
IHNpZGUgdG8gYWxsb2NhdGUgZnJvbSBpcyBqdXN0IG9uZSBzdGVwIGluIHRoaXMgDQpwcm9jZXNz
LiBGb3IgZXhhbXBsZSBtb3N0IGRHUFVzIGNhbid0IGRpc3BsYXkgZGlyZWN0bHkgZnJvbSBzeXN0
ZW0gDQptZW1vcnkgYWx0b2dldGhlciwgYnV0IGl0IGlzIHBvc3NpYmxlIHRvIGFsbG9jYXRlIHRo
ZSBETUEtYnVmIHRocm91Z2ggDQp0aGUgR1BVIGRyaXZlciBhbmQgdGhlbiB3cml0ZSBpbnRvIGRl
dmljZSBtZW1vcnkgd2l0aCBQMlAgUENJIHRyYW5zZmVycy4NCg0KU28gYXMgZmFyIGFzIEkgY2Fu
IHNlZSBzd2l0Y2hpbmcgaW1wb3J0ZXIgYW5kIGV4cG9ydGVyIHJvbGVzIGFuZCBldmVuIA0KaGF2
aW5nIHBlcmZvcm1hbnQgZXh0cmEgZmFsbGJhY2tzIHNob3VsZCBiZSBhIHN0YW5kYXJkIGZlYXR1
cmUgb2YgdXNlcnNwYWNlLg0KDQo+IEFub3RoZXIgY2FzZSB3aGVyZSByZXZlcnNpbmcgdGhlIHJv
bGUgaXMgZGlmZmljdWx0IGlzIGZvciBjYXNlIHdoZXJlIHlvdSBuZWVkIHRvDQo+IG11bHRpcGxl
eCB0aGUgc3RyZWFtcyAobGV0J3MgdXNlIGEgY2FtZXJhIHRvIGlsbHVzdHJhdGUpIGFuZCBzaGFy
ZSB0aGF0IHdpdGgNCj4gbXVsdGlwbGUgcHJvY2Vzc2VzLiBJbiB0aGVzZSB1c2VzIGNhc2UsIHRo
ZSBEUk0gaW1wb3J0ZXJzIGFyZSB2b2xhdGlsZSwgd2hpY2gNCj4gb25lIGRvIHlvdSBhYnVzZSB0
byBkbyBhbGxvY2F0aW9uIGZyb20gPyBJbiBtdWx0aW1lZGlhIHNlcnZlciBsaWtlIFBpcGVXaXJl
LCB5b3UNCj4gYXJlIG5vdCByZWFsbHkgYXdhcmUgaWYgdGhlIGNhbWVyYSB3aWxsIGJlIHVzZWQg
YnkgRFJNIG9yIG5vdCwgYW5kIGlmIHNvbWV0aGluZw0KPiAic3BlY2lhbCIgaXMgbmVlZGVkIGlu
IHRlcm0gb2Ygcm9sZSBpbnZlcnNpb24uIEl0IGlzIHJlbGF0aXZlbHkgZWFzeSB0byBkZWFsDQo+
IHdpdGggbWF0Y2hpbmcgbW9kaWZpZXJzLCBidXQgdXNpbmcgZG93bnN0cmVhbSAoZGlzcGxheS9n
cHUpIGFzIGFuIGV4cG9ydGVyIGlzDQo+IGFsd2F5cyBkaWZmaWN1bHQgKGFuZCByZXF1aXJlIHNv
bWUgbGV2ZWwgb2YgYWJ1c2UgYW5kIGd1ZXNzaW5nKS4NCg0KT2gsIHZlcnkgZ29vZCBwb2ludCEg
WWVhaCB3ZSBkbyBoYXZlIHVzZSBjYXNlcyBmb3IgdGhpcyB3aGVyZSBhbiBpbnB1dCANCmJ1ZmZl
ciBpcyBib3RoIGRpc3BsYXllZCBhcyB3ZWxsIGFzIGVuY29kZWQuDQoNCj4NCj4+IFdlbGwsIG5v
LiBXaGF0IEkgbWVhbiB3aXRoIGNvaGVyZW5jeSBpcyB0aGF0IHRoZSBkZXZpY2VzIGRvbid0IG5l
ZWQNCj4+IGluc2VydCBzcGVjaWFsIG9wZXJhdGlvbiB0byBhY2Nlc3MgZWFjaCBvdGhlcnMgZGF0
YS4NCj4+DQo+PiBUaGlzIGNhbiBiZSBhcmNoaXZlZCBieSBtdWx0aXBsZSBhcHByb2FjaGVzLCBl
LmcuIGJ5IHRoZSBQQ0kgY29oZXJlbmN5DQo+PiByZXF1aXJlbWVudHMsIGRldmljZSBpbnRlcm5h
bCBjb25uZWN0aW9ucyAoWEdNSSwgTlZMaW5rLCBDWEwgZXRjLi4uKSBhcw0KPj4gd2VsbCBhcyB1
c2luZyB1bmNhY2hlZCBzeXN0ZW0gbWVtb3J5Lg0KPj4NCj4+IFRoZSBrZXkgcG9pbnQgaXMgd2hh
dCB3ZSBjZXJ0YWlubHkgZG9uJ3Qgd2FudCBpcyBzcGVjaWFsIG9wZXJhdGlvbnMNCj4+IHdoaWNo
IHNheTogT2ssIG5vdyBkZXZpY2UgQSBjYW4gYWNjZXNzIHRoZSBkYXRhLCBub3cgZGV2aWNlIEIu
Li4uLg0KPj4gYmVjYXVzZSB0aGlzIGJyZWFrcyB0b25zIG9mIHVzZSBjYXNlcy4NCj4gSSdtIGNv
bWluZyBiYWNrIGFnYWluIHdpdGggdGhlIG11bHRpcGxleGluZyBjYXNlLiBXZSBrZWVwIGhhdmlu
ZyBtaXhlZCB1c2VzIGNhc2UNCj4gd2l0aCBtdWx0aXBsZSByZWNlaXZlci4gSW4gc29tZSBjYXNl
LCBkYXRhIG1heSBlbmR1cCBvbiBDUFUgd2hpbGUgYmVpbmcgZW5jb2RlZA0KPiBpbiBIVy4gQ3Vy
cmVudCBhcHByb2FjaCBvZiBkaXNhYmxpbmcgY2FjaGUgZG9lcyB3b3JrLCBidXQgQ1BVIGFsZ29y
aXRobSB0cnVseQ0KPiBzdWZmZXIgaW4gcGVyZm9ybWFuY2UuIERvaW5nIGEgZnVsbCBtZW1jcHkg
dG8gYSBjYWNoZWQgYnVmZmVyIGhlbHBzLCBidXQgcmVtYWlucw0KPiBzbG93ZXIgdGhlbiBpZiB0
aGUgY2FjaGUgaGFkIGJlZW4gc25vb3BlZCBieSB0aGUgaW1wb3J0ZXIgKGVuY29kZXIgaGVyZSkg
ZHJpdmVyLg0KDQpZZWFoLCB0aGF0IHdhcyBhbm90aGVyIHJlYXNvbiB3aHkgd2UgZW5kZWQgdXAg
cmF0aGVyIGhhdmluZyBhbiBleHRyYSANCmNvcHkgdGhhbiB3b3JraW5nIHdpdGggdW5jYWNoZWQg
YnVmZmVycyBmb3IgZGlzcGxheSBhcyB3ZWxsLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
