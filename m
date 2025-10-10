Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0BCBCE63F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Oct 2025 21:30:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 985E245D64
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Oct 2025 19:30:41 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3C8224420A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 19:30:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=RkNCtU8Q;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A22C160140
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 19:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 527BFC4CEF1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 19:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760124637;
	bh=UO7tWaC1D06ILgslhIE6Vp+GGNOSccu5h6NsvDEB6bI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=RkNCtU8QTeCBdWpLHhNr8JvrU3SuLc+1RKV/B5DWkkchSXpVbewLPEGu9PteSIC59
	 3QdUV0p1QZHp+XhVjKliK0wvXSdB1RU5a+CyZxjimdAkkEp5C2xHmsIcspGs72E0Lk
	 cyObdDJQL2lwFThzP/75aTtYq1Rg+WwTXzxuf5I/WZflCtsZ6JwrjI1V1vO6mFvs05
	 WXMcevad9JypeFhT7/uwXWjFcL+u+BZQ80FRHRXSyCarsMyxQ97kXJWkBlv02hVeDW
	 nUw04T6EMyGqqoQYGxSvUHP+TG9k6oSLAKGh4+rIvWYp5GUXc/FJOhGX6qNXxLvulc
	 NRaGMKALZ1/8g==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-62fb48315ddso3542743a12.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 12:30:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4Y6D3K6WiehVyOuf2sU5VDh6A1HdHEyhciifveaCtnnDgEavtr5YpC6/+oQVdRHKcXCqrG0yfNg7zT0bM@lists.linaro.org
X-Gm-Message-State: AOJu0YwV4RnI9EgUqDNF5jQtf8UQ4Ajglr5G5wC5yCP+RhO4gcsGKxIl
	vZzssb2JGU4zSbQdcjA1OALYSZDzW8SRlFhzCQOzXsU380snjhhiBWg5F55aKdRF4APCbyjSTY7
	6/i8JxSF/RoY9MMHtEpN4N44rAVcLdA==
X-Google-Smtp-Source: AGHT+IFrGZS8VdfbsjL7y3HXA+QaopPkTmxI0XGy8rPLFJbEh/CBDAxBRtvMMLAceU+RXRafaXg83rsGiK6CrH/c2zI=
X-Received: by 2002:a17:907:3e8c:b0:b48:4966:91a5 with SMTP id
 a640c23a62f3a-b50aba9e585mr1400916466b.30.1760124635939; Fri, 10 Oct 2025
 12:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250926-ethos-v3-0-6bd24373e4f5@kernel.org> <20250926-ethos-v3-1-6bd24373e4f5@kernel.org>
 <aNrVwn1ibQmB/rKJ@lizhi-Precision-Tower-5810>
