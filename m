Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 601277CF770
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:51:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71E5140C46
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:51:13 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 688263EABF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Sep 2023 18:25:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=G5axrQnA;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4051039701eso13025e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Sep 2023 11:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695234313; x=1695839113; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpTkUTk2dzioZKLIBTQ18yG7YDnHVOKB4Sat59PHtOs=;
        b=G5axrQnAJtcTbocMVBtm9qlPSsCOtLFG24SlpvzSuU3ZuVnHuJAVIOF8pCBi5IMmG1
         FXx1J2/NiwnbuRd1ijlFLp+FGhK0Z1NO7EX02IWDWiyQVloJTyknBP1W1tV+6v8wj7WT
         nLumsXt4H2u+fjWv1+OVvCx5mGol4Cb3xq7Vr3dw/obtOXvDKIU9YL0e1coNzm0YLLbf
         liPbjcxq4iJvhNuZMSjVhRoMDu7LMhqmtzrnDWo2hv6Gv7Hl1vI/IR00w3y2mw2S5Gt/
         RhEDcFK9ncHw+gjakXrWSqVufFeH0qwtmzc+EAt1mVHKPuU3yMAPDh5sBMoIRbXmOyHt
         5pwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695234313; x=1695839113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VpTkUTk2dzioZKLIBTQ18yG7YDnHVOKB4Sat59PHtOs=;
        b=aG1BqXiFxF6Nz23kuFB4OE7ydsLPWlFJJAsHevxcfzvkui+YThjfxyv1p2A8DiBcUC
         0huuZ9bROVrhdFAQUz4Za8HL6j0C23UhGEWL3NHhPgtmVhFf/GWUcfYzgApXy7Jq4+k/
         fNs05IfJ2g9IvFLO1ceDRwK5IFB1b5zLSE70zoGn6osfdcr0MJN2kGg69qij03Rttzo+
         yQAo9voS4wW65dmBWC36t3DyxVCo/yD37BRQ/WaYrjKTQeIAtn2aZSMHhrzQowcWAIor
         EimBauEKvQmOmLLlFU3sfj7aFKBZxH/4NvWxEWk479r9NaqLxksHTfb3ComSXWY8Uhau
         K7Hw==
X-Gm-Message-State: AOJu0YwYaC2PtvgCurDiEw3V64RD2hfW+bmafgdqcyh70JfWSQBfVrlm
	bSMVwXmNPTmibw5cNORnx3AeLaYCpLh/2moKZP93
X-Google-Smtp-Source: AGHT+IFSXkkSrtGDTTY0L5kfO+ZTbOYrxprKpii61xyoEksdD+ax+vTtjx8jczEku0If7HT3UPfPXkcJqmapyG/fxdw=
X-Received: by 2002:a05:600c:4e43:b0:401:c94d:d6de with SMTP id
 e3-20020a05600c4e4300b00401c94dd6demr7385wmq.2.1695234312781; Wed, 20 Sep
 2023 11:25:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com> <a0b32a1d93bc9d991f77ad3408fe7b177bb32889.camel@mediatek.com>
In-Reply-To: <a0b32a1d93bc9d991f77ad3408fe7b177bb32889.camel@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 20 Sep 2023 11:25:00 -0700
Message-ID: <CA+ddPcNPeo=z42fG24uoSMJ8M0uWB-huzXVKBm-seG=7b+50JA@mail.gmail.com>
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	REDIRECTOR_URL(0.00)[urldefense.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,mediatek.com,collabora.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 688263EABF
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZFXSXZTCSSHSKN6CZK7JMSEUN4OE5MAW
X-Message-ID-Hash: ZFXSXZTCSSHSKN6CZK7JMSEUN4OE5MAW
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:52 +0000
CC: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, =?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, =?UTF-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?= <Jason-ch.Chen@mediatek.com>, =?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediate
 k.com>, =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/10] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFXSXZTCSSHSKN6CZK7JMSEUN4OE5MAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgMTA6MjbigK9QTSBDSyBIdSAo6IOh5L+K5YWJKSA8Y2su
