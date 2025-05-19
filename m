Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4263ABCA34
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 23:45:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1C1E454D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 21:45:55 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id C681440C77
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 21:45:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Rj0ZylBK;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.218.51 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad53a96baf9so509606466b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 14:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747691144; x=1748295944; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgwrUkrkaZb0leOIfftTpt2Z9U+8ge4TCRzTvr8HRfg=;
        b=Rj0ZylBKIARTRDLNkLG9TxQJ/Ob8/CS2dHunRygp0CihPudnkg2apr9CPYU/NdYeUK
         aEs/992JlyKBsg9l3wlvgi0KzvGlNcEFq2qAwAlJE5M5nOikZX0BVgUVwsJ/x07OSA95
         HPBE1aSQV9Gdf7noWb44dW1fX01v57HxYcNGtveSOTqujGnY09JG98V7SUbR2E32q/VR
         Y/dNduDMs2kEv69ouXKqVvlYJJUVwWjj4d4U4BnDb1TjVTr1yN+E0rbQpBZ9qzuX5qNE
         eelXJtSChG49OS++hSZCv66JpMCfXRrhXg61WV/nv/eGtMZvmckAO79WsKoWVKwnAOoe
         Pr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747691144; x=1748295944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lgwrUkrkaZb0leOIfftTpt2Z9U+8ge4TCRzTvr8HRfg=;
        b=NWM1vYvIsCVBODogRfeLargXRU1UcSKSa45dJQNEdLfFBfg6SFPWFEOJ3JFJM1WFap
         L/Pk8SbSbj8dqaclpxPODaw3XV5w9wjDENRSiWdq1E7IDZTo441CyAiX948dDMP2J0rv
         9fe0iKsfWoI/9kpJMdOoxCbzIsaUtX4sjA8O/ZDzk/GncRUeEjhmGg+adK/NCTVu9Ers
         qnB+eAgG3qYDUVrM+5KcXWqSfCqGrfLowBWJfZQQRlcEXbfOUpkkO8K3m5eABARtOYbc
         effToBQ9ISNbZfIfmyaS52x8QmsJStzCePzjqjo8GP76bkAY6NqD11bni7yY0K2wJOn3
         n7NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnmIvR6fHdAiKy8/m0TYZLRPcUGH7JCrxsuDSNJXhMxZDvfzceIgQetZA0AVClmkoErNpD7f5AQ3oP8Nb+@lists.linaro.org
X-Gm-Message-State: AOJu0YzAenX+4yncwCpgwfTO5gjzLnJplEASjMwONGWke5nqRGuxQiOL
	Qg7tAwF9r+tkR/lMFGwZcjuXhjafIU0bAFenSPTs0ayHApwC/faGVj7z+hPKEHoioQPkyU/HSaG
	vpSsigCwZqzxPW2GvVY7CUI8/O9IfZ0w=
X-Gm-Gg: ASbGncvvhMgZMLTjy8HDAuiSj6qPSb6f7bzhxTLjpg48Q156QMPxjSlodAjt2TNdvfp
	/KtvuzsrrkoS3Zj6yRh8r1PH6Yzf7bVpNyJXqyiCoyeIIc2ES1eiTs2hmrGs3pUPFUTbQb5UT02
	eCUkDzyQNVZOiG9U4faw9M40fTO0GKTCE=
X-Google-Smtp-Source: AGHT+IGi6092BG38fgC8XNqiOOL5230Qmrls9fUA/vdLAMqijhah9L16wARI5KlQBQHVpTG9u4i5MttpQIJ/uhwrqx8=
X-Received: by 2002:a17:907:3342:b0:ad5:465d:8855 with SMTP id
 a640c23a62f3a-ad5465d9f5amr870659766b.36.1747691143715; Mon, 19 May 2025
 14:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250519175348.11924-1-robdclark@gmail.com> <CAPM=9tw183FMOT8uUacqegnb5CREAyr8KbXxO2mCuFK-SmUB1A@mail.gmail.com>
 <CAF6AEGuDTGVq7sw4oVuHb+cOE_DuKbEPO956oddVcsV2boieoQ@mail.gmail.com>
