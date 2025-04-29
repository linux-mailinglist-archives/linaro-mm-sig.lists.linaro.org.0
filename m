Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 720D9AA117C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 18:25:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7FBD45246
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Apr 2025 16:25:31 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id B43023F39C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Apr 2025 16:25:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=su9TnW03;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5499614d3d2so6660427e87.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Apr 2025 09:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745943914; x=1746548714; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKOagLWA/kZg/ToUTo4BHkndG6E7DkyiHJdjnSUiHVY=;
        b=su9TnW03Rtxd3YFfK09jfvyfe2Z3kWD9wpr7UiUnQaLtUfJ3DNMUVKZORHcm6HssMA
         FHNlPVQDEaLjpYgmGFNZAHyGth5oPA29or/fYqfJhi3XLkikcPFCIuG6vnVrBF7yy70z
         FTBM+swXT7/FGnX/xJ1XKWFaBxl5vCNeweWVELwR83UbphB5qUvo/dvpUEz5/SA5anyU
         HDkxStTLgZVtWyAcdrNrmN5sPCETH9ysBuOyaqA3EKb4LQjC/OzYEd3p5dJogFrDmThQ
         3iV4ksNgpXXsh1quhUwk1VCHGLkt+AdDMyLwCq+kDfYaPU8wkqbAZxRoUYQm59mf0SUu
         hBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745943914; x=1746548714;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKOagLWA/kZg/ToUTo4BHkndG6E7DkyiHJdjnSUiHVY=;
        b=nDx1Ms7H86mlwEGldCFJAh6eAOv5XWiglKiFnQ8B591izkdzTQPqr8VHoHsR1u5asa
         8d0DtAuI/IPGk4qmAPOP0eyaIMb1gNfnpQ/eEbVZ9pHSz5oJQ6HH85QoixuVs8v5Bn1H
         0LYQCyraXX8xgXovGmR9x/FPUAOBhXsYlcLjsIqmkS9V2/ixnwLIjj/tIDhb3p5OIpYK
         wkYMENPyoWWTIGieVDCB0m18hxGzMHq97XxJ6sSc5ahMCkX3pbM4W4QqNvSnckn3Cnaa
         Jq4ZOThdjfp/5BgvEWQJu+734bcYssj8OOdJerQu+uXrQ1NoT6HGK5iZnDkLMLp2fF+T
         hcEw==
X-Forwarded-Encrypted: i=1; AJvYcCVlUdQR8/ibdwaAsIjh72bLmxiGPTQPh8HQ6DJtXctj92Q7mBqm5lvAglbNrOiZxYdEJeSjXJIFjzrakoW1@lists.linaro.org
X-Gm-Message-State: AOJu0YwUVGbYBxOWNSnPTHUHKw8mxnDIYIp2GmqHpKOZw9QDUhhJDi1e
	7kyguvOXWy+gJHQcQlWSndpYKMN/a5grypfsV7SXKi1M51TkJf2BS8OwYlqNaH39vlVQne1WPYr
	Fo28O7eOaFVUriLxmmH8/xZ9Ue6aqVLmsTkg=
X-Gm-Gg: ASbGncvzd/5/JYIiyrKPCosV4Z2CJy4Ioz4e/lB/PT4kd3euWTuj82g2cylgDBxsD7d
	Uu+SWCF1mc6+TjugcwgO7S2PKf6EsPgmj+H9ujz0gs7PnqA99LJHxzwAgqNRTCt15ADhqylTp1d
	w9NCFFBMitsW21MDUh9Qnw9g==
X-Google-Smtp-Source: AGHT+IFz8rD0QJHmc5e9+fFedl8kedVp2EJSv9dtVHgPF6jnpm6m9U4oX5GINjIas2t7Kv1uptEWFoB+brR+qe4jTNY=
X-Received: by 2002:a05:6512:4021:b0:545:2d4d:36de with SMTP id
 2adb3069b0e04-54e9daf7079mr1518766e87.31.1745943913905; Tue, 29 Apr 2025
 09:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com> <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat> <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
 <20250425-savvy-chubby-alpaca-0196e3@houat> <CANDhNCroe6ZBtN_o=c71kzFFaWK-fF5rCdnr9P5h1sgPOWSGSw@mail.gmail.com>
 <20250428-greedy-vivid-goldfish-5abb35@houat>