aHVAbWVkaWF0ZWsuY29tPiB3cm90ZToNCj4NCj4gSGksIEphc29uOg0KPg0KPiBPbiBUdWUsIDIw
MjMtMDktMTkgYXQgMTE6MDMgKzA4MDAsIEphc29uLUpILkxpbiB3cm90ZToNCj4gPiBUaGUgcGF0
Y2ggc2VyaWVzIHByb3ZpZGVzIGRybSBkcml2ZXIgc3VwcG9ydCBmb3IgZW5hYmxpbmcgc2VjdXJl
DQo+ID4gdmlkZW8NCj4gPiBwYXRoIChTVlApIHBsYXliYWNrIG9uIE1lZGlhaVRlayBoYXJkd2Fy
ZSBpbiB0aGUgTGludXgga2VybmVsLg0KPiA+DQo+ID4gTWVtb3J5IERlZmluaXRpb25zOg0KPiA+
IHNlY3VyZSBtZW1vcnkgLSBNZW1vcnkgYWxsb2NhdGVkIGluIHRoZSBURUUgKFRydXN0ZWQgRXhl
Y3V0aW9uDQo+ID4gRW52aXJvbm1lbnQpIHdoaWNoIGlzIGluYWNjZXNzaWJsZSBpbiB0aGUgUkVF
IChSaWNoIEV4ZWN1dGlvbg0KPiA+IEVudmlyb25tZW50LCBpLmUuIGxpbnV4IGtlcm5lbC91c2Vy
c3BhY2UpLg0KPiA+IHNlY3VyZSBoYW5kbGUgLSBJbnRlZ2VyIHZhbHVlIHdoaWNoIGFjdHMgYXMg
cmVmZXJlbmNlIHRvICdzZWN1cmUNCj4gPiBtZW1vcnknLiBVc2VkIGluIGNvbW11bmljYXRpb24g
YmV0d2VlbiBURUUgYW5kIFJFRSB0byByZWZlcmVuY2UNCj4gPiAnc2VjdXJlIG1lbW9yeScuDQo+
ID4gc2VjdXJlIGJ1ZmZlciAtICdzZWN1cmUgbWVtb3J5JyB0aGF0IGlzIHVzZWQgdG8gc3RvcmUg
ZGVjcnlwdGVkLA0KPiA+IGNvbXByZXNzZWQgdmlkZW8gb3IgZm9yIG90aGVyIGdlbmVyYWwgcHVy
cG9zZXMgaW4gdGhlIFRFRS4NCj4gPiBzZWN1cmUgc3VyZmFjZSAtICdzZWN1cmUgbWVtb3J5JyB0
aGF0IGlzIHVzZWQgdG8gc3RvcmUgZ3JhcGhpYw0KPiA+IGJ1ZmZlcnMuDQo+ID4NCj4gPiBNZW1v
cnkgVXNhZ2UgaW4gU1ZQOg0KPiA+IFRoZSBvdmVyYWxsIGZsb3cgb2YgU1ZQIHN0YXJ0cyB3aXRo
IGVuY3J5cHRlZCB2aWRlbyBjb21pbmcgaW4gZnJvbSBhbg0KPiA+IG91dHNpZGUgc291cmNlIGlu
dG8gdGhlIFJFRS4gVGhlIFJFRSB3aWxsIHRoZW4gYWxsb2NhdGUgYSAnc2VjdXJlDQo+ID4gYnVm
ZmVyJyBhbmQgc2VuZCB0aGUgY29ycmVzcG9uZGluZyAnc2VjdXJlIGhhbmRsZScgYWxvbmcgd2l0
aCB0aGUNCj4gPiBlbmNyeXB0ZWQsIGNvbXByZXNzZWQgdmlkZW8gZGF0YSB0byB0aGUgVEVFLiBU
aGUgVEVFIHdpbGwgdGhlbg0KPiA+IGRlY3J5cHQNCj4gPiB0aGUgdmlkZW8gYW5kIHN0b3JlIHRo
ZSByZXN1bHQgaW4gdGhlICdzZWN1cmUgYnVmZmVyJy4gVGhlIFJFRSB3aWxsDQo+ID4gdGhlbiBh
bGxvY2F0ZSBhICdzZWN1cmUgc3VyZmFjZScuIFRoZSBSRUUgd2lsbCBwYXNzIHRoZSAnc2VjdXJl
DQo+ID4gaGFuZGxlcycgZm9yIGJvdGggdGhlICdzZWN1cmUgYnVmZmVyJyBhbmQgJ3NlY3VyZSBz
dXJmYWNlJyBpbnRvIHRoZQ0KPiA+IFRFRSBmb3IgdmlkZW8gZGVjb2RpbmcuIFRoZSB2aWRlbyBk
ZWNvZGVyIEhXIHdpbGwgdGhlbiBkZWNvZGUgdGhlDQo+ID4gY29udGVudHMgb2YgdGhlICdzZWN1
cmUgYnVmZmVyJyBhbmQgcGxhY2UgdGhlIHJlc3VsdCBpbiB0aGUgJ3NlY3VyZQ0KPiA+IHN1cmZh
Y2UnLiBUaGUgUkVFIHdpbGwgdGhlbiBhdHRhY2ggdGhlICdzZWN1cmUgc3VyZmFjZScgdG8gdGhl
DQo+ID4gb3ZlcmxheQ0KPiA+IHBsYW5lIGZvciByZW5kZXJpbmcgb2YgdGhlIHZpZGVvLg0KPiA+
DQo+ID4gRXZlcnl0aGluZyByZWxhdGluZyB0byBlbnN1cmluZyBzZWN1cml0eSBvZiB0aGUgYWN0
dWFsIGNvbnRlbnRzIG9mDQo+ID4gdGhlDQo+ID4gJ3NlY3VyZSBidWZmZXInIGFuZCAnc2VjdXJl
IHN1cmZhY2UnIGlzIG91dCBvZiBzY29wZSBmb3IgdGhlIFJFRSBhbmQNCj4gPiBpcyB0aGUgcmVz
cG9uc2liaWxpdHkgb2YgdGhlIFRFRS4NCj4gPg0KPiA+IERSTSBkcml2ZXIgaGFuZGxlcyBhbGxv
Y2F0aW9uIG9mIGdlbSBvYmplY3RzIHRoYXQgYXJlIGJhY2tlZCBieSBhDQo+ID4gJ3NlY3VyZQ0K
PiA+IHN1cmZhY2UnIGFuZCBmb3IgZGlzcGxheWluZyBhICdzZWN1cmUgc3VyZmFjZScgb24gdGhl
IG92ZXJsYXkgcGxhbmUuDQo+ID4gVGhpcyBpbnRyb2R1Y2VzIGEgbmV3IGZsYWcgZm9yIG9iamVj
dCBjcmVhdGlvbiBjYWxsZWQNCj4gPiBEUk1fTVRLX0dFTV9DUkVBVEVfRU5DUllQVEVEIHdoaWNo
IGluZGljYXRlcyBpdCBzaG91bGQgYmUgYSAnc2VjdXJlDQo+ID4gc3VyZmFjZScuIEFsbCBjaGFu
Z2VzIGhlcmUgYXJlIGluIE1lZGlhVGVrIHNwZWNpZmljIGNvZGUuDQo+DQo+IEhvdyBkbyB5b3Ug
ZGVmaW5lIFNWUD8gSXMgdGhlcmUgc3RhbmRhcmQgcmVxdWlyZW1lbnQgd2UgY291bGQgcmVmZXIg
dG8/DQo+IElmIHRoZSBzZWN1cmUgdmlkZW8gYnVmZmVyIGlzIHJlYWQgYnkgZGlzcGxheSBoYXJk
d2FyZSBhbmQgb3V0cHV0IHRvDQo+IEhETUkgd2l0aG91dCBhbnkgcHJvdGVjdGlvbiBhbmQgdXNl
ciBjb3VsZCBjYXB0dXJlIEhETUkgc2lnbmFsLCBpcyB0aGlzDQo+IHNlY3VyZT8NCg0KU1ZQIChT
ZWN1cmUgVmlkZW8gUGF0aCkgaXMgZXNzZW50aWFsbHkgdGhlIHZpZGVvIGJlaW5nIGNvbXBsZXRl
ZA0KaXNvbGF0ZWQgZnJvbSB0aGUga2VybmVsL3VzZXJzcGFjZS4gVGhlIHNwZWNpZmljIHJlcXVp
cmVtZW50cyBmb3IgaXQNCnZhcnkgYmV0d2VlbiBpbXBsZW1lbnRhdGlvbnMuDQoNClJlZ2FyZGlu
ZyBIRE1JL0hEQ1Agb3V0cHV0OyBpdCdzIHRoZSByZXNwb25zaWJpbGl0eSBvZiB0aGUgVEVFIHRv
DQplbmZvcmNlIHRoYXQuIE5vdGhpbmcgb24gdGhlIGtlcm5lbC91c2Vyc3BhY2Ugc2lkZSBuZWVk
cyB0byBiZQ0KY29uY2VybmVkIGFib3V0IGVuZm9yY2luZyBIRENQLiBUaGUgb25seSB0aGluZyB1
c2Vyc3BhY2UgaXMgaW52b2x2ZWQNCmluIHRoZXJlIGlzIGFjdHVhbGx5IHR1cm5pbmcgb24gSERD
UCB2aWEgdGhlIGtlcm5lbCBkcml2ZXJzOyBhbmQgdGhlbg0KdGhlIFRFRSBlbnN1cmVzIHRoYXQg
aXQgaXMgYWN0aXZlIGlmIHRoZSBwb2xpY3kgZm9yIHRoZSBlbmNyeXB0ZWQNCmNvbnRlbnQgcmVx
dWlyZXMgaXQuDQo+DQo+IFJlZ2FyZHMsDQo+IENLDQo+DQo+ID4NCj4gPiAtLS0NCj4gPiBCYXNl
ZCBvbiAyIHNlcmllczoNCj4gPiBbMV0gQWRkIENNRFEgc2VjdXJlIGRyaXZlciBmb3IgU1ZQDQo+
ID4gLQ0KPiA+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvbGludXgtbWVkaWF0ZWsvbGlzdC8/c2VyaWVzPTc4NTMzMl9fOyEh
Q1RSTktBOXdNZzBBUmJ3IW1Qb2NiUXdaNC0yNURtaWR2QWdkOUs1ZVhqTkVoU3lJS3B2dllIUHBk
cnEyUGdTLWhrWXlIb2h6RHZvSnlkRDQ1VVpwNUp2WTlEdURWRmoxbHRWbmhHWSQNCj4gPg0KPiA+
DQo+ID4gWzJdIGRtYS1idWY6IGhlYXBzOiBBZGQgTWVkaWFUZWsgc2VjdXJlIGhlYXANCj4gPiAt
DQo+ID4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC1tZWRpYXRlay9saXN0Lz9zZXJpZXM9NzgyNzc2X187ISFDVFJO
S0E5d01nMEFSYnchbVBvY2JRd1o0LTI1RG1pZHZBZ2Q5SzVlWGpORWhTeUlLcHZ2WUhQcGRycTJQ
Z1MtaGtZeUhvaHpEdm9KeWRENDVVWnA1SnZZOUR1RFZGajEwc0Q0a0hFJA0KPiA+DQo+ID4gLS0t
DQo+ID4NCj4gPiBDSyBIdSAoMSk6DQo+ID4gICBkcm0vbWVkaWF0ZWs6IEFkZCBpbnRlcmZhY2Ug
dG8gYWxsb2NhdGUgTWVkaWFUZWsgR0VNIGJ1ZmZlci4NCj4gPg0KPiA+IEphc29uLUpILkxpbiAo
OSk6DQo+ID4gICBkcm0vbWVkaWF0ZWsvdWFwaTogQWRkIERSTV9NVEtfR0VNX0NSRUFURURfRU5D
UllQVFRFRCBmbGFnDQo+ID4gICBkcm0vbWVkaWF0ZWs6IEFkZCBzZWN1cmUgYnVmZmVyIGNvbnRy
b2wgZmxvdyB0byBtdGtfZHJtX2dlbQ0KPiA+ICAgZHJtL21lZGlhdGVrOiBBZGQgc2VjdXJlIGlk
ZW50aWZ5IGZsYWcgYW5kIGZ1bmN1dGlvbiB0bw0KPiA+IG10a19kcm1fcGxhbmUNCj4gPiAgIGRy
bS9tZWRpYXRlazogQWRkIG10a19kZHBfc2VjX3dyaXRlIHRvIGNvbmZpZyBzZWN1cmUgYnVmZmVy
IGluZm8NCj4gPiAgIGRybS9tZWRpYXRlazogQWRkIGdldF9zZWNfcG9ydCBpbnRlcmZhY2UgdG8g
bXRrX2RkcF9jb21wDQo+ID4gICBkcm0vbWVkaWF0ZWs6IEFkZCBzZWN1cmUgbGF5ZXIgY29uZmln
IHN1cHBvcnQgZm9yIG92bA0KPiA+ICAgZHJtL21lZGlhdGVrOiBBZGQgc2VjdXJlIGxheWVyIGNv
bmZpZyBzdXBwb3J0IGZvciBvdmxfYWRhcHRvcg0KPiA+ICAgZHJtL21lZGlhdGVrOiBBZGQgc2Vj
dXJlIGZsb3cgc3VwcG9ydCB0byBtZWRpYXRlay1kcm0NCj4gPiAgIGFybTY0OiBkdHM6IG10ODE5
NS1jaGVycnk6IEFkZCBzZWN1cmUgbWJveCBzZXR0aW5ncyBmb3IgdmRvc3lzDQo+ID4NCj4gPiAg
Li4uL2Jvb3QvZHRzL21lZGlhdGVrL210ODE5NS1jaGVycnkuZHRzaSAgICAgIHwgIDEwICsNCj4g
PiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX2Rydi5oICAgICAgIHwgICAzICsN
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5jICAgICAgIHwgIDMx
ICstDQo+ID4gIC4uLi9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bF9hZGFwdG9yLmMgICB8
ICAxNSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYyAgICAg
ICB8IDI3MQ0KPiA+ICsrKysrKysrKysrKysrKysrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2RybV9jcnRjLmggICAgICAgfCAgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5jICAgfCAgMTQgKw0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5oICAgfCAgMTMgKw0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYyAgICAgICAgfCAgMTYgKy0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMgICAgICAgIHwgMTIxICsrKysrKysrDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5oICAgICAgICB8ICAxNiAr
Kw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jICAgICAgfCAg
IDcgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5oICAgICAg
fCAgIDIgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21kcF9yZG1hLmMgICAg
ICAgfCAgMTEgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tZHBfcmRtYS5o
ICAgICAgIHwgICAyICsNCj4gPiAgaW5jbHVkZS91YXBpL2RybS9tZWRpYXRla19kcm0uaCAgICAg
ICAgICAgICAgIHwgIDU5ICsrKysNCj4gPiAgMTYgZmlsZXMgY2hhbmdlZCwgNTc1IGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS91
YXBpL2RybS9tZWRpYXRla19kcm0uaA0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
