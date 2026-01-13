Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EB2D1AD3A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 19:23:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EA504016A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 18:23:11 +0000 (UTC)
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	by lists.linaro.org (Postfix) with ESMTPS id 2DAC63F7CF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 18:23:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=OsQUts1H;
	spf=pass (lists.linaro.org: domain of robertcnelson@gmail.com designates 74.125.82.42 as permitted sender) smtp.mailfrom=robertcnelson@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-11f3a10dcbbso7240552c88.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 10:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768328584; x=1768933384; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktFARcL7abjEswMdxHANS1AOCLFu8aD4rHTTseQcdl0=;
        b=OsQUts1HeBGpmTJ8cOEnLsJH/ZIM0kec880iIKtXLReqeoTe82PNzXG4UkjQgz+SKX
         M7GsrVlL2bdYub6DNOpQh9BpKUbLx9QqChtKAUPYo/pzi/UkMt68huciwySulV3FClBe
         blGNoa2VLo9Wjx3UW5HLhRK5NkdaTvbKMX0e91bv2r9kixY+vgFpIVmw0wRUq7npclOa
         /HyG4jL4IgkghX6UthdApLf55XJT4HLFaSaH1d/rWmXo+t3dTNSYoN5L9xiL6/MsNUty
         U+5e8PPNh6RFdcOyUhpyKFJHYdpVLmJOgXZ6Hy/H5Vlu+kIkjRxI5/aHwV02SPrpy0N+
         idKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768328584; x=1768933384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ktFARcL7abjEswMdxHANS1AOCLFu8aD4rHTTseQcdl0=;
        b=LNH8yGNIR8G5guVDLYyejMT8ybPyUi8Q6y4pouP3hdgpN3a7yAThWWoOl76r79vfes
         I/RI0uW3YSsu5MIvQnLOqdrqeVrHjDsivT8RgSiXIEMm2MepQmYf/+VwN+TVHR7xznQU
         RTo9Jg6//4qJYhtbkEm9c667p6U8RMiYtgB/SunK8g7FlznxL/IrQIwExipEqVsQhfIm
         8Ybl4c25S3U3ejgyOMJkbZ4+VFfiTQqzAI+3ligFA0ohhnTv3upE/UPQ5yG35/wGmB/X
         tiyyxG/tYqX/WT8dTIe27pAMiZanBNCstL2mAyAozo6unvGWzYFYBmUD5hasVuZpPlU/
         GltA==
X-Forwarded-Encrypted: i=1; AJvYcCVydcSjfKPwKoQFZCPa0MGwEzKgfgcxqiqP+YqsDgHAELoPdPT2zG7j2v1Px6B11tKboCQuixgLEj1A7IQx@lists.linaro.org
X-Gm-Message-State: AOJu0Yw73C5/52Nk0BCK76I9H+NvHZ5PXEfn21ge5eaYFp6v7J/n8Rk4
	bDB9Siph/QN1T/vfmfjotjd8w+7VqJRBvEKkbUN4RjDVM/3Pq+B3F84gceHqE4u6MI2/HCtFE94
	WiA3MergYv5UShSbKcB33j7f2nnWMgqM=
X-Gm-Gg: AY/fxX4yvmdwVlE4nTqHJ3eSZzctmXDH4Urn61palFbsCIxc+2fBn954CIjvbo4T0ap
	HEyqOKJ/yhF4KhTy6w0DdR7XXsEVNbqae/i2jx3PtqduZjeFx7IrPhlVzYD50O2t1UvQzXLOVPJ
	c2WMV+Uwy5QQe2GFmMBF/XfXA9PRMLA8C5xmrHPm5XWdj4U7ObJI30diFPvNm8wKPpt2IchhNEl
	EzaRGPkxPOqbb2ahm6VCfkleP2rPAZFGhaTc8rmdlG0SD4fOpfKDpz+kPexoQicjgswwHczY28v
	H/FgOg/E8LTGozLgrU5XP2rt7Uc1dgRnjw6gnkxb1lEjzXQBW1EXEuuw9ksmtFp9tmjZBxoTobU
	MuXfeo4K/SfCsvWo=