In-Reply-To: <20250428-greedy-vivid-goldfish-5abb35@houat>
From: John Stultz <jstultz@google.com>
Date: Tue, 29 Apr 2025 09:25:00 -0700
X-Gm-Features: ATxdqUG-hdRFM6Y9Ghi7S9yM9T68MXFZrkwlsbB6L0JPOCzRmgrsDsYydEWJg1Q
Message-ID: <CANDhNCqdL7Oha+cGkk0XCZ8shO08ax1rd2k6f9SckuREUdQUjg@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B43023F39C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.47:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.167.47:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: V7FLQH6RW4JVTNITWXCYUZGY37OQNLGY
X-Message-ID-Hash: V7FLQH6RW4JVTNITWXCYUZGY37OQNLGY
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V7FLQH6RW4JVTNITWXCYUZGY37OQNLGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMjgsIDIwMjUgYXQgNzo1MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IE9uIEZyaSwgQXByIDI1LCAyMDI1IGF0IDEyOjM5OjQwUE0g
LTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+IFRvIHlvdXIgbGFyZ2VyIHBvaW50IGFib3V0
IHBvbGljeSwgSSBkbyBnZXQgdGhlIHRlbnNpb24gdGhhdCB5b3Ugd2FudA0KPiA+IHRvIGJlIGFi
bGUgdG8gcHJvZ3JhbW1hdGljYWxseSBkZXJpdmUgb3IgZXZhbHVhdGUgaGVhcCBuYW1lcywgc28g
dGhhdA0KPiA+IGFwcGxpY2F0aW9ucyBjYW4gY29uc2lzdGVudGx5IGRlcml2ZSBhIHBhdGhuYW1l
IHRvIGdldCB3aGF0IHRoZXkgd2FudC4NCj4NCj4gV2UndmUgZGlzY3Vzc2VkIGl0IGluIHRoZSBw
YXN0LCBJIGRvbid0IHJlYWxseSB3YW50IHRvLiBCdXQgaXQgd2FzIGNsZWFyDQo+IGZyb20gdGhl
IGxhc3QgZGlzY3Vzc2lvbiB0aGF0IHlvdSAocGx1cmFsKSB3YW50ZWQgdG8gaW5mZXIgaGVhcA0K
PiBzZW1hbnRpY3MgZnJvbSB0aGUgbmFtZXMuIEknbSBvayB3aXRoIHRoYXQsIGJ1dCB0aGVuIGlm
IHdlIHdhbnQgdG8gbWFrZQ0KPiBpdCB3b3JrIHdlIG5lZWQgdG8gaGF2ZSB3ZWxsIGRlZmluZWQg
bmFtZXMuDQoNClNvIG15IG5hbWUga2VlcHMgb24gZ2V0dGluZyBhdHRhY2hlZCB0byB0aGF0LCBi
dXQgSSBkb24ndCB0aGluayBJIHdhcw0KaW52b2x2ZWQgaW4gdGhlIExQQyBjb252ZXJzYXRpb24g
d2hlbiB0aGF0IGdvdCBkZWNpZGVkLg0KDQo+IEFuZCBpdCdzIGFjdHVhbGx5IHdoYXQgSSByZWFs
bHkgd2FudCB0byBkaXNjdXNzIGhlcmU6IHdlJ3ZlIGRpc2N1c3NlZCBhdA0KPiBsZW5ndGggaG93
IGJhZCB0aGUgaGVhcHMgbmFtZSBhcmUgKGFuZCBub3Qgb25seSBoZXJlKSwgYnV0IEkgZG9uJ3Qg
dGhpbmsNCj4gd2UgaGF2ZSBhbnkgZG9jdW1lbnRlZCBwb2xpY3kgb24gd2hhdCBtYWtlcyBhIGdv
b2QgbmFtZT8NCg0KSSB2ZXJ5IG11Y2ggdGhpbmsgaGF2aW5nIGEgcG9saWN5L2d1aWRhbmNlIGZv
ciBiZXR0ZXIgbmFtZXMgaXMgYSBnb29kIGdvYWwuDQoNCkkganVzdCB3YW50IHRvIG1ha2Ugc3Vy
ZSBpdCBkb2Vzbid0IGJlY29tZSBhIHN0cmljdCBwb2xpY3kgdGhhdCBsZWFkDQpmb2xrcyB0byBt
YWtlIG1pc3Rha2VuIGFzc3VtcHRpb25zIGFib3V0IGEgc3RhdGljIHNvbHV0aW9uIGJlaW5nDQp2
aWFibGUgaW4gdXNlcmxhbmQgKGxpa2UgZm9sa3Mgbm9zdGFsZ2ljbHkgdXNpbmcgImV0aDAiIG9y
IGEgZml4ZWQNCm5ldHdvcmsgZGV2aWNlIG5hbWUgaW4gc2NyaXB0cyBleHBlY3RpbmcgaXQgdG8g
d29yayBvbiBhIGRpZmZlcmVudA0Kc3lzdGVtKQ0KDQo+IEZvciBleGFtcGxlLCBJJ20gbm90IHN1
cmUgZXhwb3NpbmcgdGhlIGFsbG9jYXRvciBuYW1lIGlzIGEgZ29vZCBpZGVhOg0KPiBpdCdzIGFu
IGltcGxlbWVudGF0aW9uIGRldGFpbCBhbmQgZm9yIGFsbCB1c2Vyc3BhY2UgY2FyZXMgYWJvdXQs
IHdlDQo+IGNvdWxkIGNoYW5nZSBpdCBldmVyeSByZWxlYXNlIGlmIGl0IHByb3ZpZGVkIHRoZSBz
YW1lIGtpbmQgb2YgYnVmZmVycy4NCg0KVGhhdCBpcyBhIGZhaXIgcG9pbnQuDQoNCj4gVGFraW5n
IHlvdXIgY2FtZXJhIGJ1ZmZlcnMgZXhhbXBsZSBiZWZvcmUsIHRoZW4gd2UgY291bGQgYWxzbyBl
eHBvc2UgYQ0KPiBtZW1vcnkgcmVnaW9uIGlkLCBhbmQgbGV0IHRoZSBwbGF0Zm9ybSBmaWd1cmUg
aXQgb3V0LCBvciB1c2UgdGhlIHVzZWNhc2UNCj4gYXMgdGhlIG5hbWUuDQo+DQo+IEJ1dCBpZiB3
ZSBkb24ndCBkb2N1bWVudCB0aGF0LCBob3cgY2FuIHdlIHBvc3NpYmx5IGV4cGVjdCBldmVyeW9u
ZQ0KPiBpbmNsdWRpbmcgZG93bnN0cmVhbSB0byBjb21lIHVwIHdpdGggcGVyZmVjdCBuYW1lcyBl
dmVyeSB0aW1lLiBBbmQgRlRSLA0KPiBJJ20gd2lsbGluZyB0byB3cml0ZSB0aGF0IGRvYyBkb3du
IG9uY2UgdGhlIGRpc2N1c3Npb24gc2V0dGxlcy4NCg0KU28gYWdhaW4sIHllYWgsIEkgdmVyeSBt
dWNoIHN1cHBvcnQgaGF2aW5nIGJldHRlciBndWlkYW5jZSBvbiB0aGUgbmFtZXMuDQoNCkkgdGhp
bmsgdGhlIG51bWJlciBvZiBkZXZpY2UgY29uc3RyYWludHMgYW5kIGRldmljZSBjb21iaW5hdGlv
bnMgbWFrZXMNCmEgcmF3IGVudW1lcmF0aW9uIG9mIHRoaW5ncyBkaWZmaWN1bHQuDQoNClRoaXMg
aXMgd2h5IHRoZSBwZXItZGV2aWNlIHVzZS0+aGVhcCBtYXBwaW5nICJnbHVlIiBzZWVtcyBuZWNl
c3NhcnkgdG8gbWUuDQoNCkFuZCwgSSBkbyBnZXQgdGhhdCB0aGlzIHJ1bnMgaW50byBhIHNpbWls
YXIgcHJvYmxlbSB3aXRoIGVudW1lcmF0aW5nDQphbmQgZGVmaW5pbmcgInVzZXMiICh3aGljaCBi
b2lsIGRvd24gdG8gYSBjb21iaW5hdGlvbiBvZg0KZGV2aWNlcy1pbi1hLXBpcGVsaW5lIGFuZCBh
Y2Nlc3MgdXNlIHBhdHRlcm5zKSwgYnV0IGZvciBBbmRvcmlkIGl0IGhhcw0Kc28gZmFyIGJlZW4g
bWFuYWdlYWJsZS4NCg0KUGVyc29uYWxseSwgSSB0aGluayB0aGUgYmVzdCBpZGVhIEkndmUgaGVh
cmQgc28gZmFyIHRvIHJlc29sdmUgdGhpcw0KZnJvbSB1c2VybGFuZCB3YXMgQ2hyaXN0aWFuJ3Mg
c3VnZ2VzdGlvbiB0aGF0IGRldmljZXMgZXhwb3NlIGxpbmtzIHRvDQpjb21wYXRpYmxlIGhlYXBz
LCBhbmQgdGhlbiB1c2VybGFuZCB3aXRob3V0IGEgdXNlLT5oZWFwIG1hcHBpbmcgY291bGQNCmZv
ciB0aGUgc2V0IG9mIGRldmljZXMgdGhleSBwbGFuIHRvIHVzZSBpbiBhIHBpcGVsaW5lLCBmaWd1
cmUgb3V0IHRoZQ0KY29tbW9uIGhlYXAgbmFtZSBhbmQgdXNlIHRoYXQgdG8gYWxsb2NhdGUuDQoN
Ckhvd2V2ZXIsIHRoYXQgcHVzaGVzIHRoZSBwcm9ibGVtIGRvd24gYSBiaXQsIHJlcXVpcmluZyBk
cml2ZXJzDQooaW5zdGVhZCBvZiB1c2VybGFuZCkgdG8ga25vdyB3aGF0IGhlYXBzIHRoZXkgY2Fu
IHdvcmsgd2l0aCBhbmQgd2hhdA0KdGhlIG5hbWVzIG1pZ2h0IGJlICh3aGljaCBhZ2FpbiwgeW91
ciBnb2FsIGZvciBzdGFuZGFyZGl6aW5nIHRoZSBoZWFwDQpuYW1lcyBpc24ndCBhIGJhZCB0aGlu
ZyEpLiBUaG91Z2gsIHRoaXMgYXBwcm9hY2ggYWxzbyBydW5zIGludG8NCnRyb3VibGUgYXMgaXQg
b3BlbnMgYSBxdWVzdGlvbiBvZjogc2hvdWxkIGl0IG9ubHkgZW5jb2RlIHN0cmljdA0KY29uc3Ry
YWludCBzYXRpc2ZhY3Rpb24sIG9yIHNvbWV0aGluZyBtb3JlIHN1YnRsZSwgYXMgd2hpbGUgc29t
ZXRoaW5nDQptaWdodCB3b3JrIHdpdGggbXVsdGlwbGUgaGVhcHMsIGl0cyBwb3NzaWJsZSBpdCB3
b24ndCBiZSBwZXJmb3JtYW50DQplbm91Z2ggdW5sZXNzIGl0IHBpY2tzIGEgc3BlY2lmaWMgb25l
IG9uIGRldmljZSBBIG9yIGEgZGlmZmVyZW50IG9uZQ0Kb24gZGV2aWNlIEIuICBBbmQgZ2V0dGlu
ZyB0aGF0IHNvcnQgb2YgZGV2aWNlLXNwZWNpZmljIGRldGFpbHMNCmVtYmVkZGVkIGludG8gYSBk
cml2ZXIgaXNuJ3QgZ3JlYXQgZWl0aGVyLg0KDQo+ID4gQnV0IEkgYWxzbyB0aGluayB0aGF0IHRo
ZXJlIGlzIHNvIG11Y2ggdmFyaWV0eSBpbiBib3RoIHRoZSBkZXZpY2VzIGFuZA0KPiA+IHVzZXMg
dGhhdCB0aGVyZSBpcyBubyB3YXkgdGhhdCBhbGwgdXNlIGNhc2VzIGFuZCBhbGwgZGV2aWNlcyBj
YW4gYmUNCj4gPiBzYXRpc2ZpZWQgd2l0aCBzdWNoIGEgc3RhdGljIG9yIGV2ZW4gcHJvZ3JhbW1h
dGljIG1hcHBpbmcuIEZyb20gbXkNCj4gPiBwZXJzcGVjdGl2ZSwgdGhlcmUganVzdCBpcyBnb2lu
ZyB0byBoYXZlIHRvIGJlIHNvbWUgZGV2aWNlIHNwZWNpZmljDQo+ID4gZ2x1ZSBsb2dpYyB0aGF0
IG1hcHMgdXNlLT5oZWFwIG5hbWUuIFNhbWUgcmVhc29uIHdlIGhhdmUgZnN0YWIgYW5kIHRoZQ0K
PiA+IHBhc3N3ZCBmaWxlLg0KPg0KPiBmc3RhYiBhbmQgcGFzc3dkIGNhbiBiZSBnZW5lcmF0ZWQg
YXQgKGZpcnN0KSBib290IHRpbWUgLyBpbnN0YWxsLiBmc3RhYg0KPiBpcyBhbHNvIGJlaW5nIHNv
bWV3aGF0IGxlc3MgaW1wb3J0YW50IHdpdGggdGhlIGF1dG8tcGFydGl0aW9uIGRpc2NvdmVyeS4N
Cj4gSG93IHdvdWxkIHlvdSBnZW5lcmF0ZSB0aGF0IGNvbmZpZ3VyYXRpb24gZmlsZSBhdCBib290
Pw0KPg0KPiBJJ20gbm90IHJlYWxseSBhc2tpbmcgdGhpcyBhcyBhIHRoZW9yZXRpY2FsIHF1ZXN0
aW9uLiBCZWluZyBhYmxlIHRvDQo+IGF1dG8tZGlzY292ZXIgd2hpY2ggaGVhcCBhIGRyaXZlci9k
ZXZpY2Ugd291bGQgYWxsb2NhdGUgZnJvbSBpcyBjZW50cmFsDQo+IGZvciB0aGUgY2dyb3VwIHdv
cmsgSSBtZW50aW9uZWQgZWFybGllci4NCj4NCj4gQW5kIEknbSByZWFsbHkgbm90IHN1cmUgaG93
IGRpc3Ryb3Mgb3IgYXBwbGljYXRpb25zIGRldmVsb3BwZXJzIGFyZQ0KPiBzdXBwb3NlZCB0byBr
ZWVwIHVwIHdpdGggdGhlIHJhdyB2b2x1bWUgb2YgZGV2aWNlcyB0aGF0IGdvIG91dCBldmVyeQ0K
PiB5ZWFyLCBlYWNoIGFuZCBldmVyeSBvbmUgb2YgdGhlbSBoYXZpbmcgZGlmZmVyZW50IGhlYXAg
bmFtZXMsIGV0Yy4NCj4gUG9zc2libHkgZGlmZmVyZW50IGZyb20gb25lIHZlcnNpb24gb2YgdGhl
IGZpcm13YXJlIHRvIGFub3RoZXIuDQoNCkZvciBnZW5lcmljIGRpc3Ryb3MsIEkgZG9uJ3QgaGF2
ZSBhIGdvb2QgYW5zd2VyIGhlcmUuIEhpc3RvcmljYWxseSB0aGUNCmZvY3VzIGhhcyBhbHdheXMg
YmVlbiBvbiBzaW5nbGUgZGV2aWNlIHVzYWdlLCBzbyBoYXZpbmcgdGhlIGRyaXZlciBkbw0KdGhl
IGFsbG9jYXRpb24gd2FzIGZpbmUsIGFuZCBpZiB5b3Ugd2VyZSB1c2luZyBtdWx0aXBsZSBkZXZp
Y2VzIHlvdQ0KY291bGQganVzdCBjb3B5IHRoZSBtZW1vcnkgYmV0d2VlbiB0aGUgZHJpdmVyIGFs
bG9jYXRlZCBidWZmZXJzLiAgQnV0DQphcyB3ZSd2ZSBtb3ZlZCB0byBkaXNhZ2dyZWdhdGVkIElQ
IGJsb2NrcyBhbmQgZGV2aWNlIHBpcGVsaW5lcywgYWxsDQp0aG9zZSBwb3RlbnRpYWwgY29waWVz
IHdyZWNrIHBlcmZvcm1hbmNlIGFuZCBwb3dlci4gICBJJ20gbm90IHN1cmUNCmdlbmVyaWMgZGlz
dHJvcyBoYXZlIHRoZSBjb25jZXB0IG9mIGEgZGV2aWNlIHBpcGVsaW5lIHZlcnkgd2VsbA0KYWJz
dHJhY3RlZCAob2J2aW91c2x5IG1lc2EgYW5kIHRoZSB3YXlsYW5kL1ggaGF2ZSBoYWQgdG8gZGVh
bCB3aXRoIGl0LA0KYW5kIHRoZSB2aWRlbyBhbmQgY2FtZXJhIHNpZGUgaXMgZGVhbGluZyB3aXRo
IGl0IG1vcmUgYW5kIG1vcmUpLg0KTWF5YmUgYSBtb3JlIGVzdGFibGlzaGVkIG5vdGlvbiBvZiB1
c2UgLT4gcGlwZWxpbmUvZGV2aWNlIGNvbGxlY3Rpb25zLA0KaXMgbmVlZGVkIGFzIGEgc3RhcnRp
bmcgcG9pbnQ/IFRoZW4gdXNpbmcgQ2hyaXN0aWFuJ3Mgc3VnZ2VzdGlvbiwgb25lDQpjb3VsZCBh
dCBsZWFzdCBlbnVtZXJhdGUgIHVzZSAtPiBoZWFwIHRoYXQgd291bGQgYmUgZnVuY3Rpb25hbC4g
QW5kDQptYXliZSBkZXZpY2UgbWFrZXJzIGNvdWxkIHRoZW4gc3VwcGxlbWVudCBleHBsaWNpdCBv
cHRpbWl6ZWQgbWFwcGluZw0Kb3ZlcnJpZGVzIGZvciB0aGVpciBkZXZpY2U/DQoNCkkganVzdCB0
aGluayBsZWF2aW5nIGluZGl2aWR1YWwgYXBwbGljYXRpb25zIChvciBldmVuIGluZGl2aWR1YWwN
CmZyYW1ld29ya3MgbGlrZSBtZXNhKSB0byBlbWJlZCBhc3N1bXB0aW9ucyBhYm91dCBoZWFwIG5h
bWVzIC0+DQpmdW5jdGlvbmFsaXR5IGlzIGdvaW5nIHRvIGJlIGEgcHJvYmxlbWF0aWMgYXBwcm9h
Y2guDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
