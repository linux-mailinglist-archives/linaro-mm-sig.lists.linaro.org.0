Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC85A2335E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 18:47:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30EFE44D24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 17:47:21 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by lists.linaro.org (Postfix) with ESMTPS id 279B93F080
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 17:47:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=yzCNV7b5;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.44) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6dd420f82e2so13839546d6.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 09:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738259225; x=1738864025; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M2KnSOALVun40U0rx69PL5LHkQdFIbv2CoISnegMh7s=;
        b=yzCNV7b5zFl/q9G3KQXYZLqHRptprml6yXGByVLAGkV7vxA8PkBiX52/QrY8tJLoZQ
         xhU4BbfkwoPceJV+uMCBO6Ho90c84yBHMhj3jQrDBwm4ynLZUOLmid4rnjzd+XrjuJpe
         VS/m3Rx/jaJSND1y5aVYrksqhBWh0WzCNNOQBRbMXnS8J26mf0YDAZlJja2qr/Oalswg
         zIgwwgcJP/tkar0b/3IOEQZBGAeAnjNoQHSqY3ASfZCBwzxagoNCG4TNTRvQxKEreewJ
         +FbPNoH5W6vOEPyWFKjw5XLGeevHUhncgZdzwWa3OwjidIfF/sdJ4yP5bUYse3iPNCVo
         ytsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738259225; x=1738864025;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M2KnSOALVun40U0rx69PL5LHkQdFIbv2CoISnegMh7s=;
        b=d3DRZbWtN6BZAtnHVXkBVgas6IMk1rEiHgObonJrjOnW72btKH/6QZxAEKH4Dk5S1/
         dfG06GsNrFuVqFOHjlbOF0O0dccrbtiC9PjG9lgQllEszsvetoBl+WAWlV5J9MA3eR7Y
         U3dbUo9tsUfNz/Z8qNF4RmRsHNj+WlZ/4J2MWfKxT5iG8CYuH9yNcILV31fKf4OaO9hB
         4bribFgqY2o2+Ng1cWUDnkaq9zNfO9JpTSeJ7DEhHIMpR5ayg3nVzlSN1TX1av/WX5Zh
         GommUegIQMw0p11ptyZgBZiwzVYP2k65FTNZ0+MndZO+6lYyprAxDboSxpddhHgjO1+L
         nCag==
X-Forwarded-Encrypted: i=1; AJvYcCUqFtwjODvypHmaMTu89BHbkyRKwSAf2KYIeI42E6hkLO2XTJ2eS6PI6bI6ANA+xiFUWiskbKvLBLGQZCMe@lists.linaro.org
X-Gm-Message-State: AOJu0Yw5k/2cDt5/bQ0Y04k/dk14/Q7+Tsksck4Kn9JQq1NC4Ie0KlyX
	mEcUkC1DWR8HEWUUv5LrK4BQCbrplLVMmubPn60wrFQqI97VseNFcUe0JA9wtRM=
X-Gm-Gg: ASbGncsQKefbvURC6Au8Yka5EOvgFrn2DgNFPp1IWEqvkLQ+ocooSZg4eadbtS+P+Li
	RN6ak8y/+ULU3bHAburtwZW1GotxfA9uopjGhRTevPAQkwaRoG/6DRdjAsmNXMFmn86C6gczbmM
	fqlmoGkFdRdtcficVVFT7V2zji8+WMVOaDt32i6YXBAJEyMEbovC1Cgvr/VQXSEsfqguK4HFDvB
	vUr8DmMckZRhhwNcSoOPqPVBtigJpqn+qyZosYF87ARKe4tLvQmX85GEgrZ7SXWhi86GyLl3xSR
	6TARFzWA9E3q0Ae3
X-Google-Smtp-Source: AGHT+IFb98ThAFaKwElwJF/sopgUxhTZjXeuvxkotRwiLF8RhVhCp7fJLzKCy+1eOfFzQ+qv/2X0Lw==
X-Received: by 2002:a05:6214:1d0e:b0:6d8:9124:8795 with SMTP id 6a1803df08f44-6e243b94159mr102405256d6.1.1738259224602;
        Thu, 30 Jan 2025 09:47:04 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e25481419fsm8430276d6.27.2025.01.30.09.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 09:47:04 -0800 (PST)
Message-ID: <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>
Date: Thu, 30 Jan 2025 12:47:02 -0500
In-Reply-To: <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
	 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
	 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 279B93F080
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ndufresne.ca];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.219.44:from];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.44:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: HOSRATO55HOT5RM5RIERJ7XZ3G5ZZMSZ
X-Message-ID-Hash: HOSRATO55HOT5RM5RIERJ7XZ3G5ZZMSZ
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
 , linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HOSRATO55HOT5RM5RIERJ7XZ3G5ZZMSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgamV1ZGkgMzAgamFudmllciAyMDI1IMOgIDE3OjM4ICswMTAwLCBNYXhpbWUgUmlwYXJkIGEg
