Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B8ABCA59
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 23:51:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8421F45967
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 21:51:46 +0000 (UTC)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by lists.linaro.org (Postfix) with ESMTPS id DAF0C3EA23
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 21:51:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="j8+fRz/S";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.43 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-86135d11760so405233339f.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 14:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747691494; x=1748296294; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPEYHOAa9cIet4iZua5k6szVG47y0INiUwKTR9frvBc=;
        b=j8+fRz/Sq63WVyvYfxAY99qja94P+vODQNiKHSjguI0qQ+adwqpnGNqmDW7jsuYLVX
         HWga+xUBHNIplJZCKXBxa/eFj68w6fj4Z5i79Z3UMu1KodBc6wMsflGZEkCR1P9Dv/Je
         SW8g4t39olLkmQYt1mlUEmG37S/kEUcduGKGrNf2lsKg4hQGT17R7EH53NWpK+FhQuJ6
         2zboDtPMsbSjxffyvhScv3cV/bxHWosyy3r5jxWjA3v/dcLbtbs5/+ZH6kEXeLQ/ZtUX
         f9ZLmafgyVzl//ufe2UxdTWkWQeDD4Xmq5rnO0Ei+hpWA7TE80zLt4LeifJa8O3Id3ch
         AlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747691494; x=1748296294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xPEYHOAa9cIet4iZua5k6szVG47y0INiUwKTR9frvBc=;
        b=WO9+A2nD4RTi1nWsPoKNa9+ESfzIRohUj6UIk9Y7J4mBaVMcJGmwk43JqQnmyrpENm
         CfSKDIhR6FeZXcov/joRZ5WnzFrIuJSs6xKN+PBTzKrJxR1P5dg5C/eboawoeb68yCsT
         /N8QJHYRRJpdKTvCPVNJjPKnK9qVoAOYBqzVQrtVPonVOe5TTm905mOtq9SuTgBXw9Fa
         6kER3KLe3bSPAgsXS9wAxy6/a+ytq2SrDAXi16QvahpUaV4XiZTqA653kU0xmJh5C3ic
         LJSi60zCJ+ntEosdozoB5wkGeBW+aGrE0/FzRwsGhAHHqnXAXKLhIfpKVXd31qzmqF7S
         5uTw==
X-Forwarded-Encrypted: i=1; AJvYcCXTlwF/lukdZhBRhy3d0R31WCZHGxVVlSJ/FX4X9oHnsnekkS81hMnATX/upQifbeudcnztqiX8QXcrI8Hd@lists.linaro.org
X-Gm-Message-State: AOJu0Yx5UpztxUBKtwBJZVCuaPt16Etm0ptJM3NrQ53Uu0Pf5XzYmcLB
	gDVnu74RMCtDqINzeA3e0XKfilrfiYXamtapX1iUR9MThsd0K9lMNvx9qld7z+NEAID0mXMYcLH
	W/b9/U5oBU0vRi2qsgbwlU6EMKkM2oy8=
X-Gm-Gg: ASbGncugJbR/O1eLX0PhSMfH7TNTFtVZ0KNaxbX+v/psi+EvBcQ+lnaWbWASk0PXocJ
	iGkm/YALltaTQFMWRCkNyvGwkn9oHgrcLPRnNc/PHWAIencdpLXCVFEx8AgOhwutnga5vxoAWLv
	nnJZKTbGIIIIsNdGUNtC73mJIlkEqKYua3kvJETIyMtVNcmBnPmSM5C7PLIxqlza7U0kGiJiHw5
	zSqMA==
X-Google-Smtp-Source: AGHT+IH7GskHnBBBnN3dCWe5+4wA68V6kn1SwK+BKY5czWCCWv4gMQRXKFVR4ovK9isr0sjORC+Rjt5sK8DipW7Cf4U=
X-Received: by 2002:a05:6602:6cce:b0:86a:93c:f5fb with SMTP id
 ca18e2360f4ac-86a231901efmr1968076439f.1.1747691494249; Mon, 19 May 2025
 14:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250519175348.11924-1-robdclark@gmail.com> <CAPM=9tw183FMOT8uUacqegnb5CREAyr8KbXxO2mCuFK-SmUB1A@mail.gmail.com>
 <CAF6AEGuDTGVq7sw4oVuHb+cOE_DuKbEPO956oddVcsV2boieoQ@mail.gmail.com> <CAPM=9twuSfvQ0_NUdRmp0_VtTE_Br7GAysRw+XOoX7BTxUBGYQ@mail.gmail.com>
