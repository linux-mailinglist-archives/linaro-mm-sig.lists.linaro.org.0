Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B84C2A339CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 09:19:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6C1F445FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 08:19:48 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id DF11342513
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 08:19:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=aqqyaagu;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2bc52407b78so58108fac.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 00:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739434773; x=1740039573; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Az9dQ23bPGQCJsqk2rNARA3D3DTwQa8JOi+/AGn2MB0=;
        b=aqqyaaguxGm9Yo+a/Ykjyy/SeolPIUS5KlYp+zDtqbphD6asfYQiFmg9plbtvr4rjo
         RPs6g3cU+569nQdBUe1PjEBPH9t40VjeSCaC74MXIJJE7dC5e9QiDfhozEJM71IFFPZh
         aIYzb59Kv2uyPBf/cYiQUOtTfr+ZXzgTVf9KJ9J97pHslkB3CujYysB80oWDFwSOS3lx
         I5xO2nd+53/s6HuJ73/0CXVaRG6KqVSVktt32i1b4f50O6Zm+DiL3AgAYj1ng8RYqOyY
         QknDaNbrcVeKrYBPTjd8+L1RXxod39a2XcYJBt7m1TNqb2vMm4NANQ7V3mEX462CPdYQ
         A2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739434773; x=1740039573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Az9dQ23bPGQCJsqk2rNARA3D3DTwQa8JOi+/AGn2MB0=;
        b=APx7oQEWn5K/WYdxUH2KKXV5sRZPEOe0U77NtqrcGgZD6iRx/3PMrEmf70kB4UkL+g
         s0VSKtOKo83VjakmR8CVeUg0E9MDAN9cMFUBlF7EeF0vN4z39GCFTLQjzH/2NAFsHsSe
         P+ObYiRW3dXwZIqkG3XEQwp2+IqF3LjDGzo5lF+f7OYkXxWbk0oewGwyCOiN6IB74BnB
         2lZq160xBWXMEIzKiaxHHH6bFxrMIXW8hXo+XuHCnOlSQ0x7XVCLCR4wzaBMHBfPIP4F
         fcriesELB3j7+w5ChnsRhs6Dk0RIxn8IIvN1OeDG89OICC34CjkdJ4qKDnwwqHfbOr2w
         DE0A==
X-Forwarded-Encrypted: i=1; AJvYcCWlWLo7HlMkPePdj2S35+e57KRxAbEvgZnWjUp7uyPum3XDNhBOS7NmXlZL/AY495tfjvcxqL4cSeR1BmhW@lists.linaro.org
X-Gm-Message-State: AOJu0Yyl3aC34Yh2sypMVAOnoRsGXZQaSVo+JOkCa6HVhpLb/WkTnrvx
	jIgUIKhHtNYCWs1+JxytL6LFnj5S2iikqTQG/NrmAlwDaGL0h2hlyn3t/EmhoRRaIpoT8wGKbDE
	XuobAbO0esJ/mwCH6ViAALcKinJ9mO5M0cujgSJXg
X-Gm-Gg: ASbGncsCbC8tAwCrkr1zbktmxue3b+ofOxJNDVSDKKuSHIRLfSZetxIhVjGguVoA6R7
	ZSdZ/+H7pIGo2ivptAEFA9gE3ng7+LJRjesw9Hy1FNBZD5pgeeQBWCjP4F37qDq6lQP8agdd/Zw
	==
X-Google-Smtp-Source: AGHT+IEYwaXtzSb6L2iPNq96UiAe3ghkX0HNZgeRMU3vnnuVEV+oTgkHvrSkTnrpbFNibYdT1xw/IZq62i2DSoq0Et4=
X-Received: by 2002:a05:6870:3c13:b0:29e:20c4:2217 with SMTP id
 586e51a60fabf-2b8f8e8f47emr1365637fac.33.1739434773165; Thu, 13 Feb 2025
 00:19:33 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