w6ljcml0wqA6DQo+IEhpIE5pY29sYXMsDQo+IA0KPiBPbiBUaHUsIEphbiAzMCwgMjAyNSBhdCAx
MDo1OTo1NkFNIC0wNTAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+IExlIGpldWRpIDMw
IGphbnZpZXIgMjAyNSDDoCAxNDo0NiArMDEwMCwgTWF4aW1lIFJpcGFyZCBhIMOpY3JpdMKgOg0K
PiA+ID4gSGksDQo+ID4gPiANCj4gPiA+IEkgc3RhcnRlZCB0byByZXZpZXcgaXQsIGJ1dCBpdCdz
IHByb2JhYmx5IGJlc3QgdG8gZGlzY3VzcyBpdCBoZXJlLg0KPiA+ID4gDQo+ID4gPiBPbiBUaHUs
IEphbiAzMCwgMjAyNSBhdCAwMTowODo1NlBNICswMDAwLCBGbG9yZW50IFRvbWFzaW4gd3JvdGU6
DQo+ID4gPiA+IEhpLA0KPiA+ID4gPiANCj4gPiA+ID4gVGhpcyBpcyBhIHBhdGNoIHNlcmllcyBj
b3ZlcmluZyB0aGUgc3VwcG9ydCBmb3IgcHJvdGVjdGVkIG1vZGUgZXhlY3V0aW9uIGluDQo+ID4g
PiA+IE1hbGkgUGFudGhvciBDU0Yga2VybmVsIGRyaXZlci4NCj4gPiA+ID4gDQo+ID4gPiA+IFRo
ZSBNYWxpIENTRiBHUFVzIGNvbWUgd2l0aCB0aGUgc3VwcG9ydCBmb3IgcHJvdGVjdGVkIG1vZGUg
ZXhlY3V0aW9uIGF0IHRoZQ0KPiA+ID4gPiBIVyBsZXZlbC4gVGhpcyBmZWF0dXJlIHJlcXVpcmVz
IHR3byBtYWluIGNoYW5nZXMgaW4gdGhlIGtlcm5lbCBkcml2ZXI6DQo+ID4gPiA+IA0KPiA+ID4g
PiAxKSBDb25maWd1cmUgdGhlIEdQVSB3aXRoIGEgcHJvdGVjdGVkIGJ1ZmZlci4gVGhlIHN5c3Rl
bSBtdXN0IHByb3ZpZGUgYSBETUENCj4gPiA+ID4gICAgaGVhcCBmcm9tIHdoaWNoIHRoZSBkcml2
ZXIgY2FuIGFsbG9jYXRlIGEgcHJvdGVjdGVkIGJ1ZmZlci4NCj4gPiA+ID4gICAgSXQgY2FuIGJl
IGEgY2FydmVkLW91dCBtZW1vcnkgb3IgZHluYW1pY2FsbHkgYWxsb2NhdGVkIHByb3RlY3RlZCBt
ZW1vcnkgcmVnaW9uLg0KPiA+ID4gPiAgICBTb21lIHN5c3RlbSBpbmNsdWRlcyBhIHRydXN0ZWQg
Rlcgd2hpY2ggaXMgaW4gY2hhcmdlIG9mIHRoZSBwcm90ZWN0ZWQgbWVtb3J5Lg0KPiA+ID4gPiAg
ICBTaW5jZSB0aGlzIHByb2JsZW0gaXMgaW50ZWdyYXRpb24gc3BlY2lmaWMsIHRoZSBNYWxpIFBh
bnRob3IgQ1NGIGtlcm5lbA0KPiA+ID4gPiAgICBkcml2ZXIgbXVzdCBpbXBvcnQgdGhlIHByb3Rl
Y3RlZCBtZW1vcnkgZnJvbSBhIGRldmljZSBzcGVjaWZpYyBleHBvcnRlci4NCj4gPiA+IA0KPiA+
ID4gV2h5IGRvIHlvdSBuZWVkIGEgaGVhcCBmb3IgaXQgaW4gdGhlIGZpcnN0IHBsYWNlPyBNeSB1
bmRlcnN0YW5kaW5nIG9mDQo+ID4gPiB5b3VyIHNlcmllcyBpcyB0aGF0IHlvdSBoYXZlIGEgY2Fy
dmVkIG91dCBtZW1vcnkgcmVnaW9uIHNvbWV3aGVyZSwgYW5kDQo+ID4gPiB5b3Ugd2FudCB0byBh
bGxvY2F0ZSBmcm9tIHRoYXQgY2FydmVkIG91dCBtZW1vcnkgcmVnaW9uIHlvdXIgYnVmZmVycy4N
Cj4gPiA+IA0KPiA+ID4gSG93IGlzIHRoYXQgYW55IGRpZmZlcmVudCBmcm9tIHVzaW5nIGEgcmVz
ZXJ2ZWQtbWVtb3J5IHJlZ2lvbiwgYWRkaW5nDQo+ID4gPiB0aGUgcmVzZXJ2ZWQtbWVtb3J5IHBy
b3BlcnR5IHRvIHRoZSBHUFUgZGV2aWNlIGFuZCBkb2luZyBhbGwgeW91cg0KPiA+ID4gYWxsb2Nh
dGlvbiB0aHJvdWdoIHRoZSB1c3VhbCBkbWFfYWxsb2NfKiBBUEk/DQo+ID4gDQo+ID4gSG93IGRv
IHlvdSB0aGVuIG11bHRpcGxleCB0aGlzIHJlZ2lvbiBzbyBpdCBjYW4gYmUgc2hhcmVkIGJldHdl
ZW4NCj4gPiBHUFUvQ2FtZXJhL0Rpc3BsYXkvQ29kZWMgZHJpdmVycyBhbmQgYWxzbyB1c2Vyc3Bh
Y2UgPw0KPiANCj4gWW91IGNvdWxkIHBvaW50IGFsbCB0aGUgZGV2aWNlcyB0byB0aGUgc2FtZSBy
ZXNlcnZlZCBtZW1vcnkgcmVnaW9uLCBhbmQNCj4gdGhleSB3b3VsZCBhbGwgYWxsb2NhdGUgZnJv
bSB0aGVyZSwgaW5jbHVkaW5nIGZvciB0aGVpciB1c2Vyc3BhY2UtZmFjaW5nDQo+IGFsbG9jYXRp
b25zLg0KDQpJIGdldCB0aGF0IHVzaW5nIG1lbW9yeSByZWdpb24gaXMgc29tZXdoYXQgbW9yZSBv
ZiBhbiBIVyBkZXNjcmlwdGlvbiwgYW5kDQphbGlnbmVkIHdpdGggd2hhdCBhIERUIGlzIHN1cHBv
c2VkIHRvIGRlc2NyaWJlLiBPbmUgb2YgdGhlIGNoYWxsZW5nZSBpcyB0aGF0DQpNZWRpYXRlayBo
ZWFwIHByb3Bvc2FsIGVuZHVwIGNhbGxpbmcgaW50byB0aGVpciBURUUsIG1lYW5pbmcga25vd2lu
ZyB0aGUgcmVnaW9uDQppcyBub3QgdGhhdCB1c2VmdWwuIFlvdSBhY3R1YWxseSBuZWVkIHRoZSBU
RUUgQVBQIGd1aWQgYW5kIGl0cyBJUEMgcHJvdG9jb2wuIElmDQp3ZSBjYW4gZGVsbCBkcml2ZXJz
IHRvIHVzZSBhIGhlYWQgaW5zdGVhZCwgd2UgY2FuIGFic3RyYWN0IHRoYXQgU29DIHNwZWNpZmlj
DQpjb21wbGV4aXR5LiBJIGJlbGlldmUgZWFjaCBhbGxvY2F0ZWQgYWRkcmVzc2VkIGhhcyB0byBi
ZSBtYXBwZWQgdG8gYSB6b25lLCBhbmQNCnRoYXQgY2FuIG9ubHkgYmUgZG9uZSBpbiB0aGUgc2Vj
dXJlIGFwcGxpY2F0aW9uLiBJIGNhbiBpbWFnaW5lIHNpbWlsYXIgbmVlZHMNCndoZW4gdGhlIHBy
b3RlY3Rpb24gaXMgZG9uZSB1c2luZyBzb21lIHNvcnQgb2YgYSBWTSAvIGh5cGVydmlzb3IuDQoN
Ck5pY29sYXMNCg0KPiANCj4gPiBBbHNvLCBob3cgdGhlIHNlY3VyZSBtZW1vcnkgaXMgYWxsb2N0
ZWQgLyBvYnRhaW5lZCBpcyBhIHByb2Nlc3MgdGhhdA0KPiA+IGNhbiB2YXJ5IGEgbG90IGJldHdl
ZW4gU29DLCBzbyBpbXBsZW1lbnRhdGlvbiBkZXRhaWxzIGFzc3VtcHRpb24NCj4gPiBzaG91bGQg
bm90IGJlIGNvZGVkIGluIHRoZSBkcml2ZXIuDQo+IA0KPiBCdXQgeWVhaCwgd2UgYWdyZWUgdGhl
cmUsIGl0J3MgYWxzbyB0aGUgcG9pbnQgSSB3YXMgdHJ5aW5nIHRvIG1ha2UgOikNCj4gDQo+IE1h
eGltZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
