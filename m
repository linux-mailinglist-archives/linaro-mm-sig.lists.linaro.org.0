Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3480DA29887
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 19:14:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CE5A4434B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Feb 2025 18:14:32 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id 5C55943D5D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Feb 2025 18:14:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b="BE/a/HkK";
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.172) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7b6f75f61f9so2346985a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Feb 2025 10:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738779256; x=1739384056; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ewgPkFmEX3mInvEnIhY/6iT5VC+yD3hq+wlM8kNCGHw=;
        b=BE/a/HkKTk0gEbYSDwDe7cP1V6TwjlAge15J4fNVjnUVkyHgOyw39e90hdkechNAla
         B7TfHq7UzmXN4MgypkXPxZ21t2j34KRzxgqiXjOf+JQoq1LDHDueuStNL6hA3jfhrBpX
         DIDZggJpTP/bUNaYbYNprwq8G99wL37MRwQ9WMYpnWSPoH+4lWXwebh0D+F5ImhHQURJ
         5O0y5reyJ9yK6fp6zrxzxbHSGrPZujryw2niID1OHKWWy/WZhg7U+ZcIW8LbElCj/+y+
         qbsH+cBpIQm1H39OLO/hpoBWuiJncSqpaADIUbTc1MCXxeaOMQAP3wOipPn00NK33ng4
         meFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738779256; x=1739384056;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ewgPkFmEX3mInvEnIhY/6iT5VC+yD3hq+wlM8kNCGHw=;
        b=lMa42guDYWLlef5Wosinyn4RLO8iXFLRu5K6ke4meIPD2D/C3u4CIeXf/WI3KiNz9B
         xg+8QKptar0axa6JMa/56lJr1diq3bZ/9IuWvylH72MK3tonjOPwiC+UVNZkWaB7+ED7
         KQe5wtIwvMKsOWufEIqoBf/o271mW2T0TrwMkl+VY5UZDaxOu9qEN175M/JBnbvkS4u9
         h31igX616zxLGjIhraApDVYLrQTkplNd8W4LNvs/RFGtc1EwQSMBaDEhE39g9bZihcFK
         mAFI4mbj8OzSbYzuBT6mrutmrorGZ/DGW5FWeVytdltxJpbMsClFx4uYhzJGn6O+s3GG
         5ytQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlnW1IZXAEAsFE7/4r0ElPWsJaYcBrp8nwyY3dIPjQUI+GtDHMBzaaIMwoeRBCXT9LZVQe7HORTK7Jb49b@lists.linaro.org
X-Gm-Message-State: AOJu0YzqAPjo0LLCM7zRJpdJcp2P40/OnDQEmtNokB7KrpPeZUeepB3L
	hDCH+ZVLokQs7MWpcMAVIJ9GbWMqZMuGHQgeOy2YfE30fhgg46bzDPxkCyjhpMw=
X-Gm-Gg: ASbGncvueuVAyh5wUAO4tv6ylPXEIocQ9kWb4NJ3d2h0OxIog5eVRhk1LQcb1x2wp9o
	hgZrQwkwVvHanjzE8Uoax0a70Hz3ZHtvsAcml+AXq58MkkWx7Na/ZdWQfIeg+CKiNsO7SMURpW2
	GwEqVgMSqVNYeUIvCTS3Oh4iCyYoHMGzbwx5RnxNpKygOXaIoLgtIZCunaRvhJlNelelohikEkM
	mQMzphhzmcYxaCt7nu4CPbyposqvWvrlct8XU54bqS/4QtI/fVFka9B/7iK4Mr5txUhVP3E7FWe
	kJ8A5GzoxDg87XRJ
X-Google-Smtp-Source: AGHT+IFnnl9J6glnO7ave49R6IT/Ma233dmOTJ29e9pjZONK8+NxUm972OtvZRgYYQ8KwgzNcY3a5Q==
X-Received: by 2002:a05:620a:d8c:b0:7be:3d2f:16fc with SMTP id af79cd13be357-7c03a029359mr549685385a.51.1738779255841;
        Wed, 05 Feb 2025 10:14:15 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a9047eesm781781685a.72.2025.02.05.10.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 10:14:15 -0800 (PST)
Message-ID: <2085fb785095dc5abdac2352adfb3e1e1c8ae549.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>, Florent Tomasin
	 <florent.tomasin@arm.com>
Date: Wed, 05 Feb 2025 13:14:14 -0500
In-Reply-To: <20250205-amorphous-nano-agouti-b5baba@houat>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
	 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
	 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
	 <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
	 <1f436caa-1c27-4bbd-9b43-a94dad0d89d0@arm.com>
	 <20250205-amorphous-nano-agouti-b5baba@houat>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5C55943D5D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.222.172:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.172:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: UMQ6PKPHLY5W3PII357XK47D5ZP4ZNLU
