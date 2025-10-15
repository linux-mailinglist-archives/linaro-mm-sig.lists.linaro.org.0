Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 346CABDD5DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 10:23:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A220545DD4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 08:23:57 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 2B7D545228
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 08:23:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=fvlfjbEx;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3d50882cc2so1166777566b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 01:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760516633; x=1761121433; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxCnKzSY0s+V96p4DaVIhmKltF/rpU8DxvPCKFc7GWY=;
        b=fvlfjbEx1qyU1o90xwXaU+Rmeix6T5g6P6b/4ruEFEuUGNaDr/klYUFKYWGNRaB9Ir
         8xYUbFCSRJyPdE8A98uHSFujPZbu+yRKRWn9Jwo3iUk7oNyEynnqgBy5/WrzriRtdxGe
         PvfO27AUom/9ZRGDix8innmarG2zWXcuTJuV0hVUjmAfO5uvLH3+uMrlYSaLMcyxlGDY
         QsLM7Ua81T1+hQkc+YHFlpYM19DEwGeVOts5llZoaifJ+F5SYR/TZz6qY4iIUzmTbJb4
         wCgAlT4mbvOCSK6DlTQXm3+A2CFmoz87FWcRI9eKySpyUWdBS1dh7RyzpGLzHTnH43PB
         i6CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760516633; x=1761121433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UxCnKzSY0s+V96p4DaVIhmKltF/rpU8DxvPCKFc7GWY=;
        b=LizQM0EfW8T2P/r+7iZGPwfPpdd5mgoa+JXJQGaiXPaoUCNxQiVAuQxX9d8AVGJbe8
         I6p3t2Vpn9QFoA+JDNjaOlsGq30Z50B/labGMfu9Wykk5bKpiOGc5gYDT0AIUEqQoSRP
         kpCEU+Jt3Vl65m5DEoaPInACt+04QegQJegZc5MsDREhtAj1VpXJyEcMDSBIc6/pNCfc
         zydXT2ECpSM960l0FLYq3Wp5+aIO6A0avPvC+TOqE1hDRMBv4E37vxKjNC3gzcsz9zXf
         QkQDp1IcgKqf8ck35/L+w+LvH8typhVkWABmCReMB2yMNZdQ1kioTBqKnUFpy/8/u6Mk
         GiLA==
X-Forwarded-Encrypted: i=1; AJvYcCUM6I+36V05Nb2XpY4lwYs0Cw2O8ZFbvo0gWRD/9j0XuLwwI6zr7Xqz4Li8IvP5wiNLn93BCw10t/PaoZ0J@lists.linaro.org
X-Gm-Message-State: AOJu0Ywgu/4rmw7Jz+kaeYpHVI11I52xAbdlOQG7aFhc4EnL1g/AwuEv
	sa4pSroMDgeebFsfafZRn1NvkDR4zD261lVC8b9gUs7MlnpmsujdBfGZh1UdhHi+We4a49vEjp4
	wxqFZOS5zFWSSWCXs+7KwwGNBzPx6DLWsq/mu4py09EIS
X-Gm-Gg: ASbGncvLtHnb4BEh5p4EeZtUE/YfkDxnXR3BStTJMfU/d3aUyn4t2ITLleEOGOof81+
	F8N9vpL6bFpC6qdErD27q0FSh9OGbaZ4lQOa2TbFJQx2zW33w9rp11zOGURh6LzK4UkPfHmSiQy
	tlxQ6gFwVVdd201I76O8k5Vf8i89lEnEjJqcmAhoYvBWHEZbdOKnNTPXMwA8xQSj561QxuevLev
	Q05JQmGZzUfG28oFyekt52pupP4xumioyjH/yiyfHwFNib6hgxf1PD9GHLh1ZQL
X-Google-Smtp-Source: AGHT+IF6fAVbXX5F8RGBoYgvm1Rcu+YjAOh+2j+dceV3zwu5sKBKQXJ/9P1xM6qaFTcMjvhyJod16WrMFs6xq1ISgV0=
X-Received: by 2002:a17:907:3cc9:b0:b2a:5fe5:87c7 with SMTP id
 a640c23a62f3a-b50aa48d5f8mr3002756066b.12.1760516633022; Wed, 15 Oct 2025
 01:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
