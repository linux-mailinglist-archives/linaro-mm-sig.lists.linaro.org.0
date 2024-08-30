Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 597B2965A9A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 10:42:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22E8943D50
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 08:42:47 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by lists.linaro.org (Postfix) with ESMTPS id 111EE3EAD3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 08:42:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=gfEGCh82;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5dfa315ffbdso785705eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 01:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725007364; x=1725612164; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hFoJ8uGU6Wt+2B+a3U8PT9o5qr4L6h8Nf/lLSdsGyCQ=;
        b=gfEGCh82vRmUk27C/YVA+x4+N2QGBK5Tdfy2Z0oOPS9P7R3eKrellS4QbZxXU3Z0pe
         57U6wFZBto1CTx2GOX+VhC/wBLpy6H/r8KHMPU4AqzVipwgLz2tpnPNShRprQnD3ZioR
         LwXnUSpwGCTqq3BIBDFe9U2FbxjBMW4xGK1wsr7wU0m0cb+M9Uldj5BTxcBl9LFlDdxL
         cucni7FvzlJtJ0JGjXig0To5eSlHHbssqsHKqDkE+5xuYIQ2HIqRtXDEc9YdvILUv0A7
         1dwCySAL1VpAZfC/JBXkEm9/SHl7LlLNcp5XOh3Byz/3s5+5A4yTeEvQFkl/G4KGXfwf
         b1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007364; x=1725612164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFoJ8uGU6Wt+2B+a3U8PT9o5qr4L6h8Nf/lLSdsGyCQ=;
        b=nxSeNDM/NqwOX8PJY5pXBXPcgXUi7pvsWSjPUBY2zVYxhpx5fyTqv6dJZ4Phrya5ou
         bdYpZjv1W8AqGmXgRLU/szcnq7OTTWQSHK+MSRuJozJIi3sWxESIj4A3q71if3NUDdfP
         zsMw3N8sTIK8MOEw9zRr9WMOrTxOlOHaPrCvXvGaa11vMGJdXJyCUcianWej6ATgu2UV
         G1UkGkOKR2Ncsi1kSzwkd1RFW4mNflpTQAFlsnDsKezq/1j1LV5ewzTeLYiOPR1VraEt
         sN6L1/FfSDNNXqMfrFstmcyTUBnXKzSbavC/MAMgX7oblj1M5K7RP8Y8fFQwal8QxMYk
         gI8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUNy9DO04jPyR5kqbojKUffijCcUfhpiNZ+zVqxb19sKHhnYzbfTxKU4JBmCzSi2EXkCUnaVX/gbn37lN9j@lists.linaro.org
X-Gm-Message-State: AOJu0YxE0sWX/0zZ8VmfUYlgHEUHB6nliC4601H1csxg+C0zosXQUply
	nyiGrsfnBDH62iggXvE48VqkrFYfsoyohPFjfby9egYIpCof5aHD5+ebhJ07Bzp0uSDTXDVtIJd
	faSkyuN11F6G2NHuowfPXwV1Oj60NRtfm5nhwsFTo
X-Google-Smtp-Source: AGHT+IHBEq2kXBcob7OwHZwxMgPl68xRTiaqYdA20dFyB6L5ns13TYFSRrWJQJLVdlnc+h48Q+Hs/qXBirYHpgAHAeU=
X-Received: by 2002:a05:6820:2216:b0:5d6:ae6:a852 with SMTP id
 006d021491bc7-5dfacf28289mr1998086eaf.6.1725007364035; Fri, 30 Aug 2024
 01:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-4-jens.wiklander@linaro.org> <3bqb6mktkvbdl6h4eekad4mpjhyvzx7mjidhnanboygbwu2asz@6ros56bp6isd>
