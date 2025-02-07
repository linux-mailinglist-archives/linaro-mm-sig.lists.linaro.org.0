Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F6A2C8EC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Feb 2025 17:32:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEFC3455D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Feb 2025 16:32:33 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 9CE864122C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Feb 2025 16:32:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b="VT3h/bda";
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.169) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b9bc648736so216777285a.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 07 Feb 2025 08:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738945941; x=1739550741; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1eyHbVSPzPS2H7ccJkoRfXPoW37SSjWSYPml0H3RVrY=;
        b=VT3h/bdaHCExINQkx1wMQrHHe7ttPfC22JGm4gZTz7guTrvf5T/yBLjNRPo/Ver7qg
         9zS19tKEafOTI3afwHn/HWMe2uxUHNEkEqFr5wefqjIE/kPtzUmXYooO1IVaY5DbcmVc
         fRFx0z9M8TB6u5BBnqQWpTYkMopvPrKNnxFI56PghrZHZbaiZTklR4uOQIMgpwNh7aCJ
         LlYxBlhbGBhkXk5xnzYWAjLO69duDqt0Cf1w1QXWJs6fwBd7dmSnsJgyWIK2iKBIwU4u
         jTgeUeT1nSY1vK0mextpOeO0YWGbVv/MakzNxTV9Ch+zbBsOlqb8ygl90jZCTZmReLgS
         cgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738945941; x=1739550741;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1eyHbVSPzPS2H7ccJkoRfXPoW37SSjWSYPml0H3RVrY=;
        b=dK1ka/6gATj7YZapZcc9yRqrn/d5i5KGcJfYplYuvIZktQbUPEgsG+ZxTU7i1DVocF
         fFxIzJT9i2jAnJDSkv4CA3iMU45WrF6onxLL3ka9aFwW0YtjXjp5OGb4X0sCtlH1244h
         EONBpi+vzVfcN1IrGi3gfi50imsrC+wOgxLSVkgH99NATDRv111V5SmTQRwBkh4CAKjD
         9lmyRT957Qncu8CfuzghzBmAZv22NdFMoYDivneDcbjLK9hu4yn3MynUNWHH0Ip+CDyW
         dAELbGjTfFAJZGpJSInHO+Coz8hoNlTLta+TzgxDbGxEg3JBGG306DZndqVRQ8Mdqq6H
         Acdw==
X-Forwarded-Encrypted: i=1; AJvYcCWnM4+FiZtzJriUZ7rX+gGGfrnE8mpu8CjVYAZYc4eOx6xScMhHyVTmdiVkWhOFuE9ekZhZn+4qSS547Qqe@lists.linaro.org
X-Gm-Message-State: AOJu0Yw806SXLXTq7eK2tk1a+oRkgPBKUZ9BjsR0yElGURJQ9xJBHc3+
	F3nlRAlDmt8nu8zITNs7iSP4T3mL/pG6H81kz5xkhKxEqHOzpct+Tsu7RLNtyXk=
X-Gm-Gg: ASbGncsj6EynJ+7GI7gBi2NY8nmaGz5yuDzXiAp3MYOePHtm5TG6+XOoM/F/KYxS7Is
	iE5kQ+be+mG/66fzlNHpyoDyhlfW0hkDOVk1fLxqWAHFLhZzz21pc9fGBAQ9u7M77gCw+p4x53u
	3OtZhLyhTJixShrS+DNkmHD8bi/Y6KNAc12VdOsw+O1mUkceSnfr688rr8Gx1G4Xir+Og3r1XV0
	RCkQrFMpm5aNYma3ia/EjFQERZlF1F+MhIW4gx7e/xMHFsieII8GHiDOOtZahGJukWu6krkt8fE
	TC3OKDAdnkEvT/db
X-Google-Smtp-Source: AGHT+IHMskAJ2FFpcL+LoXxgmr/MIx5nX+eElBqeikyP+Zh17IpGj4yP1i1w+a51aWNGdndmORetGg==
X-Received: by 2002:a05:620a:248e:b0:7b6:f17d:f5a7 with SMTP id af79cd13be357-7c047c1f9d5mr701310685a.6.1738945941025;
        Fri, 07 Feb 2025 08:32:21 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c041eb7d12sm206602485a.106.2025.02.07.08.32.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 08:32:20 -0800 (PST)
