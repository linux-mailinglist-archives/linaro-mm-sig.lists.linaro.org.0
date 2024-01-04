Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2C1824942
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 20:51:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B66D543EDD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jan 2024 19:51:28 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id 964C640D51
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jan 2024 19:51:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="3b/tEKiB";
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.173 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1d42ed4cdc7so30495ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jan 2024 11:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1704397866; x=1705002666; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0fBUOM0R/wxHfJNIbk+Hsj3pvgiZjJxtJP8ZKkEMHY=;
        b=3b/tEKiB1eEsqPaEMSCaR9u08shIdN0MPf/4CL7c0AfCS24EK82uSLPOD4fDrVMTMp
         kl+WP9y6a9+y/jzxNhpRRnlXcctCrfwBMz/kL9Sn15yFWB98xicXNNqkfTc9rU7cxPWC
         MBQqM+VWWh/WacoQbkMddaGvVqGve2dy5JaAkUf1NKMR3WX4bG9zmQr3u6uNzrxmvlJa
         VYm6nO5VeqyBbucKcjofj3Zw/eVwhbyATrmQiVBA7S49kXOfe9g1Gnh0b4tNV3qCevhC
         AVyrPhIXC39KU4ES9oYqcrFxNmIzketmU9rHJznBWTQ+mA4L7kXLafY+GDzBoW11JsjN
         Ee0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704397866; x=1705002666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0fBUOM0R/wxHfJNIbk+Hsj3pvgiZjJxtJP8ZKkEMHY=;
        b=H+TW3h0vDi+OMipJG5aXY4zRUXJ7hzQ1nY1GfDz5XnEFwK3/AuCDxwZEsF1prGmIkJ
         i4YJq4FC+sZYMXXCgsd2JuTTRjmNzT1akclLZgRBCsUaNcBxsWqG6vhu2fExpe4Wqwxx
         gFDGfn2Nzb0q3SMfzdmxljmAiKUKhCWohtMhBRjhvpNyVbLOqu7f2XXrLYqqweQ3ncv0
         5Uq7HGZfzm4P0/FtFwJVu/0sEH2azyPNuIHHFvmtfDVl4sRVwJKrGIwJTxV5/xClN1Xw
         v1h9BU5SEpeG5lwJxdm6Ws39z07c+FmYxqsVQQCKJMZMeajapZ8fJtkyaIRdYGSaTYKg
         MHBw==
X-Gm-Message-State: AOJu0YyrYgU2oJ/QjU/yO5YMjWsSvXRACPK6DkvmNLHIRe/66zXXNqqP
	iveJHYS9818xYvxZn0fhEAUxQATitkkr6G3f7WT7+2D3xPQ=
X-Google-Smtp-Source: AGHT+IFqzvWpoM2uA+6FBRb2VzfC6a4Pu4eHXCZULmxK95LCj0aqs1mpvIbjznkas7f4lRb0XubNWN1kTL/JdAY9AX8=
X-Received: by 2002:a17:902:6e01:b0:1d4:4482:83c3 with SMTP id
 u1-20020a1709026e0100b001d4448283c3mr39053plk.16.1704397866221; Thu, 04 Jan
 2024 11:51:06 -0800 (PST)
MIME-Version: 1.0
References: <20231212024607.3681-1-yong.wu@mediatek.com> <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell> <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
 <20231213133825.0a329864@eldfell> <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
 <20231213161614.43e5bca8@eldfell> <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