X-Message-ID-Hash: UMQ6PKPHLY5W3PII357XK47D5ZP4ZNLU
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm
 -kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMQ6PKPHLY5W3PII357XK47D5ZP4ZNLU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMDUgZsOpdnJpZXIgMjAyNSDDoCAxNTo1MiArMDEwMCwgTWF4aW1lIFJpcGFy
ZCBhIMOpY3JpdMKgOg0KPiBPbiBNb24sIEZlYiAwMywgMjAyNSBhdCAwNDo0MzoyM1BNICswMDAw
LCBGbG9yZW50IFRvbWFzaW4gd3JvdGU6DQo+ID4gSGkgTWF4aW1lLCBOaWNvbGFzDQo+ID4gDQo+
ID4gT24gMzAvMDEvMjAyNSAxNzo0NywgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToNCj4gPiA+IExl
IGpldWRpIDMwIGphbnZpZXIgMjAyNSDDoCAxNzozOCArMDEwMCwgTWF4aW1lIFJpcGFyZCBhIMOp
Y3JpdMKgOg0KPiA+ID4gPiBIaSBOaWNvbGFzLA0KPiA+ID4gPiANCj4gPiA+ID4gT24gVGh1LCBK
YW4gMzAsIDIwMjUgYXQgMTA6NTk6NTZBTSAtMDUwMCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToN
Cj4gPiA+ID4gPiBMZSBqZXVkaSAzMCBqYW52aWVyIDIwMjUgw6AgMTQ6NDYgKzAxMDAsIE1heGlt
ZSBSaXBhcmQgYSDDqWNyaXTCoDoNCj4gPiA+ID4gPiA+IEhpLA0KPiA+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gPiBJIHN0YXJ0ZWQgdG8gcmV2aWV3IGl0LCBidXQgaXQncyBwcm9iYWJseSBiZXN0IHRv
IGRpc2N1c3MgaXQgaGVyZS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gT24gVGh1LCBKYW4g
MzAsIDIwMjUgYXQgMDE6MDg6NTZQTSArMDAwMCwgRmxvcmVudCBUb21hc2luIHdyb3RlOg0KPiA+
ID4gPiA+ID4gPiBIaSwNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFRoaXMgaXMgYSBw
YXRjaCBzZXJpZXMgY292ZXJpbmcgdGhlIHN1cHBvcnQgZm9yIHByb3RlY3RlZCBtb2RlIGV4ZWN1
dGlvbiBpbg0KPiA+ID4gPiA+ID4gPiBNYWxpIFBhbnRob3IgQ1NGIGtlcm5lbCBkcml2ZXIuDQo+
ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBUaGUgTWFsaSBDU0YgR1BVcyBjb21lIHdpdGgg
dGhlIHN1cHBvcnQgZm9yIHByb3RlY3RlZCBtb2RlIGV4ZWN1dGlvbiBhdCB0aGUNCj4gPiA+ID4g
PiA+ID4gSFcgbGV2ZWwuIFRoaXMgZmVhdHVyZSByZXF1aXJlcyB0d28gbWFpbiBjaGFuZ2VzIGlu
IHRoZSBrZXJuZWwgZHJpdmVyOg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gMSkgQ29u
ZmlndXJlIHRoZSBHUFUgd2l0aCBhIHByb3RlY3RlZCBidWZmZXIuIFRoZSBzeXN0ZW0gbXVzdCBw
cm92aWRlIGEgRE1BDQo+ID4gPiA+ID4gPiA+ICAgIGhlYXAgZnJvbSB3aGljaCB0aGUgZHJpdmVy
IGNhbiBhbGxvY2F0ZSBhIHByb3RlY3RlZCBidWZmZXIuDQo+ID4gPiA+ID4gPiA+ICAgIEl0IGNh
biBiZSBhIGNhcnZlZC1vdXQgbWVtb3J5IG9yIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCBwcm90ZWN0
ZWQgbWVtb3J5IHJlZ2lvbi4NCj4gPiA+ID4gPiA+ID4gICAgU29tZSBzeXN0ZW0gaW5jbHVkZXMg
YSB0cnVzdGVkIEZXIHdoaWNoIGlzIGluIGNoYXJnZSBvZiB0aGUgcHJvdGVjdGVkIG1lbW9yeS4N
Cj4gPiA+ID4gPiA+ID4gICAgU2luY2UgdGhpcyBwcm9ibGVtIGlzIGludGVncmF0aW9uIHNwZWNp
ZmljLCB0aGUgTWFsaSBQYW50aG9yIENTRiBrZXJuZWwNCj4gPiA+ID4gPiA+ID4gICAgZHJpdmVy
IG11c3QgaW1wb3J0IHRoZSBwcm90ZWN0ZWQgbWVtb3J5IGZyb20gYSBkZXZpY2Ugc3BlY2lmaWMg
ZXhwb3J0ZXIuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFdoeSBkbyB5b3UgbmVlZCBhIGhl
YXAgZm9yIGl0IGluIHRoZSBmaXJzdCBwbGFjZT8gTXkgdW5kZXJzdGFuZGluZyBvZg0KPiA+ID4g
PiA+ID4geW91ciBzZXJpZXMgaXMgdGhhdCB5b3UgaGF2ZSBhIGNhcnZlZCBvdXQgbWVtb3J5IHJl
Z2lvbiBzb21ld2hlcmUsIGFuZA0KPiA+ID4gPiA+ID4geW91IHdhbnQgdG8gYWxsb2NhdGUgZnJv
bSB0aGF0IGNhcnZlZCBvdXQgbWVtb3J5IHJlZ2lvbiB5b3VyIGJ1ZmZlcnMuDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IEhvdyBpcyB0aGF0IGFueSBkaWZmZXJlbnQgZnJvbSB1c2luZyBhIHJl
c2VydmVkLW1lbW9yeSByZWdpb24sIGFkZGluZw0KPiA+ID4gPiA+ID4gdGhlIHJlc2VydmVkLW1l
bW9yeSBwcm9wZXJ0eSB0byB0aGUgR1BVIGRldmljZSBhbmQgZG9pbmcgYWxsIHlvdXINCj4gPiA+
ID4gPiA+IGFsbG9jYXRpb24gdGhyb3VnaCB0aGUgdXN1YWwgZG1hX2FsbG9jXyogQVBJPw0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IEhvdyBkbyB5b3UgdGhlbiBtdWx0aXBsZXggdGhpcyByZWdpb24g
c28gaXQgY2FuIGJlIHNoYXJlZCBiZXR3ZWVuDQo+ID4gPiA+ID4gR1BVL0NhbWVyYS9EaXNwbGF5
L0NvZGVjIGRyaXZlcnMgYW5kIGFsc28gdXNlcnNwYWNlID8NCj4gPiA+ID4gDQo+ID4gPiA+IFlv
dSBjb3VsZCBwb2ludCBhbGwgdGhlIGRldmljZXMgdG8gdGhlIHNhbWUgcmVzZXJ2ZWQgbWVtb3J5
IHJlZ2lvbiwgYW5kDQo+ID4gPiA+IHRoZXkgd291bGQgYWxsIGFsbG9jYXRlIGZyb20gdGhlcmUs
IGluY2x1ZGluZyBmb3IgdGhlaXIgdXNlcnNwYWNlLWZhY2luZw0KPiA+ID4gPiBhbGxvY2F0aW9u
cy4NCj4gPiA+IA0KPiA+ID4gSSBnZXQgdGhhdCB1c2luZyBtZW1vcnkgcmVnaW9uIGlzIHNvbWV3
aGF0IG1vcmUgb2YgYW4gSFcgZGVzY3JpcHRpb24sIGFuZA0KPiA+ID4gYWxpZ25lZCB3aXRoIHdo
YXQgYSBEVCBpcyBzdXBwb3NlZCB0byBkZXNjcmliZS4gT25lIG9mIHRoZSBjaGFsbGVuZ2UgaXMg
dGhhdA0KPiA+ID4gTWVkaWF0ZWsgaGVhcCBwcm9wb3NhbCBlbmR1cCBjYWxsaW5nIGludG8gdGhl
aXIgVEVFLCBtZWFuaW5nIGtub3dpbmcgdGhlIHJlZ2lvbg0KPiA+ID4gaXMgbm90IHRoYXQgdXNl
ZnVsLiBZb3UgYWN0dWFsbHkgbmVlZCB0aGUgVEVFIEFQUCBndWlkIGFuZCBpdHMgSVBDIHByb3Rv
Y29sLiBJZg0KPiA+ID4gd2UgY2FuIGRlbGwgZHJpdmVycyB0byB1c2UgYSBoZWFkIGluc3RlYWQs
IHdlIGNhbiBhYnN0cmFjdCB0aGF0IFNvQyBzcGVjaWZpYw0KPiA+ID4gY29tcGxleGl0eS4gSSBi
ZWxpZXZlIGVhY2ggYWxsb2NhdGVkIGFkZHJlc3NlZCBoYXMgdG8gYmUgbWFwcGVkIHRvIGEgem9u
ZSwgYW5kDQo+ID4gPiB0aGF0IGNhbiBvbmx5IGJlIGRvbmUgaW4gdGhlIHNlY3VyZSBhcHBsaWNh
dGlvbi4gSSBjYW4gaW1hZ2luZSBzaW1pbGFyIG5lZWRzDQo+ID4gPiB3aGVuIHRoZSBwcm90ZWN0
aW9uIGlzIGRvbmUgdXNpbmcgc29tZSBzb3J0IG9mIGEgVk0gLyBoeXBlcnZpc29yLg0KPiA+ID4g
DQo+ID4gPiBOaWNvbGFzDQo+ID4gPiANCj4gPiANCj4gPiBUaGUgaWRlYSBpbiB0aGlzIGRlc2ln
biBpcyB0byBhYnN0cmFjdCB0aGUgaGVhcCBtYW5hZ2VtZW50IGZyb20gdGhlDQo+ID4gUGFudGhv
ciBrZXJuZWwgZHJpdmVyICh3aGljaCBjb25zdW1lcyBhIERNQSBidWZmZXIgZnJvbSBpdCkuDQo+
ID4gDQo+ID4gSW4gYSBzeXN0ZW0sIGFuIGludGVncmF0b3Igd291bGQgaGF2ZSBpbXBsZW1lbnRl
ZCBhIHNlY3VyZSBoZWFwIGRyaXZlciwNCj4gPiBhbmQgY291bGQgYmUgYmFzZWQgb24gVEVFIG9y
IGEgY2FydmVkLW91dCBtZW1vcnkgd2l0aCByZXN0cmljdGVkIGFjY2VzcywNCj4gPiBvciBlbHNl
LiBUaGlzIGhlYXAgZHJpdmVyIHdvdWxkIGJlIHJlc3BvbnNpYmxlIG9mIGltcGxlbWVudGluZyB0
aGUNCj4gPiBsb2dpYyB0bzogYWxsb2NhdGUsIGZyZWUsIHJlZmNvdW50LCBldGMuDQo+ID4gDQo+
ID4gVGhlIGhlYXAgd291bGQgYmUgcmV0cmlldmVkIGJ5IHRoZSBQYW50aG9yIGtlcm5lbCBkcml2
ZXIgaW4gb3JkZXIgdG8NCj4gPiBhbGxvY2F0ZSBwcm90ZWN0ZWQgbWVtb3J5IHRvIGxvYWQgdGhl
IEZXIGFuZCBhbGxvdyB0aGUgR1BVIHRvIGVudGVyL2V4aXQNCj4gPiBwcm90ZWN0ZWQgbW9kZS4g
VGhpcyBtZW1vcnkgd291bGQgbm90IGJlbG9uZyB0byBhIHVzZXIgc3BhY2UgcHJvY2Vzcy4NCj4g
PiBUaGUgZHJpdmVyIGFsbG9jYXRlcyBpdCBhdCB0aGUgdGltZSBvZiBsb2FkaW5nIHRoZSBGVyBh
bmQgaW5pdGlhbGl6YXRpb24NCj4gPiBvZiB0aGUgR1BVIEhXLiBUaGlzIGlzIGEgZGV2aWNlIGds
b2JhbGx5IG93bmVkIHByb3RlY3RlZCBtZW1vcnkuDQo+IA0KPiBUaGUgdGhpbmcgaXMsIGl0J3Mg
cmVhbGx5IG5vdCBjbGVhciB3aHkgeW91IGFic29sdXRlbHkgbmVlZCB0byBoYXZlIHRoZQ0KPiBQ
YW50aG9yIGRyaXZlciBpbnZvbHZlZCB0aGVyZS4gSXQgd29uJ3QgYmUgdHJhbnNwYXJlbnQgdG8g
dXNlcnNwYWNlLA0KPiBzaW5jZSB5b3UnZCBuZWVkIGFuIGV4dHJhIGZsYWcgYXQgYWxsb2NhdGlv
biB0aW1lLCBhbmQgdGhlIGJ1ZmZlcnMNCj4gYmVoYXZlIGRpZmZlcmVudGx5LiBJZiB1c2Vyc3Bh
Y2UgaGFzIHRvIGJlIGF3YXJlIG9mIGl0LCB3aGF0J3MgdGhlDQo+IGFkdmFudGFnZSB0byB5b3Vy
IGFwcHJvYWNoIGNvbXBhcmVkIHRvIGp1c3QgZXhwb3NpbmcgYSBoZWFwIGZvciB0aG9zZQ0KPiBz
ZWN1cmUgYnVmZmVycywgYW5kIGxldHRpbmcgdXNlcnNwYWNlIGFsbG9jYXRlIGl0cyBidWZmZXJz
IGZyb20gdGhlcmU/DQoNClVubGVzcyBJJ20gbWlzdGFrZW4sIHRoZSBQYW50aG9yIGRyaXZlciBs
b2FkcyBpdHMgb3duIGZpcm13YXJlLiBTaW5jZSBsb2FkaW5nDQp0aGUgZmlybXdhcmUgcmVxdWly
ZXMgcGxhY2luZyB0aGUgZGF0YSBpbiBhIHByb3RlY3RlZCBtZW1vcnkgcmVnaW9uLCBhbmQgdGhh
dA0KdGhpcyBhc3BlY3QgaGFzIG5vIGV4cG9zdXJlIHRvIHVzZXJzcGFjZSwgaG93IGNhbiBQYW50
aG9yIG5vdCBiZSBpbXBsaWNhdGVkID8NCg0KPiANCj4gPiBXaGVuIEkgY2FtZSBhY3Jvc3MgdGhp
cyBwYXRjaCBzZXJpZXM6DQo+ID4gLQ0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAyMzA5MTEwMjMwMzguMzA2NDktMS15b25nLnd1QG1lZGlhdGVrLmNvbS8jdA0KPiA+IEkgZm91
bmQgaXQgY291bGQgaGVscCBhYnN0cmFjdCB0aGUgaW50ZXJmYWNlIGJldHdlZW4gdGhlIHNlY3Vy
ZSBoZWFwIGFuZA0KPiA+IHRoZSBpbnRlZ3JhdGlvbiBvZiBwcm90ZWN0ZWQgbWVtb3J5IGluIFBh
bnRob3IuDQo+ID4gDQo+ID4gQSBrZXJuZWwgZHJpdmVyIHdvdWxkIGhhdmUgdG8gZmluZCB0aGUg
aGVhcDogYGRtYV9oZWFwX2ZpbmQoKWAsIHRoZW4NCj4gPiByZXF1ZXN0IGFsbG9jYXRpb24gb2Yg
YSBETUEgYnVmZmVyIGZyb20gaXQuIFRoZSBoZWFwIGRyaXZlciB3b3VsZCBkZWFsDQo+ID4gd2l0
aCB0aGUgc3BlY2lmaXRpZXMgb2YgdGhlIHByb3RlY3RlZCBtZW1vcnkgb24gdGhlIHN5c3RlbS4N
Cj4gDQo+IFN1cmUsIGJ1dCB3ZSBzdGlsbCBoYXZlIHRvIGFkZHJlc3MgKndoeSogaXQgd291bGQg
YmUgYSBnb29kIGlkZWEgZm9yIHRoZQ0KPiBkcml2ZXIgdG8gZG8gaXQgaW4gdGhlIGZpcnN0IHBs
YWNlLiBUaGUgbWVkaWF0ZWsgc2VyaWVzIGhhZCB0aGUgc2FtZQ0KPiBmZWVkYmFjay4NCg0KV2hp
Y2ggZ290IHByZXR0eSBjbGVhciByZXBsaWVzIGlpcmMuIFRoZSBkcml2ZXJzIG5lZWRzIHNjcmF0
Y2ggYnVmZmVycyBhbmQNCnNlY29uZGFyeSBidWZmZXJzIHRvIGJlIHByb3RlY3RlZCwgYW5kIHRo
ZXNlIGFyZSBub3QgdmlzaWJsZSB0byB1c2Vyc3BhY2UuIE5vDQpvbmUgaGF2ZSBtYWRlIGEgcHJv
cGVyIGNvdW50ZXIgYXJndW1lbnQgeWV0LiBJbiBNVEssIHRoZSByZW1vdGUtcHJvYyBkcml2ZXIg
Zm9yDQp0aGUgU0NQIChhIG11bHRpLXB1cnBvc2UgbXVsdGltZWRpYSBjby1wcm9jZXNzb3IpIHdp
bGwgYWxzbyBuZWVkIHRvIHBsYWNlIHRoZQ0KZmlybXdhcmUgZGF0YSBpbnRvIGEgcHJvdGVjdGVk
IGJ1ZmZlciAod2l0aCB0aGUgaGVscCBvZiB0aGUgdGVlIHRvIGNvcHkgdGhlIGRhdGENCmludG8g
aXQgb2YgY291cnNlKS4NCg0KTmljb2xhcw0KDQo+IA0KPiBNYXhpbWUNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
