Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB5A279AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Feb 2025 19:23:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36B9843CAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Feb 2025 18:23:14 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by lists.linaro.org (Postfix) with ESMTPS id F18D94253B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Feb 2025 18:23:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=ljAAlPGs;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.45) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6d89a727a19so709086d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Feb 2025 10:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738693380; x=1739298180; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tac0SuyxfkJEVndSE8YT8kHaqPS7Ds82fJ/2JoeM9mo=;
        b=ljAAlPGsm0t9nP+TlTxcyUuodXeV4h11m1mIojRJDtUeRT6mb5COlZJJI0PJ+76tit
         c14Mf6pp3+9yawwhmrpEL1rgObIcUWrhdV4QrEQ7xc8QZwe/xsN+yqUz6qwJ+sY+pMNt
         Zq8yCQvAloClnY87C/SSj5lIdVTJLAphefovTfkzc/Nka527f7lwGxRQq7YldiwPlmn7
         9BU1pTDswAOJk1Y7IneTYkk3iJtfTwVDu4GexkGCjxPcixHXyqxxfWfEX6QzrcmZhK0O
         IFwkHC+6FEDM922XrCIyytnq+jJOlb5pDMgsTbq0OV2taJuspoyhPYc+Koou8hCPa4td
         eNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738693380; x=1739298180;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tac0SuyxfkJEVndSE8YT8kHaqPS7Ds82fJ/2JoeM9mo=;
        b=SoIr94G5184Oi4NPZ7j84tny1nPRGYf09mQdDcagMNOIcs9Q9FqojgBBc+aggOsdOK
         oVAnhjt/rhPvlPnwhLogsMZRQUmBy+mN7BfGMDw8a2Y4rKkgcK9TMY2JpdT96zUD4yL+
         IDKF4m5Xrf2w+xu3YcFUaJdmHMkKhWDf63YeiI01SkGu/HmKpD26WRw/FxBluRa1fzDz
         Wf6Za9cvH9gN56rt9OcRNImz6yil+78bPV79grZKPdGmmqQIO+TCdWZ8NYNhWwtIH0VL
         HYFR/hnXl2fRCxppSbQo06tbLO1ds1bB+Gy6Xv9zzDMmZNY9ut4kY78Gnwqvj7RjSe21
         8HlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVnoKHA36MhT35zEECx3kdWyVNQvSErGLn1LyIncYIuHISGmpDsWqMfjAH+giyoZuJQaLYaAnVFHlOUIF5@lists.linaro.org
X-Gm-Message-State: AOJu0Yy4fxxWc4aNHiOELOKn8E3kTd+i4puxRjRUNfLQ7KTqilLiyPzj
	Bo0Xw39K/QbS7UYfD42tRCq8A8+rMychxItpMqyzT6LZHHlqQGlF5pIsEyAhtKY=
X-Gm-Gg: ASbGncuK9GJmTAs8VgI2smL8FDxR3iSOpmR7nkrolsCPGxEcpT0UxkngcEGqbL2k/44
	9qK8SNx0Q8IgP4zRmT/c8HOa06yTGKCUG7ZvEuxZToQmURHYdU6bHXRF3UsvY78/EQXMXmTy2d5
	lZWQ0Y4znq6xd5oqyxwsNuYZEotCRsdnZxogQN21mS4XuvA4bjc/Xwf8I4LnV++Nd1Z8eXOBD9p
	o2zunXQrq6CThz3U3U+3CeuCCmL9BrqvWatk5ebTKsWV/PFsGBAKLD2xjzc0l0RqxtGbkRVYzGC
	tmqd4fXowKpVpM1+
X-Google-Smtp-Source: AGHT+IE/f1kxzWTc19HByUy9ODx9TdMIUe4LBdJWBN0eGiPy3I/9968X4R31P6i56Rq3iDSVWjRNWA==
X-Received: by 2002:ad4:5ecb:0:b0:6e2:3761:71b0 with SMTP id 6a1803df08f44-6e420f3b728mr78300806d6.5.1738693380393;
        Tue, 04 Feb 2025 10:23:00 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e423ca0476sm9418096d6.124.2025.02.04.10.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 10:23:00 -0800 (PST)
Message-ID: <c856a7059171bcc6afd6d829c6c025882855778b.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Florent Tomasin <florent.tomasin@arm.com>, Maxime Ripard
	 <mripard@kernel.org>