Message-ID: <2cef75795cf3eb1c224f3562134d2ed887dbff60.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Fri, 07 Feb 2025 11:32:18 -0500
In-Reply-To: <20250207160253.42551fb1@collabora.com>
References: <cover.1738228114.git.florent.tomasin@arm.com>
		<3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
		<1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
		<ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
		<9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
		<1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
		<20250205-amorphous-nano-agouti-b5baba@houat>
		<2085fb785095dc5abdac2352adfb3e1e1c8ae549.camel@ndufresne.ca>
	 <20250207160253.42551fb1@collabora.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9CE864122C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.222.169:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,collabora.com,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.169:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: YFYS55J3LX72KW6JHFWR3VL55ARKET5J
X-Message-ID-Hash: YFYS55J3LX72KW6JHFWR3VL55ARKET5J
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-s
 ig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YFYS55J3LX72KW6JHFWR3VL55ARKET5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgdmVuZHJlZGkgMDcgZsOpdnJpZXIgMjAyNSDDoCAxNjowMiArMDEwMCwgQm9yaXMgQnJlemls
bG9uIGEgw6ljcml0wqA6DQo+IFNvcnJ5IGZvciBqb2luaW5nIHRoZSBwYXJ0eSBsYXRlLCBhIGNv
dXBsZSBvZiBjb21tZW50cyB0byBiYWNrIEFrYXNoDQo+IGFuZCBOaWNvbGFzJyBjb25jZXJucy4N
Cj4gDQo+IE9uIFdlZCwgMDUgRmViIDIwMjUgMTM6MTQ6MTQgLTA1MDANCj4gTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOg0KPiANCj4gPiBMZSBtZXJjcmVkaSAw
NSBmw6l2cmllciAyMDI1IMOgIDE1OjUyICswMTAwLCBNYXhpbWUgUmlwYXJkIGEgw6ljcml0wqA6
DQo+ID4gPiBPbiBNb24sIEZlYiAwMywgMjAyNSBhdCAwNDo0MzoyM1BNICswMDAwLCBGbG9yZW50
IFRvbWFzaW4gd3JvdGU6ICANCj4gPiA+ID4gSGkgTWF4aW1lLCBOaWNvbGFzDQo+ID4gPiA+IA0K
PiA+ID4gPiBPbiAzMC8wMS8yMDI1IDE3OjQ3LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOiAgDQo+
ID4gPiA+ID4gTGUgamV1ZGkgMzAgamFudmllciAyMDI1IMOgIDE3OjM4ICswMTAwLCBNYXhpbWUg
UmlwYXJkIGEgw6ljcml0wqA6ICANCj4gPiA+ID4gPiA+IEhpIE5pY29sYXMsDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IE9uIFRodSwgSmFuIDMwLCAyMDI1IGF0IDEwOjU5OjU2QU0gLTA1MDAs
IE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6ICANCj4gPiA+ID4gPiA+ID4gTGUgamV1ZGkgMzAgamFu
dmllciAyMDI1IMOgIDE0OjQ2ICswMTAwLCBNYXhpbWUgUmlwYXJkIGEgw6ljcml0wqA6ICANCj4g
PiA+ID4gPiA+ID4gPiBIaSwNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBJIHN0
YXJ0ZWQgdG8gcmV2aWV3IGl0LCBidXQgaXQncyBwcm9iYWJseSBiZXN0IHRvIGRpc2N1c3MgaXQg
aGVyZS4NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBPbiBUaHUsIEphbiAzMCwg
MjAyNSBhdCAwMTowODo1NlBNICswMDAwLCBGbG9yZW50IFRvbWFzaW4gd3JvdGU6ICANCj4gPiA+
ID4gPiA+ID4gPiA+IEhpLA0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiBU
aGlzIGlzIGEgcGF0Y2ggc2VyaWVzIGNvdmVyaW5nIHRoZSBzdXBwb3J0IGZvciBwcm90ZWN0ZWQg
bW9kZSBleGVjdXRpb24gaW4NCj4gPiA+ID4gPiA+ID4gPiA+IE1hbGkgUGFudGhvciBDU0Yga2Vy
bmVsIGRyaXZlci4NCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gVGhlIE1h
bGkgQ1NGIEdQVXMgY29tZSB3aXRoIHRoZSBzdXBwb3J0IGZvciBwcm90ZWN0ZWQgbW9kZSBleGVj
dXRpb24gYXQgdGhlDQo+ID4gPiA+ID4gPiA+ID4gPiBIVyBsZXZlbC4gVGhpcyBmZWF0dXJlIHJl
cXVpcmVzIHR3byBtYWluIGNoYW5nZXMgaW4gdGhlIGtlcm5lbCBkcml2ZXI6DQo+ID4gPiA+ID4g
PiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IDEpIENvbmZpZ3VyZSB0aGUgR1BVIHdpdGggYSBw
cm90ZWN0ZWQgYnVmZmVyLiBUaGUgc3lzdGVtIG11c3QgcHJvdmlkZSBhIERNQQ0KPiA+ID4gPiA+
ID4gPiA+ID4gICAgaGVhcCBmcm9tIHdoaWNoIHRoZSBkcml2ZXIgY2FuIGFsbG9jYXRlIGEgcHJv
dGVjdGVkIGJ1ZmZlci4NCj4gPiA+ID4gPiA+ID4gPiA+ICAgIEl0IGNhbiBiZSBhIGNhcnZlZC1v
dXQgbWVtb3J5IG9yIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBwcm90ZWN0ZWQgbWVtb3J5IHJlZ2lv
bi4NCj4gPiA+ID4gPiA+ID4gPiA+ICAgIFNvbWUgc3lzdGVtIGluY2x1ZGVzIGEgdHJ1c3RlZCBG
VyB3aGljaCBpcyBpbiBjaGFyZ2Ugb2YgdGhlIHByb3RlY3RlZCBtZW1vcnkuDQo+ID4gPiA+ID4g
PiA+ID4gPiAgICBTaW5jZSB0aGlzIHByb2JsZW0gaXMgaW50ZWdyYXRpb24gc3BlY2lmaWMsIHRo
ZSBNYWxpIFBhbnRob3IgQ1NGIGtlcm5lbA0KPiA+ID4gPiA+ID4gPiA+ID4gICAgZHJpdmVyIG11
c3QgaW1wb3J0IHRoZSBwcm90ZWN0ZWQgbWVtb3J5IGZyb20gYSBkZXZpY2Ugc3BlY2lmaWMgZXhw
b3J0ZXIuICANCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBXaHkgZG8geW91IG5l
ZWQgYSBoZWFwIGZvciBpdCBpbiB0aGUgZmlyc3QgcGxhY2U/IE15IHVuZGVyc3RhbmRpbmcgb2YN
Cj4gPiA+ID4gPiA+ID4gPiB5b3VyIHNlcmllcyBpcyB0aGF0IHlvdSBoYXZlIGEgY2FydmVkIG91
dCBtZW1vcnkgcmVnaW9uIHNvbWV3aGVyZSwgYW5kDQo+ID4gPiA+ID4gPiA+ID4geW91IHdhbnQg
dG8gYWxsb2NhdGUgZnJvbSB0aGF0IGNhcnZlZCBvdXQgbWVtb3J5IHJlZ2lvbiB5b3VyIGJ1ZmZl
cnMuDQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gSG93IGlzIHRoYXQgYW55IGRp
ZmZlcmVudCBmcm9tIHVzaW5nIGEgcmVzZXJ2ZWQtbWVtb3J5IHJlZ2lvbiwgYWRkaW5nDQo+ID4g
PiA+ID4gPiA+ID4gdGhlIHJlc2VydmVkLW1lbW9yeSBwcm9wZXJ0eSB0byB0aGUgR1BVIGRldmlj
ZSBhbmQgZG9pbmcgYWxsIHlvdXINCj4gPiA+ID4gPiA+ID4gPiBhbGxvY2F0aW9uIHRocm91Z2gg
dGhlIHVzdWFsIGRtYV9hbGxvY18qIEFQST8gIA0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+
ID4gSG93IGRvIHlvdSB0aGVuIG11bHRpcGxleCB0aGlzIHJlZ2lvbiBzbyBpdCBjYW4gYmUgc2hh
cmVkIGJldHdlZW4NCj4gPiA+ID4gPiA+ID4gR1BVL0NhbWVyYS9EaXNwbGF5L0NvZGVjIGRyaXZl
cnMgYW5kIGFsc28gdXNlcnNwYWNlID8gIA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBZb3Ug
Y291bGQgcG9pbnQgYWxsIHRoZSBkZXZpY2VzIHRvIHRoZSBzYW1lIHJlc2VydmVkIG1lbW9yeSBy
ZWdpb24sIGFuZA0KPiA+ID4gPiA+ID4gdGhleSB3b3VsZCBhbGwgYWxsb2NhdGUgZnJvbSB0aGVy
ZSwgaW5jbHVkaW5nIGZvciB0aGVpciB1c2Vyc3BhY2UtZmFjaW5nDQo+ID4gPiA+ID4gPiBhbGxv
Y2F0aW9ucy4gIA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkgZ2V0IHRoYXQgdXNpbmcgbWVtb3J5
IHJlZ2lvbiBpcyBzb21ld2hhdCBtb3JlIG9mIGFuIEhXIGRlc2NyaXB0aW9uLCBhbmQNCj4gPiA+
ID4gPiBhbGlnbmVkIHdpdGggd2hhdCBhIERUIGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJlLiBPbmUg
b2YgdGhlIGNoYWxsZW5nZSBpcyB0aGF0DQo+ID4gPiA+ID4gTWVkaWF0ZWsgaGVhcCBwcm9wb3Nh
bCBlbmR1cCBjYWxsaW5nIGludG8gdGhlaXIgVEVFLCBtZWFuaW5nIGtub3dpbmcgdGhlIHJlZ2lv
bg0KPiA+ID4gPiA+IGlzIG5vdCB0aGF0IHVzZWZ1bC4gWW91IGFjdHVhbGx5IG5lZWQgdGhlIFRF
RSBBUFAgZ3VpZCBhbmQgaXRzIElQQyBwcm90b2NvbC4gSWYNCj4gPiA+ID4gPiB3ZSBjYW4gZGVs
bCBkcml2ZXJzIHRvIHVzZSBhIGhlYWQgaW5zdGVhZCwgd2UgY2FuIGFic3RyYWN0IHRoYXQgU29D
IHNwZWNpZmljDQo+ID4gPiA+ID4gY29tcGxleGl0eS4gSSBiZWxpZXZlIGVhY2ggYWxsb2NhdGVk
IGFkZHJlc3NlZCBoYXMgdG8gYmUgbWFwcGVkIHRvIGEgem9uZSwgYW5kDQo+ID4gPiA+ID4gdGhh
dCBjYW4gb25seSBiZSBkb25lIGluIHRoZSBzZWN1cmUgYXBwbGljYXRpb24uIEkgY2FuIGltYWdp
bmUgc2ltaWxhciBuZWVkcw0KPiA+ID4gPiA+IHdoZW4gdGhlIHByb3RlY3Rpb24gaXMgZG9uZSB1
c2luZyBzb21lIHNvcnQgb2YgYSBWTSAvIGh5cGVydmlzb3IuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gTmljb2xhcw0KPiA+ID4gPiA+ICAgDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgaWRlYSBpbiB0
aGlzIGRlc2lnbiBpcyB0byBhYnN0cmFjdCB0aGUgaGVhcCBtYW5hZ2VtZW50IGZyb20gdGhlDQo+
ID4gPiA+IFBhbnRob3Iga2VybmVsIGRyaXZlciAod2hpY2ggY29uc3VtZXMgYSBETUEgYnVmZmVy
IGZyb20gaXQpLg0KPiA+ID4gPiANCj4gPiA+ID4gSW4gYSBzeXN0ZW0sIGFuIGludGVncmF0b3Ig
d291bGQgaGF2ZSBpbXBsZW1lbnRlZCBhIHNlY3VyZSBoZWFwIGRyaXZlciwNCj4gPiA+ID4gYW5k
IGNvdWxkIGJlIGJhc2VkIG9uIFRFRSBvciBhIGNhcnZlZC1vdXQgbWVtb3J5IHdpdGggcmVzdHJp
Y3RlZCBhY2Nlc3MsDQo+ID4gPiA+IG9yIGVsc2UuIFRoaXMgaGVhcCBkcml2ZXIgd291bGQgYmUg
cmVzcG9uc2libGUgb2YgaW1wbGVtZW50aW5nIHRoZQ0KPiA+ID4gPiBsb2dpYyB0bzogYWxsb2Nh
dGUsIGZyZWUsIHJlZmNvdW50LCBldGMuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGUgaGVhcCB3b3Vs
ZCBiZSByZXRyaWV2ZWQgYnkgdGhlIFBhbnRob3Iga2VybmVsIGRyaXZlciBpbiBvcmRlciB0bw0K
PiA+ID4gPiBhbGxvY2F0ZSBwcm90ZWN0ZWQgbWVtb3J5IHRvIGxvYWQgdGhlIEZXIGFuZCBhbGxv
dyB0aGUgR1BVIHRvIGVudGVyL2V4aXQNCj4gPiA+ID4gcHJvdGVjdGVkIG1vZGUuIFRoaXMgbWVt
b3J5IHdvdWxkIG5vdCBiZWxvbmcgdG8gYSB1c2VyIHNwYWNlIHByb2Nlc3MuDQo+ID4gPiA+IFRo
ZSBkcml2ZXIgYWxsb2NhdGVzIGl0IGF0IHRoZSB0aW1lIG9mIGxvYWRpbmcgdGhlIEZXIGFuZCBp
bml0aWFsaXphdGlvbg0KPiA+ID4gPiBvZiB0aGUgR1BVIEhXLiBUaGlzIGlzIGEgZGV2aWNlIGds
b2JhbGx5IG93bmVkIHByb3RlY3RlZCBtZW1vcnkuICANCj4gPiA+IA0KPiA+ID4gVGhlIHRoaW5n
IGlzLCBpdCdzIHJlYWxseSBub3QgY2xlYXIgd2h5IHlvdSBhYnNvbHV0ZWx5IG5lZWQgdG8gaGF2
ZSB0aGUNCj4gPiA+IFBhbnRob3IgZHJpdmVyIGludm9sdmVkIHRoZXJlLiBJdCB3b24ndCBiZSB0
cmFuc3BhcmVudCB0byB1c2Vyc3BhY2UsDQo+ID4gPiBzaW5jZSB5b3UnZCBuZWVkIGFuIGV4dHJh
IGZsYWcgYXQgYWxsb2NhdGlvbiB0aW1lLCBhbmQgdGhlIGJ1ZmZlcnMNCj4gPiA+IGJlaGF2ZSBk
aWZmZXJlbnRseS4gSWYgdXNlcnNwYWNlIGhhcyB0byBiZSBhd2FyZSBvZiBpdCwgd2hhdCdzIHRo
ZQ0KPiA+ID4gYWR2YW50YWdlIHRvIHlvdXIgYXBwcm9hY2ggY29tcGFyZWQgdG8ganVzdCBleHBv
c2luZyBhIGhlYXAgZm9yIHRob3NlDQo+ID4gPiBzZWN1cmUgYnVmZmVycywgYW5kIGxldHRpbmcg
dXNlcnNwYWNlIGFsbG9jYXRlIGl0cyBidWZmZXJzIGZyb20gdGhlcmU/ICANCj4gPiANCj4gPiBV
bmxlc3MgSSdtIG1pc3Rha2VuLCB0aGUgUGFudGhvciBkcml2ZXIgbG9hZHMgaXRzIG93biBmaXJt
d2FyZS4gU2luY2UgbG9hZGluZw0KPiA+IHRoZSBmaXJtd2FyZSByZXF1aXJlcyBwbGFjaW5nIHRo
ZSBkYXRhIGluIGEgcHJvdGVjdGVkIG1lbW9yeSByZWdpb24sIGFuZCB0aGF0DQo+ID4gdGhpcyBh
c3BlY3QgaGFzIG5vIGV4cG9zdXJlIHRvIHVzZXJzcGFjZSwgaG93IGNhbiBQYW50aG9yIG5vdCBi
ZSBpbXBsaWNhdGVkID8NCj4gDQo+IFJpZ2h0LCB0aGUgdmVyeSByZWFzb24gd2UgbmVlZCBwcm90
ZWN0ZWQgbWVtb3J5IGVhcmx5IGlzIGJlY2F1c2Ugc29tZQ0KPiBGVyBzZWN0aW9ucyBuZWVkIHRv
IGJlIGFsbG9jYXRlZCBmcm9tIHRoZSBwcm90ZWN0ZWQgcG9vbCwgb3RoZXJ3aXNlIHRoZQ0KPiBU
RUUgd2lsbCBmYXVsdCBhcyBzb29uIGF0IHRoZSBGVyBlbnRlcnMgdGhlIHNvLWNhbGxlZCAncHJv
dGVjdGVkIG1vZGUnLg0KPiANCj4gTm93LCBpdCdzIG5vdCBpbXBvc3NpYmxlIHRvIHdvcmsgYXJv
dW5kIHRoaXMgbGltaXRhdGlvbi4gRm9yIGluc3RhbmNlLA0KPiB3ZSBjb3VsZCBsb2FkIHRoZSBG
VyB3aXRob3V0IHRoaXMgcHJvdGVjdGVkIHNlY3Rpb24gYnkgZGVmYXVsdCAod2hhdCB3ZQ0KPiBk
byByaWdodCBub3cpLCBhbmQgdGhlbiBwcm92aWRlIGEgRFJNX1BBTlRIT1JfRU5BQkxFX0ZXX1BS
T1RfTU9ERQ0KPiBpb2N0bCB0aGF0IHdvdWxkIHRha2UgYSBHRU0gb2JqZWN0IGltcG9ydGVkIGZy
b20gYSBkbWFidWYgYWxsb2NhdGVkDQo+IGZyb20gdGhlIHByb3RlY3RlZCBkbWEtaGVhcCBieSB1
c2Vyc3BhY2UuIFdlIGNhbiB0aGVuIHJlc2V0IHRoZSBGVyBhbmQNCj4gYWxsb3cgaXQgdG8gb3Bl
cmF0ZSBpbiBwcm90ZWN0ZWQgbW9kZSBhZnRlciB0aGF0IHBvaW50LiBUaGlzIGFwcHJvYWNoDQo+
IGhhcyB0d28gZG93bnNpZGVzIHRob3VnaDoNCj4gDQo+IDEuIFdlIGhhdmUgbm8gd2F5IG9mIGNo
ZWNraW5nIHRoYXQgdGhlIG1lbW9yeSB3ZSdyZSBwYXNzZWQgaXMgYWN0dWFsbHkNCj4gc3VpdGFi
bGUgZm9yIEZXIGV4ZWN1dGlvbiBpbiBhIHByb3RlY3RlZCBjb250ZXh0LiBJZiB3ZSdyZSBwYXNz
ZWQNCj4gcmFuZG9tIG1lbW9yeSwgdGhpcyB3aWxsIGxpa2VseSBoYW5nIHRoZSBwbGF0Zm9ybSBh
cyBzb29uIGFzIHdlIGVudGVyDQo+IHByb3RlY3RlZCBtb2RlLg0KPiANCj4gMi4gSWYgdGhlIGRy
aXZlciBhbHJlYWR5IGJvb3QgdGhlIEZXIGFuZCBleHBvc2VkIGEgRFJJIG5vZGUsIHdlIG1pZ2h0
DQo+IGhhdmUgR1BVIHdvcmtsb2FkcyBydW5uaW5nLCBhbmQgZG9pbmcgYSBGVyByZXNldCBtaWdo
dCBpbmN1ciBhIHNsaWdodA0KPiBkZWxheSBpbiBHUFUgam9icyBleGVjdXRpb24uDQo+IA0KPiBJ
IHRoaW5rICMxIGlzIGEgbW9yZSBnZW5lcmFsIGlzc3VlIHRoYXQgYXBwbGllcyB0byBzdXNwZW5k
IGJ1ZmZlcnMNCj4gYWxsb2NhdGVkIGZvciBHUFUgY29udGV4dHMgdG9vLiBJZiB3ZSBleHBvc2Ug
aW9jdGxzIHdoZXJlIHdlIHRha2UNCj4gcHJvdGVjdGVkIG1lbW9yeSBidWZmZXJzIHRoYXQgY2Fu
IHBvc3NpYmx5IGxlYWQgdG8gY3Jhc2hlcyBpZiB0aGV5IGFyZQ0KPiBub3QgcmVhbCBwcm90ZWN0
ZWQgbWVtb3J5IHJlZ2lvbnMsIGFuZCB3ZSBoYXZlIG5vIHdheSB0byBlbnN1cmUgdGhlDQo+IG1l
bW9yeSBpcyBwcm90ZWN0ZWQsIHdlIHByb2JhYmx5IHdhbnQgdG8gcmVzdHJpY3QgdGhlc2UgaW9j
dGxzL21vZGVzIHRvDQo+IHNvbWUgaGlnaC1wcml2aWxlZ2UgQ0FQX1NZU18uDQo+IA0KPiBGb3Ig
IzIsIHRoYXQncyBwcm9iYWJseSBzb21ldGhpbmcgd2UgY2FuIGxpdmUgd2l0aCwgc2luY2UgaXQn
cyBhDQo+IG9uZS1zaG90IHRoaW5nLiBJZiBpdCBiZWNvbWVzIGFuIGlzc3VlLCB3ZSBjYW4gZXZl
biBtYWtlIHN1cmUgd2UgZW5hYmxlDQo+IHRoZSBGVyBwcm90ZWN0ZWQtbW9kZSBiZWZvcmUgdGhl
IEdQVSBzdGFydHMgYmVpbmcgdXNlZCBmb3IgcmVhbC4NCj4gDQo+IFRoaXMgYmVpbmcgc2FpZCwg
SSB0aGluayB0aGUgcHJvYmxlbSBhcHBsaWVzIG91dHNpZGUgUGFudGhvciwgYW5kIGl0DQo+IG1p
Z2h0IGJlIHRoYXQgdGhlIHZpZGVvIGNvZGVjIGNhbid0IHJlc2V0IHRoZSBGVy9IVyBibG9jayB0
byBzd2l0Y2ggdG8NCj4gcHJvdGVjdGVkIG1vZGUgYXMgZWFzaWx5IGFzIFBhbnRob3IuDQoNCk92
ZXJhbGwgdGhlIHJlc2V0IGFuZCByZWJvb3QgbWV0aG9kIGlzIHByZXR0eSB1Z2x5IGluIG15IG9w
aW5pb24uIEJ1dCB0byBzdGljaw0Kd2l0aCB0aGUgcHVyZSByYXRpb25hbGUsIHJlYm9vdGluZyB0
aGUgU0NQIG9uIE1USyBpcyBtdWNoIGhhcmRlciwgc2luY2UgaXRzIG5vdA0Kc3BlY2lmaWMgdG8g
YSBzaW5nbGUgSFcvZHJpdmVyLg0KDQpPdGhlciBjb2RlY3MgbGlrZSBTYW1zdW5nIE1GQywgVmVu
dXMvSXJpcywgQ2hpcHMmTWVkaWEsIGV0Yy4gdGhhdCBhcHByb2FjaCBzZWFtcw0KcGxhdXNpYmxl
LCBidXQgd2Ugc3RpbGwgY2FuJ3QgdHJ1c3QgdGhlIGJ1ZmZlciwgd2hpY2ggdG8gbWUgaXMgbm90
IGFjY2VwdGFibGUuDQoNCj4gDQo+IE5vdGUgdGhhdCB0aGVyZSdzIGFsc28gZG93bnNpZGVzIHRv
IHRoZSByZXNlcnZlZC1tZW1vcnkgbm9kZSBhcHByb2FjaCwNCj4gd2hlcmUgc29tZSBib290bG9h
ZGVyIHN0YWdlIHdvdWxkIGFzayB0aGUgc2VjdXJlIEZXIHRvIHJlc2VydmUgYQ0KPiBwb3J0aW9u
IG9mIG1lbSBhbmQgcGFzcyB0aGlzIHRocm91Z2ggdGhlIERULiBUaGlzIHNvcnQgb2YgdGhpbmdz
IHRlbmQgdG8NCj4gYmUgYW4gaW50ZWdyYXRpb24gbWVzcywgd2hlcmUgeW91IG5lZWQgYWxsIHRo
ZSBwaWVjZXMgb2YgdGhlIHN0YWNrIChURUUsDQo+IHUtYm9vdCwgTVRLIGRtYS1oZWFwIGRyaXZl
ciwgZ2JtLCAuLi4pIHRvIGJlIGF0IGEgY2VydGFpbiB2ZXJzaW9uIHRvDQo+IHdvcmsgcHJvcGVy
bHkuIElmIHdlIGdvIHRoZSBpb2N0bCgpIHdheSwgd2UgcmVzdHJpY3QgdGhlIHNjb3BlIHRvIHRo
ZQ0KPiBURUUsIGdibS9tZXNhIGFuZCB0aGUgcHJvdGVjdGVkLWRtYS1oZWFwIGRyaXZlciwgd2hp
Y2ggaXMgc3RpbGwgYSBsb3QsDQo+IGJ1dCB3ZSd2ZSByaXBwZWQgdGhlIGJvb3Rsb2FkZXIgb3V0
IG9mIHRoZSBlcXVhdGlvbiBhdCBsZWFzdC4NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBCb3Jpcw0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