In-Reply-To: <3bqb6mktkvbdl6h4eekad4mpjhyvzx7mjidhnanboygbwu2asz@6ros56bp6isd>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 30 Aug 2024 10:42:32 +0200
Message-ID: <CAHUa44Fd-Eo5-CUfxDgCFpRVbJP0gzA7LX_-5=cBfBd8NxhpDw@mail.gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 111EE3EAD3
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.53:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: 2XTXRL4GWDQPTISHB7OK7KWTK53DTI56
X-Message-ID-Hash: 2XTXRL4GWDQPTISHB7OK7KWTK53DTI56
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/4] dt-bindings: reserved-memory: add linaro,restricted-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2XTXRL4GWDQPTISHB7OK7KWTK53DTI56/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMTA6MjDigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBGcmksIEF1ZyAzMCwgMjAyNCBhdCAwOTow
Mzo1MEFNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBGcm9tOiBPbGl2aWVyIE1h
c3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+DQo+ID4NCj4gPiBETUFCVUYgcmVzZXJ2ZWQgbWVt
b3J5IGRlZmluaXRpb24gZm9yIE9QLVRFRSBzZWN1cmUgZGF0YSBwYXRoIGZlYXR1cmUuDQo+ID4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFy
by5vcmc+DQo+ID4gLS0tDQo+ID4gIC4uLi9saW5hcm8scmVzdHJpY3RlZC1oZWFwLnlhbWwgICAg
ICAgICAgICAgICB8IDU2ICsrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDU2IGluc2VydGlvbnMoKykNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvbGluYXJvLHJlc3RyaWN0ZWQtaGVh
cC55YW1sDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9saW5hcm8scmVzdHJpY3RlZC1oZWFwLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L2xpbmFybyxyZXN0
cmljdGVkLWhlYXAueWFtbA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAw
MDAwMDAwMDAwLi4wYWI4N2NmMDI3NzUNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9saW5hcm8scmVz
dHJpY3RlZC1oZWFwLnlhbWwNCj4gPiBAQCAtMCwwICsxLDU2IEBADQo+ID4gKyMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkNCj4gPiArJVlBTUwgMS4y
DQo+ID4gKy0tLQ0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2Vy
dmVkLW1lbW9yeS9saW5hcm8scmVzdHJpY3RlZC1oZWFwLnlhbWwjDQo+ID4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPiA+ICsNCj4gPiAr
dGl0bGU6IExpbmFybyBTZWN1cmUgRE1BQlVGIEhlYXANCj4gPiArDQo+ID4gK21haW50YWluZXJz
Og0KPiA+ICsgIC0gT2xpdmllciBNYXNzZSA8b2xpdmllci5tYXNzZUBueHAuY29tPg0KPiA+ICsN
Cj4gPiArZGVzY3JpcHRpb246DQo+ID4gKyAgTGluYXJvIE9QLVRFRSBmaXJtd2FyZSBuZWVkcyBh
IHJlc2VydmVkIG1lbW9yeSBmb3IgdGhlDQo+ID4gKyAgU2VjdXJlIERhdGEgUGF0aCBmZWF0dXJl
IChha2EgU0RQKS4NCj4gPiArICBUaGUgcHVycG9zZSBpcyB0byBwcm92aWRlIGEgcmVzdHJpY3Rl
ZCBtZW1vcnkgaGVhcCB3aGljaCBhbGxvdw0KPiA+ICsgIHRoZSBub3JtYWwgd29ybGQgT1MgKFJF
RSkgdG8gYWxsb2NhdGUvZnJlZSByZXN0cmljdGVkIGJ1ZmZlcnMuDQo+ID4gKyAgVGhlIFRFRSBp
cyByZXBvbnNpYmxlIGZvciBwcm90ZWN0aW5nIHRoZSBTRFAgbWVtb3J5IGJ1ZmZlcnMuDQo+ID4g
KyAgVEVFIFRydXN0ZWQgQXBwbGljYXRpb24gY2FuIGFjY2VzcyByZXN0cmljdGVkIG1lbW9yeSBy
ZWZlcmVuY2VzDQo+ID4gKyAgcHJvdmlkZWQgYXMgcGFyYW1ldGVycyAoRE1BQlVGIGZpbGUgZGVz
Y3JpcHRvcikuDQo+DQo+IEFuZCB3aGF0IGlzIHRoZSBkaWZmZXJlbmNlIGZyb20gcmVndWxhciBy
ZXNlcnZlZCBtZW1vcnk/IFdoeSBpdCBjYW5ub3QNCj4gYmUgdXNlZD8NCg0KR29vZCBxdWVzdGlv
bi4gSSBuZWVkIGEgY29tcGF0aWJsZSA9ICJsaW5hcm8scmVzdHJpY3RlZC1oZWFwIiB0byBmaW5k
DQppdCwgYnV0IGl0IGFwcGVhcnMgdGhhdCdzIHBlcm1pdHRlZCB3aXRoIHJlZ3VsYXIgcmVzZXJ2
ZWQgbWVtb3J5Lg0KTGV0J3MgZHJvcCB0aGlzIHBhdGNoLiBUaGFua3MgZm9yIHBvaW50aW5nIG1l
IGluIHRoZSByaWdodCBkaXJlY3Rpb24uDQoNCj4NCj4gPiArDQo+ID4gK2FsbE9mOg0KPiA+ICsg
IC0gJHJlZjogInJlc2VydmVkLW1lbW9yeS55YW1sIg0KPg0KPiBJdCBkb2VzIG5vdCBsb29rIGxp
a2UgeW91IHRlc3RlZCB0aGUgYmluZGluZ3MsIGF0IGxlYXN0IGFmdGVyIHF1aWNrDQo+IGxvb2su
IFBsZWFzZSBydW4gIChzZWUNCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dy
aXRpbmctc2NoZW1hLnJzdCBmb3IgaW5zdHJ1Y3Rpb25zKS4NCj4gTWF5YmUgeW91IG5lZWQgdG8g
dXBkYXRlIHlvdXIgZHRzY2hlbWEgYW5kIHlhbWxsaW50Lg0KDQpZb3UncmUgcmlnaHQsIHNvcnJ5
Lg0KDQo+DQo+ID4gKw0KPiA+ICtwcm9wZXJ0aWVzOg0KPiA+ICsgIGNvbXBhdGlibGU6DQo+ID4g
KyAgICBjb25zdDogbGluYXJvLHJlc3RyaWN0ZWQtaGVhcA0KPiA+ICsNCj4gPiArICByZWc6DQo+
ID4gKyAgICBkZXNjcmlwdGlvbjoNCj4gPiArICAgICAgUmVnaW9uIG9mIG1lbW9yeSByZXNlcnZl
ZCBmb3IgT1AtVEVFIFNEUCBmZWF0dXJlDQo+ID4gKw0KPiA+ICsgIG5vLW1hcDoNCj4gPiArICAg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ZsYWcNCj4gPiArICAgIGRl
c2NyaXB0aW9uOg0KPiA+ICsgICAgICBBdm9pZCBjcmVhdGluZyBhIHZpcnR1YWwgbWFwcGluZyBv
ZiB0aGUgcmVnaW9uIGFzIHBhcnQgb2YgdGhlIE9TJw0KPiA+ICsgICAgICBzdGFuZGFyZCBtYXBw
aW5nIG9mIHN5c3RlbSBtZW1vcnkuDQo+ID4gKw0KPiA+ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6
IGZhbHNlDQo+DQo+IFRoaXMgZ29lcyBhZnRlciAicmVxdWlyZWQ6IiBibG9jay4NCg0KT0sNCg0K
Pg0KPiA+ICsNCj4gPiArcmVxdWlyZWQ6DQo+ID4gKyAgLSBjb21wYXRpYmxlDQo+ID4gKyAgLSBy
ZWcNCj4gPiArICAtIG5vLW1hcA0KPiA+ICsNCj4gPiArZXhhbXBsZXM6DQo+ID4gKyAgLSB8DQo+
ID4gKyAgcmVzZXJ2ZWQtbWVtb3J5IHsNCj4gPiArICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Ow0K
PiA+ICsgICAgI3NpemUtY2VsbHMgPSA8Mj47DQo+ID4gKw0KPiA+ICsgICAgc2RwQDNlODAwMDAw
IHsNCj4gPiArICAgICAgY29tcGF0aWJsZSA9ICJsaW5hcm8scmVzdHJpY3RlZC1oZWFwIjsNCj4g
PiArICAgICAgbm8tbWFwOw0KPiA+ICsgICAgICByZWcgPSA8MCAweDNFODAwMDAwIDAgMHgwMDQw
MDAwMD47DQo+DQo+IGxvd2VyY2FzZSBoZXgNCj4NCg0KT0sNCg0KDQpUaGFua3MsDQpKZW5zDQoN
Cj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCj4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
