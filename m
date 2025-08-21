Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2123DB2F9B6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 15:13:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D5C745601
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 13:13:53 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 4AF1C4435F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 13:13:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=dyiAT+L+;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-324e2c12f43so71489a91.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 06:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755782024; x=1756386824; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0ntcUfwQYZElkssDT+Zc1ph10VSWKrgVIAaGKrNC8c=;
        b=dyiAT+L+8decvLy96AQXEXXvW+M9F061HlCTwoOoNbJJD56+qjmNs1Ovb+HeSBUHEj
         pkRTVf2CT1MyjubPiLakJ5SejwNbaLFz6w4o1ZTWtUdZ010zHdLlcoE90PMrjrE8xFhr
         eUe/k4pkBk67Gmjj5Yc8r0Nh1hBg3/ZltOovdSUWmVMyasyRIQdjH3MfhmP1xz5KfImG
         p8tweo1cgHt2HGfUima6rQGZWKNVZXFXkZe4FvN29V0EMti43ZC2cxj6cpyZYS64rGKA
         k0BZg0KOOt3U4icY05JsUhatLVaJSooS1NfM8SQ7vrNK+dEveDBv86TMEIx5ycp1s+1n
         CHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755782024; x=1756386824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0ntcUfwQYZElkssDT+Zc1ph10VSWKrgVIAaGKrNC8c=;
        b=vxClrQe0ZXIPRO6fX2L3S6PNyqZ7QWOn6fE6n+X80RhYBx76NJ39eqdbJ3RRl6vneF
         4iK4zCADTGDTawOEhC4PXbL6eVExrhKK8o3JZvTTpDChPrSqgsP9DtB/g9B6gQ1QxA9j
         BAj6RGWN2OBK7dnFhaTc6lkrlxDDKnwg4d8wZjp2O8TeueIq91zXeEIM1T3t5mnqfySS
         IbKlsgIcGoPRHzPu43XPCXSoHy4mSIUZYVGD3hn8C6l5lhqnsnvikleDxraX5hhkGeN3
         Hlt5u+ZjoeFoGVG1KCNVs5vN/D9Gsok3zbua4747Vw4toiGf2XNwU3Blc50vxRuBk9y4
         VbZA==
X-Forwarded-Encrypted: i=1; AJvYcCXBv74GdZ5v+lJMjSoNJJE0Aql8gW7SdY066qrDjJ8o4D9bkUAisR4ZTMmz6JtyvokBWU4AWgILzrCHCXN6@lists.linaro.org
X-Gm-Message-State: AOJu0YxC/MjOOeDnrmtEZu4KOn2P1wQS+mkJ10gO5Fk5VdN6+13Qkg4N
	RTcXy+XOtEG6eQMgh/xruS/VqK804RwlaczEliT6mPSNZvSZEO99BLVColO1JuehX4R4rQw5O+6
	GEZ0PQlWf0SlWHpP8+ccCuu1G/WD48HM=
X-Gm-Gg: ASbGnct/VTXzbCUtGugZNicWOk9iHsZ5lRR9v6MqfFYfPuA7+Go9JCDloLXOCypi0Mf
	+/iKsURsn2uQW0nVbFY41mglSrY8U5RKtLjxLap/Hb/l9JxioKZWNXJTRPRq7+fACdLhLIp4fqF
	LRXxgob0nyL1ACyCP0Gl993/Hct1lUYIBZjFfVEOnqdoUdonnupFmKB7Bk26YDWI36t2x2LWadI
	RXAY5I=
X-Google-Smtp-Source: AGHT+IGoPLySy4CQlyi2yceJUhRDa389vWBpVwrjGS5LP44+dqCLoo64cKkkz+zBdVLQR8Keth1GycSBjmtAvY8xvC4=
X-Received: by 2002:a17:90b:4b87:b0:31e:7f76:c123 with SMTP id
 98e67ed59e1d1-324ed1c269cmr1753231a91.4.1755782024179; Thu, 21 Aug 2025
 06:13:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250821064031.39090-1-tzimmermann@suse.de> <b92c072b-a302-47c8-b2c2-f4b2e3954165@amd.com>
