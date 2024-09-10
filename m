Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E532C973AFE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 17:08:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3E22411F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 15:08:24 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id A80B03F662
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 15:08:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="IR2s36/2";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.171 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4582fa01090so289141cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 08:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1725980902; x=1726585702; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiSPE2re4i7ztv5W1E1npIwrh98/6F2AGMg3S1xMoPU=;
        b=IR2s36/2OQy7F/Y2eNWZltGy0Tjoz0ZZFS5Q/jHehhUiR5xNFsHS2AL5yWvY1nJ9Gt
         +aDgl4117aMeIRA84HJ3GPBD+TKu82fOptE/8AzvS0KOhX1RbEs+RNhmFmPPHOC3I5U5
         vXdHMc5KRDmS27VM/teFpUbpgJ/l36oXXiZs6Z5jrwzZGD8sC0EgHvj5b0LxAKgJmDYR
         051UqZ3Qn5GcbCp7+fBng53aBScy57OlWSGnJ7vW0MXXUGDML72DPpcD4jrXk3xsOmgg
         khFyHHJTFC0FJqj8UjY2vcBGD/EoKlQeqsCT338+dmMFk9W4t7xTYKQgq2ld3sk4YuKk
         qA+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725980902; x=1726585702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HiSPE2re4i7ztv5W1E1npIwrh98/6F2AGMg3S1xMoPU=;
        b=AAB2m1NeRacSwJqvLNwVQ8/DoApa+Q33srKKUlJ9KRh0nE1SOsI8NuedCU6+2QfM8X
         nRZZ/cM62ry8Eq7k2ZnURq9R/LlVoB0lF5eR7rtVeQvuiG81Ra+qV1FfPm13R1paXnHu
         5WBmd22wKZ9wrqNyh41DAD2IiyLmoSrFbEbg+Ia4tSE8HNC9jNX6kR8k5F/Cx6Foqc3H
         a82a9m84zPne3DC+xKn81WiACh/VvXLAycEm67mKtvOOmyLmQdlz7hEyIJjeflTcqBFr
         KWQVGGdqC4+1TWWIaalXS74AS+2TVwKThWHw2E0nWb4x7n7lo4O9U8ct54K5I92ZOFrx
         pSAA==
X-Forwarded-Encrypted: i=1; AJvYcCVmeVDhnHEEYywWZpIf5jnGAV09V8GlO0dCFYend1qEQEtpbgg52kA7uCsuJMQfKJN/CRmXf6vepPytmi1Z@lists.linaro.org
X-Gm-Message-State: AOJu0YwaDv5RR3M7D0Nbmd6owmpbNatAxtjNNn3/JtRX2I8VrL5oPKMu
	ns8RoAI+ZuxbFQrue0xMmmCh3J8Kpr9YhX4W2fqMXGvqfjK+qexeHnHgy4+6S3m57LqA5NNPCrc
	+qZ9e7bWvCi5/m8CoysSfU2IB6R5FDexIjAC7
X-Google-Smtp-Source: AGHT+IGk/+MqjVLBNa+qD5EowmlfqCvCzaFlTfS1uq8t2r3RhadFZpBGCv9ceFcyyjW5GiIdk+Cu14iQs471/8FCg7c=
X-Received: by 2002:ac8:5dc6:0:b0:456:7ef1:929d with SMTP id
 d75a77b69052e-4583d0600f1mr4121411cf.12.1725980901915; Tue, 10 Sep 2024
 08:08:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-5-jens.wiklander@linaro.org> <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
 <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com>
 <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com> <CAHUa44E-7UMseWSEeneYYnAPyhH___=a1YYR6uaOVTNZytzg7g@mail.gmail.com>