In-Reply-To: <aNrVwn1ibQmB/rKJ@lizhi-Precision-Tower-5810>
From: Rob Herring <robh@kernel.org>
Date: Fri, 10 Oct 2025 14:30:24 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJkOVOVNvnePGE5G0HmbxxXPK1a=1qjOEk-G4ZZ3wf6Ew@mail.gmail.com>
X-Gm-Features: AS18NWBBQSTOplEO26OgX73Pts2y8G-I5Seb0FzonJgu4d7oZEgcPiz1tLe4anM
Message-ID: <CAL_JsqJkOVOVNvnePGE5G0HmbxxXPK1a=1qjOEk-G4ZZ3wf6Ew@mail.gmail.com>
To: Frank Li <Frank.li@nxp.com>
X-Rspamd-Queue-Id: 3C8224420A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DKZUQJC4IN3WWIEPFAXOJVUMLDMC7TEW
X-Message-ID-Hash: DKZUQJC4IN3WWIEPFAXOJVUMLDMC7TEW
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dt-bindings: npu: Add Arm Ethos-U65/U85
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DKZUQJC4IN3WWIEPFAXOJVUMLDMC7TEW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjksIDIwMjUgYXQgMTo1NOKAr1BNIEZyYW5rIExpIDxGcmFuay5saUBueHAu
Y29tPiB3cm90ZToNCj4NCj4gT24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDM6MDA6NDhQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6DQo+ID4gQWRkIGEgYmluZGluZyBzY2hlbWEgZm9y
IEFybSBFdGhvcy1VNjUvVTg1IE5QVS4gVGhlIEFybSBFdGhvcy1VIE5QVXMgYXJlDQo+ID4gZGVz
aWduZWQgZm9yIGVkZ2UgQUkgaW5mZXJlbmNlIGFwcGxpY2F0aW9ucy4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+DQo+ID4gLS0tDQo+
ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9hcm0sZXRob3MueWFtbCAgICAgICAgIHwg
NzkgKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzkgaW5zZXJ0
aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9ucHUvYXJtLGV0aG9zLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbnB1L2FybSxldGhvcy55YW1sDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBp
bmRleCAwMDAwMDAwMDAwMDAuLjcxNmM0OTk3Zjk3Ng0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L2FybSxldGhvcy55YW1s
DQo+ID4gQEAgLTAsMCArMSw3OSBAQA0KPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlDQo+ID4gKyVZQU1MIDEuMg0KPiA+ICstLS0NCj4g
PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvYXJtLGV0aG9zLnlhbWwj
DQo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIw0KPiA+ICsNCj4gPiArdGl0bGU6IEFybSBFdGhvcyBVNjUvVTg1DQo+ID4gKw0KPiA+ICtt
YWludGFpbmVyczoNCj4gPiArICAtIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+ID4g
Kw0KPiA+ICtkZXNjcmlwdGlvbjogPg0KPiA+ICsgIFRoZSBBcm0gRXRob3MtVSBOUFVzIGFyZSBk
ZXNpZ25lZCBmb3IgSW9UIGluZmVyZW5jZSBhcHBsaWNhdGlvbnMuIFRoZSBOUFVzDQo+ID4gKyAg
Y2FuIGFjY2VsZXJhdGUgOC1iaXQgYW5kIDE2LWJpdCBpbnRlZ2VyIHF1YW50aXplZCBuZXR3b3Jr
czoNCj4gPiArDQo+ID4gKyAgICBUcmFuc2Zvcm1lciBuZXR3b3JrcyAoVTg1IG9ubHkpDQo+ID4g
KyAgICBDb252b2x1dGlvbmFsIE5ldXJhbCBOZXR3b3JrcyAoQ05OKQ0KPiA+ICsgICAgUmVjdXJy
ZW50IE5ldXJhbCBOZXR3b3JrcyAoUk5OKQ0KPiA+ICsNCj4gPiArICBGdXJ0aGVyIGRvY3VtZW50
YXRpb24gaXMgYXZhaWxhYmxlIGhlcmU6DQo+ID4gKw0KPiA+ICsgICAgVTY1IFRSTTogaHR0cHM6
Ly9kZXZlbG9wZXIuYXJtLmNvbS9kb2N1bWVudGF0aW9uLzEwMjAyMy8NCj4gPiArICAgIFU4NSBU
Uk06IGh0dHBzOi8vZGV2ZWxvcGVyLmFybS5jb20vZG9jdW1lbnRhdGlvbi8xMDI2ODUvDQo+ID4g
Kw0KPiA+ICtwcm9wZXJ0aWVzOg0KPiA+ICsgIGNvbXBhdGlibGU6DQo+ID4gKyAgICBvbmVPZjoN
Cj4gPiArICAgICAgLSBpdGVtczoNCj4gPiArICAgICAgICAgIC0gZW51bToNCj4gPiArICAgICAg
ICAgICAgICAtIGZzbCxpbXg5My1ucHUNCj4gPiArICAgICAgICAgIC0gY29uc3Q6IGFybSxldGhv
cy11NjUNCj4gPiArICAgICAgLSBpdGVtczoNCj4gPiArICAgICAgICAgIC0ge30NCj4NCj4gd2hh
dCdzIG1lYW5zIHt9IGhlcmUgPywganVzdCBub3QgYWxsb3cgYXJtLGV0aG9zLXU4NSBhbG9uZT8N
Cg0KWWVzLCB1ODUgc3VwcG9ydCBpcyBjdXJyZW50bHkgb24gYSBGVlAgbW9kZWwuIFRoZSBuYW1p
bmcgZm9yIGl0IGlzbid0DQpyZWFsbHkgY2xlYXIgeWV0IG5vciBpcyBpdCBjbGVhciBpZiBpdCBl
dmVyIHdpbGwgYmUuIFNvIHJlYWxseSBqdXN0IGENCnBsYWNlaG9sZGVyIHVudGlsIHRoZXJlIGlz
IGEgY2hpcCB1c2luZyBpdC4gSXQga2VlcHMgZm9sa3MgZnJvbSB1c2luZw0KanVzdCB0aGUgZmFs
bGJhY2suDQoNCj4NCj4gUmV2aWV3ZWQtYnk6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPg0K
DQpUaGFua3MsDQpSb2INCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
