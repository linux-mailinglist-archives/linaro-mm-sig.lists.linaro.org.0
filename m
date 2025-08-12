Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73415B22787
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 14:57:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D9744432A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Aug 2025 12:57:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 096174432A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 12:57:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FFY21p6f;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 917835C6712
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 12:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D2EC4CEF0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755003425;
	bh=qghFQCOOR0UBMf1erX9Gzu5+pSrhr+ojvuByHjWtUkg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FFY21p6fWGgX3tqv+54v6/2y2QKYGHPBYVWxO3SccGYmbsLOdENRKVqo8ykjz4E/+
	 Vg5erN9uAv+YdUjlYBiJUL4f9SlUiuA89a83P/EGxTptUX7cDAcRGUvEdp5+5DtOI8
	 BKG3YuGzpnu2RhQNOv/xAuP98l/0xoAClzpXC2PWnJ7Uewk0ioGtB7KatkF/nrJdwt
	 +kVkcXwM+pnrZQOJJs3MH3Gh8ntbmhXncvjlgdBB+WkvjjKL8K0r4F98rdQ6krIiu5
	 P0oiUvraDeQjLVYxZeiGEv6diX8HWgdI0Iiq5oVrY8IMfXZlhNhV9PtImwnWNK7hKQ
	 HMZsLT8biUy7A==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-af96524c5a9so705777966b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 05:57:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWyD3CUA7BXOPg5Dm7aDG5xO43xxY+QT3oBz2vBbhwI0rGqk/egkIxTV7BjPv2I4dhOlspHsj0stMb1ttjD@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3gUMThJP5a7ReudrwPcL2o4YGPH59PjyDf5l9KIH2M9JDr++N
	WOA/BUJe2cRjBiBwx811M8NSqrxX1UmSAJ57OIXGiXQCi6pfXGN6Dc51WaBzzEh5crfn270doOP
	E/8T3xwINKpSOppSclh1ccFv+zfBh0Q==
X-Google-Smtp-Source: AGHT+IFDUbbe2PhMsIRWb9q1ckE7Y9HH+PJ5GWNSinNHIim73doYwGhVoAfafcP5txHzDsr8Ed8+WkTjBqTHjyEPdqM=
X-Received: by 2002:a17:906:4796:b0:af9:8c20:145b with SMTP id
 a640c23a62f3a-af9c634f563mr1528914666b.10.1755003423802; Tue, 12 Aug 2025
 05:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org> <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
 <8a872e48-0743-43b0-8259-70d6b8e4c221@suse.de>
