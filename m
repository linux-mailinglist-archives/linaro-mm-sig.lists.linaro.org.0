Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBA0A29867
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 19:07:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE3C643E83
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 18:07:41 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 32B783E8C8
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Feb 2025 18:07:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=AlGPIiyr;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.160.170) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-467a37a2a53so1188711cf.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Feb 2025 10:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738778848; x=1739383648; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5a3g63YXuRyBGyCYvHoCZXHBrCt33UAX5/d9X21sMZ4=;
        b=AlGPIiyrG18dTTOxZC3UlR3fuP1VgTJ1oTDrfYh2/vrHBV6kEFdTgMS7+fLJAuilx5
         kNK5K8yxukHCU7fQs2CeAMN73v9eale+Ec3Qks9gR8G/8TIL3dxt10DZ4GOohmG/MUUu
         t7xcJSwT/Nr6vJmesuQusWWIMe/MIQzGFuxKP9kfY2OMbVkuNCPdnGBCh9XYO0yOOwEo
         m3o9AILihddQ31jtGkw45HLVQS40qnc7pkJGRR+vLHUZqzI89GZRZcVLlNMRillQmmu8
         w1tRCN7CV0LWs522IsZOcjQ3wRvXTPItgEu+WpEsgmV8n/nJsPWPp6/NLxhKdjee9wav
         gWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738778848; x=1739383648;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5a3g63YXuRyBGyCYvHoCZXHBrCt33UAX5/d9X21sMZ4=;
        b=gSz5C+zRV6Gct0JPUw8obMJKK2q8DI1a2+mtAkjwZANfgAA1sT5ct2dY7JirLwIARX
         LjnXkfEw5d27nXjyVL5LUHB97u1bWtTSs63mZEeSVNSMBLJZYSBArqZoMUiZvpTGnmn0
         wuZsTQw5exLTtrcp42tM0OQ43YQgH4/myKRCkY5ANgB0807VsJg414Y7Tkqvbugsan5j
         8xodcY6J4uaC11oLtPqtxZSTPiACO7pL1UcC9QvkpN2bVey7VONhBRKuEFdE2vKH3DK1
         OZrH2WdcRGclK8PCtBHpdv2FZ7eNmAoPKkOusD15w7c33TyGemS7l6ZbI0rDPW9fO4cZ
         grKg==
X-Forwarded-Encrypted: i=1; AJvYcCVgfnJ1GogMXK7AWW9zmpboMbEILEB/4w7JMt/4bw+pxhcyUJ5Q+RZ8mbReBb15nQivPggDxI9euCv6P76q@lists.linaro.org
X-Gm-Message-State: AOJu0YxAaYcDthfzrkJjiYruw0PDk9GdzrK3Dn6630ie3A2+M6+3zWZP
	Nw33DSZR6KNXuMn9r/0fDC0vO6lwSZR8SQ6eCNBldtqyXf3VLi8rNESlW0ULtII=
X-Gm-Gg: ASbGncvehHmi0LUHJPKEDGa4/IVsFlHzJH+Eo8qnfVq4MsskRisKSaCI11apaupzsCG
	ZnI1knBdwchzNHSgMZ+BqmpxIMvbbyXhL0HQ7ijWpZQoLNgp6eHuoYbFe7IWW+aOKpnO7+RerGO
	kb67Y58kchif3hnAuD70P/zcLuUjlLPcyT0HSoAP72DD6LcX3QaaI7aV7Yo5tIrxBjuqKpuA9pE
	4ANQf9RejX+sIvbh5iJrv6TkjvtpSJMg/iNkR9nleOiayabcgDmU8aGDOUYiTzcArki426vzH2e
	gaWAECZeAuAf7F6H
X-Google-Smtp-Source: AGHT+IEo4hXzx1g4KENBMeo2s9vL7H7kP3tcfvoRUkgZj0tj3tMn7WAB4E53kizdrimAnj8XyGNu6g==
X-Received: by 2002:ac8:7e93:0:b0:467:6833:e30c with SMTP id d75a77b69052e-470281e8607mr53959051cf.30.1738778847693;
        Wed, 05 Feb 2025 10:07:27 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4702c56c62bsm7919921cf.28.2025.02.05.10.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 10:07:27 -0800 (PST)