In-Reply-To: <20251013-dma-buf-ecc-heap-v8-0-04ce150ea3d9@kernel.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 15 Oct 2025 13:53:41 +0530
X-Gm-Features: AS18NWAaxKRo-h7l2MFnUyuTRslFKXoRyt0fRoMbHV7S75RfcyEniVSpQAqfMSo
Message-ID: <CAO_48GGD8sCoQt_qWKqcbg6v7Cyi5U9QsxsvNOcqfkLRqHS7_w@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Queue-Id: 2B7D545228
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:url,linaro.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3JND6L6SRVRISJKQEG2IYGBBGQZP4F3V
X-Message-ID-Hash: 3JND6L6SRVRISJKQEG2IYGBBGQZP4F3V
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 0/5] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3JND6L6SRVRISJKQEG2IYGBBGQZP4F3V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWF4aW1lLA0KDQpPbiBNb24sIDEzIE9jdCAyMDI1IGF0IDE0OjA1LCBNYXhpbWUgUmlwYXJk
IDxtcmlwYXJkQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gSGVyZSdzIGFub3Ro
ZXIgYXR0ZW1wdCBhdCBzdXBwb3J0aW5nIHVzZXItc3BhY2UgYWxsb2NhdGlvbnMgZnJvbSBhDQo+
IHNwZWNpZmljIGNhcnZlZC1vdXQgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbi4NCg0KDQpUaGFuayB5
b3UgZm9yIHRoZSBzZXJpZXMgLSBJIHRoaW5rIGl0IGxvb2tzIHByZXR0eSBkZWNlbnQsIGFuZCB3
aXRoDQpNYXJlaydzIEFja2VkLWJ5IGZvciB0aGUgY21hIHBhdGNoIFsxXSwgSSdtIGluY2xpbmVk
IHRvIG1lcmdlIGl0Lg0KDQpJJ2xsIHdhaXQgdGlsbCB0b2RheSBldmVuaW5nLCBpbiBjYXNlIHRo
ZXJlIGFyZSBhbnkgbW9yZSBjb21tZW50cywgYW5kDQp0aGVuIGdvIGFoZWFkIGFuZCBtZXJnZSBp
dC4NCg0KQmVzdCwNClN1bWl0Lg0KDQo+DQo+IFRoZSBpbml0aWFsIHByb2JsZW0gd2Ugd2VyZSBk
aXNjdXNzaW5nIHdhcyB0aGF0IEknbSBjdXJyZW50bHkgd29ya2luZyBvbg0KPiBhIHBsYXRmb3Jt
IHdoaWNoIGhhcyBhIG1lbW9yeSBsYXlvdXQgd2l0aCBFQ0MgZW5hYmxlZC4gSG93ZXZlciwgZW5h
YmxpbmcNCj4gdGhlIEVDQyBoYXMgYSBudW1iZXIgb2YgZHJhd2JhY2tzIG9uIHRoYXQgcGxhdGZv
cm06IGxvd2VyIHBlcmZvcm1hbmNlLA0KPiBpbmNyZWFzZWQgbWVtb3J5IHVzYWdlLCBldGMuIFNv
IGZvciB0aGluZ3MgbGlrZSBmcmFtZWJ1ZmZlcnMsIHRoZQ0KPiB0cmFkZS1vZmYgaXNuJ3QgZ3Jl
YXQgYW5kIHRodXMgdGhlcmUncyBhIG1lbW9yeSByZWdpb24gd2l0aCBFQ0MgZGlzYWJsZWQNCj4g
dG8gYWxsb2NhdGUgZnJvbSBmb3Igc3VjaCB1c2UgY2FzZXMuDQo+DQo+IEFmdGVyIGEgc3VnZ2Vz
dGlvbiBmcm9tIEpvaG4sIEkgY2hvc2UgdG8gZmlyc3Qgc3RhcnQgdXNpbmcgaGVhcA0KPiBhbGxv
Y2F0aW9ucyBmbGFncyB0byBhbGxvdyBmb3IgdXNlcnNwYWNlIHRvIGFzayBmb3IgYSBwYXJ0aWN1
bGFyIEVDQw0KPiBzZXR1cC4gVGhpcyBpcyB0aGVuIGJhY2tlZCBieSBhIG5ldyBoZWFwIHR5cGUg
dGhhdCBydW5zIGZyb20gcmVzZXJ2ZWQNCj4gbWVtb3J5IGNodW5rcyBmbGFnZ2VkIGFzIHN1Y2gs
IGFuZCB0aGUgZXhpc3RpbmcgRFQgcHJvcGVydGllcyB0byBzcGVjaWZ5DQo+IHRoZSBFQ0MgcHJv
cGVydGllcy4NCj4NCj4gQWZ0ZXIgZnVydGhlciBkaXNjdXNzaW9uLCBpdCB3YXMgY29uc2lkZXJl
ZCB0aGF0IGZsYWdzIHdlcmUgbm90IHRoZQ0KPiByaWdodCBzb2x1dGlvbiwgYW5kIHJlbHlpbmcg
b24gdGhlIG5hbWVzIG9mIHRoZSBoZWFwcyB3b3VsZCBiZSBlbm91Z2ggdG8NCj4gbGV0IHVzZXJz
cGFjZSBrbm93IHRoZSBraW5kIG9mIGJ1ZmZlciBpdCBkZWFscyB3aXRoLg0KPg0KPiBUaHVzLCBl
dmVuIHRob3VnaCB0aGUgdUFQSSBwYXJ0IG9mIGl0IGhhZCBiZWVuIGRyb3BwZWQgaW4gdGhpcyBz
ZWNvbmQNCj4gdmVyc2lvbiwgd2Ugc3RpbGwgbmVlZGVkIGEgZHJpdmVyIHRvIGNyZWF0ZSBoZWFw
cyBvdXQgb2YgY2FydmVkLW91dCBtZW1vcnkNCj4gcmVnaW9ucy4gSW4gYWRkaXRpb24gdG8gdGhl
IG9yaWdpbmFsIHVzZWNhc2UsIGEgc2ltaWxhciBkcml2ZXIgY2FuIGJlDQo+IGZvdW5kIGluIEJT
UHMgZnJvbSBtb3N0IHZlbmRvcnMsIHNvIEkgYmVsaWV2ZSBpdCB3b3VsZCBiZSBhIHVzZWZ1bA0K
PiBhZGRpdGlvbiB0byB0aGUga2VybmVsLg0KPg0KPiBTb21lIGV4dHJhIGRpc2N1c3Npb24gd2l0
aCBSb2IgSGVycmluZyBbMV0gY2FtZSB0byB0aGUgY29uY2x1c2lvbiB0aGF0DQo+IHNvbWUgc3Bl
Y2lmaWMgY29tcGF0aWJsZSBmb3IgdGhpcyBpcyBub3QgZ3JlYXQgZWl0aGVyLCBhbmQgYXMgc3Vj
aCBhbg0KPiBuZXcgZHJpdmVyIHByb2JhYmx5IGlzbid0IGNhbGxlZCBmb3IgZWl0aGVyLg0KPg0K
PiBTb21lIG90aGVyIGRpc2N1c3Npb25zIHdlIGhhZCB3aXRoIEpvaG4gWzJdIGFsc28gZHJvcHBl
ZCBzb21lIGhpbnRzIHRoYXQNCj4gbXVsdGlwbGUgQ01BIGhlYXBzIG1pZ2h0IGJlIGEgZ29vZCBp
ZGVhLCBhbmQgc29tZSB2ZW5kb3JzIHNlZW0gdG8gZG8NCj4gdGhhdCB0b28uDQo+DQo+IFNvIGhl
cmUncyBhbm90aGVyIGF0dGVtcHQgdGhhdCBkb2Vzbid0IGFmZmVjdCB0aGUgZGV2aWNlIHRyZWUg
YXQgYWxsIGFuZA0KPiB3aWxsIGp1c3QgY3JlYXRlIGEgaGVhcCBmb3IgZXZlcnkgQ01BIHJlc2Vy
dmVkIG1lbW9yeSByZWdpb24uDQo+DQo+IEl0IGFsc28gZmFsbHMgbmljZWx5IGludG8gdGhlIGN1
cnJlbnQgcGxhbiB3ZSBoYXZlIHRvIHN1cHBvcnQgY2dyb3VwcyBpbg0KPiBEUk0vS01TIGFuZCB2
NGwyLCB3aGljaCBpcyBhbiBhZGRpdGlvbmFsIGJlbmVmaXQuDQo+DQo+IExldCBtZSBrbm93IHdo
YXQgeW91IHRoaW5rLA0KPiBNYXhpbWUNCj4NCj4gMTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwNzA3LWNvYmFsdC1kaW5nby1vZi1zZXJlbml0eS1kYmY5MmNAaG91YXQvDQo+IDI6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU5EaE5Dcm9lNlpCdE5fbz1jNzFrekZGYVdL
LWZGNXJDZG5yOVA1aDFzZ1BPV1NHU3dAbWFpbC5nbWFpbC5jb20vDQo+DQo+IExldCBtZSBrbm93
IHdoYXQgeW91IHRoaW5rLA0KPiBNYXhpbWUNCj4NCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJp
cGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPiAtLS0NCj4gQ2hhbmdlcyBpbiB2ODoNCj4gLSBS
ZWJhc2VkIG9uIHRvcCBvZiA2LjE4LXJjMQ0KPiAtIEFkZGVkIFRKIFItYg0KPiAtIExpbmsgdG8g
djc6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA3MjEtZG1hLWJ1Zi1lY2MtaGVhcC12
Ny0wLTAzMTgzNmUxYTk0MkBrZXJuZWwub3JnDQo+DQo+IENoYW5nZXMgaW4gdjc6DQo+IC0gSW52
ZXJ0IHRoZSBsb2dpYyBhbmQgcmVnaXN0ZXIgQ01BIGhlYXAgZnJvbSB0aGUgcmVzZXJ2ZWQgbWVt
b3J5IC8NCj4gICBkbWEgY29udGlndW91cyBjb2RlLCBpbnN0ZWFkIG9mIGl0ZXJhdGluZyBvdmVy
IHRoZW0gZnJvbSB0aGUgQ01BIGhlYXAuDQo+IC0gTGluayB0byB2NjogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI1MDcwOS1kbWEtYnVmLWVjYy1oZWFwLXY2LTAtZGFjOWJmODBmMzVkQGtl
cm5lbC5vcmcNCj4NCj4gQ2hhbmdlcyBpbiB2NjoNCj4gLSBEcm9wIHRoZSBuZXcgZHJpdmVyIGFu
ZCBhbGxvY2F0ZSBhIENNQSBoZWFwIGZvciBlYWNoIHJlZ2lvbiBub3cNCj4gLSBEcm9wcGVkIHRo
ZSBiaW5kaW5nDQo+IC0gUmViYXNlZCBvbiA2LjE2LXJjNQ0KPiAtIExpbmsgdG8gdjU6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA2MTctZG1hLWJ1Zi1lY2MtaGVhcC12NS0wLTBhYmRj
NTg2M2E0ZkBrZXJuZWwub3JnDQo+DQo+IENoYW5nZXMgaW4gdjU6DQo+IC0gUmViYXNlZCBvbiA2
LjE2LXJjMg0KPiAtIFN3aXRjaCBmcm9tIHByb3BlcnR5IHRvIGRlZGljYXRlZCBiaW5kaW5nDQo+
IC0gTGluayB0byB2NDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDUyMC1kbWEtYnVm
LWVjYy1oZWFwLXY0LTEtYmQyZTFmMWJiNDJjQGtlcm5lbC5vcmcNCj4NCj4gQ2hhbmdlcyBpbiB2
NDoNCj4gLSBSZWJhc2VkIG9uIDYuMTUtcmM3DQo+IC0gTWFwIGJ1ZmZlcnMgb25seSB3aGVuIG1h
cCBpcyBhY3R1YWxseSBjYWxsZWQsIG5vdCBhdCBhbGxvY2F0aW9uIHRpbWUNCj4gLSBEZWFsIHdp
dGggcmVzdHJpY3RlZC1kbWEtcG9vbCBhbmQgc2hhcmVkLWRtYS1wb29sDQo+IC0gUmV3b3JkIEtj
b25maWcgb3B0aW9ucw0KPiAtIFByb3Blcmx5IHJlcG9ydCBkbWFfbWFwX3NndGFibGUgZmFpbHVy
ZXMNCj4gLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNDA3LWRt
YS1idWYtZWNjLWhlYXAtdjMtMC05N2NkZDM2YTVmMjlAa2VybmVsLm9yZw0KPg0KPiBDaGFuZ2Vz
IGluIHYzOg0KPiAtIFJld29ya2VkIGdsb2JhbCB2YXJpYWJsZSBwYXRjaA0KPiAtIExpbmsgdG8g
djI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA0MDEtZG1hLWJ1Zi1lY2MtaGVhcC12
Mi0wLTA0M2ZkMDA2YTFhZkBrZXJuZWwub3JnDQo+DQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gQWRk
IHZtYXAvdnVubWFwIG9wZXJhdGlvbnMNCj4gLSBEcm9wIEVDQyBmbGFncyB1YXBpDQo+IC0gUmVi
YXNlIG9uIHRvcCBvZiA2LjE0DQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvci8yMDI0MDUxNS1kbWEtYnVmLWVjYy1oZWFwLXYxLTAtNTRjYmJkMDQ5NTExQGtlcm5lbC5v
cmcNCj4NCj4gLS0tDQo+IE1heGltZSBSaXBhcmQgKDUpOg0KPiAgICAgICBkb2M6IGRtYS1idWY6
IExpc3QgdGhlIGhlYXBzIGJ5IG5hbWUNCj4gICAgICAgZG1hLWJ1ZjogaGVhcHM6IGNtYTogUmVn
aXN0ZXIgbGlzdCBvZiBDTUEgcmVnaW9ucyBhdCBib290DQo+ICAgICAgIGRtYTogY29udGlndW91
czogUmVnaXN0ZXIgcmV1c2FibGUgQ01BIHJlZ2lvbnMgYXQgYm9vdA0KPiAgICAgICBkbWE6IGNv
bnRpZ3VvdXM6IFJlc2VydmUgZGVmYXVsdCBDTUEgaGVhcA0KPiAgICAgICBkbWEtYnVmOiBoZWFw
czogY21hOiBDcmVhdGUgQ01BIGhlYXAgZm9yIGVhY2ggQ01BIHJlc2VydmVkIHJlZ2lvbg0KPg0K
PiAgRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0IHwgMjQgKysr
KysrKystLS0tLS0NCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAxICsNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAg
ICAgICB8IDEwIC0tLS0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgICAg
ICAgICAgICAgIHwgNDcgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICBpbmNsdWRlL2xp
bnV4L2RtYS1idWYvaGVhcHMvY21hLmggICAgICAgICAgICAgfCAxNiArKysrKysrKysNCj4gIGtl
cm5lbC9kbWEvY29udGlndW91cy5jICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKysrKysN
Cj4gIDYgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKSwgMzcgZGVsZXRpb25zKC0pDQo+
IC0tLQ0KPiBiYXNlLWNvbW1pdDogNDc2MzMwOTlhNjcyZmM3YmZlNjA0ZWY0NTRlNGYxMTZlMmM5
NTRiMQ0KPiBjaGFuZ2UtaWQ6IDIwMjQwNTE1LWRtYS1idWYtZWNjLWhlYXAtMjhhMzExZDJjOTRl
DQo+IHByZXJlcXVpc2l0ZS1tZXNzYWdlLWlkOiA8MjAyNTA2MTAxMzEyMzEuMTcyNDYyNy0xLWpr
YW5nYXNAcmVkaGF0LmNvbT4NCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBiYzQ0YmU1OTY4ZmVi
MTg3ZjJiYzFiODA3NGFmNzIwOTQ2MmIxOGU3DQo+IHByZXJlcXVpc2l0ZS1wYXRjaC1pZDogZjAy
YTkxYjcyM2U1ZWMwMWZiZmVkZjNjMzkwNTIxOGI0M2Q0MzJkYQ0KPiBwcmVyZXF1aXNpdGUtcGF0
Y2gtaWQ6IGU5NDRkMGEzZTIyZjJjZGY0ZDNiMzkwNmU1NjAzYWY5MzQ2OTZkZWINCj4NCj4gQmVz
dCByZWdhcmRzLA0KPiAtLQ0KPiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+
DQoNCg0KLS0gDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQoNClN1bWl0IFNlbXdhbCAoaGUgLyBoaW0p
DQpTZW5pb3IgVGVjaCBMZWFkIC0gQW5kcm9pZCwgUGxhdGZvcm1zIGFuZCBWaXJ0dWFsaXNhdGlv
bg0KTGluYXJvLm9yZyDilIIgQXJtIFNvbHV0aW9ucyBhdCBMaWdodCBTcGVlZA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
