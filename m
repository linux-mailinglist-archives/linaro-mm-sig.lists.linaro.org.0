Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3B57ED807
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:19:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80F1D40F2F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:19:01 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by lists.linaro.org (Postfix) with ESMTPS id 3BAB23F0A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:18:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=wGJBTYcN;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.178 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1cc30de471dso61325ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700090324; x=1700695124; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cDX2/TcLZZv47keVH9izOB2UPw4wXcT8INdh+8le7A=;
        b=wGJBTYcNKVzQnRA1WZfRFT+cbSfmqREoicivqmxRIG1c5jdiOfp/cfxJvuivQ+cZxD
         4vRz2WcDcXVeEQQnDPQs42ZcTNov+THwRYbtgAtxyXCYEgKvaFW9i1Fi/c7t5rQrlQ0v
         5Rmgxpg5n6sAJgMHGMByCiIlcwt7F413nifB8Aw5YA2BM2El7hsdCH4THjEXLjwKZf5K
         MbXkKDjJD9Hf8BZ9U2LeM3pZZ5OwKRL46AyR9eOWhiNWYwnThZD8L4cin6iB+hstIrpo
         xt2MedAGr90Rti68uP2Y476/saPTfb630NxkPdvPt4e9VX2CqFOdxtXQ5aM8D7OBdu4I
         ldag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090324; x=1700695124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cDX2/TcLZZv47keVH9izOB2UPw4wXcT8INdh+8le7A=;
        b=HV7F40zMVBT8lx7Hcvt0PujGS0mYvJ5tSUq96cYgEIB2PBG7p8rnFl8KHRyJvU36/5
         VdmITmMCzvpETaj0xJdD+zZ/4U12vgqhx3dosn8Pps+G7yhUDmdIbXSJGEoUWwj3/lQz
         CxqEnPz5FF4KbP/GsE6XVaEdgeA9ID32NSmiKQ6kyL2BSt2CZ3gSSgHPNIAArw7/ntTN
         WGqkCbrS8egi6I/1dhlOrnDXCBRJ7Q36XNzTppQzMCWIVvFzKeE68E5tM4Fx9P3PAFMX
         Qk9t4Xc7RVUtKR5ziyFWfioMKkmVkTbPJAoxfGtG85170t55DwDWYVYbflTUQ/g1jVpz
         0vvw==
X-Gm-Message-State: AOJu0Yzu1/9RAHsqvvU1+H4oOWVLqQK6XmCEGgLTbKkE7Xv3kWqrnYXK
	KD+SxGardKV5S2GvaPbbEMZFRlszZRLxaLiqt+nF
X-Google-Smtp-Source: AGHT+IGyoRxZw5ygDqLDB76eixVmV7Sl9Rg99pJFDrY1646vTJd9/k/9IdlRgQQs8vDIsMVb3PqED09pUEuJwebdqxU=
X-Received: by 2002:a17:902:d50f:b0:1cc:ff0:213f with SMTP id
 b15-20020a170902d50f00b001cc0ff0213fmr66975plg.2.1700090323863; Wed, 15 Nov
 2023 15:18:43 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-2-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-2-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:18:32 -0800