In-Reply-To: <CAPM=9twuSfvQ0_NUdRmp0_VtTE_Br7GAysRw+XOoX7BTxUBGYQ@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 19 May 2025 14:51:20 -0700
X-Gm-Features: AX0GCFvmTvCANqDHHj2TPhXNkmFs3wC8dEXWRCEtBjip_pfclRDeM3uxGEixFZM
Message-ID: <CAF6AEGs1hNGMMBjZuXoGjxF+JA1AHY_wx=gmqK4z=zShYoR6=w@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-7.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.97%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.43:from];
	FREEMAIL_TO(0.00)[gmail.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,linaro.org,intel.com,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Queue-Id: DAF0C3EA23
X-Spamd-Bar: -------
Message-ID-Hash: QETTD3SO5GZU4SOEOEBBT6O355J5F4BD
X-Message-ID-Hash: QETTD3SO5GZU4SOEOEBBT6O355J5F4BD
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Jun Nie <jun.nie@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-si
 g@lists.linaro.org>, "m oderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, "Rob Herring (Arm)" <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 00/40] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QETTD3SO5GZU4SOEOEBBT6O355J5F4BD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTksIDIwMjUgYXQgMjo0NeKAr1BNIERhdmUgQWlybGllIDxhaXJsaWVkQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgMjAgTWF5IDIwMjUgYXQgMDc6MjUsIFJvYiBD
bGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBNb24sIE1heSAx
OSwgMjAyNSBhdCAyOjE14oCvUE0gRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPiB3cm90
ZToNCj4gPiA+DQo+ID4gPiBPbiBUdWUsIDIwIE1heSAyMDI1IGF0IDAzOjU0LCBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiBGcm9tOiBSb2Ig
Q2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gPiA+DQo+ID4gPiA+IENvbnZlcnNp
b24gdG8gRFJNIEdQVSBWQSBNYW5hZ2VyWzFdLCBhbmQgYWRkaW5nIHN1cHBvcnQgZm9yIFZ1bGth
biBTcGFyc2UNCj4gPiA+ID4gTWVtb3J5WzJdIGluIHRoZSBmb3JtIG9mOg0KPiA+ID4gPg0KPiA+
ID4gPiAxLiBBIG5ldyBWTV9CSU5EIHN1Ym1pdHF1ZXVlIHR5cGUgZm9yIGV4ZWN1dGluZyBWTSBN
U01fU1VCTUlUX0JPX09QX01BUC8NCj4gPiA+ID4gICAgTUFQX05VTEwvVU5NQVAgY29tbWFuZHMN
Cj4gPiA+ID4NCj4gPiA+ID4gMi4gQSBuZXcgVk1fQklORCBpb2N0bCB0byBhbGxvdyBzdWJtaXR0
aW5nIGJhdGNoZXMgb2Ygb25lIG9yIG1vcmUNCj4gPiA+ID4gICAgTUFQL01BUF9OVUxML1VOTUFQ
IGNvbW1hbmRzIHRvIGEgVk1fQklORCBzdWJtaXRxdWV1ZQ0KPiA+ID4gPg0KPiA+ID4gPiBJIGRp
ZCBub3QgaW1wbGVtZW50IHN1cHBvcnQgZm9yIHN5bmNocm9ub3VzIFZNX0JJTkQgY29tbWFuZHMu
ICBTaW5jZQ0KPiA+ID4gPiB1c2Vyc3BhY2UgY291bGQganVzdCBpbW1lZGlhdGVseSB3YWl0IGZv
ciB0aGUgYFNVQk1JVGAgdG8gY29tcGxldGUsIEkgZG9uJ3QNCj4gPiA+ID4gdGhpbmsgd2UgbmVl
ZCB0aGlzIGV4dHJhIGNvbXBsZXhpdHkgaW4gdGhlIGtlcm5lbC4gIFN5bmNocm9ub3VzL2ltbWVk
aWF0ZQ0KPiA+ID4gPiBWTV9CSU5EIG9wZXJhdGlvbnMgY291bGQgYmUgaW1wbGVtZW50ZWQgd2l0
aCBhIDJuZCBWTV9CSU5EIHN1Ym1pdHF1ZXVlLg0KPiA+ID4NCj4gPiA+IFRoaXMgc2VlbXMgc3Vi
b3B0aW1hbCBmb3IgVnVsa2FuIHVzZXJzcGFjZXMuIG5vbi1zcGFyc2UgYmluZHMgYXJlIGFsbA0K
PiA+ID4gc3luY2hyb25vdXMsIHlvdSBhcmUgYWRkaW5nIGFuIGV4dHJhIGlvY3RsIHRvIHdhaXQs
IG9yIGRvIHlvdSBtYW5hZ2UNCj4gPiA+IHRoZXNlIHZpYSBhIGRpZmZlcmVudCBtZWNoYW5pc20/
DQo+ID4NCj4gPiBOb3JtYWxseSBpdCdzIGp1c3QgYW4gZXh0cmEgaW4tZmVuY2UgZm9yIHRoZSBT
VUJNSVQgaW9jdGwgdG8gZW5zdXJlDQo+ID4gdGhlIGJpbmRzIGhhcHBlbiBiZWZvcmUgY21kIGV4
ZWN1dGlvbg0KPiA+DQo+ID4gV2hlbiBpdCBjb21lcyB0byBVQVBJLCBpdCdzIGVhc2llciB0byBh
ZGQgc29tZXRoaW5nIGxhdGVyLCB0aGFuIHRvDQo+ID4gdGFrZSBzb21ldGhpbmcgYXdheSwgc28g
SSBkb24ndCBzZWUgYSBwcm9ibGVtIGFkZGluZyBzeW5jaHJvbm91cyBiaW5kcw0KPiA+IGxhdGVy
IGlmIHRoYXQgcHJvdmVzIHRvIGJlIG5lZWRlZC4gIEJ1dCBJIGRvbid0IHRoaW5rIGl0IGlzLg0K
Pg0KPiBJJ20gbm90IDEwMCUgc3VyZSB0aGF0IGlzIGNvbmZvcm1hbnQgYmVoYXZpb3VyIHRvIHRo
ZSB2dWxrYW4gc3BlYywNCj4NCj4gVHdvIHF1ZXN0aW9ucyBjb21lIHRvIG1pbmQ6DQo+IDEuIHdo
ZXJlIGlzIHRoaXMgb3V0IGZlbmNlIHN0b3JlZD8gdnVsa2FuIGJlaW5nIGV4cGxpY2l0IHdpdGgg
bm8NCj4gZ3VhcmFudGVlIG9mIHRocmVhZHMgZG9pbmcgdGhpbmdzLCBzZWVtcyBsaWtlIHlvdSdk
IG5lZWQgdG8gdXNlIGEgbG9jaw0KPiBpbiB0aGUgdnVsa2FuIGRyaXZlciB0byBzdG9yZSBpdCwg
ZXNwIGlmIG11bHRpcGxlIHRocmVhZHMgYmluZCBtZW1vcnkuDQoNCnR1cm5pcCBpcyBwcm90ZWN0
ZWQgZGV2LT52bV9iaW5kX2ZlbmNlX2ZkIHdpdGggYSB1X3J3bG9jaw0KDQo+IDIuIElmIGl0J3Mg
ZmluZSB0byBsYXp5IGJpbmQgb24gdGhlIGh3IHNpZGUsIGRvIHlvdSBhbHNvIGhhbmRsZSB0aGUN
Cj4gY2FzZSB3aGVyZSBzb21ldGhpbmcgaXMgYm91bmQgYW5kIGltbWVkaWF0ZWx5IGZyZWVkLCB3
aGVyZSBkb2VzIHRoZQ0KPiBmZW5jZSBnbyB0aGVuLCBkbyB5b3Ugd2FpdCBmb3IgdGhlIGZlbmNl
IGJlZm9yZSBkZXN0cm95aW5nIHRoaW5ncz8NCg0KcmlnaHQgbm8gdHVybmlwIGlzIGp1c3QgcmVs
eWluZyBvbiB0aGUgVU5NQVAvdW5iaW5kIGdvaW5nIHRocnUgdGhlDQpzYW1lIHF1ZXVlLi4gYnV0
IEkgZ3Vlc3MgaXQgY291bGQgYWxzbyB1c2Ugdm1fYmluZF9mZW5jZV9mZCBhcyBhbg0KaW4tZmVu
Y2UuDQoNCkJSLA0KLVINCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
