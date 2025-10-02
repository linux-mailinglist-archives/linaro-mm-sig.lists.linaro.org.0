Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011DBB3DCE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 14:17:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07B5345788
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 12:17:43 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by lists.linaro.org (Postfix) with ESMTPS id 8D5DE447E0
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 12:17:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="zc/LSyiU";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.41 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7b7325d8fb5so611827a34.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 05:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759407459; x=1760012259; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGsaoeFP4OZoz2ETAlY65ICprHno78vJEjUPKXAIoTc=;
        b=zc/LSyiUfCqrSlgjueEl3pNpWn/+a/bxU1WHUFdpGkgIWd+E2hgc9IWNAuWXGerGKl
         g1wCXUhhnQ+/EGx1INco1zs1yzfLRkkgbqD7z5nLjqgfrHAGYcpPXj3pw4NwOu843J3T
         NnGZxVLS3MvmQMMdMEscsKpYOTVSlor2T8jDI6S2B/QJlfltWGEkKmtmbrMY1bl00Kj/
         rgspWgSLEF7wGDk30KaMzjYn4Y+HFGHM/Rue8wTcVdjMtfKeuMa7a7Nr2P2NPfV+ocgD
         emAxmc2jpEVrbHfSmbaFY9nP2GfFRZzvl9ZNuvCrX+ZUSSTZtOezCsMksIuYJsX4U9GQ
         3rXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759407459; x=1760012259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGsaoeFP4OZoz2ETAlY65ICprHno78vJEjUPKXAIoTc=;
        b=ZAmDiB3DHtgc/00BFxA9HjYSRocaOCdtGeS1emQkVxWhIAVcDBOEyyjTGa6CFpiO+D
         t7rtEvgNmOPRurgVBeLAZe9sn97AKbOiy4w5TgZXxjEunmMiGMUL0VSsX4/SpoPocLWU
         yVriTDLoy0DgY5HkycWvdzdGcuBOzyGmpU4j5f/0UpHP+CkbpgRCgO+t/Jp8QvM6mLrX
         QiOcBF3GLtGS49xhURpDuTe3j1+2kPA6+DfTznF51QXN6MLLL8P8e/0FaErvnGL5YgOt
         c91HYaX4yPQLvwQMIgaQT7UuT1WIs/8/4b4K5EAvpr5WNs760qHal//dWWNBxfxOF6ZX
         bhmg==
X-Forwarded-Encrypted: i=1; AJvYcCXcQZFopqUPQBLEeo9KekK96ERtkQVRT/6Z5Ir/FjF3bI/eOQDlN1Ifp9CVfAh4PgunCwmdMdNp4wUHxWpO@lists.linaro.org
X-Gm-Message-State: AOJu0YxAJ2eJqlGEK2LXBsPetotup+EpZyZx6QRH7bxICYqmImif9EeA
	wm6iWG0vLjHFV8ItYGPH4DfS4dagwyBoJkRoQbNi8QjVlIiJ3paAQyBeWQus8/WzuU7iRZR86c3
	6Y6W31HpWVj0sh1hvjScHzbDN2YVNYhgAeXQzJFffkuiH
X-Gm-Gg: ASbGncvlRSrEXBnbjPSQsLBwDS667YGB61cKWSW+VoW94B8ZK2+veXWQEQK8oCNN9tP
	Tdt2FDtHmWWA4+q4u0j3Fp6qHzL2TAv4igtynAFpkF3IvMcyHFuJoOKqbc3I4Rj2DRJzWYfqfoi
	jSuJGo6lT/td9PGTPc0kLubfmmZ7Gxa0s4COcgmPkG5joEymFKhgtm9sNgjQbBOKrEH1PjtfIxL
	UE7fJqHvk0bMX7nmHSMRyikXpDYhJgP6BgoEcxA5JTxqGA=
X-Google-Smtp-Source: AGHT+IEfetTH6APo2ttHfmQ/HD9OGM73G7JSFHlGpVInBdI/YWyuV7C6xZbIUTpTHqoh4vyg+PN0N+hbiXUnxi0n74U=
X-Received: by 2002:a05:6808:6f92:b0:43f:7287:a5de with SMTP id
 5614622812f47-43fa41ccaafmr3695885b6e.41.1759407458820; Thu, 02 Oct 2025
 05:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
 <20250911135007.1275833-3-jens.wiklander@linaro.org> <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