Message-ID: <CA+ddPcMQan85Q8KDdDub=aDe0HB3vy9dBj33ofEoM2WUhFu8Zw@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3BAB23F0A5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.178:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com,quicinc.com,ndufresne.ca];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: PKCPLDPIJZ3TC7S572DZDUTCF6DYFXAJ
X-Message-ID-Hash: PKCPLDPIJZ3TC7S572DZDUTCF6DYFXAJ
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/8] dma-buf: heaps: Initialize a secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PKCPLDPIJZ3TC7S572DZDUTCF6DYFXAJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBOb3YgMTEsIDIwMjMgYXQgMzoxNuKAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0
ZWsuY29tPiB3cm90ZToNCj4NCj4gSW5pdGlhbGl6ZSBhIHNlY3VyZSBoZWFwLiBDdXJyZW50bHkg
anVzdCBhZGQgYSBudWxsIGhlYXAsIFByZXBhcmUgZm9yDQo+IHRoZSBsYXRlciBwYXRjaGVzLg0K
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyAgICAgICB8ICA3ICsrKw0KPiAgZHJp
dmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2RtYS1i
dWYvaGVhcHMvc2VjdXJlX2hlYXAuYyB8IDk4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwNiBpbnNlcnRpb25zKCspDQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMNCj4NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBz
L0tjb25maWcNCj4gaW5kZXggYTVlZWYwNmM0MjI2Li5lMzU4YmY3MTExNDUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9LY29uZmlnDQo+IEBAIC0xMiwzICsxMiwxMCBAQCBjb25maWcgRE1BQlVGX0hFQVBT
X0NNQQ0KPiAgICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBkbWEtYnVmIENN
QSBoZWFwLiBUaGlzIGhlYXAgaXMgYmFja2VkDQo+ICAgICAgICAgICBieSB0aGUgQ29udGlndW91
cyBNZW1vcnkgQWxsb2NhdG9yIChDTUEpLiBJZiB5b3VyIHN5c3RlbSBoYXMgdGhlc2UNCj4gICAg
ICAgICAgIHJlZ2lvbnMsIHlvdSBzaG91bGQgc2F5IFkgaGVyZS4NCj4gKw0KPiArY29uZmlnIERN
QUJVRl9IRUFQU19TRUNVUkUNCj4gKyAgICAgICBib29sICJETUEtQlVGIFNlY3VyZSBIZWFwIg0K
PiArICAgICAgIGRlcGVuZHMgb24gRE1BQlVGX0hFQVBTICYmIFRFRQ0KPiArICAgICAgIGhlbHAN
Cj4gKyAgICAgICAgIENob29zZSB0aGlzIG9wdGlvbiB0byBlbmFibGUgZG1hLWJ1ZiBzZWN1cmUg
aGVhcC4gVGhpcyBoZWFwIGlzIGJhY2tlZCBieQ0KPiArICAgICAgICAgVEVFIGNsaWVudCBpbnRl
cmZhY2VzIG9yIENNQS4gSWYgaW4gZG91YnQsIHNheSBOLg0KDQpSZW1vdmUgdGhlIG1lbnRpb24g
b2YgVEVFIGFuZCBDTUEgZnJvbSB0aGlzLg0KDQpZb3Ugc2hvdWxkIHByb2JhYmx5IGFkZCB0d28g
S0NvbmZpZyBvcHRpb25zLiBPbmUgaXMgZm9yDQpETUFCVUZfSEVBUFNfU0VDVVJFIHdoaWNoIGlz
IGZvciB0aGUgZnJhbWV3b3JrIGZvciBzZWN1cmUgaGVhcHMuIFRoZQ0Kb3RoZXIgb25lIHNob3Vs
ZCBiZToNCg0KY29uZmlnIE1US19ETUFCVUZfSEVBUFNfU0VDVVJFDQogICAgYm9vbCAiTWVkaWF0
ZWsgRE1BLUJVRiBTZWN1cmUgSGVhcCINCiAgICBkZXBlbmRzIG9uIERNQUJVRl9IRUFQU19TRUNV
UkUgJiYgVEVFDQogICAgaGVscA0KICAgICAgICBFbmFibGVzIHNlY3VyZSBkbWEtYnVmIGhlYXBz
IGZvciBNZWRpYXRlayBwbGF0Zm9ybXMuDQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL01ha2VmaWxlIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+IGlu
ZGV4IDk3NDQ2Nzc5MTAzMi4uYjFhZDlkMWYyZmJlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvTWFrZWZpbGUNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2Vm
aWxlDQo+IEBAIC0xLDMgKzEsNCBAQA0KPiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMA0KPiArb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19TRUNVUkUpICAgICAgKz0gc2VjdXJl
X2hlYXAubw0KPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19TWVNURU0pICAgICAgKz0gc3lz
dGVtX2hlYXAubw0KPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19DTUEpICAgICAgICAgKz0g
Y21hX2hlYXAubw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9o
ZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJlX2hlYXAuYw0KPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLmE2MzQwNTFhMGE2Nw0KPiAtLS0gL2Rl
di9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jDQo+IEBA
IC0wLDAgKzEsOTggQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+
ICsvKg0KPiArICogRE1BQlVGIHNlY3VyZSBoZWFwIGV4cG9ydGVyDQo+ICsgKg0KPiArICogQ29w
eXJpZ2h0IChDKSAyMDIzIE1lZGlhVGVrIEluYy4NCj4gKyAqLw0KPiArDQo+ICsjaW5jbHVkZSA8
bGludXgvZG1hLWJ1Zi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1oZWFwLmg+DQo+ICsjaW5j
bHVkZSA8bGludXgvZXJyLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+DQo+ICsjaW5j
bHVkZSA8bGludXgvc2xhYi5oPg0KPiArDQo+ICtlbnVtIHNlY3VyZV9tZW1vcnlfdHlwZSB7DQo+
ICsgICAgICAgLyoNCj4gKyAgICAgICAgKiBNZWRpYVRlayBzdGF0aWMgY2h1bmsgbWVtb3J5IGNh
cnZlZCBvdXQgZm9yIFRydXN0Wm9uZS4gVGhlIG1lbW9yeQ0KPiArICAgICAgICAqIG1hbmFnZW1l
bnQgaXMgaW5zaWRlIHRoZSBURUUuDQo+ICsgICAgICAgICovDQo+ICsgICAgICAgU0VDVVJFX01F
TU9SWV9UWVBFX01US19DTV9UWiAgICA9IDEsDQoNCk1lZGlhdGVrIHNwZWNpZmljIGNvZGUgZm9y
IHNlY3VyZSBkbWEgaGVhcHMgc2hvdWxkIGdvIGludG8gYSBuZXcgZmlsZQ0KKG1heWJlIHNlY3Vy
ZV9oZWFwX210ay5jIHdoaWNoIHRoZSBNVEtfRE1BQlVGX0hFQVBTX1NFQ1VSRSBvcHRpb24NCmVu
YWJsZXMpLg0KDQo+ICt9Ow0KPiArDQo+ICtzdHJ1Y3Qgc2VjdXJlX2J1ZmZlciB7DQo+ICsgICAg
ICAgc3RydWN0IGRtYV9oZWFwICAgICAgICAgICAgICAgICAqaGVhcDsNCj4gKyAgICAgICBzaXpl
X3QgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemU7DQo+ICt9Ow0KPiArDQo+ICtzdHJ1Y3Qg
c2VjdXJlX2hlYXAgew0KPiArICAgICAgIGNvbnN0IGNoYXIgICAgICAgICAgICAgICAgICAgICAg
Km5hbWU7DQo+ICsgICAgICAgY29uc3QgZW51bSBzZWN1cmVfbWVtb3J5X3R5cGUgICBtZW1fdHlw
ZTsNCnNlY3VyZV9tZW1vcnlfdHlwZSBpcyBnb2luZyB0byBiZSBpbiB0aGUgdmVuZG9yIHNwZWNp
ZmljDQppbXBsZW1lbnRhdGlvbiwgSSBkb24ndCB0aGluayB5b3UgbmVlZCBpdCBpbiB0aGUgZnJh
bWV3b3JrLg0KDQo+ICt9Ow0KDQpZb3Ugc2hvdWxkIHByb2JhYmx5IG1vdmUgdGhlc2UgdG8gYSA8
bGludXgvZG1hLWhlYXAtc2VjdXJlLmg+IGZpbGUgc28NCnRoZXkgY2FuIGJlIHNoYXJlZCBieSB0
aGUgZnJhbWV3b3JrIGFuZCB0aGUgc3BlY2lmaWMgaW1wbGVtZW50YXRpb24NCihpbiB0aGlzIGNh
c2UgdmVuZG9yIHNwZWNpZmljKS4NCg0KPiArDQo+ICtzdGF0aWMgc3RydWN0IGRtYV9idWYgKg0K
PiArc2VjdXJlX2hlYXBfYWxsb2NhdGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLCB1bnNpZ25lZCBs
b25nIHNpemUsDQo+ICsgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgZmRfZmxhZ3Ms
IHVuc2lnbmVkIGxvbmcgaGVhcF9mbGFncykNCj4gK3sNCj4gKyAgICAgICBzdHJ1Y3Qgc2VjdXJl
X2J1ZmZlciAqc2VjX2J1ZjsNCj4gKyAgICAgICBERUZJTkVfRE1BX0JVRl9FWFBPUlRfSU5GTyhl
eHBfaW5mbyk7DQo+ICsgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gKyAgICAgICBp
bnQgcmV0Ow0KPiArDQo+ICsgICAgICAgc2VjX2J1ZiA9IGt6YWxsb2Moc2l6ZW9mKCpzZWNfYnVm
KSwgR0ZQX0tFUk5FTCk7DQo+ICsgICAgICAgaWYgKCFzZWNfYnVmKQ0KPiArICAgICAgICAgICAg
ICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+ICsNCj4gKyAgICAgICBzZWNfYnVmLT5zaXpl
ID0gQUxJR04oc2l6ZSwgUEFHRV9TSVpFKTsNCj4gKyAgICAgICBzZWNfYnVmLT5oZWFwID0gaGVh
cDsNCj4gKw0KPiArICAgICAgIGV4cF9pbmZvLmV4cF9uYW1lID0gZG1hX2hlYXBfZ2V0X25hbWUo
aGVhcCk7DQo+ICsgICAgICAgZXhwX2luZm8uc2l6ZSA9IHNlY19idWYtPnNpemU7DQo+ICsgICAg
ICAgZXhwX2luZm8uZmxhZ3MgPSBmZF9mbGFnczsNCj4gKyAgICAgICBleHBfaW5mby5wcml2ID0g
c2VjX2J1ZjsNCj4gKw0KPiArICAgICAgIGRtYWJ1ZiA9IGRtYV9idWZfZXhwb3J0KCZleHBfaW5m
byk7DQo+ICsgICAgICAgaWYgKElTX0VSUihkbWFidWYpKSB7DQo+ICsgICAgICAgICAgICAgICBy
ZXQgPSBQVFJfRVJSKGRtYWJ1Zik7DQo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX2J1
ZjsNCj4gKyAgICAgICB9DQo+ICsNCj4gKyAgICAgICByZXR1cm4gZG1hYnVmOw0KPiArDQo+ICtl
cnJfZnJlZV9idWY6DQo+ICsgICAgICAga2ZyZWUoc2VjX2J1Zik7DQo+ICsgICAgICAgcmV0dXJu
IEVSUl9QVFIocmV0KTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfaGVh
cF9vcHMgc2VjX2hlYXBfb3BzID0gew0KPiArICAgICAgIC5hbGxvY2F0ZSA9IHNlY3VyZV9oZWFw
X2FsbG9jYXRlLA0KPiArfTsNCj4gKw0KPiArc3RhdGljIHN0cnVjdCBzZWN1cmVfaGVhcCBzZWN1
cmVfaGVhcHNbXSA9IHsNCj4gKyAgICAgICB7DQo+ICsgICAgICAgICAgICAgICAubmFtZSAgICAg
ICAgICAgPSAic2VjdXJlX210a19jbSIsDQo+ICsgICAgICAgICAgICAgICAubWVtX3R5cGUgICAg
ICAgPSBTRUNVUkVfTUVNT1JZX1RZUEVfTVRLX0NNX1RaLA0KPiArICAgICAgIH0sDQo+ICt9Ow0K
DQpNb3ZlIHRoaXMgdG8gdGhlIHZlbmRvciBzcGVjaWZpYyBpbXBsZW1lbnRhdGlvbi4NCg0KPiAr
DQo+ICtzdGF0aWMgaW50IHNlY3VyZV9oZWFwX2luaXQodm9pZCkNCj4gK3sNCj4gKyAgICAgICBz
dHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFwID0gc2VjdXJlX2hlYXBzOw0KPiArICAgICAgIHN0
cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyBleHBfaW5mbzsNCj4gKyAgICAgICBzdHJ1Y3QgZG1h
X2hlYXAgKmhlYXA7DQo+ICsgICAgICAgdW5zaWduZWQgaW50IGk7DQo+ICsNCj4gKyAgICAgICBm
b3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShzZWN1cmVfaGVhcHMpOyBpKyssIHNlY19oZWFwKysp
IHsNCj4gKyAgICAgICAgICAgICAgIGV4cF9pbmZvLm5hbWUgPSBzZWNfaGVhcC0+bmFtZTsNCj4g
KyAgICAgICAgICAgICAgIGV4cF9pbmZvLm9wcyA9ICZzZWNfaGVhcF9vcHM7DQo+ICsgICAgICAg
ICAgICAgICBleHBfaW5mby5wcml2ID0gKHZvaWQgKilzZWNfaGVhcDsNCj4gKw0KPiArICAgICAg
ICAgICAgICAgaGVhcCA9IGRtYV9oZWFwX2FkZCgmZXhwX2luZm8pOw0KPiArICAgICAgICAgICAg
ICAgaWYgKElTX0VSUihoZWFwKSkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFBU
Ul9FUlIoaGVhcCk7DQo+ICsgICAgICAgfQ0KPiArICAgICAgIHJldHVybiAwOw0KPiArfQ0KDQpz
ZWN1cmVfaGVhcF9pbml0IHNob3VsZCB0YWtlIGEgJ3N0cnVjdCBzZWN1cmVfaGVhcConIGFzIGFu
IGFyZ3VtZW50DQphbmQgYmUgZGVmaW5lZCBpbiBkbWEtaGVhcC1zZWN1cmUuaC4NCg0KPiArDQo+
ICttb2R1bGVfaW5pdChzZWN1cmVfaGVhcF9pbml0KTsNCj4gK01PRFVMRV9ERVNDUklQVElPTigi
U2VjdXJlIEhlYXAgRHJpdmVyIik7DQo+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7DQoNClJlbW92
ZSBmcm9tIHRoaXMgZmlsZSwgaXQgc2hvdWxkIGdvIGluIHRoZSBzcGVjaWZpYyBpbXBsZW1lbnRh
dGlvbnMuDQoNCj4gLS0NCj4gMi4yNS4xDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
