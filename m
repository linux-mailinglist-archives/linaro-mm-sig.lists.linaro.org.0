Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKmZERGaC2rUJwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:00:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BDF574D95
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:00:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C02CE406B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:00:31 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 49ED14015B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:00:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GKBaQ9DW;
	spf=pass (lists.linaro.org: domain of baohua@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=baohua@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A3A634020C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:00:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88915C2BCB8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779145220;
	bh=IdMsK7+qqBktFYOQdPjrszNAWNg59HWQ7/X9tF03+KA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GKBaQ9DWHDRe9+tG++ZPlIoQ4CugNvI5+ftXhfTi6txThm87onadLleybQl4vz+Fx
	 sv91RZTsVD3QK0BlRLPvGh7h1DhdF80k0Lok7aGRNy2DCOziFvTd98IBLPvVCl8feD
	 SSQcbGvHwkJ312D/2okkCTyEYk9E+ZwtFGmc1IKWyasVecqiBKSNe7CtdrP9kZoroC
	 15bohK+iE5wRBtNNUs3c52ZfMsZqNg8ZSZzeuYL4/R44GCKrcSK4BCI6CTHKf0nH0n
	 IMU+jccKSztoDoclFBGrt/8LSp8aFKReAOTI9T0eTq9oNQ176bY7MH0VEHiaSuhcon
	 GbWWlR1F98aGQ==
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-63329e1c77aso753603137.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:00:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8RUyuDvIkHgH5t7CCHbPDaKKo4iixqRPYzFsMV5HKcUf97PuPHzPDUx6vBn70EpE4hPl3pkM3XDdTToCdT@lists.linaro.org
X-Gm-Message-State: AOJu0YwIyDHehMsipy5XNGxEuZ05g7j+j1rwHMagTDkZ/ftthNRdPX/b
	pscL8s8kVpS0RJRONo3yNV3sKj2qD5zsYMLrSdo4JMBYirMQTKxb7a+AcGOMbW5SgRg3kyCVAtu
	Fl01z3r84tzOIRmQUd+wmFwtYmkrHIdA=
X-Received: by 2002:a05:6102:8649:10b0:65a:fcea:5a4 with SMTP id
 ada2fe7eead31-65afcea0ff6mr1668580137.4.1779145219252; Mon, 18 May 2026
 16:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CADSE00Jq_uvNgvxgPze0mEdUd+hF4-DPZkHy0KroWHZzygf4WA@mail.gmail.com>
 <CABdmKX3DhejYBis9htLDnzPrG7vuF3R3URLVNEbnyd61SSsx=g@mail.gmail.com>
 <CAGsJ_4zyecY6E-=Tm4_couT7uoM9LMcFdTMUPkZAjj4zUKE-dQ@mail.gmail.com> <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com>
In-Reply-To: <cb84c2ee-9de1-4565-b2e0-60984721228f@amd.com>
From: Barry Song <baohua@kernel.org>
Date: Tue, 19 May 2026 07:00:07 +0800
X-Gmail-Original-Message-ID: <CAGsJ_4z121v4tK_3+j-hkD7HH0gH3w8tWD8nk0CwRhFE5T+4Og@mail.gmail.com>
X-Gm-Features: AVHnY4J-roggZZXq-3fecPrif-MI9m_xhdL-W3ahLsaa5t4gx3NgfHLdPTzAVis
Message-ID: <CAGsJ_4z121v4tK_3+j-hkD7HH0gH3w8tWD8nk0CwRhFE5T+4Og@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: YP5UYURQTTXIGC7QAFZAJGISVVRZ375U
X-Message-ID-Hash: YP5UYURQTTXIGC7QAFZAJGISVVRZ375U
X-MailFrom: baohua@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: "T.J. Mercier" <tjmercier@google.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.ke
 rnel.org, dri- <devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YP5UYURQTTXIGC7QAFZAJGISVVRZ375U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[36];
	FREEMAIL_CC(0.00)[google.com,redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.ke,lists.freedesktop.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[baohua@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: C8BDF574D95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMzozNOKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzE2LzI2IDExOjE5LCBCYXJy
eSBTb25nIHdyb3RlOg0KPiA+IE9uIFRodSwgTWF5IDE0LCAyMDI2IGF0IDEyOjM14oCvQU0gVC5K
LiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gWy4uLl0NCj4gPj4+
PiBJIGhhdmUgYSBxdWVzdGlvbiBhYm91dCB0aGlzIHBhcnQuIEFsYmVydCBJIGd1ZXNzIHlvdSBh
cmUgaW50ZXJlc3RlZA0KPiA+Pj4+IG9ubHkgaW4gYWNjb3VudGluZyBkbWFidWYtaGVhcCBhbGxv
Y2F0aW9ucywgb3IgZG8geW91IGV4cGVjdCB0byBhZGQNCj4gPj4+PiBfX0dGUF9BQ0NPVU5UIG9y
IG1lbV9jZ3JvdXBfY2hhcmdlX2RtYWJ1ZiBjYWxscyB0byBvdGhlcg0KPiA+Pj4+IG5vbi1kbWFi
dWYtaGVhcCBleHBvcnRlcnM/DQo+ID4+Pg0KPiA+Pj4gV2UncmUgc2NvcGluZyB0aGlzIHRvIGRt
YS1idWYgaGVhcHMgZm9yIG5vdy4gQ01BIGhlYXBzIGFuZCB0aGUgZG1lbQ0KPiA+Pj4gY29udHJv
bGxlciBhcmUgb24gdGhlIHJhZGFyIGZvciBmb2xsb3ctdXAvcGFyYWxsZWwgd29yayAodGhlcmUg
d2lsbCBiZQ0KPiA+Pj4gZHJhZ29ucyBhbmQgd2lsbCBzdXJlbHkgbmVlZCBkaXNjdXNzaW9uKS4g
Rm9yIERSTSBhbmQgVjRMMiB0aGUNCj4gPj4+IGxvbmctdGVybSBpbnRlbnQgaXMgbWlncmF0aW9u
IHRvIGhlYXBzLCB3aGljaCB3b3VsZCBtYWtlIGRpcmVjdA0KPiA+Pj4gYWNjb3VudGluZyBvbiB0
aG9zZSBwYXRocyB1bm5lY2Vzc2FyeS4NCj4gPj4NCj4gPj4gQWggSSBzZWUuIEdFTSBidWZmZXJz
IGV4cG9ydGVkIHRvIGRtYWJ1ZnMgYXJlIHdoYXQgSSBoYWQgaW4gbWluZC4gSQ0KPiA+PiBndWVz
cyB0aGlzIHdvdWxkIG9ubHkgbGVhdmUgdGhlIG9kZCBub24tRFJNIGRyaXZlciB3aXRoIHRoZSBu
ZWVkIHRvDQo+ID4+IGFkZCB0aGVpciBvd24gYWNjb3VudGluZyBjYWxscywgd2hpY2ggSSBkb24n
dCBleHBlY3Qgd291bGQgYmUgYSBiaWcNCj4gPj4gcHJvYmxlbS4NCj4gPj4NCj4gPg0KPiA+IHNv
dW5kcyBsaWtlIHdlIHN0aWxsIGhhdmUgYSBsb25nIHdheSB0byBnbyB0byBjb3JyZWN0bHkgYWNj
b3VudCBmb3INCj4gPiB2YXJpb3VzIHY0bDIsIGRybSwgR0VNLCBDTUEsIGV0Yy4gSW4gcGF0Y2gg
MSwgdGhlIGNoYXJnaW5nIGlzIGRvbmUgaW4NCj4gPiBkbWFfYnVmX2V4cG9ydCgpLCBzbyBJIGd1
ZXNzIGl0IGNvdmVycyBhbGwgZG1hLWJ1ZiB0eXBlcyBleGNlcHQNCj4gPiBkbWFfaGVhcCwgYnV0
IHRoZSBwcm9ibGVtIGlzIHRoYXQgaXQgaGFzIG5vIHJlbW90ZSBjaGFyZ2luZyBzdXBwb3J0IGF0
DQo+ID4gYWxsPw0KPg0KPiBObywganVzdCB0aGUgb3RoZXIgd2F5IGFyb3VuZA0KPg0KPiBETUEt
YnVmIGhlYXBzIGNhbiBiZSBoYW5kbGVkIGhlcmUgYmVjYXVzZSB3ZSBrbm93IHRoYXQgaXQgaXMg
cHVyZSBzeXN0ZW0gbWVtb3J5IGFuZCBub3RoaW5nIHNwZWNpYWwgc28gbWVtY2cgYWx3YXlzIGFw
cGxpZXMuDQo+DQo+IGRtYV9idWZfZXhwb3J0KCkgb24gdGhlIG90aGVyIGhhbmQgaGFuZGxlcyB0
b25zIG9mIGRpZmZlcmVudCB1c2UgY2FzZXMsIHJhbmdpbmcgZnJvbSBidWZmZXIgYWNjb3VudGVk
IHRvIGRtZW0sIG92ZXIgc3BlY2lhbCByZXNvdXJjZXMgd2hpY2ggYXJlbid0IGV2ZW4gbWVtb3J5
IGFsbCB0aGUgd2F5IHRvIGJ1ZmZlcnMgd2hpY2ggY2FuIG1pZ3JhdGUgZnJvbSBkbWVtIHRvIG1l
bWNnIGFuZCBiYWNrIGR1cmluZyB0aGVpciBsaWZldGltZS4NCj4NCg0KSGkgQ2hyaXN0aWFuLA0K
DQpUaGFua3MgdmVyeSBtdWNoIGZvciB5b3VyIGV4cGxhbmF0aW9uLiBTbyBiYXNpY2FsbHkgaXQg
c2VlbXMgdGhhdA0KZG1hX2J1Zl9leHBvcnQoKSBpcyBub3QgdGhlIHByb3BlciBwbGFjZSB0byBj
aGFyZ2UsIHNpbmNlIGl0IG1heSBlbmQgdXANCm1peGluZyBpbiBub24tc3lzdGVtLW1lbW9yeSBh
Y2NvdW50aW5nPw0KDQpNeSBxdWVzdGlvbiBpcyBhbHNvIGFib3V0IHRoZSBnbG9iYWwgdmlldyBm
b3IgYm90aCBoZWFwIGFuZCBub24taGVhcCBjYXNlcy4NCkFmdGVyIHJlYWRpbmcgdGhlIGRpc2N1
c3Npb24sIEnigJl2ZSB0cmllZCB0byBzdW1tYXJpemUgaXTigJRwbGVhc2UgbGV0IG1lIGtub3cN
CmlmIG15IHVuZGVyc3RhbmRpbmcgaXMgY29ycmVjdC4NCg0KZm9yIGRtYV9oZWFwLCB3ZSBoYXZl
IHRoZSBpb2N0bCBETUFfSEVBUF9JT0NUTF9BTExPQywgd2hlcmUgdXNlcnMgY2FuIHBhc3MgYQ0K
cmVtb3RlIHBpZGZkIG9yIHNpbWlsYXIgaW5mb3JtYXRpb24gdG8gaW5kaWNhdGUgd2hlcmUgdGhl
IGRtYS1idWYgc2hvdWxkIGJlDQpjaGFyZ2VkLCBhcyBpbiBBbGJlcnQncyBwYXRjaHNldC4NCg0K
Rm9yIG5vbi1kbWFfaGVhcCBkbWEtYnVmcywgd2UgZG9u4oCZdCBoYXZlIGFuIG9idmlvdXMgdXNl
cnNwYWNlIGVudHJ5IHBvaW50IHRoYXQNCnRyaWdnZXJzIHRoZSBhbGxvY2F0aW9uLiBTbyB3ZSBs
aWtlbHkgbmVlZCBvdGhlciBhcHByb2FjaGVzLiBXZSBjb3VsZCBlaXRoZXINCm1vdmUgbW9yZSBk
cml2ZXJzIG92ZXIgdG8gZG1hLWhlYXAsIG9yIGludHJvZHVjZSBzb21ldGhpbmcgbGlrZQ0KRE1B
X0JVRl9JT0NUTF9YRkVSX0NIQVJHRSwgYXMgeW91IGFyZSBkaXNjdXNzaW5nLCB0byBsZXQgdXNl
cnNwYWNlIGV4cGxpY2l0bHkNCmRlY2xhcmUgYSBjaGFyZ2UuDQoNCkJlc3QgUmVnYXJkcw0KQmFy
cnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