In-Reply-To: <CAHUa44E-7UMseWSEeneYYnAPyhH___=a1YYR6uaOVTNZytzg7g@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 10 Sep 2024 08:08:10 -0700
Message-ID: <CABdmKX2Tsp-KG6_Lth7VUcZcxCfgbsBYqZ5N2h574J+sNP2SxA@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A80B03F662
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.171:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: MINCUAEBM6U7IO3N4H42FK4WLAT2BNPZ
X-Message-ID-Hash: MINCUAEBM6U7IO3N4H42FK4WLAT2BNPZ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MINCUAEBM6U7IO3N4H42FK4WLAT2BNPZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgOSwgMjAyNCBhdCAxMTowNuKAr1BNIEplbnMgV2lrbGFuZGVyDQo8amVucy53
aWtsYW5kZXJAbGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgU2VwIDQsIDIwMjQgYXQg
MTE6NDLigK9QTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPiB3cm90ZToNCj4g
Pg0KPiA+IE9uIFdlZCwgU2VwIDQsIDIwMjQgYXQgMjo0NOKAr0FNIEplbnMgV2lrbGFuZGVyIDxq
ZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIFNl
cCAzLCAyMDI0IGF0IDc6NTDigK9QTSBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29t
PiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gT24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMTI6MDTi
gK9BTSBKZW5zIFdpa2xhbmRlcg0KPiA+ID4gPiA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4g
d3JvdGU6DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBBZGQgYSBMaW5hcm8gcmVzdHJpY3RlZCBoZWFw
IHVzaW5nIHRoZSBsaW5hcm8scmVzdHJpY3RlZC1oZWFwIGJpbmRpbmdzDQo+ID4gPiA+ID4gaW1w
bGVtZW50ZWQgYmFzZWQgb24gdGhlIGdlbmVyaWMgcmVzdHJpY3RlZCBoZWFwLg0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4gVGhlIGJpbmRpbmdzIGRlZmluZXMgYSByYW5nZSBvZiBwaHlzaWNhbCByZXN0
cmljdGVkIG1lbW9yeS4gVGhlIGhlYXANCj4gPiA+ID4gPiBtYW5hZ2VzIHRoaXMgYWRkcmVzcyBy
YW5nZSB1c2luZyBnZW5hbGxvYy4gVGhlIGFsbG9jYXRlZCBkbWEtYnVmIGZpbGUNCj4gPiA+ID4g
PiBkZXNjcmlwdG9yIGNhbiBsYXRlciBiZSByZWdpc3RlcmVkIHdpdGggdGhlIFRFRSBzdWJzeXN0
ZW0gZm9yIGxhdGVyIHVzZQ0KPiA+ID4gPiA+IHZpYSBUcnVzdGVkIEFwcGxpY2F0aW9ucyBpbiB0
aGUgc2VjdXJlIHdvcmxkLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBP
bGl2aWVyIE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+DQo+ID4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogT2xpdmllciBNYXNzZSA8b2xpdmllci5tYXNzZUBueHAuY29tPg0KPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0K
PiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyAg
ICAgICAgICAgICAgICAgfCAgMTAgKysNCj4gPiA+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBz
L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAxICsNCj4gPiA+ID4gPiAgLi4uL2RtYS1idWYv
aGVhcHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5jICAgIHwgMTY1ICsrKysrKysrKysrKysrKysr
Kw0KPiA+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspDQo+ID4gPiA+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9o
ZWFwX2xpbmFyby5jDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL0tjb25maWcgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZw0KPiA+
ID4gPiA+IGluZGV4IDU4OTAzYmM2MmFjOC4uODJlMmM1ZDA5MjQyIDEwMDY0NA0KPiA+ID4gPiA+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnDQo+ID4gPiA+ID4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL0tjb25maWcNCj4gPiA+ID4gPiBAQCAtMjgsMyArMjgsMTMgQEAg
Y29uZmlnIERNQUJVRl9IRUFQU19SRVNUUklDVEVEX01USw0KPiA+ID4gPiA+ICAgICAgICAgaGVs
cA0KPiA+ID4gPiA+ICAgICAgICAgICBFbmFibGUgcmVzdHJpY3RlZCBkbWEtYnVmIGhlYXBzIGZv
ciBNZWRpYVRlayBwbGF0Zm9ybS4gVGhpcyBoZWFwIGlzIGJhY2tlZCBieQ0KPiA+ID4gPiA+ICAg
ICAgICAgICBURUUgY2xpZW50IGludGVyZmFjZXMuIElmIGluIGRvdWJ0LCBzYXkgTi4NCj4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gK2NvbmZpZyBETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9MSU5BUk8N
Cj4gPiA+ID4gPiArICAgICAgIGJvb2wgIkxpbmFybyBETUEtQlVGIFJlc3RyaWN0ZWQgSGVhcCIN
Cj4gPiA+ID4gPiArICAgICAgIGRlcGVuZHMgb24gRE1BQlVGX0hFQVBTX1JFU1RSSUNURUQNCj4g
PiA+ID4gPiArICAgICAgIGhlbHANCj4gPiA+ID4gPiArICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0
aW9uIHRvIGVuYWJsZSB0aGUgTGluYXJvIHJlc3RyaWN0ZWQgZG1hLWJ1ZiBoZWFwLg0KPiA+ID4g
PiA+ICsgICAgICAgICBUaGUgcmVzdHJpY3RlZCBoZWFwIHBvb2xzIGFyZSBkZWZpbmVkIGFjY29y
ZGluZyB0byB0aGUgRFQuIEhlYXBzDQo+ID4gPiA+ID4gKyAgICAgICAgIGFyZSBhbGxvY2F0ZWQg
aW4gdGhlIHBvb2xzIHVzaW5nIGdlbiBhbGxvY2F0ZXIuDQo+ID4gPiA+ID4gKyAgICAgICAgIElm
IGluIGRvdWJ0LCBzYXkgTi4NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtl
ZmlsZQ0KPiA+ID4gPiA+IGluZGV4IDAwMjhhYTlkODc1Zi4uNjZiMmY2N2M0N2I1IDEwMDY0NA0K
PiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQ0KPiA+ID4gPiA+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQ0KPiA+ID4gPiA+IEBAIC0yLDQg
KzIsNSBAQA0KPiA+ID4gPiA+ICBvYmotJChDT05GSUdfRE1BQlVGX0hFQVBTX0NNQSkgICAgICAg
ICArPSBjbWFfaGVhcC5vDQo+ID4gPiA+ID4gIG9iai0kKENPTkZJR19ETUFCVUZfSEVBUFNfUkVT
VFJJQ1RFRCkgICs9IHJlc3RyaWN0ZWRfaGVhcC5vDQo+ID4gPiA+ID4gIG9iai0kKENPTkZJR19E
TUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9NVEspICAgICAgKz0gcmVzdHJpY3RlZF9oZWFwX210ay5v
DQo+ID4gPiA+ID4gK29iai0kKENPTkZJR19ETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9MSU5BUk8p
ICAgKz0gcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5vDQo+ID4gPiA+ID4gIG9iai0kKENPTkZJR19E
TUFCVUZfSEVBUFNfU1lTVEVNKSAgICAgICs9IHN5c3RlbV9oZWFwLm8NCj4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9saW5hcm8uYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMNCj4gPiA+ID4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGIw
OGVkNTE0MDIzDQo+ID4gPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXBfbGluYXJvLmMNCj4gPiA+ID4gPiBAQCAt
MCwwICsxLDE2NSBAQA0KPiA+ID4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMA0KPiA+ID4gPiA+ICsvKg0KPiA+ID4gPiA+ICsgKiBETUFCVUYgc2VjdXJlIGhlYXAgZXhw
b3J0ZXINCj4gPiA+ID4gPiArICoNCj4gPiA+ID4gPiArICogQ29weXJpZ2h0IDIwMjEgTlhQLg0K
PiA+ID4gPiA+ICsgKiBDb3B5cmlnaHQgMjAyNCBMaW5hcm8gTGltaXRlZC4NCj4gPiA+ID4gPiAr
ICovDQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsjZGVmaW5lIHByX2ZtdChmbXQpICAgICAicmhl
YXBfbGluYXJvOiAiIGZtdA0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4
L2RtYS1idWYuaD4NCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPg0KPiA+ID4gPiA+
ICsjaW5jbHVkZSA8bGludXgvZ2VuYWxsb2MuaD4NCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4NCj4gPiA+ID4gPiAr
I2luY2x1ZGUgPGxpbnV4L29mX2ZkdC5oPg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvb2Zf
cmVzZXJ2ZWRfbWVtLmg+DQo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5o
Pg0KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiArI2luY2x1ZGUgInJlc3RyaWN0ZWRfaGVhcC5oIg0KPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiArI2RlZmluZSBNQVhfSEVBUF9DT1VOVCAyDQo+ID4gPiA+DQo+ID4gPiA+IEFyZSBtdWx0aXBs
ZSBzdXBwb3J0ZWQgYmVjYXVzZSBvZiB3aGF0IEN5cmlsbGUgbWVudGlvbmVkIGhlcmUgYWJvdXQg
cGVybWlzc2lvbnM/DQo+ID4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvREJCUFIw
NE1CNzUxNEUwMDY0NTVBRUE0MDcwNDFFNEY3ODg3MDlAREJCUFIwNE1CNzUxNC5ldXJwcmQwNC5w
cm9kLm91dGxvb2suY29tLw0KPiA+ID4NCj4gPiA+IFllcywgSSBrZXB0IHRoYXQgYXMgaXMuDQo+
ID4NCj4gPiBPayB0aGFua3MuDQo+ID4NCj4gPiA+ID4gU28gdGhpcyBpcyBqdXN0IHNvbWUgYXJi
aXRyYXJ5IGxpbWl0PyBJJ2QgcHJlZmVyIHRvIGhhdmUgc29tZSBzb3J0IG9mDQo+ID4gPiA+IGRv
Y3VtZW50YXRpb24gYWJvdXQgdGhpcy4NCj4gPiA+DQo+ID4gPiBIb3cgYWJvdXQgcmVtb3Zpbmcg
dGhlIGxpbWl0IGFuZCB1c2luZyBkeW5hbWljIGFsbG9jYXRpb24gaW5zdGVhZD8NCj4gPg0KPiA+
IFRoYXQgd29ya3MgdG9vIQ0KPg0KPiBJdCB0dXJucyBvdXQgdGhhdCB3YXMgZWFzaWVyIHNhaWQg
dGhhbiBkb25lLiBUaGUgbGltaXQgaXMgaGFyZGNvZGVkDQo+IGJlY2F1c2UgZHluYW1pYyBtZW1v
cnkgYWxsb2NhdGlvbiBpc24ndCBhdmFpbGFibGUgYXQgdGhhdCBzdGFnZSBkdXJpbmcNCj4gYm9v
dC4gV2UgaGF2ZSBhIHNob3J0IGRlc2NyaXB0aW9uIG9mIHRoaXMgaGVhcCBpbiBLY29uZmlnLiBJ
J2xsIGFkZA0KPiBzb21ldGhpbmcgYWJvdXQgdGhlIGxpbWl0IHRoZXJlIGlmIHRoYXQgbWFrZXMg
c2Vuc2UuDQo+DQo+IFRoYW5rcywNCj4gSmVucw0KDQpBaCBvayBzb3VuZHMgZ29vZC4NCg0KSSBu
b3RpY2VkIG9uZSBvdGhlciB0aGluZywgbGluYXJvX3Jlc3RyaWN0ZWRfaGVhcF9pbml0IGFuZCBh
ZGRfaGVhcA0Kc2hvdWxkIHByb2JhYmx5IGhhdmUgX19pbml0LiBMYXN0IHdlZWsgSSBzZW50IGEg
cGF0Y2ggdG8gYWRkIHRoYXQgZm9yDQp0aGUgQ01BIGFuZCBzeXN0ZW0gaGVhcHMuDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
