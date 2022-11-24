Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 073AC63756D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 10:43:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C94FC3EE6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 09:43:38 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id B998B3ED8F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 09:43:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=otDsLaoj;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id ho10so2966377ejc.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 01:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2RPW8A8622IBfO1EX5iRm8HxiUyxrUE7FK5Jnq+yG/M=;
        b=otDsLaoj6m8sjFQenn/qaHPEk1row/8usasDE1e9/mvhHyyjyZEdx9XgDl6enKOHbJ
         PLCkcrz+c4/IWc5w1MwZ7weH5EBbibB381Mc7rUd4zvCUguLSb4eipvJhuWCHCpFQjBg
         6MkyzCGj4taZ98hndmuRbKBeTwQ194I4ZeIm+NcA03AuvtXUFsitoKsEruswn+57zM8J
         LZNvPI+k2NJ78HS2IyS8CeKNuAiuLHseG3snx5mVjtgKuAsktsFfdbA4Ne/n1D03gL2e
         a9Ki40VRxMD1AvXOX/70LW1KD/OgrnPJPqZEtQrcSj7YxmHnP9X0mjtY8hqMGOOvoYpi
         o0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2RPW8A8622IBfO1EX5iRm8HxiUyxrUE7FK5Jnq+yG/M=;
        b=NRIHiO7xOrGz8GyxCJtlwuBhF1YckuTCoHhdDb4zXUvUY7Qyh8U6TRUUkdKFVHgInP
         5bAHzcDwZMvDiejfv7Zg8vnMapw+gpkjX/qXOlwaBe9ySdUQgmCdIKGvU7JmJgTe47Wa
         lrx3nrehT0gpxRrJEc5JOE7lc9ZTMrGhbiQ/5mFyZRgp/wJ/WrhmYj/jxxrLRAI4OwoI
         0RKVbB1X3kgpsgDWBmkHfdJ6O5mGr8o1weacMgVxE7UwCcTvHOvJnU8TSB6WxcBxgexv
         4RGkuuFRLRtKUtQwwDcWWA0Br3uxVK22KaQHHxGI5Govex15oAkouinmDWovhX31w9CD
         Vegg==
X-Gm-Message-State: ANoB5pmxaL2qqZoRbAwNq004gHaApm6dUDFq4ozKDaX1OF+W3nXIF8Vn
	QcMtxccDo1iWrIFwZN4cthY=
X-Google-Smtp-Source: AA0mqf6Rch2fQrPwnw9noSmJ5cc6rZAo9kXxOVzWmvs3GZ5yxKzJEnZh47tcO3zkLZ8JM8YTUyrsTw==
X-Received: by 2002:a17:906:3c4d:b0:78d:f2d8:4623 with SMTP id i13-20020a1709063c4d00b0078df2d84623mr28003859ejg.274.1669283009642;
        Thu, 24 Nov 2022 01:43:29 -0800 (PST)
Received: from [192.168.178.21] (p5b0ea229.dip0.t-ipconnect.de. [91.14.162.41])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906300b00b00781e7d364ebsm230155ejz.144.2022.11.24.01.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 01:43:28 -0800 (PST)
Message-ID: <63972059-1c23-ceb9-841c-1cfee29a1c77@gmail.com>
Date: Thu, 24 Nov 2022 10:43:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "T.J. Mercier" <tjmercier@google.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20221123193519.3948105-1-tjmercier@google.com>
 <260a86f0-057e-e235-ac38-abeb922d0dc1@amd.com>
 <Y38z6A5IF/BlXVPp@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Y38z6A5IF/BlXVPp@phenom.ffwll.local>
