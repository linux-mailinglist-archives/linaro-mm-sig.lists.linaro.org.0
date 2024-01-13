Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCDC82C8AB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 02:23:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C76243FA6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 01:23:43 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id C69143EFE9
	for <linaro-mm-sig@lists.linaro.org>; Sat, 13 Jan 2024 01:23:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HqTxGCSU;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40e68a3641dso18945e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 17:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705109001; x=1705713801; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mM/RZNODygz3tcx3iBW5QQla7ILOiDn5Z5q0jGfqFBA=;
        b=HqTxGCSUXLGw67CL1Oxij4nhX6VzhjXbQLyK9kkUaXDjY6I17mpU/oYVPD5tjO2Hv2
         XsMtxEVcYo+qI01Xe4X7Diilsd04uRSqNtohtwrYSX+3czJG9Z6i/LbdNPGzkF2x93aN
         JQRgRq14Kxz9f0HS6sUoaIyPS+N/wbPfgCzsPykR6eMklejmdwyZ4dy42SJZdW6W9jzd
         StVv7FZQz7o2lSS3yN4qLHRCH52zKHrTVqzPjKf9X/wlzK0hlqSu6GocuWfbhvB7hqky
         zxa7XfalnTE8D8H35KzyXjP2Sj361RSQ9SXQ6IYldR8Xycgdcsiy9HYlFjk9hrPIYChr
         MrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705109001; x=1705713801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mM/RZNODygz3tcx3iBW5QQla7ILOiDn5Z5q0jGfqFBA=;
        b=PL7WMj3do3qm8xHzQokyzDR2QA1rIypWHGrBjTb7pzVAsZjmixpv+eBjlPJF4N7wpX
         k2TMaAgCWZPVH49/mReIVKIqVwv612HREpbZ9HB28WH4cobYBqpjCF8jxedkT6DyAz52
         8okWdMHLjjA2ha75+zyKlRPktIZI0B8Z6KAcHZa431oLuaJGllSWmnnOMK6YzJEfReFY
         Hc0fBjoIsXceLibRr87mjGofbE98gQb7xKVz5mgYG9W1DKEXz9WCkdH3+8dE8XBCfzqp
         rHVRoLNTywAWZONwl63mg/RKoDoHiPU4hWM56P08aEFAl5vZwVhgx/rrlk9B0zirYUPh
         1WeQ==
X-Gm-Message-State: AOJu0YyJGouzSEWAUyHMRP+XubyY0WEb84GKWpkiXusL8uua6cj1Dkec
	suuXxUW/Z/JAAhDe/S+q1V1k3GyLSxy/IFBD4vS8P2dJo3U=
X-Google-Smtp-Source: AGHT+IG/+qOlk4ymLnRUPXBnV0zsSF5F2DLjgpluok3fjIXdmyv0TwrSAfnNPRC7q4VbUcI/uz5Z7ZFuE7x5bsdIM1U=
X-Received: by 2002:a1c:721a:0:b0:40e:4990:d573 with SMTP id
 n26-20020a1c721a000000b0040e4990d573mr396698wmc.4.1705109000593; Fri, 12 Jan
 2024 17:23:20 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
 <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
 <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com> <CA+ddPcP9bgApNw_Nu7bxcV-oK_s3Bq1i5qun+vNSuRUO9tPEkA@mail.gmail.com>