X-Google-Smtp-Source: AGHT+IFry5mrp+qhfmaTmFowwpyilhTDV99e4+YsYHR4eczlm0CCEKca1hIFDilnVzeT/ocGVM7wlP2rRttk0FeEdcc=
X-Received: by 2002:a05:7022:613:b0:119:e569:f62e with SMTP id
 a92af1059eb24-121f8b8d73amr21681821c88.39.1768328584025; Tue, 13 Jan 2026
 10:23:04 -0800 (PST)
MIME-Version: 1.0
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net> <20260113-thames-v1-2-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-2-99390026937c@tomeuvizoso.net>
From: Robert Nelson <robertcnelson@gmail.com>
Date: Tue, 13 Jan 2026 12:22:37 -0600
X-Gm-Features: AZwV_QgGjFNmrIcWdIpWbLrkpdUzkEwOLFO_r4C0G38vOy1_mGAz7cr1Zzr72TQ
Message-ID: <CAOCHtYgW4Gzyed3oTofjZYzZ+Umr1Q2fxNm7uGDEUmnG-kXyOg@mail.gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Rspamd-Queue-Id: 2DAC63F7CF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:74.125.0.0/16];
	RWL_MAILSPIKE_GOOD(-0.10)[74.125.82.42:from];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[gmail.com:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:74.125.0.0/16, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_BLOCKED(0.00)[rcn-ee.com:url,mail-dl1-f42.google.com:helo,mail-dl1-f42.google.com:rdns,mesa3d.org:url];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[74.125.82.42:from];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SWOZPJFKUE6YBQTOBAQNZ7QIPHVMFVRG
X-Message-ID-Hash: SWOZPJFKUE6YBQTOBAQNZ7QIPHVMFVRG
X-MailFrom: robertcnelson@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>, Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/5] accel/thames: Add driver for the C7x DSPs in TI SoCs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SWOZPJFKUE6YBQTOBAQNZ7QIPHVMFVRG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMTE6NDXigK9BTSBUb21ldSBWaXpvc28gPHRvbWV1QHRv
bWV1dml6b3NvLm5ldD4gd3JvdGU6DQo+DQo+IFNvbWUgU29DcyBmcm9tIFRleGFzIEluc3RydW1l
bnRzIGNvbnRhaW4gRFNQcyB0aGF0IGNhbiBiZSB1c2VkIGZvcg0KPiBnZW5lcmFsIGNvbXB1dGUg
dGFza3MuDQo+DQo+IFRoaXMgZHJpdmVyIHByb3ZpZGVzIGEgZHJtL2FjY2VsIFVBQkkgdG8gdXNl
cnNwYWNlIGZvciBzdWJtaXR0aW5nIGpvYnMNCj4gdG8gdGhlIERTUCBjb3JlcyBhbmQgbWFuYWdp
bmcgdGhlIGlucHV0LCBvdXRwdXQgYW5kIGludGVybWVkaWF0ZSBtZW1vcnkuDQo+DQo+IFNpZ25l
ZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pg0KPiAtLS0NCj4g
IERvY3VtZW50YXRpb24vYWNjZWwvdGhhbWVzL2luZGV4LnJzdCB8ICAyOCArKysrKw0KPiAgTUFJ
TlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICsrDQo+ICBkcml2ZXJzL2Fj
Y2VsL0tjb25maWcgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAgZHJpdmVycy9hY2NlbC9NYWtl
ZmlsZSAgICAgICAgICAgICAgIHwgICAzICstDQo+ICBkcml2ZXJzL2FjY2VsL3RoYW1lcy9LY29u
ZmlnICAgICAgICAgfCAgMjYgKysrKysNCj4gIGRyaXZlcnMvYWNjZWwvdGhhbWVzL01ha2VmaWxl
ICAgICAgICB8ICAgOSArKw0KPiAgZHJpdmVycy9hY2NlbC90aGFtZXMvdGhhbWVzX2NvcmUuYyAg
IHwgMTU1ICsrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2FjY2VsL3RoYW1l
cy90aGFtZXNfY29yZS5oICAgfCAgNTMgKysrKysrKysrDQo+ICBkcml2ZXJzL2FjY2VsL3RoYW1l
cy90aGFtZXNfZGV2aWNlLmMgfCAgOTMgKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9hY2Nl
bC90aGFtZXMvdGhhbWVzX2RldmljZS5oIHwgIDQ2ICsrKysrKysrDQo+ICBkcml2ZXJzL2FjY2Vs
L3RoYW1lcy90aGFtZXNfZHJ2LmMgICAgfCAxNTYgKysrKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ICBkcml2ZXJzL2FjY2VsL3RoYW1lcy90aGFtZXNfZHJ2LmggICAgfCAgMjEgKysrKw0KPiAg
ZHJpdmVycy9hY2NlbC90aGFtZXMvdGhhbWVzX2lwYy5oICAgIHwgMjA0ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2FjY2VsL3RoYW1lcy90aGFtZXNfcnBt
c2cuYyAgfCAxNTUgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvYWNjZWwv
dGhhbWVzL3RoYW1lc19ycG1zZy5oICB8ICAyNyArKysrKw0KPiAgMTUgZmlsZXMgY2hhbmdlZCwg
OTg1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vYWNjZWwvdGhhbWVzL2luZGV4LnJzdCBiL0RvY3VtZW50YXRpb24vYWNjZWwvdGhh
bWVzL2luZGV4LnJzdA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi5jYTgzOTEwMzFmMjI2ZjdlZjFkYzIxMGEz
NTZjODZhY2JlMTI2YzZmDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9h
Y2NlbC90aGFtZXMvaW5kZXgucnN0DQo+IEBAIC0wLDAgKzEsMjggQEANCj4gKy4uIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCj4gKw0KPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ICsgYWNjZWwvdGhh
bWVzIERyaXZlciBmb3IgdGhlIEM3eCBEU1BzIGZyb20gVGV4YXMgSW5zdHJ1bWVudHMNCj4gKz09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPiArDQo+ICtUaGUgYWNjZWwvdGhhbWVzIGRyaXZlciBzdXBwb3J0cyB0aGUgQzd4IERTUHMg
aW5zaWRlIHNvbWUgVGV4YXMgSW5zdHJ1bWVudHMgU29Dcw0KPiArc3VjaCBhcyB0aGUgSjcyMlMu
IFRoZXNlIGNhbiBiZSB1c2VkIGFzIGFjY2VsZXJhdG9ycyBmb3IgdmFyaW91cyB3b3JrbG9hZHMs
DQo+ICtpbmNsdWRpbmcgbWFjaGluZSBsZWFybmluZyBpbmZlcmVuY2UuDQo+ICsNCj4gK1RoaXMg
ZHJpdmVyIGNvbnRyb2xzIHRoZSBwb3dlciBzdGF0ZSBvZiB0aGUgaGFyZHdhcmUgdmlhIDpkb2M6
YHJlbW90ZXByb2MgPC9zdGFnaW5nL3JlbW90ZXByb2M+YA0KPiArYW5kIGNvbW11bmljYXRlcyB3
aXRoIHRoZSBmaXJtd2FyZSBydW5uaW5nIG9uIHRoZSBEU1AgdmlhIDpkb2M6YHJwbXNnX3ZpcnRp
byA8L3N0YWdpbmcvcnBtc2dfdmlydGlvPmAuDQo+ICtUaGUga2VybmVsIGRyaXZlciBpdHNlbGYg
YWxsb2NhdGVzIGJ1ZmZlcnMsIG1hbmFnZXMgY29udGV4dHMsIGFuZCBzdWJtaXRzIGpvYnMNCj4g
K3RvIHRoZSBEU1AgZmlybXdhcmUuIEJ1ZmZlcnMgYXJlIG1hcHBlZCBieSB0aGUgRFNQIGl0c2Vs
ZiB1c2luZyBpdHMgTU1VLA0KPiArcHJvdmlkaW5nIG1lbW9yeSBpc29sYXRpb24gYW1vbmcgZGlm
ZmVyZW50IGNsaWVudHMuDQo+ICsNCj4gK1RoZSBzb3VyY2UgY29kZSBmb3IgdGhlIGZpcm13YXJl
IHJ1bm5pbmcgb24gdGhlIERTUCBpcyBhdmFpbGFibGUgYXQ6DQo+ICtodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvdG9tZXUvdGhhbWVzX2Zpcm13YXJlLy4NCj4gKw0KPiArRXZlcnl0aGlu
ZyBlbHNlIGlzIGRvbmUgaW4gdXNlcnNwYWNlLCBhcyBhIEdhbGxpdW0gZHJpdmVyIChhbHNvIGNh
bGxlZCB0aGFtZXMpDQo+ICt0aGF0IGlzIHBhcnQgb2YgdGhlIE1lc2EzRCBwcm9qZWN0OiBodHRw
czovL2RvY3MubWVzYTNkLm9yZy90ZWZsb24uaHRtbA0KPiArDQo+ICtJZiB0aGVyZSBpcyBtb3Jl
IHRoYW4gb25lIGNvcmUgdGhhdCBhZHZlcnRpc2VzIHRoZSBzYW1lIHJwbXNnX3ZpcnRpbyBzZXJ2
aWNlDQo+ICtuYW1lLCB0aGUgZHJpdmVyIHdpbGwgbG9hZCBiYWxhbmNlIGpvYnMgYmV0d2VlbiB0
aGVtIHdpdGggZHJtLWdwdS1zY2hlZHVsZXIuDQo+ICsNCj4gK0hhcmR3YXJlIGN1cnJlbnRseSBz
dXBwb3J0ZWQ6DQo+ICsNCj4gKyogSjcyMlMNCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIv
TUFJTlRBSU5FUlMNCj4gaW5kZXggZGM3MzFkMzdjOGZlZWZmMjU2MTNjNTlmZTljOTI5OTI3ZGFk
YWE3ZS4uYTNmYzgwOWM3OTcyNjlkMDc5MmRmZTUyMDJjYzFiNDlmNmZmNTdlOSAxMDA2NDQNCj4g
LS0tIGEvTUFJTlRBSU5FUlMNCj4gKysrIGIvTUFJTlRBSU5FUlMNCj4gQEAgLTc3MzEsNiArNzcz
MSwxNSBAQCBGOiAgICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3Jv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbA0KPiAgRjogICAgIGRyaXZlcnMvYWNjZWwvcm9j
a2V0Lw0KPiAgRjogICAgIGluY2x1ZGUvdWFwaS9kcm0vcm9ja2V0X2FjY2VsLmgNCj4NCj4gK0RS
TSBBQ0NFTCBEUklWRVIgRk9SIFRJIEM3eCBEU1BTDQo+ICtNOiAgICAgVG9tZXUgVml6b3NvIDx0
b21ldUB0b21ldXZpem9zby5uZXQ+DQo+ICtMOiAgICAgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiArUzogICAgIFN1cHBvcnRlZA0KPiArVDogICAgIGdpdCBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLmdpdA0KPiArRjogICAgIERvY3VtZW50
YXRpb24vYWNjZWwvdGhhbWVzLw0KPiArRjogICAgIGRyaXZlcnMvYWNjZWwvdGhhbWVzLw0KPiAr
RjogICAgIGluY2x1ZGUvdWFwaS9kcm0vdGhhbWVzX2FjY2VsLmgNCg0KT2ggd2hlcmUgaXMgdGhp
cyAidGhhbWVzX2FjY2VsLmgiID8gOykNCg0KDQoyMDI2LTAxLTEzVDE4OjE2OjExLjg4MTA4NFog
MDFFDQpkcml2ZXJzL2FjY2VsL3RoYW1lcy90aGFtZXNfZHJ2LmM6ODoxMDogZmF0YWwgZXJyb3I6
DQpkcm0vdGhhbWVzX2FjY2VsLmg6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCjIwMjYtMDEt
MTNUMTg6MTY6MTEuODgxMDg2WiAwMUUgICAgIDggfCAjaW5jbHVkZSA8ZHJtL3RoYW1lc19hY2Nl
bC5oPg0KMjAyNi0wMS0xM1QxODoxNjoxMS44ODEwODdaIDAxRSAgICAgICB8ICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+DQoyMDI2LTAxLTEzVDE4OjE2OjExLjg4MTExNVogMDFFIGNvbXBp
bGF0aW9uIHRlcm1pbmF0ZWQuDQoyMDI2LTAxLTEzVDE4OjE2OjExLjg4NDU1MlogMDFFIG1ha2Vb
OF06ICoqKg0KW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjg3OiBkcml2ZXJzL2FjY2VsL3RoYW1l
cy90aGFtZXNfZHJ2Lm9dIEVycm9yDQoxDQoyMDI2LTAxLTEzVDE4OjE2OjExLjg4NDY5NFogMDFF
IG1ha2VbN106ICoqKg0KW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTQ0OiBkcml2ZXJzL2FjY2Vs
L3RoYW1lc10gRXJyb3IgMg0KMjAyNi0wMS0xM1QxODoxNjoxMS44ODQ5MjZaIDAxRSBtYWtlWzZd
OiAqKioNCltzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjU0NDogZHJpdmVycy9hY2NlbF0gRXJyb3Ig
Mg0KMjAyNi0wMS0xM1QxODoxNjoxMS44ODQ5NzZaIDAxRSBtYWtlWzZdOiAqKiogV2FpdGluZyBm
b3IgdW5maW5pc2hlZCBqb2JzLi4uLg0KDQokIGZpbmQgLiB8IGdyZXAgdGhhbWVzX2FjY2VsLmgN
CiQgZ3JlcCAtUiAidGhhbWVzX2FjY2VsLmgiIC4vKg0KLi9kcml2ZXJzL2FjY2VsL3RoYW1lcy9L
Y29uZmlnOiAgICAgIGluY2x1ZGUvdWFwaS9kcm0vdGhhbWVzX2FjY2VsLmgNCmFuZCBpcyB1c2Vk
IGJ5IHRoZSBUaGFtZXMgdXNlcnNwYWNlDQouL2RyaXZlcnMvYWNjZWwvdGhhbWVzL3RoYW1lc19q
b2IuYzojaW5jbHVkZSA8ZHJtL3RoYW1lc19hY2NlbC5oPg0KLi9kcml2ZXJzL2FjY2VsL3RoYW1l
cy90aGFtZXNfZHJ2LmM6I2luY2x1ZGUgPGRybS90aGFtZXNfYWNjZWwuaD4NCi4vZHJpdmVycy9h
Y2NlbC90aGFtZXMvdGhhbWVzX2dlbS5jOiNpbmNsdWRlIDxkcm0vdGhhbWVzX2FjY2VsLmg+DQou
L01BSU5UQUlORVJTOkY6ICAgIGluY2x1ZGUvdWFwaS9kcm0vdGhhbWVzX2FjY2VsLmgNCg0KUmVn
YXJkcywNCg0KLS0gDQpSb2JlcnQgTmVsc29uDQpodHRwczovL3Jjbi1lZS5jb20vDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