X-Rspamd-Queue-Id: B998B3ED8F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.958];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_BLOCKED(0.00)[amd.com:email];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.43:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EQB2FD6BUCBCFNFBJM2UKJY5AIRUO6M3
X-Message-ID-Hash: EQB2FD6BUCBCFNFBJM2UKJY5AIRUO6M3
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EQB2FD6BUCBCFNFBJM2UKJY5AIRUO6M3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMTEuMjIgdW0gMTA6MDUgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUaHUsIE5v
diAyNCwgMjAyMiBhdCAwODowMzowOUFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQW0gMjMuMTEuMjIgdW0gMjA6MzUgc2NocmllYiBULkouIE1lcmNpZXI6DQo+Pj4gSSd2ZSBi
ZWVuIGNvbGxlY3RpbmcgdGhlc2UgdHlwbyBmaXhlcyBmb3IgYSB3aGlsZSBhbmQgaXQgZmVlbHMg
bGlrZQ0KPj4+IHRpbWUgdG8gc2VuZCB0aGVtIGluLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTog
VC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4+IEFja2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFdpbGwgeW91IGFsc28gcHVz
aCB0aGlzPyBJIHRoaW5rIHRqIGRvZXNuJ3QgaGF2ZSBjb21taXQgcmlnaHRzIHlldCwgYW5kIEkN
Cj4gc29tZWhvdyBjYW4ndCBzZWUgdGhlIHBhdGNoIGxvY2FsbHkgKEkgZ3Vlc3MgaXQncyBzdHVj
ayBpbiBtb2RlcmF0aW9uKS4NCg0KSSB3YXMganVzdCBhYm91dCB0byBjb21wbGFpbiB0aGF0IHRo
aXMgZG9lc24ndCBhcHBseSBjbGVhbmx5IHRvIA0KZHJtLW1pc2MtbmV4dC4NCg0KVHJpdmlhbCBw
cm9ibGVtLCBvbmUgb2YgdGhlIHR5cG9zIHdhcyBqdXN0IHJlbW92ZWQgYnkgRGltaXRyeSBhIGZl
dyANCndlZWtzIGFnby4NCg0KSSd2ZSBmaXhlZCB0aGF0IHVwIGxvY2FsbHkgYW5kIHB1c2hlZCB0
aGUgcmVzdWx0LCBidXQgbmV2ZXJ0aGVsZXNzIA0KcGxlYXNlIG1ha2Ugc3VyZSB0aGF0IERNQS1i
dWYgcGF0Y2hlcyBhcmUgYmFzZWQgb24gdGhlIGRybSBicmFuY2hlcy4NCg0KVGhhbmtzLA0KQ2hy
aXN0aWFuLg0KDQo+IC1EYW5pZWwNCj4NCj4+PiAtLS0NCj4+PiAgICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIHwgMTQgKysrKysrKy0tLS0tLS0NCj4+PiAgICBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCAgIHwgIDYgKysrLS0tDQo+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IGluZGV4IGRkMGY4
M2VlNTA1Yi4uNjE0Y2NkMjA4YWY0IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gQEAgLTEx
NDEsNyArMTE0MSw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfdW5tYXBfYXR0YWNo
bWVudCwgRE1BX0JVRik7DQo+Pj4gICAgICoNCj4+PiAgICAgKiBAZG1hYnVmOglbaW5dCWJ1ZmZl
ciB3aGljaCBpcyBtb3ZpbmcNCj4+PiAgICAgKg0KPj4+IC0gKiBJbmZvcm1zIGFsbCBhdHRhY2ht
ZW5zdCB0aGF0IHRoZXkgbmVlZCB0byBkZXN0cm95IGFuZCByZWNyZWF0ZWQgYWxsIHRoZWlyDQo+
Pj4gKyAqIEluZm9ybXMgYWxsIGF0dGFjaG1lbnRzIHRoYXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kg
YW5kIHJlY3JlYXRlIGFsbCB0aGVpcg0KPj4+ICAgICAqIG1hcHBpbmdzLg0KPj4+ICAgICAqLw0K
Pj4+ICAgIHZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0K
Pj4+IEBAIC0xMTU5LDExICsxMTU5LDExIEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZf
bW92ZV9ub3RpZnksIERNQV9CVUYpOw0KPj4+ICAgIC8qKg0KPj4+ICAgICAqIERPQzogY3B1IGFj
Y2Vzcw0KPj4+ICAgICAqDQo+Pj4gLSAqIFRoZXJlIGFyZSBtdXRsaXBsZSByZWFzb25zIGZvciBz
dXBwb3J0aW5nIENQVSBhY2Nlc3MgdG8gYSBkbWEgYnVmZmVyIG9iamVjdDoNCj4+PiArICogVGhl
cmUgYXJlIG11bHRpcGxlIHJlYXNvbnMgZm9yIHN1cHBvcnRpbmcgQ1BVIGFjY2VzcyB0byBhIGRt
YSBidWZmZXIgb2JqZWN0Og0KPj4+ICAgICAqDQo+Pj4gICAgICogLSBGYWxsYmFjayBvcGVyYXRp
b25zIGluIHRoZSBrZXJuZWwsIGZvciBleGFtcGxlIHdoZW4gYSBkZXZpY2UgaXMgY29ubmVjdGVk
DQo+Pj4gICAgICogICBvdmVyIFVTQiBhbmQgdGhlIGtlcm5lbCBuZWVkcyB0byBzaHVmZmxlIHRo
ZSBkYXRhIGFyb3VuZCBmaXJzdCBiZWZvcmUNCj4+PiAtICogICBzZW5kaW5nIGl0IGF3YXkuIENh
Y2hlIGNvaGVyZW5jeSBpcyBoYW5kbGVkIGJ5IGJyYWtldGluZyBhbnkgdHJhbnNhY3Rpb25zDQo+
Pj4gKyAqICAgc2VuZGluZyBpdCBhd2F5LiBDYWNoZSBjb2hlcmVuY3kgaXMgaGFuZGxlZCBieSBi
cmFja2V0aW5nIGFueSB0cmFuc2FjdGlvbnMNCj4+PiAgICAgKiAgIHdpdGggY2FsbHMgdG8gZG1h
X2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkgYW5kIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKQ0KPj4+
ICAgICAqICAgYWNjZXNzLg0KPj4+ICAgICAqDQo+Pj4gQEAgLTExOTAsNyArMTE5MCw3IEBAIEVY
UE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfbW92ZV9ub3RpZnksIERNQV9CVUYpOw0KPj4+ICAg
ICAqICAgcmVwbGFjZSBJT04gYnVmZmVycyBtbWFwIHN1cHBvcnQgd2FzIG5lZWRlZC4NCj4+PiAg
ICAgKg0KPj4+ICAgICAqICAgVGhlcmUgaXMgbm8gc3BlY2lhbCBpbnRlcmZhY2VzLCB1c2Vyc3Bh
Y2Ugc2ltcGx5IGNhbGxzIG1tYXAgb24gdGhlIGRtYS1idWYNCj4+PiAtICogICBmZC4gQnV0IGxp
a2UgZm9yIENQVSBhY2Nlc3MgdGhlcmUncyBhIG5lZWQgdG8gYnJha2V0IHRoZSBhY3R1YWwgYWNj
ZXNzLA0KPj4+ICsgKiAgIGZkLiBCdXQgbGlrZSBmb3IgQ1BVIGFjY2VzcyB0aGVyZSdzIGEgbmVl
ZCB0byBicmFja2V0IHRoZSBhY3R1YWwgYWNjZXNzLA0KPj4+ICAgICAqICAgd2hpY2ggaXMgaGFu
ZGxlZCBieSB0aGUgaW9jdGwgKERNQV9CVUZfSU9DVExfU1lOQykuIE5vdGUgdGhhdA0KPj4+ICAg
ICAqICAgRE1BX0JVRl9JT0NUTF9TWU5DIGNhbiBmYWlsIHdpdGggLUVBR0FJTiBvciAtRUlOVFIs
IGluIHdoaWNoIGNhc2UgaXQgbXVzdA0KPj4+ICAgICAqICAgYmUgcmVzdGFydGVkLg0KPj4+IEBA
IC0xMjY0LDEwICsxMjY0LDEwIEBAIHN0YXRpYyBpbnQgX19kbWFfYnVmX2JlZ2luX2NwdV9hY2Nl
c3Moc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4+PiAgICAgKiBwcmVwYXJhdGlvbnMuIENvaGVy
ZW5jeSBpcyBvbmx5IGd1YXJhbnRlZWQgaW4gdGhlIHNwZWNpZmllZCByYW5nZSBmb3IgdGhlDQo+
Pj4gICAgICogc3BlY2lmaWVkIGFjY2VzcyBkaXJlY3Rpb24uDQo+Pj4gICAgICogQGRtYWJ1ZjoJ
W2luXQlidWZmZXIgdG8gcHJlcGFyZSBjcHUgYWNjZXNzIGZvci4NCj4+PiAtICogQGRpcmVjdGlv
bjoJW2luXQlsZW5ndGggb2YgcmFuZ2UgZm9yIGNwdSBhY2Nlc3MuDQo+Pj4gKyAqIEBkaXJlY3Rp
b246CVtpbl0JZGlyZWN0aW9uIG9mIGFjY2Vzcy4NCj4+PiAgICAgKg0KPj4+ICAgICAqIEFmdGVy
IHRoZSBjcHUgYWNjZXNzIGlzIGNvbXBsZXRlIHRoZSBjYWxsZXIgc2hvdWxkIGNhbGwNCj4+PiAt
ICogZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcygpLiBPbmx5IHdoZW4gY3B1IGFjY2VzcyBpcyBicmFr
ZXRlZCBieSBib3RoIGNhbGxzIGlzDQo+Pj4gKyAqIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKS4g
T25seSB3aGVuIGNwdSBhY2Nlc3MgaXMgYnJhY2tldGVkIGJ5IGJvdGggY2FsbHMgaXMNCj4+PiAg
ICAgKiBpdCBndWFyYW50ZWVkIHRvIGJlIGNvaGVyZW50IHdpdGggb3RoZXIgRE1BIGFjY2Vzcy4N
Cj4+PiAgICAgKg0KPj4+ICAgICAqIFRoaXMgZnVuY3Rpb24gd2lsbCBhbHNvIHdhaXQgZm9yIGFu
eSBETUEgdHJhbnNhY3Rpb25zIHRyYWNrZWQgdGhyb3VnaA0KPj4+IEBAIC0xMzA3LDcgKzEzMDcs
NyBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MsIERNQV9C
VUYpOw0KPj4+ICAgICAqIGFjdGlvbnMuIENvaGVyZW5jeSBpcyBvbmx5IGd1YXJhbnRlZWQgaW4g
dGhlIHNwZWNpZmllZCByYW5nZSBmb3IgdGhlDQo+Pj4gICAgICogc3BlY2lmaWVkIGFjY2VzcyBk
aXJlY3Rpb24uDQo+Pj4gICAgICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gY29tcGxldGUgY3B1
IGFjY2VzcyBmb3IuDQo+Pj4gLSAqIEBkaXJlY3Rpb246CVtpbl0JbGVuZ3RoIG9mIHJhbmdlIGZv
ciBjcHUgYWNjZXNzLg0KPj4+ICsgKiBAZGlyZWN0aW9uOglbaW5dCWRpcmVjdGlvbiBvZiBhY2Nl
c3MuDQo+Pj4gICAgICoNCj4+PiAgICAgKiBUaGlzIHRlcm1pbmF0ZXMgQ1BVIGFjY2VzcyBzdGFy
dGVkIHdpdGggZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkuDQo+Pj4gICAgICoNCj4+PiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KPj4+IGluZGV4IDcxNzMxNzk2YzhjMy4uMWQ2MWE0ZjZkYjM1IDEwMDY0NA0KPj4+IC0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVm
LmgNCj4+PiBAQCAtMzMwLDcgKzMzMCw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4+PiAgICAJICog
QGxvY2s6DQo+Pj4gICAgCSAqDQo+Pj4gICAgCSAqIFVzZWQgaW50ZXJuYWxseSB0byBzZXJpYWxp
emUgbGlzdCBtYW5pcHVsYXRpb24sIGF0dGFjaC9kZXRhY2ggYW5kDQo+Pj4gLQkgKiB2bWFwL3Vu
bWFwLiBOb3RlIHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2VlZGVkIGJ5DQo+Pj4g
KwkgKiB2bWFwL3VubWFwLiBOb3RlIHRoYXQgaW4gbWFueSBjYXNlcyB0aGlzIGlzIHN1cGVyc2Vk
ZWQgYnkNCj4+PiAgICAJICogZG1hX3Jlc3ZfbG9jaygpIG9uIEByZXN2Lg0KPj4+ICAgIAkgKi8N
Cj4+PiAgICAJc3RydWN0IG11dGV4IGxvY2s7DQo+Pj4gQEAgLTM2NSw3ICszNjUsNyBAQCBzdHJ1
Y3QgZG1hX2J1ZiB7DQo+Pj4gICAgCSAqLw0KPj4+ICAgIAljb25zdCBjaGFyICpuYW1lOw0KPj4+
IC0JLyoqIEBuYW1lX2xvY2s6IFNwaW5sb2NrIHRvIHByb3RlY3QgbmFtZSBhY2NlcyBmb3IgcmVh
ZCBhY2Nlc3MuICovDQo+Pj4gKwkvKiogQG5hbWVfbG9jazogU3BpbmxvY2sgdG8gcHJvdGVjdCBu
YW1lIGFjY2VzcyBmb3IgcmVhZCBhY2Nlc3MuICovDQo+Pj4gICAgCXNwaW5sb2NrX3QgbmFtZV9s
b2NrOw0KPj4+ICAgIAkvKioNCj4+PiBAQCAtNDAyLDcgKzQwMiw3IEBAIHN0cnVjdCBkbWFfYnVm
IHsNCj4+PiAgICAJICogICBhbnl0aGluZyB0aGUgdXNlcnNwYWNlIEFQSSBjb25zaWRlcnMgd3Jp
dGUgYWNjZXNzLg0KPj4+ICAgIAkgKg0KPj4+ICAgIAkgKiAtIERyaXZlcnMgbWF5IGp1c3QgYWx3
YXlzIGFkZCBhIHdyaXRlIGZlbmNlLCBzaW5jZSB0aGF0IG9ubHkNCj4+PiAtCSAqICAgY2F1c2Vz
IHVuZWNlc3NhcmlseSBzeW5jaHJvbml6YXRpb24sIGJ1dCBubyBjb3JyZWN0bmVzcyBpc3N1ZXMu
DQo+Pj4gKwkgKiAgIGNhdXNlcyB1bm5lY2Vzc2FyeSBzeW5jaHJvbml6YXRpb24sIGJ1dCBubyBj
b3JyZWN0bmVzcyBpc3N1ZXMuDQo+Pj4gICAgCSAqDQo+Pj4gICAgCSAqIC0gU29tZSBkcml2ZXJz
IG9ubHkgZXhwb3NlIGEgc3luY2hyb25vdXMgdXNlcnNwYWNlIEFQSSB3aXRoIG5vDQo+Pj4gICAg
CSAqICAgcGlwZWxpbmluZyBhY3Jvc3MgZHJpdmVycy4gVGhlc2UgZG8gbm90IHNldCBhbnkgZmVu
Y2VzIGZvciB0aGVpcg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