In-Reply-To: <CA+ddPcP9bgApNw_Nu7bxcV-oK_s3Bq1i5qun+vNSuRUO9tPEkA@mail.gmail.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 12 Jan 2024 17:23:07 -0800
Message-ID: <CANDhNCrGxhHJLA2ct-iqemLAsQRt3C8m5=xAD3_dDdKH6Njrdg@mail.gmail.com>
To: Jeffrey Kardatzke <jkardatzke@google.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C69143EFE9
X-Spamd-Bar: ------
Message-ID-Hash: JQDEHQI534GLNOBCBSBAS4VXYB4YCYML
X-Message-ID-Hash: JQDEHQI534GLNOBCBSBAS4VXYB4YCYML
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQDEHQI534GLNOBCBSBAS4VXYB4YCYML/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgNDoxM+KAr1BNIEplZmZyZXkgS2FyZGF0emtlIDxqa2Fy
ZGF0emtlQGdvb2dsZS5jb20+IHdyb3RlOg0KPiBPbiBGcmksIEphbiAxMiwgMjAyNCBhdCAzOjUx
4oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBP
biBGcmksIEphbiAxMiwgMjAyNCBhdCAzOjI34oCvUE0gSmVmZnJleSBLYXJkYXR6a2UgPGprYXJk
YXR6a2VAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiBPbiBGcmksIEphbiAxMiwgMjAyNCBhdCAy
OjUy4oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gPiA+
IEkga25vdyBwYXJ0IG9mIHRoaXMgZWZmb3J0IGhlcmUgaXMgdG8gc3RhcnQgdG8gY2VudHJhbGl6
ZSBhbGwgdGhlc2UNCj4gPiA+ID4gdmVuZG9yIHNwZWNpZmljIHJlc3RyaWN0ZWQgYnVmZmVyIGlt
cGxlbWVudGF0aW9ucywgd2hpY2ggSSB0aGluayBpcw0KPiA+ID4gPiBncmVhdCwgYnV0IEkganVz
dCB3b3JyeSB0aGF0IGluIGRvaW5nIGl0IGluIHRoZSBkbWFidWYgaGVhcCBpbnRlcmZhY2UsDQo+
ID4gPiA+IGl0IGlzIGEgYml0IHRvbyB1c2VyLWZhY2luZy4gVGhlIGxpa2VsaWhvb2Qgb2YgZW5j
b2RpbmcgYSBwYXJ0aWN1bGFyDQo+ID4gPiA+IHNlbWFudGljIHRvIHRoZSBzaW5ndWxhciAicmVz
dHJpY3RlZF9oZWFwIiBuYW1lIHNlZW1zIGhpZ2guDQo+ID4gPg0KPiA+ID4gSW4gcGF0Y2ggIzUg
aXQgaGFzIHRoZSBhY3R1YWwgZHJpdmVyIGltcGxlbWVudGF0aW9uIGZvciB0aGUgTVRLIGhlYXAN
Cj4gPiA+IHRoYXQgaW5jbHVkZXMgdGhlIGhlYXAgbmFtZSBvZiAicmVzdHJpY3RlZF9tdGtfY20i
LCBzbyB0aGVyZSBzaG91bGRuJ3QNCj4gPiA+IGJlIGEgaGVhcCBuYW1lZCAicmVzdHJpY3RlZF9o
ZWFwIiB0aGF0J3MgYWN0dWFsbHkgZ2V0dGluZyBleHBvc2VkLiBUaGUNCj4gPg0KPiA+IEFoLCBJ
IGFwcHJlY2lhdGUgdGhhdCBjbGFyaWZpY2F0aW9uISBJbmRlZWQsIHlvdSdyZSByaWdodCB0aGUg
bmFtZSBpcw0KPiA+IHBhc3NlZCB0aHJvdWdoLiBBcG9sb2dpZXMgZm9yIG1pc3NpbmcgdGhhdCBk
ZXRhaWwuDQo+ID4NCj4gPiA+IHJlc3RyaWN0ZWRfaGVhcCBjb2RlIGlzIGEgZnJhbWV3b3JrLCBh
bmQgbm90IGEgZHJpdmVyIGl0c2VsZi4gIFVubGVzcw0KPiA+ID4gSSdtIG1pc3Npbmcgc29tZXRo
aW5nIGluIHRoaXMgcGF0Y2hzZXQuLi5idXQgdGhhdCdzIHRoZSB3YXkgaXQncw0KPiA+ID4gKnN1
cHBvc2VkKiB0byBiZS4NCj4gPg0KPiA+IFNvIEkgZ3Vlc3MgSSdtIG5vdCBzdXJlIEkgdW5kZXJz
dGFuZCB0aGUgYmVuZWZpdCBvZiB0aGUgZXh0cmENCj4gPiBpbmRpcmVjdGlvbi4gV2hhdCB0aGVu
IGRvZXMgdGhlIHJlc3RyaWN0ZWRfaGVhcC5jIGxvZ2ljIGl0c2VsZg0KPiA+IHByb3ZpZGU/DQo+
ID4gVGhlIGRtYWJ1ZiBoZWFwcyBmcmFtZXdvcmsgYWxyZWFkeSBwcm92aWRlcyBhIHdheSB0byBh
ZGQgaGVhcCBpbXBsZW1lbnRhdGlvbnMuDQo+DQo+IFNvIGluIHRoZSB2MSBwYXRjaHNldCwgaXQg
d2FzIGRvbmUgd2l0aCBqdXN0IGEgTWVkaWF0ZWsgc3BlY2lmaWMgaGVhcA0KPiB3aXRoIG5vIGZy
YW1ld29yayBvciBhYnN0cmFjdGlvbnMgZm9yIGFub3RoZXIgdmVuZG9yIHRvIGJ1aWxkIG9uIHRv
cA0KPiBvZi4gVGhlIGZlZWRiYWNrIHdhcyB0byBtYWtlIHRoaXMgbW9yZSBnZW5lcmljIHNpbmNl
IE1lZGlhdGVrIHdvbid0IGJlDQo+IHRoZSBvbmx5IHZlbmRvciB3aG8gd2FudHMgYSByZXN0cmlj
dGVkIGhlYXAuLndoaWNoIGlzIGhvdyBpdCBlbmRlZCB1cA0KPiBoZXJlLiBUaGVyZSB3YXMgbW9y
ZSBjb2RlIGluIHRoZSBmcmFtZXdvcmsgYmVmb3JlIHJlbGF0aW5nIHRvIFRFRQ0KPiBjYWxscywg
YnV0IHRoZW4gdGhhdCB3YXMgbW92ZWQgdG8gdGhlIHZlbmRvciBzcGVjaWZpYyBjb2RlIHNpbmNl
IG5vdA0KPiBhbGwgcmVzdHJpY3RlZCBoZWFwcyBhcmUgYWxsb2NhdGVkIHRocm91Z2ggYSBURUUu
DQoNClllYWguIEkgYXBvbG9naXplLCBhcyBJIGtub3cgaG93IGZydXN0cmF0aW5nIHRoZSBjb250
cmFkaWN0b3J5DQpmZWVkYmFjayBjYW4gYmUuIEkgZG9uJ3QgbWVhbiB0byBkZW1vdGl2YXRlLiA6
KA0KDQpJIHRoaW5rIGZvbGtzIHdvdWxkIHZlcnkgbXVjaCBsaWtlIHRvIHNlZSBjb25zb2xpZGF0
aW9uIGFyb3VuZCB0aGUNCnZhcmlvdXMgaW1wbGVtZW50YXRpb25zLCBhbmQgSSBhZ3JlZSENCkkg
anVzdCB3b3JyeSB0aGF0IGNyZWF0aW5nIHRoZSBjb21tb24gZnJhbWV3b3JrIGZvciB0aGlzIGNv
bmNlcHQgaW4gYQ0KZG1hYnVmIGhlYXBzIGRyaXZlciBpcyBtYXliZSB0b28gcGVyaXBoZXJhbC9j
bG9zZSB0byB1c2VybGFuZC4NCg0KPiBUaGlzIHdhcyBhbHNvIGRlc2lyYWJsZSBmb3IgdGhlIFY0
TDIgcGllY2VzIHNpbmNlIHRoZXJlJ3MgZ29pbmcgdG8gYmUNCj4gYSBWNEwyIGZsYWcgc2V0IHdo
ZW4gdXNpbmcgcmVzdHJpY3RlZCBkbWFfYnVmcyAoYW5kIGl0IHdhbnRzIHRvDQo+IHZhbGlkYXRl
IHRoYXQpLi4uLnNvIGluIG9yZGVyIHRvIGtlZXAgdGhhdCBtb3JlIGdlbmVyaWMsIHRoZXJlIHNo
b3VsZA0KPiBiZSBhIGhpZ2hlciBsZXZlbCBjb25jZXB0IG9mIHJlc3RyaWN0ZWQgZG1hX2J1ZnMg
dGhhdCBpc24ndCBzcGVjaWZpYw0KPiB0byBhIHNpbmdsZSB2ZW5kb3IuICBPbmUgb3RoZXIgdGhp
bmcgdGhhdCB3b3VsZCBpZGVhbGx5IGNvbWUgb3V0IG9mDQo+IHRoaXMgaXMgYSBjbGVhbmVyIHdh
eSB0byBjaGVjayB0aGF0IGEgZG1hX2J1ZiBpcyByZXN0cmljdGVkIG9yIG5vdC4NCg0KWWVhaC4g
SWYgdGhlcmUgaXMgYSBjbGVhciBtZWFuaW5nIHRvICJyZXN0cmljdGVkIiBoZXJlLCBJIHRoaW5r
IGhhdmluZw0KYSBxdWVyeSBtZXRob2Qgb24gdGhlIGRtYWJ1ZiBpcyByZWFzb25hYmxlLg0KTXkg
b25seSBmcmV0IGlzIGlmIHRoZSBtZWFuaW5nIGlzIHRvbyB2YWd1ZSBhbmQgdXNlcmxhbmQgc3Rh
cnRzDQpkZXBlbmRpbmcgb24gaXQgbWVhbmluZyB3aGF0IGl0IG1lYW50IGZvciB2ZW5kb3IxLCBi
dXQgZG9lc24ndCBtZWFuDQpmb3IgdmVuZG9yMi4NCg0KU28gd2UgbmVlZCBzb21lIGNsYXJpdHkg
aW4gd2hhdCAicmVzdHJpY3RlZCIgcmVhbGx5IG1lYW5zLiAgRm9yDQppbnN0YW5jZSwgaXQgYmVp
bmcgbm90IGNwdSBtYXBwYWJsZSB2cyBvdGhlciBwb3RlbnRpYWwgdmFyaWF0aW9ucyBsaWtlDQpi
ZWluZyBjcHUgbWFwcGFibGUsIGJ1dCBub3QgY3B1IGFjY2Vzc2libGUuICBPciBub3QgY3B1IG1h
cHBhYmxlLCBidXQNCm9ubHkgbWFwcGFibGUgYmV0d2VlbiBhIHNldCBvZiAzIGRldmljZXMgKFdo
aWNoIDMgZGV2aWNlcz8hIEhvdyBjYW4gd2UNCnRlbGw/KS4NCg0KQW5kIGlmIHRoZXJlIGlzIHZh
cmlhdGlvbiwgbWF5YmUgd2UgbmVlZCB0byBlbnVtZXJhdGUgdGhlIHR5cGVzIG9mDQoicmVzdHJp
Y3RlZCIgYnVmZmVycyBzbyB3ZSBjYW4gYmUgc3BlY2lmaWMgd2hlbiBpdCdzIHF1ZXJpZWQuDQoN
ClRoYXQncyB3aGVyZSBtYXliZSBoYXZpbmcgdGhlIGZyYW1ld29yayBmb3IgdGhpcyBiZSBtb3Jl
IGNlbnRyYWwgb3INCmNsb3NlciB0byB0aGUga2VybmVsIG1tIGNvZGUgYW5kIG5vdCBqdXN0IGEg
c3ViLXR5cGUgb2YgYSBkbWFidWYgaGVhcA0KZHJpdmVyIG1pZ2h0IGJlIGJldHRlcj8NCg0KPiBU
aGUgY3VycmVudCBWNEwyIHBhdGNoc2V0IGp1c3QgYXR0YWNoZXMgdGhlIGRtYV9idWYgYW5kIHRo
ZW4gY2hlY2tzIGlmDQo+IHRoZSBwYWdlIHRhYmxlIGlzIGVtcHR5Li4uLmFuZCBpZiBzbywgaXQn
cyByZXN0cmljdGVkLiBCdXQgbm93IEkgc2VlDQo+IHRoZXJlJ3Mgb3RoZXIgZmVlZGJhY2sgaW5k
aWNhdGluZyBhdHRhY2hpbmcgYSByZXN0cmljdGVkIGRtYV9idWYNCj4gc2hvdWxkbid0IGV2ZW4g
YmUgYWxsb3dlZCwgc28gd2UnbGwgbmVlZCBhbm90aGVyIHN0cmF0ZWd5IGZvcg0KPiBkZXRlY3Rp
bmcgdGhlbS4gSWRlYWxseSB0aGVyZSBpcyBzb21lIGZ1bmN0aW9uL21hY3JvIGxpa2UNCj4gaXNf
ZG1hX2J1Zl9yZXN0cmljdGVkKHN0cnVjdCBkbWFfYnVmKikgdGhhdCBjYW4gaW5kaWNhdGUgdGhh
dC4uLmJ1dCB3ZQ0KPiBoYXZlbid0IGNvbWUgdXAgd2l0aCBhIGdvb2Qgd2F5IHRvIGRvIHRoYXQg
eWV0IHdoaWNoIGRvZXNuJ3QgaW52b2x2ZQ0KPiBhZGRpbmcgYW5vdGhlciBmaWVsZCB0byBkbWFf
YnVmIG9yIHRvIGRtYV9idWZfb3BzIChhbmQgaWYgc3VjaCBhIHRoaW5nDQo+IHdvdWxkIGJlIGZp
bmUsIHRoZW4gT0suLi5idXQgSSBoYWQgYXNzdW1lZCB3ZSB3b3VsZCBnZXQgcHVzaGJhY2sgb24N
Cj4gbW9kaWZ5aW5nIGVpdGhlciBvZiB0aG9zZSBzdHJ1Y3RzKS4NCg0KSWYgdGhlcmUncyBhIG5l
ZWQgYW5kIHRoZSBiZXN0IHBsYWNlIHRvIHB1dCBzb21ldGhpbmcgaXMgaW4gdGhlDQpkbWFfYnVm
IG9yIGRtYV9idWZfb3BzLCB0aGF0J3Mgd2hlcmUgaXQgc2hvdWxkIGdvLiAgRm9sa3MgbWF5DQpy
ZWFzb25hYmx5IGRpc2FncmVlIGlmIGl0J3MgdGhlIGJlc3QgcGxhY2UgKHRoZXJlIG1heSBiZSB5
ZXQgYmV0dGVyDQpzcG90cyBmb3IgdGhlIHN0YXRlIHRvIHNpdCBpbiB0aGUgYWJzdHJhY3Rpb25z
KSwgYnV0IGZvciBzdHVmZiBnb2luZw0KdXBzdHJlYW0sIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIHRy
eSB0byBoYWNrIGFyb3VuZCB0aGluZ3Mgb3Igc211Z2dsZQ0Kc3RhdGUganVzdCB0byBhdm9pZCBj
aGFuZ2luZyBjb3JlIHN0cnVjdHVyZXMuIEVzcGVjaWFsbHkgaWYgY29yZQ0Kc3RydWN0dXJlcyBh
cmUgaW50ZXJuYWwgb25seSBhbmQgaGF2ZSBubyBBQkkgaW1wbGljYXRpb25zLg0KDQpTaW1hJ3Mg
c3VnZ2VzdGlvbiB0aGF0IGF0dGFjaG1lbnRzIHNob3VsZCBmYWlsIGlmIHRoZSBkZXZpY2UgY2Fu
bm90DQpwcm9wZXJseSBtYXAgdGhlIHJlc3RyaWN0ZWQgYnVmZmVyIG1ha2VzIHNlbnNlIHRvIG1l
LiBUaG91Z2ggSSBkb24ndA0KcXVpdGUgc2VlIHdoeSBhbGwgYXR0YWNobWVudHMgc2hvdWxkIGZh
aWwsIGFuZCBJIGRvbid0IHJlYWxseSBsaWtlIHRoZQ0KaWRlYSBvZiBhIHByaXZhdGUgYXBpLCBi
dXQgSSBuZWVkIHRvIGxvb2sgbW9yZSBhdCB0aGUgc3VnZ2VzdGVkIHZpcnRpbw0KZXhhbXBsZSAo
YnV0IGV2ZW4gdGhleSBzYWlkIHRoYXQgd2Fzbid0IHRoZWlyIHByZWZlcnJlZCByb3V0ZSkuDQoN
Ck15IHNlbnNlIG9mIGF0dGFjaCB3YXMgb25seSB0aGF0IGl0IHdhcyBzdXBwb3NlZCB0byBjb25u
ZWN0IGEgZGV2aWNlJ3MNCmludGVyZXN0IGluIHRoZSBidWZmZXIsIGFsbG93aW5nIGxhenkgYWxs
b2NhdGlvbiB0byBzYXRpc2Z5IHZhcmlvdXMNCmRldmljZSBjb25zdHJhaW50cyBiZWZvcmUgZmly
c3QgbWFwcGluZyAtIGEgZGVzaWduIGZlYXR1cmUgdGhhdCBJDQpkb24ndCB0aGluayBhbnlvbmUg
ZXZlciBpbXBsZW1lbnRlZC4gIFNvIG15IHNlbnNlIHdhcyBpdCBkaWRuJ3QgaGF2ZQ0KbXVjaCBt
ZWFuaW5nIG90aGVyd2lzZSAoYnV0IHdhcyBhIHJlcXVpcmVtZW50IHRvIGNhbGwgYmVmb3JlIG1h
cCkuIEJ1dA0KdGhhdCBtYXkgaGF2ZSBldm9sdmVkIHNpbmNlIHRoZSBlYXJseSBkYXlzLg0KDQpB
bmQgSSdtIHN1cmUgdGhlIG1ldGhvZCB0byBmaWd1cmUgb3V0IGlmIHRoZSBhdHRhY2htZW50IGNh
biB3b3JrIHdpdGgNCnRoZSBkZXZpY2UgbWF5IGJlIGNvbXBsaWNhdGVkL2RpZmZpY3VsdCwgc28g
aXQgc291bmRpbmcgcmVhc29uYWJsZSBjYW4NCmJlIGZhciBmcm9tIGl0IGJlaW5nIHJlYXNvbmFi
bGUgdG8gaW1wbGVtZW50Lg0KDQpBbmQgYWdhaW4sIEkgZG9uJ3QgbWVhbiB0byBmcnVzdHJhdGUg
b3IgZGVtb3RpdmF0ZSBoZXJlLiBJJ20gcmVhbGx5DQpleGNpdGVkIHRvIHNlZSB0aGlzIGVmZm9y
dCBiZWluZyBwdXNoZWQgdXBzdHJlYW0hDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