In-Reply-To: <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 4 Jan 2024 11:50:54 -0800
Message-ID: <CA+ddPcOew7Wtb1-Cakq_LPN1VwtG+4vpjpLFvXdsjBunpefT1A@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.59 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.173:from];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mail-pl1-f173.google.com:rdns,mail-pl1-f173.google.com:helo];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,mediatek.com,kernel.org,amd.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 964C640D51
X-Spamd-Bar: --
Message-ID-Hash: Y32PTNIZOF34L6UACEYCAFJGGXRBYPAS
X-Message-ID-Hash: Y32PTNIZOF34L6UACEYCAFJGGXRBYPAS
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pekka Paalanen <ppaalanen@gmail.com>, Joakim Bech <joakim.bech@linaro.org>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y32PTNIZOF34L6UACEYCAFJGGXRBYPAS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW55IGZlZWRiYWNrIGZyb20gbWFpbnRhaW5lcnMgb24gd2hhdCB0aGVpciBwcmVmZXJlbmNlIGlz
PyAgSSdtIGZpbmUNCndpdGggJ3Jlc3RyaWN0ZWQnIGFzIHdlbGwsIGJ1dCB0aGUgbWFpbiByZWFz
b24gd2UgY2hvc2Ugc2VjdXJlIHdhcw0KYmVjYXVzZSBvZiBpdHMgdXNlIGluIEFSTSBub21lbmNs
YXR1cmUgYW5kIHRoaXMgaXMgbW9yZSBmb3IgQVJNIHVzYWdlDQp0aGFuIHg4Ni4NCg0KVGhlIG1h
aW4gZGlmZmVyZW5jZSB3aXRoIHNpbWlsYXIgYnVmZmVycyBvbiBBTUQvSW50ZWwgaXMgdGhhdCB3
aXRoDQpBTUQvSW50ZWwgdGhlIGJ1ZmZlcnMgYXJlIG1hcHBhYmxlIGFuZCByZWFkYWJsZSBieSB0
aGUgQ1BVIGluIHRoZQ0Ka2VybmVsLiBUaGUgcHJvYmxlbSBpcyB0aGVpciBjb250ZW50cyBhcmUg
ZW5jcnlwdGVkIHNvIHlvdSBnZXQganVuaw0KYmFjayBpZiB5b3UgZG8gdGhhdC4gT24gQVJNLCB0
aGUgYnVmZmVycyBhcmUgY29tcGxldGVseSBpbmFjY2Vzc2libGUNCmJ5IHRoZSBrZXJuZWwgYW5k
IHRoZSBtZW1vcnkgY29udHJvbGxlciBwcmV2ZW50cyBhY2Nlc3MgdG8gdGhlbQ0KY29tcGxldGVs
eSBmcm9tIHRoZSBrZXJuZWwuDQoNClRoZXJlIGFyZSBhbHNvIG90aGVyIHVzZSBjYXNlcyBmb3Ig
dGhpcyB3aGVyZSB0aGUgaHlwZXJ2aXNvciBpcyB3aGF0DQppcyBjb250cm9sbGluZyBhY2Nlc3Mg
KHNlY29uZCBzdGFnZSBpbiB0aGUgTU1VIGlzIHByb3ZpZGluZw0KaXNvbGF0aW9uKS4uLi5hbmQg
aW4gdGhhdCBjYXNlIEkgZG8gYWdyZWUgdGhhdCAnc2VjdXJlJyB3b3VsZCBub3QgYmUNCnRoZSBy
aWdodCB0ZXJtaW5vbG9neSBmb3IgdGhvc2UgdHlwZXMgb2YgYnVmZmVycy4gICBTbyBJIGRvIGFn
cmVlDQpzb21ldGhpbmcgb3RoZXIgdGhhbiAnc2VjdXJlJyBpcyBwcm9iYWJseSBhIGJldHRlciBv
cHRpb24gb3ZlcmFsbC4NCg0KDQpPbiBGcmksIERlYyAyMiwgMjAyMyBhdCAxOjQw4oCvQU0gU2lt
b24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPiB3cm90ZToNCj4NCj4gT24gV2VkbmVzZGF5LCBE
ZWNlbWJlciAxM3RoLCAyMDIzIGF0IDE1OjE2LCBQZWtrYSBQYWFsYW5lbiA8cHBhYWxhbmVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+ID4gPiA+IEl0IGlzIHByb3RlY3RlZC9zaGllbGRlZC9mb3J0
aWZpZWQgZnJvbSBhbGwgdGhlIGtlcm5lbCBhbmQgdXNlcnNwYWNlLA0KPiA+ID4gPiBidXQgYSBt
b3JlIGZhbWlsaWFyIHdvcmQgdG8gZGVzY3JpYmUgdGhhdCBpcyBpbmFjY2Vzc2libGUuDQo+ID4g
PiA+ICJJbmFjY2Vzc2libGUgYnVmZmVyIiBwZXIgc2UgT1RPSCBzb3VuZHMgbGlrZSBhIHVzZWxl
c3MgY29uY2VwdC4NCj4gPiA+ID4NCj4gPiA+ID4gSXQgaXMgbm90IHNlY3VyZSwgYmVjYXVzZSBp
dCBkb2VzIG5vdCBpbnZvbHZlIHNlY3VyaXR5IGluIGFueSB3YXkuIEluDQo+ID4gPiA+IGZhY3Qs
IGdpdmVuIGl0J3Mgc28gZnJhZ2lsZSwgSSdkIGNsYXNzaWZ5IGl0IGFzIG1pbGRseSBvcHBvc2l0
ZSBvZg0KPiA+ID4gPiBzZWN1cmUsIGFzIGUuZy4gY2xpZW50cyBvZiBhIFdheWxhbmQgY29tcG9z
aXRvciBjYW4gcG90ZW50aWFsbHkgRG9TIHRoZQ0KPiA+ID4gPiBjb21wb3NpdG9yIHdpdGggaXQg
Ynkgc2ltcGx5IHNlbmRpbmcgc3VjaCBhIGRtYWJ1Zi4gT3IgRG9TIHRoZSB3aG9sZQ0KPiA+ID4g
PiBzeXN0ZW0uDQo+ID4gPg0KPiA+ID4gSSBoZWFyIHdoYXQgeW91IGFyZSBzYXlpbmcgYW5kIERv
UyBpcyBhIGtub3duIHByb2JsZW0gYW5kIGF0dGFjayB2ZWN0b3IsDQo+ID4gPiBidXQgcmVnYXJk
bGVzcywgd2UgaGF2ZSB1c2UgY2FzZXMgd2hlcmUgd2UgZG9uJ3Qgd2FudCB0byBleHBvc2UNCj4g
PiA+IGluZm9ybWF0aW9uIGluIHRoZSBjbGVhciBhbmQgd2hlcmUgd2UgYWxzbyB3b3VsZCBsaWtl
IHRvIGhhdmUgc29tZQ0KPiA+ID4gZ3VhcmFudGVlcyBhYm91dCBjb3JyZWN0bmVzcy4gVGhhdCBp
cyB3aGVyZSB2YXJpb3VzIHNlY3VyZSBlbGVtZW50cyBhbmQNCj4gPiA+IG1vcmUgZ2VuZXJhbGx5
IHNlY3VyaXR5IGlzIG5lZWRlZC4NCj4gPiA+DQo+ID4gPiBTbywgaXQgc291bmRzIGxpa2Ugd2Ug
aGF2ZSB0d28gdGhpbmdzIGhlcmUsIHRoZSBmaXJzdCBpcyB0aGUgbmFtaW5nIGFuZA0KPiA+ID4g
dGhlIG1lYW5pbmcgYmVoaW5kIGl0LiBJJ20gcHJldHR5IHN1cmUgdGhlIHBlb3BsZSBmb2xsb3dp
bmcgYW5kDQo+ID4gPiBjb250cmlidXRpbmcgdG8gdGhpcyB0aHJlYWQgY2FuIGFncmVlIG9uIGEg
bmFtZSB0aGF0IG1ha2VzIHNlbnNlLiBXb3VsZA0KPiA+ID4geW91IHBlcnNvbmFsbHkgYmUgT0sg
d2l0aCAicmVzdHJpY3RlZCIgYXMgdGhlIG5hbWU/IEl0IHNvdW5kcyBsaWtlIHRoYXQuDQo+ID4N
Cj4gPiBJIHdvdWxkLiBJJ20gYWxzbyBqdXN0IGEgYnktc3RhbmRlciwgbm90IGEgbWFpbnRhaW5l
ciBvZiBrZXJuZWwNCj4gPiBhbnl0aGluZy4gSSBoYXZlIG5vIHBvd2VyIHRvIGFjY2VwdCBub3Ig
cmVqZWN0IGFueXRoaW5nIGhlcmUuDQo+DQo+IEknZCBhbHNvIHBlcnNvbmFsbHkgYmUgT0sgd2l0
aCAicmVzdHJpY3RlZCIsIEkgdGhpbmsgaXQncyBhIGxvdCBiZXR0ZXINCj4gdGhhbiAic2VjdXJl
Ii4NCj4NCj4gSW4gZ2VuZXJhbCBJIGFncmVlIHdpdGggZXZlcnl0aGluZyBQZWtrYSBzYWlkLg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