Date: Tue, 04 Feb 2025 13:22:58 -0500
In-Reply-To: <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
	 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
	 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
	 <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
	 <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F18D94253B
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.219.45:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DMARC_NA(0.00)[ndufresne.ca];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.45:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: DFVABT35SZI3MCJ7HB7OKNIA3S3Q7PEU
X-Message-ID-Hash: DFVABT35SZI3MCJ7HB7OKNIA3S3Q7PEU
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm
 -kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DFVABT35SZI3MCJ7HB7OKNIA3S3Q7PEU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMDMgZsOpdnJpZXIgMjAyNSDDoCAxNjo0MyArMDAwMCwgRmxvcmVudCBUb21hc2lu
IGEgw6ljcml0wqA6DQo+IEhpIE1heGltZSwgTmljb2xhcw0KPiANCj4gT24gMzAvMDEvMjAyNSAx
Nzo0NywgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToNCj4gPiBMZSBqZXVkaSAzMCBqYW52aWVyIDIw
MjUgw6AgMTc6MzggKzAxMDAsIE1heGltZSBSaXBhcmQgYSDDqWNyaXTCoDoNCj4gPiA+IEhpIE5p
Y29sYXMsDQo+ID4gPiANCj4gPiA+IE9uIFRodSwgSmFuIDMwLCAyMDI1IGF0IDEwOjU5OjU2QU0g
LTA1MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6DQo+ID4gPiA+IExlIGpldWRpIDMwIGphbnZp
ZXIgMjAyNSDDoCAxNDo0NiArMDEwMCwgTWF4aW1lIFJpcGFyZCBhIMOpY3JpdMKgOg0KPiA+ID4g
PiA+IEhpLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkgc3RhcnRlZCB0byByZXZpZXcgaXQsIGJ1
dCBpdCdzIHByb2JhYmx5IGJlc3QgdG8gZGlzY3VzcyBpdCBoZXJlLg0KPiA+ID4gPiA+IA0KPiA+
ID4gPiA+IE9uIFRodSwgSmFuIDMwLCAyMDI1IGF0IDAxOjA4OjU2UE0gKzAwMDAsIEZsb3JlbnQg
VG9tYXNpbiB3cm90ZToNCj4gPiA+ID4gPiA+IEhpLA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBUaGlzIGlzIGEgcGF0Y2ggc2VyaWVzIGNvdmVyaW5nIHRoZSBzdXBwb3J0IGZvciBwcm90ZWN0
ZWQgbW9kZSBleGVjdXRpb24gaW4NCj4gPiA+ID4gPiA+IE1hbGkgUGFudGhvciBDU0Yga2VybmVs
IGRyaXZlci4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhlIE1hbGkgQ1NGIEdQVXMgY29t
ZSB3aXRoIHRoZSBzdXBwb3J0IGZvciBwcm90ZWN0ZWQgbW9kZSBleGVjdXRpb24gYXQgdGhlDQo+
ID4gPiA+ID4gPiBIVyBsZXZlbC4gVGhpcyBmZWF0dXJlIHJlcXVpcmVzIHR3byBtYWluIGNoYW5n
ZXMgaW4gdGhlIGtlcm5lbCBkcml2ZXI6DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IDEpIENv
bmZpZ3VyZSB0aGUgR1BVIHdpdGggYSBwcm90ZWN0ZWQgYnVmZmVyLiBUaGUgc3lzdGVtIG11c3Qg
cHJvdmlkZSBhIERNQQ0KPiA+ID4gPiA+ID4gICAgaGVhcCBmcm9tIHdoaWNoIHRoZSBkcml2ZXIg
Y2FuIGFsbG9jYXRlIGEgcHJvdGVjdGVkIGJ1ZmZlci4NCj4gPiA+ID4gPiA+ICAgIEl0IGNhbiBi
ZSBhIGNhcnZlZC1vdXQgbWVtb3J5IG9yIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBwcm90ZWN0ZWQg
bWVtb3J5IHJlZ2lvbi4NCj4gPiA+ID4gPiA+ICAgIFNvbWUgc3lzdGVtIGluY2x1ZGVzIGEgdHJ1
c3RlZCBGVyB3aGljaCBpcyBpbiBjaGFyZ2Ugb2YgdGhlIHByb3RlY3RlZCBtZW1vcnkuDQo+ID4g
PiA+ID4gPiAgICBTaW5jZSB0aGlzIHByb2JsZW0gaXMgaW50ZWdyYXRpb24gc3BlY2lmaWMsIHRo
ZSBNYWxpIFBhbnRob3IgQ1NGIGtlcm5lbA0KPiA+ID4gPiA+ID4gICAgZHJpdmVyIG11c3QgaW1w
b3J0IHRoZSBwcm90ZWN0ZWQgbWVtb3J5IGZyb20gYSBkZXZpY2Ugc3BlY2lmaWMgZXhwb3J0ZXIu
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2h5IGRvIHlvdSBuZWVkIGEgaGVhcCBmb3IgaXQgaW4g
dGhlIGZpcnN0IHBsYWNlPyBNeSB1bmRlcnN0YW5kaW5nIG9mDQo+ID4gPiA+ID4geW91ciBzZXJp
ZXMgaXMgdGhhdCB5b3UgaGF2ZSBhIGNhcnZlZCBvdXQgbWVtb3J5IHJlZ2lvbiBzb21ld2hlcmUs
IGFuZA0KPiA+ID4gPiA+IHlvdSB3YW50IHRvIGFsbG9jYXRlIGZyb20gdGhhdCBjYXJ2ZWQgb3V0
IG1lbW9yeSByZWdpb24geW91ciBidWZmZXJzLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEhvdyBp
cyB0aGF0IGFueSBkaWZmZXJlbnQgZnJvbSB1c2luZyBhIHJlc2VydmVkLW1lbW9yeSByZWdpb24s
IGFkZGluZw0KPiA+ID4gPiA+IHRoZSByZXNlcnZlZC1tZW1vcnkgcHJvcGVydHkgdG8gdGhlIEdQ
VSBkZXZpY2UgYW5kIGRvaW5nIGFsbCB5b3VyDQo+ID4gPiA+ID4gYWxsb2NhdGlvbiB0aHJvdWdo
IHRoZSB1c3VhbCBkbWFfYWxsb2NfKiBBUEk/DQo+ID4gPiA+IA0KPiA+ID4gPiBIb3cgZG8geW91
IHRoZW4gbXVsdGlwbGV4IHRoaXMgcmVnaW9uIHNvIGl0IGNhbiBiZSBzaGFyZWQgYmV0d2Vlbg0K
PiA+ID4gPiBHUFUvQ2FtZXJhL0Rpc3BsYXkvQ29kZWMgZHJpdmVycyBhbmQgYWxzbyB1c2Vyc3Bh
Y2UgPw0KPiA+ID4gDQo+ID4gPiBZb3UgY291bGQgcG9pbnQgYWxsIHRoZSBkZXZpY2VzIHRvIHRo
ZSBzYW1lIHJlc2VydmVkIG1lbW9yeSByZWdpb24sIGFuZA0KPiA+ID4gdGhleSB3b3VsZCBhbGwg
YWxsb2NhdGUgZnJvbSB0aGVyZSwgaW5jbHVkaW5nIGZvciB0aGVpciB1c2Vyc3BhY2UtZmFjaW5n
DQo+ID4gPiBhbGxvY2F0aW9ucy4NCj4gPiANCj4gPiBJIGdldCB0aGF0IHVzaW5nIG1lbW9yeSBy
ZWdpb24gaXMgc29tZXdoYXQgbW9yZSBvZiBhbiBIVyBkZXNjcmlwdGlvbiwgYW5kDQo+ID4gYWxp
Z25lZCB3aXRoIHdoYXQgYSBEVCBpcyBzdXBwb3NlZCB0byBkZXNjcmliZS4gT25lIG9mIHRoZSBj
aGFsbGVuZ2UgaXMgdGhhdA0KPiA+IE1lZGlhdGVrIGhlYXAgcHJvcG9zYWwgZW5kdXAgY2FsbGlu
ZyBpbnRvIHRoZWlyIFRFRSwgbWVhbmluZyBrbm93aW5nIHRoZSByZWdpb24NCj4gPiBpcyBub3Qg
dGhhdCB1c2VmdWwuIFlvdSBhY3R1YWxseSBuZWVkIHRoZSBURUUgQVBQIGd1aWQgYW5kIGl0cyBJ
UEMgcHJvdG9jb2wuIElmDQo+ID4gd2UgY2FuIGRlbGwgZHJpdmVycyB0byB1c2UgYSBoZWFkIGlu
c3RlYWQsIHdlIGNhbiBhYnN0cmFjdCB0aGF0IFNvQyBzcGVjaWZpYw0KPiA+IGNvbXBsZXhpdHku
IEkgYmVsaWV2ZSBlYWNoIGFsbG9jYXRlZCBhZGRyZXNzZWQgaGFzIHRvIGJlIG1hcHBlZCB0byBh
IHpvbmUsIGFuZA0KPiA+IHRoYXQgY2FuIG9ubHkgYmUgZG9uZSBpbiB0aGUgc2VjdXJlIGFwcGxp
Y2F0aW9uLiBJIGNhbiBpbWFnaW5lIHNpbWlsYXIgbmVlZHMNCj4gPiB3aGVuIHRoZSBwcm90ZWN0
aW9uIGlzIGRvbmUgdXNpbmcgc29tZSBzb3J0IG9mIGEgVk0gLyBoeXBlcnZpc29yLg0KPiA+IA0K
PiA+IE5pY29sYXMNCj4gPiANCj4gDQo+IFRoZSBpZGVhIGluIHRoaXMgZGVzaWduIGlzIHRvIGFi
c3RyYWN0IHRoZSBoZWFwIG1hbmFnZW1lbnQgZnJvbSB0aGUNCj4gUGFudGhvciBrZXJuZWwgZHJp
dmVyICh3aGljaCBjb25zdW1lcyBhIERNQSBidWZmZXIgZnJvbSBpdCkuDQo+IA0KPiBJbiBhIHN5
c3RlbSwgYW4gaW50ZWdyYXRvciB3b3VsZCBoYXZlIGltcGxlbWVudGVkIGEgc2VjdXJlIGhlYXAg
ZHJpdmVyLA0KPiBhbmQgY291bGQgYmUgYmFzZWQgb24gVEVFIG9yIGEgY2FydmVkLW91dCBtZW1v
cnkgd2l0aCByZXN0cmljdGVkIGFjY2VzcywNCj4gb3IgZWxzZS4gVGhpcyBoZWFwIGRyaXZlciB3
b3VsZCBiZSByZXNwb25zaWJsZSBvZiBpbXBsZW1lbnRpbmcgdGhlDQo+IGxvZ2ljIHRvOiBhbGxv
Y2F0ZSwgZnJlZSwgcmVmY291bnQsIGV0Yy4NCj4gDQo+IFRoZSBoZWFwIHdvdWxkIGJlIHJldHJp
ZXZlZCBieSB0aGUgUGFudGhvciBrZXJuZWwgZHJpdmVyIGluIG9yZGVyIHRvDQo+IGFsbG9jYXRl
IHByb3RlY3RlZCBtZW1vcnkgdG8gbG9hZCB0aGUgRlcgYW5kIGFsbG93IHRoZSBHUFUgdG8gZW50
ZXIvZXhpdA0KPiBwcm90ZWN0ZWQgbW9kZS4gVGhpcyBtZW1vcnkgd291bGQgbm90IGJlbG9uZyB0
byBhIHVzZXIgc3BhY2UgcHJvY2Vzcy4NCj4gVGhlIGRyaXZlciBhbGxvY2F0ZXMgaXQgYXQgdGhl
IHRpbWUgb2YgbG9hZGluZyB0aGUgRlcgYW5kIGluaXRpYWxpemF0aW9uDQo+IG9mIHRoZSBHUFUg
SFcuIFRoaXMgaXMgYSBkZXZpY2UgZ2xvYmFsbHkgb3duZWQgcHJvdGVjdGVkIG1lbW9yeS4NCg0K
VGhpcyB1c2UgY2FzZSBhbHNvIGFwcGxpZXMgd2VsbCBmb3IgY29kZWMuIFRoZSBNZWRpYXRlayBT
Q1AgZmlybXdhcmUgbmVlZHMgdG8gYmUNCmxvYWRlZCB3aXRoIGEgcmVzdHJpY3RlZCBtZW1vcnkg
dG9vLCBpdHMgYSB2ZXJ5IHNpbWlsYXIgc2NlbmFyaW8sIHBsdXMgTWVkaWF0ZWsNCmNoaXBzIG9m
dGVuIGluY2x1ZGUgYSBNYWxpLiBPbiB0b3Agb2YgdGhhdCwgVjRMMiBjb2RlY3MgKGluIGdlbmVy
YWwpIGRvIG5lZWQgdG8NCmFsbG9jYXRlIGludGVybmFsIHNjcmF0Y2ggYnVmZmVyIGZvciB0aGUg
SVAgdG8gd3JpdGUgdG8gZm9yIHRoaW5ncyBsaWtlIG1vdGlvbg0KdmVjdG9ycywgcmVjb25zdHJ1
Y3Rpb24gZnJhbWVzLCBlbnRyb3B5IHN0YXRpc3RpY3MsIGV0Yy4gVGhlIElQIHdpbGwgb25seSBi
ZQ0KYWJsZSB0byB3cml0ZSBpZiB0aGUgbWVtb3J5IGlzIHJlc3RyaWN0ZWQuDQoNCk5pY29sYXMN
Cg0KPiANCj4gV2hlbiBJIGNhbWUgYWNyb3NzIHRoaXMgcGF0Y2ggc2VyaWVzOg0KPiAtDQo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMzA5MTEwMjMwMzguMzA2NDktMS15b25nLnd1
QG1lZGlhdGVrLmNvbS8jdA0KPiBJIGZvdW5kIGl0IGNvdWxkIGhlbHAgYWJzdHJhY3QgdGhlIGlu
dGVyZmFjZSBiZXR3ZWVuIHRoZSBzZWN1cmUgaGVhcCBhbmQNCj4gdGhlIGludGVncmF0aW9uIG9m
IHByb3RlY3RlZCBtZW1vcnkgaW4gUGFudGhvci4NCj4gDQo+IEEga2VybmVsIGRyaXZlciB3b3Vs
ZCBoYXZlIHRvIGZpbmQgdGhlIGhlYXA6IGBkbWFfaGVhcF9maW5kKClgLCB0aGVuDQo+IHJlcXVl
c3QgYWxsb2NhdGlvbiBvZiBhIERNQSBidWZmZXIgZnJvbSBpdC4gVGhlIGhlYXAgZHJpdmVyIHdv
dWxkIGRlYWwNCj4gd2l0aCB0aGUgc3BlY2lmaXRpZXMgb2YgdGhlIHByb3RlY3RlZCBtZW1vcnkg
b24gdGhlIHN5c3RlbS4NCj4gDQo+ID4gPiANCj4gPiA+ID4gQWxzbywgaG93IHRoZSBzZWN1cmUg
bWVtb3J5IGlzIGFsbG9jdGVkIC8gb2J0YWluZWQgaXMgYSBwcm9jZXNzIHRoYXQNCj4gPiA+ID4g
Y2FuIHZhcnkgYSBsb3QgYmV0d2VlbiBTb0MsIHNvIGltcGxlbWVudGF0aW9uIGRldGFpbHMgYXNz
dW1wdGlvbg0KPiA+ID4gPiBzaG91bGQgbm90IGJlIGNvZGVkIGluIHRoZSBkcml2ZXIuDQo+ID4g
PiANCj4gPiA+IEJ1dCB5ZWFoLCB3ZSBhZ3JlZSB0aGVyZSwgaXQncyBhbHNvIHRoZSBwb2ludCBJ
IHdhcyB0cnlpbmcgdG8gbWFrZSA6KQ0KPiA+ID4gDQo+ID4gPiBNYXhpbWUNCj4gPiANCj4gDQo+
IEFncmVlIHdpdGggeW91ciBwb2ludCwgdGhlIFBhbnRob3Iga2VybmVsIGRyaXZlciBtYXkgbm90
IGJlIGF3YXJlIG9mIHRoZQ0KPiBoZWFwIG1hbmFnZW1lbnQgbG9naWMuIEFzIGFuIGFsdGVybmF0
aXZlIHRvIHRoZSBETUEgaGVhcCBBUEkgdXNlZCBoZXJlLA0KPiBJIGFsc28gdHJpZWQgdG8gZXhw
b3NlIHRoZSBoZWFwIGJ5IHBhc3NpbmcgdGhlIHBoYW5kbGUgb2YgYSAiaGVhcCINCj4gZGV2aWNl
IHRvIFBhbnRob3IuIFRoZSByZWZlcmVuY2UgdG8gdGhlIERNQSBoZWFwIHdhcyBzdG9yZWQgYXMg
YSBwcml2YXRlDQo+IGRhdGEgb2YgdGhlIGhlYXAgZGV2aWNlIGFzIGEgbmV3IHR5cGU6IGBzdHJ1
Y3QgZG1hX2hlYXBfaW1wb3J0X2luZm9gLA0KPiBzaW1pbGFyIHRvIHRoZSBleGlzdGluZyB0eXBl
OiBgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvYC4NCj4gVGhpcyBtYWRlIG1lIHRoaW5rIGl0
IGNvdWxkIGJlIHByb2JsZW1hdGljLCBhcyB0aGUgcHJpdmF0ZSBkYXRhIHR5cGUNCj4gd291bGQg
aGF2ZSB0byBiZSBjYXN0IGJlZm9yZSBhY2Nlc3NpbmcgaXQgZnJvbSB0aGUgaW1wb3J0ZXIgZHJp
dmVyLiBJDQo+IHdvcnJpZWQgYWJvdXQgYSBtaXMtdXNlIG9mIHRoZSB0eXBlcyB3aXRoIHRoaXMg
YXBwcm9hY2guDQo+IA0KPiBSZWdhcmRzLA0KPiBGbG9yZW50DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