In-Reply-To: <b92c072b-a302-47c8-b2c2-f4b2e3954165@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 21 Aug 2025 09:13:32 -0400
X-Gm-Features: Ac12FXx0qAFooaBAgLtQfQOhqXHxanKSBn5_Pvj3vkfwVoVyKwY0WZ6xYzS_0G4
Message-ID: <CADnq5_PxpsXkzzpa8KJoZL-pBaM2ViVBOaXuYkYyd_xHBNLt9A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4AF1C4435F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_BLOCKED(0.00)[amd.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: H7SVSJGFWRGBVKRMKOCGYNUJSZ2CO6XU
X-Message-ID-Hash: H7SVSJGFWRGBVKRMKOCGYNUJSZ2CO6XU
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7SVSJGFWRGBVKRMKOCGYNUJSZ2CO6XU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgMjEsIDIwMjUgYXQgNDo1MuKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPg0KPg0KPiBPbiAyMS4wOC4yNSAwODo0
MCwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6DQo+ID4gQ3VycmVudCBkbWEtYnVmIHZtYXAgc2Vt
YW50aWNzIHJlcXVpcmUgdGhhdCB0aGUgbWFwcGVkIGJ1ZmZlciByZW1haW5zDQo+ID4gaW4gcGxh
Y2UgdW50aWwgdGhlIGNvcnJlc3BvbmRpbmcgdnVubWFwIGhhcyBjb21wbGV0ZWQuDQo+ID4NCj4g
PiBGb3IgR0VNLVNITUVNLCB0aGlzIHVzZWQgdG8gYmUgZ3VhcmFudGVlZCBieSBhIHBpbiBvcGVy
YXRpb24gd2hpbGUgY3JlYXRpbmcNCj4gPiBhbiBTL0cgdGFibGUgaW4gaW1wb3J0LiBHRU0tU0hN
RU4gY2FuIG5vdyBpbXBvcnQgZG1hLWJ1ZiBvYmplY3RzIHdpdGhvdXQNCj4gPiBjcmVhdGluZyB0
aGUgUy9HIHRhYmxlLCBzbyB0aGUgcGluIGlzIG1pc3NpbmcuIExlYWRzIHRvIHBhZ2UtZmF1bHQg
ZXJyb3JzLA0KPiA+IHN1Y2ggYXMgdGhlIG9uZSBzaG93biBiZWxvdy4NCj4gPg0KPiA+IFsgIDEw
Mi4xMDE3MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBm
ZmZmYzkwMTI3MDAwMDAwDQo+ID4gWy4uLl0NCj4gPiBbICAxMDIuMTU3MTAyXSBSSVA6IDAwMTA6
dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4gPiBbLi4uXQ0KPiA+IFsg
IDEwMi4yNDMyNTBdIENhbGwgVHJhY2U6DQo+ID4gWyAgMTAyLjI0NTY5NV0gIDxUQVNLPg0KPiA+
IFsgIDEwMi4yNDc3Vjk1XSAgPyB2YWxpZGF0ZV9jaGFpbisweDI0ZS8weDVlMA0KPiA+IFsgIDEw
Mi4yNTE4MDVdICA/IF9fbG9ja19hY3F1aXJlKzB4NTY4LzB4YWUwDQo+ID4gWyAgMTAyLjI1NTgw
N10gIHVkbF9yZW5kZXJfaGxpbmUrMHgxNjUvMHgzNDEgW3VkbF0NCj4gPiBbICAxMDIuMjYwMzM4
XSAgPyBfX3BmeF91ZGxfcmVuZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRsXQ0KPiA+IFsgIDEwMi4y
NjUzNzldICA/IGxvY2FsX2Nsb2NrX25vaW5zdHIrMHhiLzB4MTAwDQo+ID4gWyAgMTAyLjI2OTY0
Ml0gID8gX19sb2NrX3JlbGVhc2UuaXNyYS4wKzB4MTZjLzB4MmUwDQo+ID4gWyAgMTAyLjI3NDI0
Nl0gID8gbWFya19oZWxkX2xvY2tzKzB4NDAvMHg3MA0KPiA+IFsgIDEwMi4yNzgxNzddICB1ZGxf
cHJpbWFyeV9wbGFuZV9oZWxwZXJfYXRvbWljX3VwZGF0ZSsweDQzZS8weDY4MCBbdWRsXQ0KPiA+
IFsgIDEwMi4yODQ2MDZdICA/IF9fcGZ4X3VkbF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNf
dXBkYXRlKzB4MTAvMHgxMCBbdWRsXQ0KPiA+IFsgIDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFy
ZGlycXNfb25fcHJlcGFyZS5wYXJ0LjArMHg5Mi8weDE3MA0KPiA+IFsgIDEwMi4yOTcyMDhdICA/
IGxvY2tkZXBfaGFyZGlycXNfb24rMHg4OC8weDEzMA0KPiA+IFsgIDEwMi4zMDE1NTRdICA/IF9y
YXdfc3Bpbl91bmxvY2tfaXJxKzB4MjQvMHg1MA0KPiA+IFsgIDEwMi4zMDU5MDFdICA/IHdhaXRf
Zm9yX2NvbXBsZXRpb25fdGltZW91dCsweDJiYi8weDNhMA0KPiA+IFsgIDEwMi4zMTEwMjhdICA/
IGRybV9hdG9taWNfaGVscGVyX2NhbGNfdGltZXN0YW1waW5nX2NvbnN0YW50cysweDE0MS8weDIw
MA0KPiA+IFsgIDEwMi4zMTc3MTRdICA/IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMr
MHgzYjYvMHgxMDMwDQo+ID4gWyAgMTAyLjMyMzI3OV0gIGRybV9hdG9taWNfaGVscGVyX2NvbW1p
dF9wbGFuZXMrMHgzYjYvMHgxMDMwDQo+ID4gWyAgMTAyLjMyODY2NF0gIGRybV9hdG9taWNfaGVs
cGVyX2NvbW1pdF90YWlsKzB4NDEvMHhiMA0KPiA+IFsgIDEwMi4zMzM2MjJdICBjb21taXRfdGFp
bCsweDIwNC8weDMzMA0KPiA+IFsuLi5dDQo+ID4gWyAgMTAyLjUyOTk0Nl0gLS0tWyBlbmQgdHJh
Y2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tDQo+ID4gWyAgMTAyLjY1MTk4MF0gUklQOiAwMDEwOnVk
bF9jb21wcmVzc19obGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQo+ID4NCj4gPiBJbiB0aGlzIHN0
YWNrIHN0cmFjZSwgdWRsIChiYXNlZCBvbiBHRU0tU0hNRU0pIGltcG9ydGVkIGFuZCB2bWFwJ2Vk
IGENCj4gPiBkbWEtYnVmIGZyb20gYW1kZ3B1LiBBbWRncHUgcmVsb2NhdGVkIHRoZSBidWZmZXIs
IHRoZXJlYnkgaW52YWxpZGF0aW5nIHRoZQ0KPiA+IG1hcHBpbmcuDQo+ID4NCj4gPiBQcm92aWRl
IGEgY3VzdG9tIGRtYS1idWYgdm1hcCBtZXRob2QgaW4gYW1kZ3B1IHRoYXQgcGlucyB0aGUgb2Jq
ZWN0IGJlZm9yZQ0KPiA+IG1hcHBpbmcgaXQncyBidWZmZXIncyBwYWdlcyBpbnRvIGtlcm5lbCBh
ZGRyZXNzIHNwYWNlLiBEbyB0aGUgb3Bwb3NpdGUgaW4NCj4gPiB2dW5tYXAuDQo+ID4NCj4gPiBO
b3RlIHRoYXQgZG1hLWJ1ZiB2bWFwIGRpZmZlcnMgZnJvbSBHRU0gdm1hcCBpbiBob3cgaXQgaGFu
ZGxlcyByZWxvY2F0aW9uLg0KPiA+IFdoaWxlIGRtYS1idWYgdm1hcCBrZWVwcyB0aGUgYnVmZmVy
IGluIHBsYWNlLCBHRU0gdm1hcCByZXF1aXJlcyB0aGUgY2FsbGVyDQo+ID4gdG8ga2VlcCB0aGUg
YnVmZmVyIGluIHBsYWNlLiBIZW5jZSwgdGhpcyBmaXggaXMgaW4gYW1kZ3B1J3MgZG1hLWJ1ZiBj
b2RlDQo+ID4gaW5zdGVhZCBvZiBpdHMgR0VNIGNvZGUuDQo+ID4NCj4gPiBBIGRpc2N1c3Npb24g
b2YgdmFyaW91cyBhcHByb2FjaGVzIHRvIHNvbHZpbmcgdGhlIHByb2JsZW0gaXMgYXZhaWxhYmxl
DQo+ID4gYXQgWzFdLg0KPiA+DQo+ID4gdjM6DQo+ID4gLSB0cnkgKEdUVCB8IFZSQU0pOyBkcm9w
IENQVSBkb21haW4gKENocmlzdGlhbikNCj4gPiB2MjoNCj4gPiAtIG9ubHkgdXNlIG1hcGFibGUg
ZG9tYWlucyAoQ2hyaXN0aWFuKQ0KPiA+IC0gdHJ5IHBpbm5pbmcgdG8gZG9tYWlucyBpbiBwcmVm
ZXJyZWQgb3JkZXINCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPg0KPiA+IEZpeGVzOiA2NjBjZDQ0NjU5YTAgKCJkcm0vc2htZW0t
aGVscGVyOiBJbXBvcnQgZG1hYnVmIHdpdGhvdXQgbWFwcGluZyBpdHMgc2dfdGFibGUiKQ0KPiA+
IFJlcG9ydGVkLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4g
PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9iYTFiZGZiOC1kYmY3
LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCj4gPiBDYzogU2hpeGlvbmcgT3UgPG91
c2hpeGlvbmdAa3lsaW5vcy5jbj4NCj4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJt
YW5uQHN1c2UuZGU+DQo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVs
Lm9yZz4NCj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gPiBDYzog
U2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+ID4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvZHJpLWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRl
LyAjIFsxXQ0KPg0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KDQpUaG9tYXMgZGlkIHlvdSB3YW50IHRvIHRha2UgdGhpcyB0aHJvdWdo
IGRybS1taXNjIG9yIGRvIHlvdSB3YW50IG1lIHRvDQpwaWNrIHRoaXMgdXA/DQoNClRoYW5rcywN
Cg0KQWxleA0KDQo+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgfCAzNCArKysrKysrKysrKysrKysrKysrLS0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gPiBpbmRleCA1NzQzZWJi
MmYxYjcuLmNlMjdjYjViYjA1ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiA+IEBAIC0yODUsNiArMjg1LDM2IEBAIHN0YXRpYyBp
bnQgYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1
ZiwNCj4gPiAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIGludCBh
bWRncHVfZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBzdHJ1Y3QgaW9zeXNf
bWFwICptYXApDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9
IGRtYV9idWYtPnByaXY7DQo+ID4gKyAgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9f
YW1kZ3B1X2JvKG9iaik7DQo+ID4gKyAgICAgaW50IHJldDsNCj4gPiArDQo+ID4gKyAgICAgLyoN
Cj4gPiArICAgICAgKiBQaW4gdG8ga2VlcCBidWZmZXIgaW4gcGxhY2Ugd2hpbGUgaXQncyB2bWFw
J2VkLiBUaGUgYWN0dWFsDQo+ID4gKyAgICAgICogZG9tYWluIGlzIG5vdCB0aGF0IGltcG9ydGFu
dCBhcyBsb25nIGFzIGl0J3MgbWFwYWJsZS4gVXNpbmcNCj4gPiArICAgICAgKiBHVFQgYW5kIFZS
QU0gc2hvdWxkIGJlIGNvbXBhdGlibGUgd2l0aCBtb3N0IHVzZSBjYXNlcy4NCj4gPiArICAgICAg
Ki8NCj4gPiArICAgICByZXQgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9H
VFQgfCBBTURHUFVfR0VNX0RPTUFJTl9WUkFNKTsNCj4gPiArICAgICBpZiAocmV0KQ0KPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiArICAgICByZXQgPSBkcm1fZ2VtX2RtYWJ1Zl92
bWFwKGRtYV9idWYsIG1hcCk7DQo+ID4gKyAgICAgaWYgKHJldCkNCj4gPiArICAgICAgICAgICAg
IGFtZGdwdV9ib191bnBpbihibyk7DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiByZXQ7DQo+ID4g
K30NCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX3Z1bm1hcChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiA+ICt7DQo+ID4gKyAg
ICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KPiA+ICsgICAg
IHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOw0KPiA+ICsNCj4g
PiArICAgICBkcm1fZ2VtX2RtYWJ1Zl92dW5tYXAoZG1hX2J1ZiwgbWFwKTsNCj4gPiArICAgICBh
bWRncHVfYm9fdW5waW4oYm8pOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBjb25zdCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgYW1kZ3B1X2RtYWJ1Zl9vcHMgPSB7DQo+ID4gICAgICAgLmF0dGFjaCA9IGFtZGdw
dV9kbWFfYnVmX2F0dGFjaCwNCj4gPiAgICAgICAucGluID0gYW1kZ3B1X2RtYV9idWZfcGluLA0K
PiA+IEBAIC0yOTQsOCArMzI0LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9k
bWFidWZfb3BzID0gew0KPiA+ICAgICAgIC5yZWxlYXNlID0gZHJtX2dlbV9kbWFidWZfcmVsZWFz
ZSwNCj4gPiAgICAgICAuYmVnaW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9kbWFfYnVmX2JlZ2luX2Nw
dV9hY2Nlc3MsDQo+ID4gICAgICAgLm1tYXAgPSBkcm1fZ2VtX2RtYWJ1Zl9tbWFwLA0KPiA+IC0g
ICAgIC52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1hcCwNCj4gPiAtICAgICAudnVubWFwID0gZHJt
X2dlbV9kbWFidWZfdnVubWFwLA0KPiA+ICsgICAgIC52bWFwID0gYW1kZ3B1X2RtYV9idWZfdm1h
cCwNCj4gPiArICAgICAudnVubWFwID0gYW1kZ3B1X2RtYV9idWZfdnVubWFwLA0KPiA+ICB9Ow0K
PiA+DQo+ID4gIC8qKg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcNCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