Message-ID: <9b5104631f827fe44ad1030c971c72fba9a8ac90.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>
Date: Wed, 05 Feb 2025 13:07:25 -0500
In-Reply-To: <20250205-robust-tall-parrot-69baf7@houat>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
	 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
	 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
	 <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
	 <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
	 <c856a7059171bcc6afd6d829c6c025882855778b.camel@ndufresne.ca>
	 <20250205-robust-tall-parrot-69baf7@houat>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 32B783E8C8
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.160.170:from]
Message-ID-Hash: JKQEKQ2UDX4NEG6KTA3JO6QHKEPYESKT
X-Message-ID-Hash: JKQEKQ2UDX4NEG6KTA3JO6QHKEPYESKT
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
 , linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JKQEKQ2UDX4NEG6KTA3JO6QHKEPYESKT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMDUgZsOpdnJpZXIgMjAyNSDDoCAxNTo1MyArMDEwMCwgTWF4aW1lIFJpcGFy
ZCBhIMOpY3JpdMKgOg0KPiBPbiBUdWUsIEZlYiAwNCwgMjAyNSBhdCAwMToyMjo1OFBNIC0wNTAw
LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+IExlIGx1bmRpIDAzIGbDqXZyaWVyIDIwMjUg
w6AgMTY6NDMgKzAwMDAsIEZsb3JlbnQgVG9tYXNpbiBhIMOpY3JpdMKgOg0KPiA+ID4gSGkgTWF4
aW1lLCBOaWNvbGFzDQo+ID4gPiANCj4gPiA+IE9uIDMwLzAxLzIwMjUgMTc6NDcsIE5pY29sYXMg
RHVmcmVzbmUgd3JvdGU6DQo+ID4gPiA+IExlIGpldWRpIDMwIGphbnZpZXIgMjAyNSDDoCAxNzoz
OCArMDEwMCwgTWF4aW1lIFJpcGFyZCBhIMOpY3JpdMKgOg0KPiA+ID4gPiA+IEhpIE5pY29sYXMs
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gT24gVGh1LCBKYW4gMzAsIDIwMjUgYXQgMTA6NTk6NTZB
TSAtMDUwMCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToNCj4gPiA+ID4gPiA+IExlIGpldWRpIDMw
IGphbnZpZXIgMjAyNSDDoCAxNDo0NiArMDEwMCwgTWF4aW1lIFJpcGFyZCBhIMOpY3JpdMKgOg0K
PiA+ID4gPiA+ID4gPiBIaSwNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEkgc3RhcnRl
ZCB0byByZXZpZXcgaXQsIGJ1dCBpdCdzIHByb2JhYmx5IGJlc3QgdG8gZGlzY3VzcyBpdCBoZXJl
Lg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gT24gVGh1LCBKYW4gMzAsIDIwMjUgYXQg
MDE6MDg6NTZQTSArMDAwMCwgRmxvcmVudCBUb21hc2luIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+
IEhpLA0KPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+IFRoaXMgaXMgYSBwYXRjaCBz
ZXJpZXMgY292ZXJpbmcgdGhlIHN1cHBvcnQgZm9yIHByb3RlY3RlZCBtb2RlIGV4ZWN1dGlvbiBp
bg0KPiA+ID4gPiA+ID4gPiA+IE1hbGkgUGFudGhvciBDU0Yga2VybmVsIGRyaXZlci4NCj4gPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBUaGUgTWFsaSBDU0YgR1BVcyBjb21lIHdpdGgg
dGhlIHN1cHBvcnQgZm9yIHByb3RlY3RlZCBtb2RlIGV4ZWN1dGlvbiBhdCB0aGUNCj4gPiA+ID4g
PiA+ID4gPiBIVyBsZXZlbC4gVGhpcyBmZWF0dXJlIHJlcXVpcmVzIHR3byBtYWluIGNoYW5nZXMg
aW4gdGhlIGtlcm5lbCBkcml2ZXI6DQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4g
MSkgQ29uZmlndXJlIHRoZSBHUFUgd2l0aCBhIHByb3RlY3RlZCBidWZmZXIuIFRoZSBzeXN0ZW0g
bXVzdCBwcm92aWRlIGEgRE1BDQo+ID4gPiA+ID4gPiA+ID4gICAgaGVhcCBmcm9tIHdoaWNoIHRo
ZSBkcml2ZXIgY2FuIGFsbG9jYXRlIGEgcHJvdGVjdGVkIGJ1ZmZlci4NCj4gPiA+ID4gPiA+ID4g
PiAgICBJdCBjYW4gYmUgYSBjYXJ2ZWQtb3V0IG1lbW9yeSBvciBkeW5hbWljYWxseSBhbGxvY2F0
ZWQgcHJvdGVjdGVkIG1lbW9yeSByZWdpb24uDQo+ID4gPiA+ID4gPiA+ID4gICAgU29tZSBzeXN0
ZW0gaW5jbHVkZXMgYSB0cnVzdGVkIEZXIHdoaWNoIGlzIGluIGNoYXJnZSBvZiB0aGUgcHJvdGVj
dGVkIG1lbW9yeS4NCj4gPiA+ID4gPiA+ID4gPiAgICBTaW5jZSB0aGlzIHByb2JsZW0gaXMgaW50
ZWdyYXRpb24gc3BlY2lmaWMsIHRoZSBNYWxpIFBhbnRob3IgQ1NGIGtlcm5lbA0KPiA+ID4gPiA+
ID4gPiA+ICAgIGRyaXZlciBtdXN0IGltcG9ydCB0aGUgcHJvdGVjdGVkIG1lbW9yeSBmcm9tIGEg
ZGV2aWNlIHNwZWNpZmljIGV4cG9ydGVyLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4g
V2h5IGRvIHlvdSBuZWVkIGEgaGVhcCBmb3IgaXQgaW4gdGhlIGZpcnN0IHBsYWNlPyBNeSB1bmRl
cnN0YW5kaW5nIG9mDQo+ID4gPiA+ID4gPiA+IHlvdXIgc2VyaWVzIGlzIHRoYXQgeW91IGhhdmUg
YSBjYXJ2ZWQgb3V0IG1lbW9yeSByZWdpb24gc29tZXdoZXJlLCBhbmQNCj4gPiA+ID4gPiA+ID4g
eW91IHdhbnQgdG8gYWxsb2NhdGUgZnJvbSB0aGF0IGNhcnZlZCBvdXQgbWVtb3J5IHJlZ2lvbiB5
b3VyIGJ1ZmZlcnMuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBIb3cgaXMgdGhhdCBh
bnkgZGlmZmVyZW50IGZyb20gdXNpbmcgYSByZXNlcnZlZC1tZW1vcnkgcmVnaW9uLCBhZGRpbmcN
Cj4gPiA+ID4gPiA+ID4gdGhlIHJlc2VydmVkLW1lbW9yeSBwcm9wZXJ0eSB0byB0aGUgR1BVIGRl
dmljZSBhbmQgZG9pbmcgYWxsIHlvdXINCj4gPiA+ID4gPiA+ID4gYWxsb2NhdGlvbiB0aHJvdWdo
IHRoZSB1c3VhbCBkbWFfYWxsb2NfKiBBUEk/DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEhv
dyBkbyB5b3UgdGhlbiBtdWx0aXBsZXggdGhpcyByZWdpb24gc28gaXQgY2FuIGJlIHNoYXJlZCBi
ZXR3ZWVuDQo+ID4gPiA+ID4gPiBHUFUvQ2FtZXJhL0Rpc3BsYXkvQ29kZWMgZHJpdmVycyBhbmQg
YWxzbyB1c2Vyc3BhY2UgPw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFlvdSBjb3VsZCBwb2ludCBh
bGwgdGhlIGRldmljZXMgdG8gdGhlIHNhbWUgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbiwgYW5kDQo+
ID4gPiA+ID4gdGhleSB3b3VsZCBhbGwgYWxsb2NhdGUgZnJvbSB0aGVyZSwgaW5jbHVkaW5nIGZv
ciB0aGVpciB1c2Vyc3BhY2UtZmFjaW5nDQo+ID4gPiA+ID4gYWxsb2NhdGlvbnMuDQo+ID4gPiA+
IA0KPiA+ID4gPiBJIGdldCB0aGF0IHVzaW5nIG1lbW9yeSByZWdpb24gaXMgc29tZXdoYXQgbW9y
ZSBvZiBhbiBIVyBkZXNjcmlwdGlvbiwgYW5kDQo+ID4gPiA+IGFsaWduZWQgd2l0aCB3aGF0IGEg
RFQgaXMgc3VwcG9zZWQgdG8gZGVzY3JpYmUuIE9uZSBvZiB0aGUgY2hhbGxlbmdlIGlzIHRoYXQN
Cj4gPiA+ID4gTWVkaWF0ZWsgaGVhcCBwcm9wb3NhbCBlbmR1cCBjYWxsaW5nIGludG8gdGhlaXIg
VEVFLCBtZWFuaW5nIGtub3dpbmcgdGhlIHJlZ2lvbg0KPiA+ID4gPiBpcyBub3QgdGhhdCB1c2Vm
dWwuIFlvdSBhY3R1YWxseSBuZWVkIHRoZSBURUUgQVBQIGd1aWQgYW5kIGl0cyBJUEMgcHJvdG9j
b2wuIElmDQo+ID4gPiA+IHdlIGNhbiBkZWxsIGRyaXZlcnMgdG8gdXNlIGEgaGVhZCBpbnN0ZWFk
LCB3ZSBjYW4gYWJzdHJhY3QgdGhhdCBTb0Mgc3BlY2lmaWMNCj4gPiA+ID4gY29tcGxleGl0eS4g
SSBiZWxpZXZlIGVhY2ggYWxsb2NhdGVkIGFkZHJlc3NlZCBoYXMgdG8gYmUgbWFwcGVkIHRvIGEg
em9uZSwgYW5kDQo+ID4gPiA+IHRoYXQgY2FuIG9ubHkgYmUgZG9uZSBpbiB0aGUgc2VjdXJlIGFw
cGxpY2F0aW9uLiBJIGNhbiBpbWFnaW5lIHNpbWlsYXIgbmVlZHMNCj4gPiA+ID4gd2hlbiB0aGUg
cHJvdGVjdGlvbiBpcyBkb25lIHVzaW5nIHNvbWUgc29ydCBvZiBhIFZNIC8gaHlwZXJ2aXNvci4N
Cj4gPiA+ID4gDQo+ID4gPiA+IE5pY29sYXMNCj4gPiA+ID4gDQo+ID4gPiANCj4gPiA+IFRoZSBp
ZGVhIGluIHRoaXMgZGVzaWduIGlzIHRvIGFic3RyYWN0IHRoZSBoZWFwIG1hbmFnZW1lbnQgZnJv
bSB0aGUNCj4gPiA+IFBhbnRob3Iga2VybmVsIGRyaXZlciAod2hpY2ggY29uc3VtZXMgYSBETUEg
YnVmZmVyIGZyb20gaXQpLg0KPiA+ID4gDQo+ID4gPiBJbiBhIHN5c3RlbSwgYW4gaW50ZWdyYXRv
ciB3b3VsZCBoYXZlIGltcGxlbWVudGVkIGEgc2VjdXJlIGhlYXAgZHJpdmVyLA0KPiA+ID4gYW5k
IGNvdWxkIGJlIGJhc2VkIG9uIFRFRSBvciBhIGNhcnZlZC1vdXQgbWVtb3J5IHdpdGggcmVzdHJp
Y3RlZCBhY2Nlc3MsDQo+ID4gPiBvciBlbHNlLiBUaGlzIGhlYXAgZHJpdmVyIHdvdWxkIGJlIHJl
c3BvbnNpYmxlIG9mIGltcGxlbWVudGluZyB0aGUNCj4gPiA+IGxvZ2ljIHRvOiBhbGxvY2F0ZSwg
ZnJlZSwgcmVmY291bnQsIGV0Yy4NCj4gPiA+IA0KPiA+ID4gVGhlIGhlYXAgd291bGQgYmUgcmV0
cmlldmVkIGJ5IHRoZSBQYW50aG9yIGtlcm5lbCBkcml2ZXIgaW4gb3JkZXIgdG8NCj4gPiA+IGFs
bG9jYXRlIHByb3RlY3RlZCBtZW1vcnkgdG8gbG9hZCB0aGUgRlcgYW5kIGFsbG93IHRoZSBHUFUg
dG8gZW50ZXIvZXhpdA0KPiA+ID4gcHJvdGVjdGVkIG1vZGUuIFRoaXMgbWVtb3J5IHdvdWxkIG5v
dCBiZWxvbmcgdG8gYSB1c2VyIHNwYWNlIHByb2Nlc3MuDQo+ID4gPiBUaGUgZHJpdmVyIGFsbG9j
YXRlcyBpdCBhdCB0aGUgdGltZSBvZiBsb2FkaW5nIHRoZSBGVyBhbmQgaW5pdGlhbGl6YXRpb24N
Cj4gPiA+IG9mIHRoZSBHUFUgSFcuIFRoaXMgaXMgYSBkZXZpY2UgZ2xvYmFsbHkgb3duZWQgcHJv
dGVjdGVkIG1lbW9yeS4NCj4gPiANCj4gPiBUaGlzIHVzZSBjYXNlIGFsc28gYXBwbGllcyB3ZWxs
IGZvciBjb2RlYy4gVGhlIE1lZGlhdGVrIFNDUCBmaXJtd2FyZSBuZWVkcyB0byBiZQ0KPiA+IGxv
YWRlZCB3aXRoIGEgcmVzdHJpY3RlZCBtZW1vcnkgdG9vLCBpdHMgYSB2ZXJ5IHNpbWlsYXIgc2Nl
bmFyaW8sIHBsdXMgTWVkaWF0ZWsNCj4gPiBjaGlwcyBvZnRlbiBpbmNsdWRlIGEgTWFsaS4gT24g
dG9wIG9mIHRoYXQsIFY0TDIgY29kZWNzIChpbiBnZW5lcmFsKSBkbyBuZWVkIHRvDQo+ID4gYWxs
b2NhdGUgaW50ZXJuYWwgc2NyYXRjaCBidWZmZXIgZm9yIHRoZSBJUCB0byB3cml0ZSB0byBmb3Ig
dGhpbmdzIGxpa2UgbW90aW9uDQo+ID4gdmVjdG9ycywgcmVjb25zdHJ1Y3Rpb24gZnJhbWVzLCBl
bnRyb3B5IHN0YXRpc3RpY3MsIGV0Yy4gVGhlIElQIHdpbGwgb25seSBiZQ0KPiA+IGFibGUgdG8g
d3JpdGUgaWYgdGhlIG1lbW9yeSBpcyByZXN0cmljdGVkLg0KPiANCj4gQlRXLCBpbiBzdWNoIGEg
Y2FzZSwgZG8gdGhlIHNjcmF0Y2ggYnVmZmVycyBuZWVkIHRvIGJlDQo+IHByb3RlY3RlZC9zZWN1
cmUvd2hhdGV2ZXIgdG9vLCBvciB3b3VsZCBjb2RlY3MgYmUgYWJsZSB0byB1c2UgYW55IGJ1ZmZl
cg0KPiBhcyBhIHNjcmF0Y2ggYnVmZmVyPw0KDQpUaGV5IG5lZWQgdG8gYmUgcHJvdGVjdGVkIHll
cy4gSXRzIG5vdCB2ZXJ5IGZpbmUgZ3JhaW5lZCBvbiB0aGUgcGxhdGZvcm0gSSB3b3JrDQpvbi4g
V2hlbiB0aGF0IHByb3RlY3Rpb24gaXMgZW5hYmxlZCwgdGhlIGRlY29kZXIgY2FuIG9ubHkgcmVh
ZCBhbmQgd3JpdGUgZnJvbQ0KcHJvdGVjdGVkIG1lbW9yeS4gSSBrbm93IHRoZXJlIGlzIHBsYXRm
b3JtIHdlcmUgaXQgY2FuIHJlYWQgZnJvbSBib3RoLCBidXQNCmdlbmVyYWxseSBhbGwgSU9zIHJl
Z2FyZGxlc3Mgd2hhdCB0aGV5IGFyZSB1c2VkIGZvciBlbmR1cCB3aXRoIHRoZSBzYW1lDQpyZXN0
cmljdGlvbi4NCg0KTmljb2xhcw0KDQpwLnMuIHNpbmNlIEtocm9ub3Mgc2VlbXMgdG8gaGF2ZSBh
ZG9wdGVkICJwcm90ZWN0ZWQiLCBwZXJoYXBzIGl0IHdpbGwgYmUgYWR2aXNlZA0KdG8gZ28gZm9y
IHRoYXQgaW4gdGhlIGVuZC4NCg0KPiANCj4gTWF4aW1lDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