In-Reply-To: <8a872e48-0743-43b0-8259-70d6b8e4c221@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Tue, 12 Aug 2025 07:56:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJL5sy7Otzo7R8mYW_-7s+ajggjtuW7tYBnVxYPaJHs+w@mail.gmail.com>
X-Gm-Features: Ac12FXwuFSQu1fZPX73cq3WQKGjboa7GxXCNwN2iRczUjfXBezoHJpzIMA5o6NE
Message-ID: <CAL_JsqJL5sy7Otzo7R8mYW_-7s+ajggjtuW7tYBnVxYPaJHs+w@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DWL_DNSWL_LOW(-1.00)[kernel.org:dkim];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 096174432A
X-Spamd-Bar: ---
Message-ID-Hash: AXSZGMCBK7YX6Y7HSHCJLSIT2ENVU4XS
X-Message-ID-Hash: AXSZGMCBK7YX6Y7HSHCJLSIT2ENVU4XS
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXSZGMCBK7YX6Y7HSHCJLSIT2ENVU4XS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMTIsIDIwMjUgYXQgNjowMeKAr0FNIFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPiB3cm90ZToNCj4NCj4gSGkNCj4NCj4gQW0gMTEuMDguMjUgdW0gMjM6
MDUgc2NocmllYiBSb2IgSGVycmluZyAoQXJtKToNCj4gPiBBZGQgYSBkcml2ZXIgZm9yIEFybSBF
dGhvcy1VNjUvVTg1IE5QVXMuIFRoZSBFdGhvcy1VIE5QVSBoYXMgYQ0KPiA+IHJlbGF0aXZlbHkg
c2ltcGxlIGludGVyZmFjZSB3aXRoIHNpbmdsZSBjb21tYW5kIHN0cmVhbSB0byBkZXNjcmliZQ0K
PiA+IGJ1ZmZlcnMsIG9wZXJhdGlvbiBzZXR0aW5ncywgYW5kIG5ldHdvcmsgb3BlcmF0aW9ucy4g
SXQgc3VwcG9ydHMgdXAgdG8gOA0KPiA+IG1lbW9yeSByZWdpb25zICh0aG91Z2ggbm8gaC93IGJv
dW5kcyBvbiBhIHJlZ2lvbikuIFRoZSBFdGhvcyBOUFVzDQo+ID4gYXJlIGRlc2lnbmVkIHRvIHVz
ZSBhbiBTUkFNIGZvciBzY3JhdGNoIG1lbW9yeS4gUmVnaW9uIDIgaXMgcmVzZXJ2ZWQNCj4gPiBm
b3IgU1JBTSAobGlrZSB0aGUgZG93bnN0cmVhbSBkcml2ZXIgc3RhY2sgYW5kIGNvbXBpbGVyKS4g
VXNlcnNwYWNlDQo+ID4gZG9lc24ndCBuZWVkIGFjY2VzcyB0byB0aGUgU1JBTS4NCj4gPg0KPiA+
IFRoZSBoL3cgaGFzIG5vIE1NVSBub3IgZXh0ZXJuYWwgSU9NTVUgYW5kIGlzIGEgRE1BIGVuZ2lu
ZSB3aGljaCBjYW4NCj4gPiByZWFkIGFuZCB3cml0ZSBhbnl3aGVyZSBpbiBtZW1vcnkgd2l0aG91
dCBoL3cgYm91bmRzIGNoZWNrcy4gVGhlIHVzZXINCj4gPiBzdWJtaXR0ZWQgY29tbWFuZCBzdHJl
YW1zIG11c3QgYmUgdmFsaWRhdGVkIGFnYWluc3QgdGhlIGJvdW5kcyBvZiB0aGUNCj4gPiBHRU0g
Qk9zLiBUaGlzIGlzIHNpbWlsYXIgdG8gdGhlIFZDNCBkZXNpZ24gd2hpY2ggdmFsaWRhdGVzIHNo
YWRlcnMuDQo+ID4NCj4gPiBUaGUgam9iIHN1Ym1pdCBpcyBiYXNlZCBvbiB0aGUgcm9ja2V0IGRy
aXZlciBmb3IgdGhlIFJvY2tjaGlwIE5QVQ0KPiA+IHV0aWxpemluZyB0aGUgR1BVIHNjaGVkdWxl
ci4gSXQgaXMgc2ltcGxlciBhcyB0aGVyZSdzIG9ubHkgMSBjb3JlIHJhdGhlcg0KPiA+IHRoYW4g
My4NCj4gPg0KPiA+IFRlc3RlZCBvbiBpLk1YOTMgcGxhdGZvcm0gKFU2NSkgd2l0aCBXSVAgTWVz
YSBUZWZsb24gc3VwcG9ydC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChB
cm0pIDxyb2JoQGtlcm5lbC5vcmc+DQo+DQo+IEkndmUgbG9va2VkIG92ZXIgdGhpcyBwYXRjaCBh
bmQgaXQgbG9va3MgZ29vZCB0byBtZS4gVGhlcmUncyBhDQo+IGRldl9pbmZvKCkgaW4gZXRob3Nf
aW5pdCgpIG9mIHdoaWNoIEkgdGhpbmsgaXQgc2hvdWxkIGJlY29tZSBkcm1fZGJnKCkuDQo+IEFu
eXdheQ0KDQpJIHByZWZlciB0byBwcmludCBvdXQgd2hhdCBoL3cgd2UndmUgZGlzY292ZXJlZC4g
VGhhdCdzIGEgZmFpcmx5DQpjb21tb24gcGF0dGVybiBmb3IgZHJpdmVycyAoYW5kIG1vcmUgdXNl
ZnVsIHRoYW4gYW5ub3VuY2luZyBkcml2ZXJzDQp0aGF0IG9ubHkgbG9hZGVkKS4NCg0KPiBBY2tl
ZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQoNClRoYW5rcyEN
Cg0KPiBTaWRlIG5vdGU6IEkgbm90aWNlZCB0aGF0IHRoZXJlJ3MgYnVmZmVyLWFsbG9jYXRpb24g
Y29kZSBoZXJlIHRoYXQNCj4gcmVpbnZlbnRzIGR1bWIgYnVmZmVycy4gV2UndmUgb2NhdGlvbmFs
bHkgdGFsa2VkIGFib3V0IGNyZWF0aW5nIGEgYmV0dGVyDQo+IGR1bWItYnVmZmVycyBpb2N0bCBp
bnRlcmZhY2UgYW5kIHRoaXMgZHJpdmVycyBjb3VsZCBiZSBhbm90aGVyIHVzZSBjYXNlLg0KDQpZ
ZWFoLiBJbiB0aGUgcGFzdCBJIGdvdCB0b2xkIGRvbid0IHVzZSBkdW1iIGJ1ZmZlcnMgQVBJcyBm
b3IgYW55dGhpbmcNCmJ1dCBkdW1iIHNjYW5vdXQgYnVmZmVycy4gSSBndWVzcyB3aXRoIGVub3Vn
aCBjb3BpZXMgb3BpbmlvbnMNCmNoYW5nZS4uLg0KDQpSb2INCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