In-Reply-To: <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 2 Oct 2025 14:17:27 +0200
X-Gm-Features: AS18NWAi5-v--TYVxyZOnQiOgWgAxWVYCjBvI6uxhCSDTvPtA0sa1z_it1UPtE8
Message-ID: <CAHUa44GtAY7=r_bA7ETOsBq+K4w6r1CtY7T9rFn224mshA5GYg@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Queue-Id: 8D5DE447E0
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.41:from];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[qualcomm.com:email,linaro.org:email,linaro.org:dkim,mail-ot1-f41.google.com:rdns,mail-ot1-f41.google.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.210.41:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EHH2VSPHBC43TOGNIQVOFFLEZB7XI7IA
X-Message-ID-Hash: EHH2VSPHBC43TOGNIQVOFFLEZB7XI7IA
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHH2VSPHBC43TOGNIQVOFFLEZB7XI7IA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgT2N0IDIsIDIwMjUgYXQgOTo0N+KAr0FNIE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAcmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEhpLA0KPg0KPiBPbiBUaHUsIFNlcCAxMSwg
MjAyNSBhdCAwMzo0OTo0M1BNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBFeHBv
cnQgdGhlIGRtYS1idWYgaGVhcCBmdW5jdGlvbnMgdG8gYWxsb3cgdGhlbSB0byBiZSB1c2VkIGJ5
IHRoZSBPUC1URUUNCj4gPiBkcml2ZXIuIFRoZSBPUC1URUUgZHJpdmVyIHdhbnRzIHRvIHJlZ2lz
dGVyIGFuZCBtYW5hZ2Ugc3BlY2lmaWMgc2VjdXJlDQo+ID4gRE1BIGhlYXBzIHdpdGggaXQuDQo+
ID4NCj4gPiBSZXZpZXdlZC1ieTogU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVhbGNvbW0u
Y29tPg0KPiA+IFJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29t
Pg0KPiA+IEFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8u
b3JnPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDQgKysrKw0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KPiA+IGluZGV4IDNjYmU4N2Q0YTQ2NC4uOGFiNDk5MjRmOGI3IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMNCj4gPiBAQCAtMTEsNiArMTEsNyBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvZG1h
LWJ1Zi5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvZG1hLWhlYXAuaD4NCj4gPiAgI2luY2x1ZGUg
PGxpbnV4L2Vyci5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+DQo+ID4gICNpbmNs
dWRlIDxsaW51eC9saXN0Lmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9ub3NwZWMuaD4NCj4gPiAg
I2luY2x1ZGUgPGxpbnV4L3N5c2NhbGxzLmg+DQo+ID4gQEAgLTIwMiw2ICsyMDMsNyBAQCB2b2lk
ICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQo+ID4gIHsNCj4g
PiAgICAgICByZXR1cm4gaGVhcC0+cHJpdjsNCj4gPiAgfQ0KPiA+ICtFWFBPUlRfU1lNQk9MX05T
X0dQTChkbWFfaGVhcF9nZXRfZHJ2ZGF0YSwgIkRNQV9CVUZfSEVBUCIpOw0KPiA+DQo+ID4gIC8q
Kg0KPiA+ICAgKiBkbWFfaGVhcF9nZXRfbmFtZSAtIGdldCBoZWFwIG5hbWUNCj4gPiBAQCAtMjE0
LDYgKzIxNiw3IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVh
cCAqaGVhcCkNCj4gPiAgew0KPiA+ICAgICAgIHJldHVybiBoZWFwLT5uYW1lOw0KPiA+ICB9DQo+
ID4gK0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9oZWFwX2dldF9uYW1lLCAiRE1BX0JVRl9IRUFQ
Iik7DQo+ID4NCj4gPiAgLyoqDQo+ID4gICAqIGRtYV9oZWFwX2FkZCAtIGFkZHMgYSBoZWFwIHRv
IGRtYWJ1ZiBoZWFwcw0KPiA+IEBAIC0zMDMsNiArMzA2LDcgQEAgc3RydWN0IGRtYV9oZWFwICpk
bWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykN
Cj4gPiAgICAgICBrZnJlZShoZWFwKTsNCj4gPiAgICAgICByZXR1cm4gZXJyX3JldDsNCj4gPiAg
fQ0KPiA+ICtFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfaGVhcF9hZGQsICJETUFfQlVGX0hFQVAi
KTsNCj4NCj4gSXQncyBub3QgY2xlYXIgdG8gbWUgd2h5IHdlIHdvdWxkIG5lZWQgdG8gZXhwb3J0
IHRob3NlIHN5bWJvbHMuDQo+DQo+IEFzIGZhciBhcyBJIGtub3csIGhlYXBzIGNhbm5vdCBiZSBy
ZW1vdmVkLCBhbmQgY29tcGlsaW5nIHRoZW0gYXMgbW9kdWxlDQo+IG1lYW5zIHRoYXQgd2Ugd291
bGQgYmUgYWJsZSB0byByZW1vdmUgdGhlbS4NCj4NCj4gTm93LCBpZiB3ZSBkb24ndCBleHBlY3Qg
dGhlIHVzZXJzIHRvIGJlIGNvbXBpbGVkIGFzIG1vZHVsZXMsIHRoZW4gd2UNCj4gZG9uJ3QgbmVl
ZCB0byBleHBvcnQgdGhlc2Ugc3ltYm9scyBhdCBhbGwuDQo+DQo+IEFtIEkgbWlzc2luZyBzb21l
dGhpbmc/DQoNCkluIHRoaXMgY2FzZSwgaXQncyB0aGUgVEVFIG1vZHVsZSB0aGF0IF9taWdodF8g
bmVlZCB0byBpbnN0YW50aWF0ZSBhDQpETUEgaGVhcC4gV2hldGhlciBpdCB3aWxsIGJlIGluc3Rh
bnRpYXRlZCBkZXBlbmRzIG9uIHRoZSBURUUgYmFja2VuZA0KZHJpdmVyIGFuZCB0aGUgVEVFIGZp
cm13YXJlLiBJZiBhIGhlYXAgaXMgaW5zdGFudGlhdGVkLCB0aGVuIGl0IHdpbGwNCm5vdCBiZSBw
b3NzaWJsZSB0byB1bmxvYWQgdGhlIFRFRSBtb2R1bGUuIFRoYXQgbWlnaHQgbm90IGJlIHBlcmZl
Y3QsDQpidXQgaW4gbXkgb3BpbmlvbiwgaXQncyBiZXR0ZXIgdGhhbiBvdGhlciBvcHRpb25zLCBz
dWNoIGFzIGFsd2F5cw0KbWFraW5nIHRoZSBURUUgc3Vic3lzdGVtIGJ1aWx0LWluIG9yIGRpc2Fi
bGluZyBETUEtaGVhcCBzdXBwb3J0IHdoZW4NCmNvbXBpbGVkIGFzIGEgbW9kdWxlLg0KDQpUaGFu
a3MsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