In-Reply-To: <CAF6AEGuDTGVq7sw4oVuHb+cOE_DuKbEPO956oddVcsV2boieoQ@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 20 May 2025 07:45:31 +1000
X-Gm-Features: AX0GCFtlQu6thz2-DodB9_hvAiBP83MybA9d3wKL9euWSYgx05ywhuPOmKRAvxs
Message-ID: <CAPM=9twuSfvQ0_NUdRmp0_VtTE_Br7GAysRw+XOoX7BTxUBGYQ@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.08 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.98)[99.92%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,linaro.org,intel.com,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DNSWL_BLOCKED(0.00)[209.85.218.51:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: C681440C77
X-Spamd-Bar: --------
Message-ID-Hash: DZ2QAMP6MHA44CJLMKTVK6WTUPFU57T6
X-Message-ID-Hash: DZ2QAMP6MHA44CJLMKTVK6WTUPFU57T6
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Jun Nie <jun.nie@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-si
 g@lists.linaro.org>, "m oderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, "Rob Herring (Arm)" <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 00/40] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DZ2QAMP6MHA44CJLMKTVK6WTUPFU57T6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAyMCBNYXkgMjAyNSBhdCAwNzoyNSwgUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwu
Y29tPiB3cm90ZToNCj4NCj4gT24gTW9uLCBNYXkgMTksIDIwMjUgYXQgMjoxNeKAr1BNIERhdmUg
QWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUdWUsIDIwIE1h
eSAyMDI1IGF0IDAzOjU0LCBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3RlOg0K
PiA+ID4NCj4gPiA+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4g
PiA+DQo+ID4gPiBDb252ZXJzaW9uIHRvIERSTSBHUFUgVkEgTWFuYWdlclsxXSwgYW5kIGFkZGlu
ZyBzdXBwb3J0IGZvciBWdWxrYW4gU3BhcnNlDQo+ID4gPiBNZW1vcnlbMl0gaW4gdGhlIGZvcm0g
b2Y6DQo+ID4gPg0KPiA+ID4gMS4gQSBuZXcgVk1fQklORCBzdWJtaXRxdWV1ZSB0eXBlIGZvciBl
eGVjdXRpbmcgVk0gTVNNX1NVQk1JVF9CT19PUF9NQVAvDQo+ID4gPiAgICBNQVBfTlVMTC9VTk1B
UCBjb21tYW5kcw0KPiA+ID4NCj4gPiA+IDIuIEEgbmV3IFZNX0JJTkQgaW9jdGwgdG8gYWxsb3cg
c3VibWl0dGluZyBiYXRjaGVzIG9mIG9uZSBvciBtb3JlDQo+ID4gPiAgICBNQVAvTUFQX05VTEwv
VU5NQVAgY29tbWFuZHMgdG8gYSBWTV9CSU5EIHN1Ym1pdHF1ZXVlDQo+ID4gPg0KPiA+ID4gSSBk
aWQgbm90IGltcGxlbWVudCBzdXBwb3J0IGZvciBzeW5jaHJvbm91cyBWTV9CSU5EIGNvbW1hbmRz
LiAgU2luY2UNCj4gPiA+IHVzZXJzcGFjZSBjb3VsZCBqdXN0IGltbWVkaWF0ZWx5IHdhaXQgZm9y
IHRoZSBgU1VCTUlUYCB0byBjb21wbGV0ZSwgSSBkb24ndA0KPiA+ID4gdGhpbmsgd2UgbmVlZCB0
aGlzIGV4dHJhIGNvbXBsZXhpdHkgaW4gdGhlIGtlcm5lbC4gIFN5bmNocm9ub3VzL2ltbWVkaWF0
ZQ0KPiA+ID4gVk1fQklORCBvcGVyYXRpb25zIGNvdWxkIGJlIGltcGxlbWVudGVkIHdpdGggYSAy
bmQgVk1fQklORCBzdWJtaXRxdWV1ZS4NCj4gPg0KPiA+IFRoaXMgc2VlbXMgc3Vib3B0aW1hbCBm
b3IgVnVsa2FuIHVzZXJzcGFjZXMuIG5vbi1zcGFyc2UgYmluZHMgYXJlIGFsbA0KPiA+IHN5bmNo
cm9ub3VzLCB5b3UgYXJlIGFkZGluZyBhbiBleHRyYSBpb2N0bCB0byB3YWl0LCBvciBkbyB5b3Ug
bWFuYWdlDQo+ID4gdGhlc2UgdmlhIGEgZGlmZmVyZW50IG1lY2hhbmlzbT8NCj4NCj4gTm9ybWFs
bHkgaXQncyBqdXN0IGFuIGV4dHJhIGluLWZlbmNlIGZvciB0aGUgU1VCTUlUIGlvY3RsIHRvIGVu
c3VyZQ0KPiB0aGUgYmluZHMgaGFwcGVuIGJlZm9yZSBjbWQgZXhlY3V0aW9uDQo+DQo+IFdoZW4g
aXQgY29tZXMgdG8gVUFQSSwgaXQncyBlYXNpZXIgdG8gYWRkIHNvbWV0aGluZyBsYXRlciwgdGhh
biB0bw0KPiB0YWtlIHNvbWV0aGluZyBhd2F5LCBzbyBJIGRvbid0IHNlZSBhIHByb2JsZW0gYWRk
aW5nIHN5bmNocm9ub3VzIGJpbmRzDQo+IGxhdGVyIGlmIHRoYXQgcHJvdmVzIHRvIGJlIG5lZWRl
ZC4gIEJ1dCBJIGRvbid0IHRoaW5rIGl0IGlzLg0KDQpJJ20gbm90IDEwMCUgc3VyZSB0aGF0IGlz
IGNvbmZvcm1hbnQgYmVoYXZpb3VyIHRvIHRoZSB2dWxrYW4gc3BlYywNCg0KVHdvIHF1ZXN0aW9u
cyBjb21lIHRvIG1pbmQ6DQoxLiB3aGVyZSBpcyB0aGlzIG91dCBmZW5jZSBzdG9yZWQ/IHZ1bGth
biBiZWluZyBleHBsaWNpdCB3aXRoIG5vDQpndWFyYW50ZWUgb2YgdGhyZWFkcyBkb2luZyB0aGlu
Z3MsIHNlZW1zIGxpa2UgeW91J2QgbmVlZCB0byB1c2UgYSBsb2NrDQppbiB0aGUgdnVsa2FuIGRy
aXZlciB0byBzdG9yZSBpdCwgZXNwIGlmIG11bHRpcGxlIHRocmVhZHMgYmluZCBtZW1vcnkuDQoN
CjIuIElmIGl0J3MgZmluZSB0byBsYXp5IGJpbmQgb24gdGhlIGh3IHNpZGUsIGRvIHlvdSBhbHNv
IGhhbmRsZSB0aGUNCmNhc2Ugd2hlcmUgc29tZXRoaW5nIGlzIGJvdW5kIGFuZCBpbW1lZGlhdGVs
eSBmcmVlZCwgd2hlcmUgZG9lcyB0aGUNCmZlbmNlIGdvIHRoZW4sIGRvIHlvdSB3YWl0IGZvciB0
aGUgZmVuY2UgYmVmb3JlIGRlc3Ryb3lpbmcgdGhpbmdzPw0KDQpEYXZlLg0KDQoNCkRhdmUuDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