In-Reply-To: <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 13 Feb 2025 09:19:21 +0100
X-Gm-Features: AWEUYZmAZ7muu4Y0CkS4aHUGrjFZdjBtSwN3vjBgPnCfnhs0YPXrZruLf1ATUM8
Message-ID: <CAHUa44FtXA8bOS1-BAGSrCFLxu_FRd2TaEtxGNdkzKua_-wNUQ@mail.gmail.com>
To: Sumit Garg <sumit.garg@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF11342513
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.53:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,arm.com,google.com,amd.com,qti.qualcomm.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.160.53:from];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: FRPYO6J65HE37T3WZDM2D4NEDRRT7APX
X-Message-ID-Hash: FRPYO6J65HE37T3WZDM2D4NEDRRT7APX
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FRPYO6J65HE37T3WZDM2D4NEDRRT7APX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgRmViIDEzLCAyMDI1IGF0IDc6NDLigK9BTSBTdW1pdCBHYXJnIDxzdW1p
dC5nYXJnQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBIaSBCb3JpcywNCj4NCj4gT24gVGh1LCAx
MyBGZWIgMjAyNSBhdCAwMToyNiwgQm9yaXMgQnJlemlsbG9uDQo+IDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiArRmxvcmVudCwgd2hvJ3Mgd29ya2luZyBv
biBwcm90ZWN0ZWQtbW9kZSBzdXBwb3J0IGluIFBhbnRob3IuDQo+ID4NCj4gPiBIaSBKZW5zLA0K
PiA+DQo+ID4gT24gVHVlLCAxNyBEZWMgMjAyNCAxMTowNzozNiArMDEwMA0KPiA+IEplbnMgV2lr
bGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4gPg0KPiA+ID4gSGks
DQo+ID4gPg0KPiA+ID4gVGhpcyBwYXRjaCBzZXQgYWxsb2NhdGVzIHRoZSByZXN0cmljdGVkIERN
QS1idWZzIHZpYSB0aGUgVEVFIHN1YnN5c3RlbS4NCj4gPg0KPiA+IFdlJ3JlIGN1cnJlbnRseSB3
b3JraW5nIG9uIHByb3RlY3RlZC1tb2RlIHN1cHBvcnQgZm9yIFBhbnRob3IgWzFdIGFuZCBpdA0K
PiA+IGxvb2tzIGxpa2UgeW91ciBzZXJpZXMgKGFuZCB0aGUgT1AtVEVFIGltcGxlbWVudGF0aW9u
IHRoYXQgZ29lcyB3aXRoDQo+ID4gaXQpIHdvdWxkIGFsbG93IHVzIHRvIGhhdmUgYSBmdWxseSB1
cHN0cmVhbS9vcGVuIHNvbHV0aW9uIGZvciB0aGUNCj4gPiBwcm90ZWN0ZWQgY29udGVudCB1c2Ug
Y2FzZSB3ZSdyZSB0cnlpbmcgdG8gc3VwcG9ydC4gSSBuZWVkIGEgYml0IG1vcmUNCj4gPiB0aW1l
IHRvIHBsYXkgd2l0aCB0aGUgaW1wbGVtZW50YXRpb24gYnV0IHRoaXMgbG9va3MgdmVyeSBwcm9t
aXNpbmcNCj4gPiAoZXNwZWNpYWxseSB0aGUgbGVuZCByc3RtZW0gZmVhdHVyZSwgd2hpY2ggbWln
aHQgaGVscCB1cyBhbGxvY2F0ZSBvdXINCj4gPiBGVyBzZWN0aW9ucyB0aGF0IGFyZSBzdXBwb3Nl
ZCB0byBleGVjdXRlIGNvZGUgYWNjZXNzaW5nIHByb3RlY3RlZA0KPiA+IGNvbnRlbnQpLg0KPg0K
PiBHbGFkIHRvIGhlYXIgdGhhdCwgaWYgeW91IGNhbiBkZW1vbnN0cmF0ZSBhbiBvcGVuIHNvdXJj
ZSB1c2UgY2FzZQ0KPiBiYXNlZCBvbiB0aGlzIHNlcmllcyB0aGVuIGl0IHdpbGwgaGVscCB0byBs
YW5kIGl0LiBXZSByZWFsbHkgd291bGQNCj4gbG92ZSB0byBzZWUgc3VwcG9ydCBmb3IgcmVzdHJp
Y3RlZCBETUEtYnVmIGNvbnN1bWVycyBiZSBpdCBHUFUsIGNyeXB0bw0KPiBhY2NlbGVyYXRvciwg
bWVkaWEgcGlwZWxpbmUgZXRjLg0KDQpJJ20gcHJlcGFyaW5nIGEgZGVtbyBiYXNlZCBvbiBHU3Ry
ZWFtZXIgdG8gc2hhcmUuIEl0IGhlbHBzIHdpdGggbW9yZQ0KcmVhbC13b3JsZCBleGFtcGxlcyB0
byBzZWUgdGhhdCBBUElzIGV0YyB3b3JrLg0KDQo+DQo+ID4NCj4gPiA+DQo+ID4gPiBUaGUgVEVF
IHN1YnN5c3RlbSBoYW5kbGVzIHRoZSBETUEtYnVmIGFsbG9jYXRpb25zIHNpbmNlIGl0IGlzIHRo
ZSBURUUNCj4gPiA+IChPUC1URUUsIEFNRC1URUUsIFRTLVRFRSwgb3IgcGVyaGFwcyBhIGZ1dHVy
ZSBRQ09NVEVFKSB3aGljaCBzZXRzIHVwIHRoZQ0KPiA+ID4gcmVzdHJpY3Rpb25zIGZvciB0aGUg
bWVtb3J5IHVzZWQgZm9yIHRoZSBETUEtYnVmcy4NCj4gPiA+DQo+ID4gPiBJJ3ZlIGFkZGVkIGEg
bmV3IElPQ1RMLCBURUVfSU9DX1JTVE1FTV9BTExPQywgdG8gYWxsb2NhdGUgdGhlIHJlc3RyaWN0
ZWQNCj4gPiA+IERNQS1idWZzLiBUaGlzIElPQ1RMIHJlYWNoZXMgdGhlIGJhY2tlbmQgVEVFIGRy
aXZlciwgYWxsb3dpbmcgaXQgdG8gY2hvb3NlDQo+ID4gPiBob3cgdG8gYWxsb2NhdGUgdGhlIHJl
c3RyaWN0ZWQgcGh5c2ljYWwgbWVtb3J5Lg0KPiA+DQo+ID4gSSdsbCBwcm9iYWJseSBoYXZlIG1v
cmUgcXVlc3Rpb25zIHNvb24sIGJ1dCBoZXJlJ3Mgb25lIHRvIHN0YXJ0OiBhbnkNCj4gPiBwYXJ0
aWN1bGFyIHJlYXNvbiB5b3UgZGlkbid0IGdvIGZvciBhIGRtYS1oZWFwIHRvIGV4cG9zZSByZXN0
cmljdGVkDQo+ID4gYnVmZmVyIGFsbG9jYXRpb24gdG8gdXNlcnNwYWNlPyBJIHNlZSB5b3UgYWxy
ZWFkeSBoYXZlIGEgY2RldiB5b3UgY2FuDQo+ID4gdGFrZSBpb2N0bCgpcyBmcm9tLCBidXQgbXkg
dW5kZXJzdGFuZGluZyB3YXMgdGhhdCBkbWEtaGVhcCB3YXMgdGhlDQo+ID4gc3RhbmRhcmQgc29s
dXRpb24gZm9yIHRoZXNlIGRldmljZS1hZ25vc3RpYy9jZW50cmFsIGFsbG9jYXRvcnMuDQo+DQo+
IFRoaXMgc2VyaWVzIHN0YXJ0ZWQgd2l0aCB0aGUgRE1BIGhlYXAgYXBwcm9hY2ggb25seSBoZXJl
IFsxXSBidXQgbGF0ZXINCj4gZGlzY3Vzc2lvbnMgWzJdIGxlYWQgdXMgaGVyZS4gVG8gcG9pbnQg
b3V0IHNwZWNpZmljYWxseToNCj4NCj4gLSBETUEgaGVhcHMgcmVxdWlyZSByZWxpYW5jZSBvbiBE
VCB0byBkaXNjb3ZlciBzdGF0aWMgcmVzdHJpY3RlZA0KPiByZWdpb25zIGNhcnZlLW91dHMgd2hl
cmVhcyB2aWEgdGhlIFRFRSBpbXBsZW1lbnRhdGlvbiBkcml2ZXIgKGVnLg0KPiBPUC1URUUpIHRo
b3NlIGNhbiBiZSBkaXNjb3ZlcmVkIGR5bmFtaWNhbGx5Lg0KPiAtIER5bmFtaWMgYWxsb2NhdGlv
biBvZiBidWZmZXJzIGFuZCBtYWtpbmcgdGhlbSByZXN0cmljdGVkIHJlcXVpcmVzDQo+IHZlbmRv
ciBzcGVjaWZpYyBkcml2ZXIgaG9va3Mgd2l0aCBETUEgaGVhcHMgd2hlcmVhcyB0aGUgVEVFIHN1
YnN5c3RlbQ0KPiBhYnN0cmFjdHMgdGhhdCBvdXQgd2l0aCB1bmRlcmx5aW5nIFRFRSBpbXBsZW1l
bnRhdGlvbiAoZWcuIE9QLVRFRSkNCj4gbWFuYWdpbmcgdGhlIGR5bmFtaWMgYnVmZmVyIHJlc3Ry
aWN0aW9uLg0KPiAtIFRFRSBzdWJzeXN0ZW0gYWxyZWFkeSBoYXMgYSB3ZWxsIGRlZmluZWQgdXNl
ci1zcGFjZSBpbnRlcmZhY2UgZm9yDQo+IG1hbmFnaW5nIHNoYXJlZCBtZW1vcnkgYnVmZmVycyB3
aXRoIFRFRSBhbmQgcmVzdHJpY3RlZCBETUEgYnVmZmVycw0KPiB3aWxsIGJlIHlldCBhbm90aGVy
IGludGVyZmFjZSBtYW5hZ2VkIGFsb25nIHNpbWlsYXIgbGluZXMuDQo+DQo+IFsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sL216dXIzb2RvZnd3cmRxbnlzdG96amdmM3F0dmI3M3dxam02
ZzJ2ZjVkZnNxaWVoYXhrQHU2N2ZjYXJobTZnZS9ULw0KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGttbC9DQUZBNldZUHRwM0g1Smh4emdIOT16MkV2Tkw3S2RrdTNFbUcxYURrVFMtZ2pG
dE5aWkFAbWFpbC5nbWFpbC5jb20vDQoNClRoYW5rcyBmb3IgdGhlIGdvb2Qgc3VtbWFyeS4gOi0p
DQoNCkNoZWVycywNCkplbnMNCg0KPg0KPiAtU3VtaXQNCj4NCj4gPg0KPiA+IFJlZ2FyZHMsDQo+
ID4NCj4gPiBCb3Jpcw0KPiA+DQo+ID4gWzFdaHR0cHM6Ly9sd24ubmV0L21sL2FsbC9jb3Zlci4x
NzM4MjI4MTE0LmdpdC5mbG9yZW50LnRvbWFzaW5AYXJtLmNvbS8jdA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
