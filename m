Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 231397ED841
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:35:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 277A040F31
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:35:39 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id EEEE43F0A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:35:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="Tdh/k6st";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1cc30de471dso63435ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700091321; x=1700696121; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oek2kHOiJKwuGradh8KZUYYGEhpdoKxKkCGLT/Ex0Qs=;
        b=Tdh/k6stHF5U4QhtuP5KSlzyw+a4WaoJvch/RwtyNGhcchUMr/Cvbk+1VVKWxb/yRu
         M+D4VGzzkxaR0SuX74ueeULWSuaZHgLXs0IgicB12rdDyq8GUmttYhgGnuaXRk/yah0q
         uTr5tE6DqIXt49/8CfhK1W40lSgz51HRUrzaeArC8IGJ40xTRlFq5r2BJgKfe/9CIbhr
         JZopq/6YPaGNfTMslQYAI8sAGzpn4D4H4ZP2M9btlauIpTaDhe4DzzizWkT1Qpc6PpI4
         HPQKevR4wNrq+HGeG5Q54iZ9wDdta63oQjRPRilLzf+cPMIJRSPwO9hqyTGw7302Sfw1
         nDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700091321; x=1700696121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oek2kHOiJKwuGradh8KZUYYGEhpdoKxKkCGLT/Ex0Qs=;
        b=uV+YYQORIJGbnDMwO4A1jl080eB8N4Lko4rB+c7LlLO9p1u63FrDF7Q3pU6x0PBEMU
         4U/u64AfF6BHNfrH5AFU28Yedbg91iybPf3k/e4UzWxJCy71Zca5qI+6CHwMLGodg1rr
         +PEepmZ0IkzgwT3Zn7DZZEt5Qk9xfawGMi0tyYzDq89dqTafpfo8dom0JcVt27iSduzG
         cCRtXI5tJFuWmwbS1FA8yFhmcA/SgXgQ54ZXrnrbk2W3z9Exu/WnbSBC4hKjMEkqFOlc
         RwtSCZBaXM71AvhZUZIGZLGbY+PVogIXI/MkyAffOXFfITqoDhEtyEDkUDYnPvW4nfGo
         I5Ig==
X-Gm-Message-State: AOJu0Yyyc96mAY3rJQQF9OoTbK46y0s0M48kVbfvfroC52SkQuwkxeR0
	g3OF4jg++xc7A3uz+tLtOx06Nx2SgQub19Oz6zZO
X-Google-Smtp-Source: AGHT+IGz9f/SLu5mPtYfVW8CPrScTnMxwCAhNmSPfXNU6OOHTiFkG39zGsXsGPkZucRS05i+dhBhg89vqZQYyDxclRo=
X-Received: by 2002:a17:902:f684:b0:1cd:fbc7:271f with SMTP id
 l4-20020a170902f68400b001cdfbc7271fmr66903plg.20.1700091320785; Wed, 15 Nov
 2023 15:35:20 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-7-yong.wu@mediatek.com>
 <0ccee72f-98ac-4a08-9253-9c22dad4d95a@linaro.org> <5d7b2458b8d1896ce575f4ed2d413f4e8eeb92b4.camel@mediatek.com>
 <3daaa2aa-61d4-40db-b36d-cd825a340d2b@arm.com>
In-Reply-To: <3daaa2aa-61d4-40db-b36d-cd825a340d2b@arm.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:35:09 -0800
Message-ID: <CA+ddPcM5CuiOs+JGGBtn7ea1vzwHvawyApa_wRcGWNLD=yrrnw@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EEEE43F0A5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.05 / 15.00];
	BAYES_HAM(-2.55)[97.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,gmail.com,amd.com,linaro.org,kernel.org,vger.kernel.org,lists.infradead.org,google.com,ndufresne.ca,lists.linaro.org,quicinc.com,arm.com,collabora.com,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: OXDCFE7LZOFNGH2FEJGUKYFHFMSGKJKG
X-Message-ID-Hash: OXDCFE7LZOFNGH2FEJGUKYFHFMSGKJKG
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "nicolas@ndufresne.ca" <nicolas@ndufresne.ca>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>
 , "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/8] dt-bindings: reserved-memory: Add secure CMA reserved memory range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OXDCFE7LZOFNGH2FEJGUKYFHFMSGKJKG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWF5IEkgc3VnZ2VzdCB0aGUgZm9sbG93aW5nIGZvciB0aGUgZGV2aWNlIHRyZWUgYmluZGluZz8g
KEknbSBub3QgdmVyeQ0KZmFtaWxpYXIgdy8gZGV2aWNlIHRyZWVzLCBzbyBhcG9sb2dpZXMgZm9y
IGFueSBvdmVyc2lnaHRzLCBidXQgdHJ5aW5nDQp0byBwcm9jZXNzIHRoZSBmZWVkYmFjayBoZXJl
IGFuZCBoZWxwIG1vdmUgTWVkaWF0ZWsgYWxvbmcpLiBUaGlzDQpzaG91bGQgYWxpZ24gd2l0aCBt
eSBvdGhlciBzdWdnZXN0aW9ucyBmb3IgaGF2aW5nIGFuIE1USyBzcGVjaWZpYw0KcG9ydGlvbiB0
byB0aGVpciBzZWN1cmUgaGVhcCBpbXBsZW1lbnRhdGlvbjsgd2hpY2ggYWxzbyBtZWFucyB0aGVy
ZQ0Kc2hvdWxkIGJlIGFuIE1USyBzcGVjaWZpYyBkZXZpY2UgdHJlZSBiaW5kaW5nLg0KDQojIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCiVZ
QU1MIDEuMg0KLS0tDQokaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVk
LW1lbW9yeS9tZWRpYXRlayxkeW5hbWljLXNlY3VyZS1yZWdpb24ueWFtbCMNCiRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KDQp0aXRsZTogTWVk
aWF0ZWsgRHluYW1pYyBSZXNlcnZlZCBSZWdpb24NCg0KZGVzY3JpcHRpb246DQogIEEgbWVtb3J5
IHJlZ2lvbiB0aGF0IGNhbiBkeW5hbWljYWxseSB0cmFuc2l0aW9uIGFzIGEgd2hvbGUgYmV0d2Vl
bg0Kc2VjdXJlIGFuZCBub24tc2VjdXJlIHN0YXRlcy4gVGhpcyBtZW1vcnkgd2lsbCBiZSBwcm90
ZWN0ZWQgYnkgT1AtVEVFDQp3aGVuIGFsbG9jYXRpb25zIGFyZSBhY3RpdmUgYW5kIHVucHJvdGVj
dGVkIG90aGVyd2lzZS4NCg0KbWFpbnRhaW5lcnM6DQogIC0gWW9uZyBXdSA8eW9uZy53dUBtZWRp
YXRlay5jb20+DQoNCmFsbE9mOg0KICAtICRyZWY6IHJlc2VydmVkLW1lbW9yeS55YW1sDQoNCnBy
b3BlcnRpZXM6DQogIGNvbXBhdGlibGU6DQogICAgY29uc3Q6IG1lZGlhdGVrLGR5bmFtaWMtc2Vj
dXJlLXJlZ2lvbg0KDQpyZXF1aXJlZDoNCiAgLSBjb21wYXRpYmxlDQogIC0gcmVnDQogIC0gcmV1
c2FibGUNCg0KdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQ0KDQpleGFtcGxlczoNCiAgLSB8
DQoNCiAgICByZXNlcnZlZC1tZW1vcnkgew0KICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsN
CiAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQogICAgICAgIHJhbmdlczsNCg0KICAgICAgICBy
ZXNlcnZlZC1tZW1vcnlAODAwMDAwMDAgew0KICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxkeW5hbWljLXNlY3VyZS1yZWdpb24iOw0KICAgICAgICAgICAgcmV1c2FibGU7DQogICAg
ICAgICAgICByZWcgPSA8MHg4MDAwMDAwMCAweDE4MDAwMDAwPjsNCiAgICAgICAgfTsNCiAgICB9
Ow0KDQpPbiBUdWUsIE5vdiAxNCwgMjAyMyBhdCA1OjE44oCvQU0gUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDEzLzExLzIwMjMgNjozNyBhbSwgWW9u
ZyBXdSAo5ZC05YuHKSB3cm90ZToNCj4gWy4uLl0NCj4gPj4+ICtwcm9wZXJ0aWVzOg0KPiA+Pj4g
KyAgY29tcGF0aWJsZToNCj4gPj4+ICsgICAgY29uc3Q6IHNlY3VyZV9jbWFfcmVnaW9uDQo+ID4+
DQo+ID4+IFN0aWxsIHdyb25nIGNvbXBhdGlibGUuIExvb2sgYXQgb3RoZXIgYmluZGluZ3MgLSB0
aGVyZSBpcyBub3doZXJlDQo+ID4+IHVuZGVyc2NvcmUuIExvb2sgYXQgb3RoZXIgcmVzZXJ2ZWQg
bWVtb3J5IGJpbmRpbmdzIGVzcGVjaWFsbHkuDQo+ID4+DQo+ID4+IEFsc28sIENNQSBpcyBhIExp
bnV4IHRoaW5neSwgc28gZWl0aGVyIG5vdCBzdWl0YWJsZSBmb3IgYmluZGluZ3MgYXQNCj4gPj4g
YWxsLA0KPiA+PiBvciB5b3UgbmVlZCBMaW51eCBzcGVjaWZpYyBjb21wYXRpYmxlLiBJIGRvbid0
IHF1aXRlIGdldCB3aHkgZG8geW91DQo+ID4+IGV2ZW5ub3QNCj4gPj4gcHV0IENNQSB0aGVyZSAt
IGFkZGluZyBMaW51eCBzcGVjaWZpYyBzdHVmZiB3aWxsIGdldCBvYnZpb3VzDQo+ID4+IHB1c2hi
YWNrLi4uDQo+ID4NCj4gPiBUaGFua3MuIEkgd2lsbCBjaGFuZ2UgdG86IHNlY3VyZS1yZWdpb24u
IElzIHRoaXMgb2s/DQo+DQo+IE5vLCB0aGUgcHJldmlvdXMgZGlzY3Vzc2lvbiB3ZW50IG9mZiBp
biBlbnRpcmVseSB0aGUgd3JvbmcgZGlyZWN0aW9uLiBUbw0KPiByZWl0ZXJhdGUsIHRoZSBwb2lu
dCBvZiB0aGUgYmluZGluZyBpcyBub3QgdG8gZGVzY3JpYmUgdGhlIGV4cGVjdGVkDQo+IHVzYWdl
IG9mIHRoZSB0aGluZyBub3IgdGhlIGdlbmVyYWwgY29uY2VwdCBvZiB0aGUgdGhpbmcsIGJ1dCB0
byBkZXNjcmliZQ0KPiB0aGUgYWN0dWFsIHRoaW5nIGl0c2VsZi4gVGhlcmUgYXJlIGFueSBudW1i
ZXIgb2YgZGlmZmVyZW50IHdheXMgc29mdHdhcmUNCj4gbWF5IGludGVyYWN0IHdpdGggYSAic2Vj
dXJlIHJlZ2lvbiIsIHNvIHRoYXQgaXMgbWVhbmluZ2xlc3MgYXMgYQ0KPiBjb21wYXRpYmxlLiBJ
dCBuZWVkcyB0byBkZXNjcmliZSAqdGhpcyogc2VjdXJlIG1lbW9yeSBpbnRlcmZhY2Ugb2ZmZXJl
ZA0KPiBieSAqdGhpcyogVEVFLCBzbyB0aGF0IHNvZnR3YXJlIGtub3dzIHRoYXQgdG8gdXNlIGl0
IHJlcXVpcmVzIG1ha2luZw0KPiB0aG9zZSBwYXJ0aWN1bGFyIFNpUCBjYWxscyB3aXRoIHRoYXQg
cGFydGljdWxhciBVVUlEIGV0Yy4NCj4NCj4gVGhhbmtzLA0KPiBSb2Jpbi4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
