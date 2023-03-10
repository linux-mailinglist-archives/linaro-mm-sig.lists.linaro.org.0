Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA26BBAF4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:33:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3876D3F071
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:33:36 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id BD6663F32A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 09:58:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=CSsTogLb;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 6FBC441A42;
	Fri, 10 Mar 2023 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678442307;
	bh=LtN6uEnQFoBBfW+UmMREhhL0TvAkXsTHFcube89Rcuw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CSsTogLbJ3+SxBlBKcTuPYgblHdktTZu1HtKPXoPnaBU+cKpuTN10fypVp6me00ef
	 eNGwg2sMWRri3vEnU4E0ykBDd9sXMphBoUWkPxumA6xtcEYE9niya2+7j6JjiJ4Y2s
	 9rxT78EC45uAbC5SXf291ZnB7QuIb8wICC+yup3fbFtMSxmvCEgRQwws/qsoHQ6MnX
	 ZJAXAXwYg+QQ9hcc2WILdf9BUVfaKDlXPGERhlbAABogVm/qXIDOIXMqqHKTzeVEs3
	 poikebzHhh6jfA+hrZJi0cvL1GX8ZfXtdRx3T18CW0etJh7KIHy43te+QOsiDojZrG
	 SbvEOhWTqUk6A==
Message-ID: <25349030-5cc6-90a2-f1d2-4f9a67c4f194@asahilina.net>
Date: Fri, 10 Mar 2023 18:58:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Faith Ekstrand <faith.ekstrand@collabora.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
 <585fa052-4eff-940e-b307-2415c315686a@amd.com>
 <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
 <7b39ef96-3ec5-c492-6e1b-bf065b7c90a2@amd.com>
 <0f14c1ae-0c39-106c-9563-7c1c672154c0@asahilina.net>
 <e18500b5-21a0-77fd-8434-86258cefce5a@amd.com>
 <8696d00a-c642-b080-c19a-b0e619e4b585@asahilina.net>
 <5f0814a3-4be3-a609-d3b3-dd51a4f459a1@amd.com>
 <9403e89d-a78f-8abd-2869-20da23d89475@asahilina.net>
 <777dea65ef81c402d0765b1244b40633c483f4b2.camel@collabora.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <777dea65ef81c402d0765b1244b40633c483f4b2.camel@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BD6663F32A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[collabora.com,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[212.63.210.85:server fail]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F6ECLJIZBOADM5PQZ3MEHBU5VNEEM5F3
X-Message-ID-Hash: F6ECLJIZBOADM5PQZ3MEHBU5VNEEM5F3
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:27:14 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F6ECLJIZBOADM5PQZ3MEHBU5VNEEM5F3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTAvMDMvMjAyMyAwNC41OSwgRmFpdGggRWtzdHJhbmQgd3JvdGU6DQo+IE9uIFRodSwgMjAy
My0wMy0wOSBhdCAxODo0MyArMDkwMCwgQXNhaGkgTGluYSB3cm90ZToNCj4+IE9uIDA5LzAzLzIw
MjMgMTcuNDIsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gTG9uZyBzdG9yeSBzaG9ydDog
RG9uJ3QgZG8gdGhpcyEgVGhpcyBpcyB3aGF0IHRoZSBXaW5kb3dzIGRyaXZlcnMNCj4+PiBoYXZl
IA0KPj4+IGJlZW4gZG9pbmcgYW5kIGl0IGNyZWF0ZXMgdG9ucyBvZiBwcm9ibGVtcy4NCj4gDQo+
IFllYWgsIHdlIHRyaWVkIHRvIGRvIGEgYml0IG9mIHRoYXQgaW4gdGhlIEdMIGRheXMuICBJdCB3
YXMgYSBiYWQgaWRlYS4NCg0KSSB0aGluayBJIHNob3VsZCBjbGFyaWZ5OiBJIHdhcyBwcm9wb3Np
bmcgcmUtcXVldWVpbmcgaW5ub2NlbnQgam9icyBmcm9tDQppbm5vY2VudCBxdWV1ZXMvVk1zIHRo
YXQgd2VyZSBpbXBhY3RlZCBieSBhIGZhdWx0LiBUaGUgcmVhc29uIGlzIHRoYXQgd2UNCm1heSBi
ZSBhYmxlIHRvIHR3ZWFrIGZpcm13YXJlIHN0YXRlIHRvIGZvcmNlIGl0IHRvIGRvIHRoYXQgc2Fm
ZWx5LA0KZHVyaW5nIHRoZSBmaXJtd2FyZSByZWNvdmVyeSBjeWNsZSwgc3VjaCB0aGF0IGFuIGFi
b3J0ZWQgam9iIHJlc3RhcnRzDQphbmQgdGhlbiBzdWJzZXF1ZW50IGpvYnMvY29tbWFuZHMgY29u
dGludWUgYXMgbm9ybWFsLiBXZSBjYW4ndCBsZWF2ZSBpdA0KdG8gdXNlcnNwYWNlIGJlY2F1c2Ug
aWYgd2UgZG8gbm90aGluZywgdGhlIGFmZmVjdGVkIGpvYiBlbmRzIHVwDQppbmNvbXBsZXRlIGJ1
dCB0aGVuIGV2ZXJ5dGhpbmcgYWZ0ZXIgaXQgdGhhdCBpcyBhbHJlYWR5IHF1ZXVlZCBzdGlsbA0K
cnVucywgYW5kIHRoYXQgaXMgZGVmaW5pdGVseSBhIHJlY2lwZSBmb3IgYSBiaWdnZXIgbWVzcyBp
ZiB1c2Vyc3BhY2UNCndhbnRzIHRvIHNlYW1sZXNzbHkgcmVjb3Zlci4gVGhlIGZpcm13YXJlIHJl
Y292ZXJ5IGN5Y2xlIGlzIGENCiJzdG9wLXRoZS13b3JsZCIgc2l0dWF0aW9uIGZvciB0aGUgR1BV
ICh0aGUgZmlybXdhcmUgbGl0ZXJhbGx5DQpidXN5LWxvb3BzIHdhaXRpbmcgZm9yIHRoZSBkcml2
ZXIgdG8gc2V0IGEgY29udGludWUgZmxhZyBpbiBtZW1vcnkuLi4pLA0Kc28gdGhhdCdzIHRoZSBv
bmx5IHJlYWwgY2hhbmNlIHRoYXQgdGhlIGRyaXZlciBnZXRzIHRvIG1ha2UgZGVjaXNpb25zDQph
Ym91dCB3aGF0IGlzIGdvaW5nIHRvIGhhcHBlbiBuZXh0Lg0KDQpPZiBjb3Vyc2UsIHRoYXQgb25s
eSB3b3JrcyBpZiBpbmRpdmlkdWFsIHBvc3NpYmx5IGNvbmN1cnJlbnRseSBydW5uaW5nDQpjb21t
YW5kcyBhcmUgaWRlbXBvdGVudCwgYnV0IEkgdGhpbmsgYSBsb3Qgb2YgdHlwaWNhbCBHUFUgd29y
ayBpcz8gKEUuZy4NCmFueSByZW5kZXIgcGFzcyB3aXRob3V0IHNpZGUgZWZmZWN0cyBvdGhlciB0
aGFuIHRoZSByZW5kZXIgdGFyZ2V0cyBhbmQNCndoZXJlIHRoZSBiYWNrZ3JvdW5kIHNoYWRlciBk
b2VzIG5vIGxvYWRzLCBvciBldmVuIHJlbmRlciBwYXNzZXMgdGhhdCBkbw0KbG9hZHMgYnV0IHdo
ZXJlIGFsbCBkcmF3cyBhcmUgb3BhcXVlLCB3aGljaCBhcmUgYWxsIHRoaW5ncyB0aGUgY3VycmVu
dA0KR2FsbGl1bSBkcml2ZXIgaXMgaW50aW1hdGVseSBmYW1pbGlhciB3aXRoIHNpbmNlIENyYXp5
IFRpbGVyDQpPcHRpbWl6YXRpb25z4oSiIG5lZWQgdGhhdCBpbmZvIHRvIGJlIHByb3ZpZGVkIGFu
eXdheSkuIFNvIEkgd2FzIHdvbmRlcmluZw0Kd2hldGhlciBpdCdkIG1ha2Ugc2Vuc2UgdG8gaGF2
ZSBzdWNoIGFuIGlkZW1wb3RlbmN5L3Jlc3RhcnRhYmxlIGZsYWcgb24NCmpvYiBzdWJtaXNzaW9u
LCBhbmQgdGhlbiB0aGUgZHJpdmVyIHdvdWxkIGRvIGl0cyBiZXN0IHRvIHJlY292ZXIgYW5kDQpy
ZXJ1biBpdCBpZiBpdCBnZXRzIGtpbGxlZCBieSBhbiB1bnJlbGF0ZWQgY29uY3VycmVudCBiYWQg
am9iLg0KDQpUaGVuIGFnYWluIHRoaXMgYWxsIGRlcGVuZHMgb24gYW4gaW52ZXN0aWdhdGlvbiBp
bnRvIHdoYXQgd2UgKmNhbiogZG8NCmR1cmluZyBmaXJtd2FyZSByZWNvdmVyeSB0aGF0IGhhc24n
dCBoYXBwZW5lZCBhdCBhbGwgeWV0LiBJdCBtaWdodCBiZQ0KdGhhdCBpdCBpc24ndCBzYWZlIHRv
IGRvIGFueXRoaW5nIHJlYWxseSwgb3IgdGhhdCBkb2luZyB0aGluZ3MgZGVwZW5kcw0Kb24gdG91
Y2hpbmcgZXZlbiBkZWVwZXIgZmlybXdhcmUgc3RhdGUgc3RydWN0cyB0aGF0IHdlIHRyZWF0IGFz
IG9wYXF1ZQ0KcmlnaHQgbm93IGFuZCB3ZSByZWFsbHkgZG9uJ3Qgd2FudCB0byBoYXZlIHRvIHRv
dWNoLi4uDQoNCkJ1dCBtYXliZSBub25lIG9mIHRoaXMgaXMgd29ydGggaXQgaW4gcHJhY3RpY2Us
IGl0IGp1c3Qgc291bmRlZCBsaWtlIGl0DQpjb3VsZCBiZSB1c2VmdWwgbWF5YmU/DQoNCk5vdyB0
aGF0IEkgbG9vayBhdCBpdCwgd2UgaGF2ZSBhIGxvdmVseSAid2hhdCBpcyB0aGlzIGZsYWcgZG9p
bmcgYW55d2F5Ig0KYml0IGFscmVhZHkgcGFzc2VkIGZyb20gTWVzYSB0aHJvdWdoIHRvIHRoZSBm
aXJtd2FyZSB3ZSBjYWxsZWQNCkFTQUhJX1JFTkRFUl9TRVRfV0hFTl9SRUxPQURJTkdfWl9PUl9T
IHdoaWNoLCBub3cgdGhhdCBJIGxvb2sgYXQgaXQsIGlzDQphY3R1YWxseSBnZXR0aW5nIHNldCB3
aGVuIGFueSBhdHRhY2htZW50IChhbnkgY29sb3IsIFosIFMpIGlzIG5vdCBiZWluZw0KY2xlYXJl
ZCBmb3IgdGhhdCBwYXNzIChzbyBpdCdzIGxvYWRlZCkuIFRoYXQgY291bGQgdmVyeSB3ZWxsIGJl
IGFuICJpcw0Kbm90IGlkZW1wb3RlbnQiIGZsYWcuLi4gYW5kIG1heWJlIHRoYXQgbWVhbnMgdGhl
IGZpcm13YXJlIGRvZXMgdGhpcyBmb3INCnVzIGFscmVhZHk/IFNvdW5kcyBsaWtlIHNvbWV0aGlu
ZyB0byB0ZXN0Li4uIEkgbWlnaHQgaGF2ZSBzb21lIDE2S3gxNksNCkdMbWFyayBydW5zIHRvIGRv
IGNvbmN1cnJlbnQgd2l0aCBhbiBldmlsIGZhdWx0aW5nIGpvYiBub3cgXl4gKGFuZCB0aGVuDQp0
aGF0IGFsc28gbWVhbnMgd2UgbmVlZCB0byBzZXQgaXQgd2hlbiBzaGFkZXJzIGhhdmUgc2lkZSBl
ZmZlY3RzIGFuZA0Kc3R1ZmYsIHdoaWNoIHJpZ2h0IG5vdyB3ZSBkb24ndCkuDQoNCj4+PiBKdXN0
IHNpZ25hbCB0aGUgcHJvYmxlbSBiYWNrIHRvIHVzZXJzcGFjZSBhbmQgbGV0IHRoZSB1c2VyIHNw
YWNlDQo+Pj4gZHJpdmVyIA0KPj4+IGRlY2lkZSB3aGF0IHRvIGRvLg0KPj4+DQo+Pj4gVGhlIGJh
Y2tncm91bmQgaXMgdGhhdCBtb3N0IGdyYXBoaWNzIGFwcGxpY2F0aW9ucyAoZ2FtZXMgZXRjLi4p
DQo+Pj4gdGhlbiANCj4+PiByYXRoZXIgc3RhcnQgb24gdGhlIG5leHQgZnJhbWUgaW5zdGVhZCBv
ZiBzdWJtaXR0aW5nIHRoZSBjdXJyZW50DQo+Pj4gb25lIA0KPj4+IGFnYWluIHdoaWxlIGNvbXB1
dGUgYXBwbGljYXRpb25zIG1ha2Ugc3VyZSB0aGF0IHRoZSBhYm9ydCBhbmQgdGVsbA0KPj4+IHRo
ZSANCj4+PiB1c2VyIHRoYXQgdGhlIGNhbGN1bGF0aW9ucyBtaWdodCBiZSBjb3JydXB0ZWQgYW5k
IG5lZWQgdG8gYmUNCj4+PiByZWRvbmUuDQo+IA0KPiBUaGUgZ3VhcmFudGVlIHRoYXQgVnVsa2Fu
IG1ha2VzIGlzIHRoYXQsIGlmIHlvdSBpZGxlIHRoZSBHUFUgYW5kIHlvdQ0KPiBoYXZlbid0IGdv
dHRlbiBhIERFVklDRV9MT1NUIHlldCwgeW91ciBkYXRhIGlzIGdvb2QuICBJZiB5b3UgZ2V0IGEN
Cj4gREVWSUNFX0xPU1QsIGFsbCBiZXRzIGFyZSBvZmYuICBUaGUgcHJvYmxlbSBpcyB0aGF0LCBu
byBtYXR0ZXIgaG93IGZhc3QNCj4gdGhlIGVycm9yIHByb3BhZ2F0aW9uIG1heSBiZSBpbiB0aGUg
a2VybmVsIG9yIHVzZXJzcGFjZSBkcml2ZXIsIGVycm9ycw0KPiBjYW4gc3RpbGwgc2hvdyB1cCBp
biBzdHJhbmdlIHdheXMuICBBbiBPT0IgYnVmZmVyIGFjY2VzcyBjb3VsZCBlbmQgdXANCj4gbW9k
aWZ5aW5nIGEgc2hhZGVyIGJpbmFyeSB3aGljaCBnZXRzIHJ1biAzIGZyYW1lcyBsYXRlciBhbmQg
Y2F1c2VzIGENCj4gY29ycnVwdGlvbi4gIE9uY2UgeW91J3ZlIGZhdWx0ZWQsIHlvdSByZWFsbHkg
aGF2ZSBubyBpZGVhIGhvdyBmYXIgYmFjaw0KPiBpcyBnb29kIG9yIHdoYXQgbWVtb3J5IGlzIGNv
cnJ1cHRlZC4gIFlvdSBoYXZlIHRvIGFzc3VtZSB0aGF0DQo+IGV2ZXJ5dGhpbmcgbWFwcGVkIHRv
IHRoZSBHUFUgVkEgc3BhY2UgaXMgcG90ZW50aWFsbHkgdG9hc3QuDQoNClllcyBvZiBjb3Vyc2Us
IGZvciB0aGUgYWN0dWFsbHkgZmF1bHRpbmcgVk0gYWxsIGJldHMgYXJlIG9mZiBhZnRlciBhDQpm
YXVsdCAodGhvdWdoIHdlIGNhbiB0cnkgYSBiaXQgaGFyZGVyIGF0IGxlYXN0Li4uIEkgaGF2ZSBh
IFJFQURfT05MWSBCTw0KZmxhZyBub3csIEkgc2hvdWxkIHNldCBpdCBvbiB0aGUgc2hhZGVyIHBv
b2xzISkuDQoNCj4+IEFjdHVhbGx5IEkgd2FudGVkIHRvIGFzayBhYm91dCBlcnJvciBub3RpZmlj
YXRpb25zLiBSaWdodCBub3cgd2UgaGF2ZQ0KPj4gYW4NCj4+IG91dC1vZi1iYW5kIG1lY2hhbmlz
bSB0byBwcm92aWRlIGRldGFpbGVkIGZhdWx0IGluZm8gdG8gdXNlcnNwYWNlDQo+PiB3aGljaA0K
Pj4gd29ya3MgZmluZSwgYnV0IGluIHByaW5jaXBsZSBpdCdzIG9wdGlvbmFsLg0KPiANCj4gVGhp
cyBpcyBmaW5lLCBpbiBwcmluY2lwYWwuICBCZWNhdXNlIG9mIHRoZSBuYXR1cmUgb2YgZXJyb3Jz
LCBhc3luYyBpcw0KPiBmaW5lIGFzIGxvbmcgYXMgdGhlIGVycm9yIHNob3dzIHVwIGV2ZW50dWFs
bHkuICBGYXN0ZXIgaXMgYmV0dGVyLCBmb3INCj4gc3VyZSwgYnV0IGVycm9yIGxhdGVuY3kgZG9l
c24ndCByZWFsbHkgbWF0dGVyIGluIHByYWN0aWNlLg0KPiANCj4+IEhvd2V2ZXIsIEkgYWxzbyBt
YXJrIHRoZSBodw0KPj4gwqBmZW5jZXMgYXMgZXJyb3JlZCB3aGVuIGEgZmF1bHQgaGFwcGVucyAo
d2l0aCBhbiBlcnJubyB0aGF0IGRlc2NyaWJlcw0KPj4gdGhlIG92ZXJhbGwgc2l0dWF0aW9uKSwg
YnV0IHRoYXQgbmV2ZXIgbWFrZXMgaXQgaW50byB0aGUgZHJtX3NjaGVkDQo+PiBqb2INCj4+IGNv
bXBsZXRlIGZlbmNlLiBJIGxvb2tlZCBhdCB0aGUgZHJtX3NjaGVkIGNvZGUgYW5kIEkgZGlkbid0
IHNlZSBhbnkNCj4+IGVycm9yIHByb3BhZ2F0aW9uLiBJcyB0aGF0IHN1cHBvc2VkIHRvIHdvcmss
IG9yIGFtIEkgc3VwcG9zZWQgdG8NCj4+IGRpcmVjdGx5IG1hcmsgdGhlIGRybV9zY2hlZCBzaWRl
IGZlbmNlIGFzIGNvbXBsZXRlLCBvciBkaWQgSQ0KPj4gbWlzdW5kZXJzdGFuZCBhbGwgdGhpcz8g
SSBnZXQgdGhlIGZlZWxpbmcgbWF5YmUgZXhpc3RpbmcgZHJpdmVycyBqdXN0DQo+PiByZWx5IG9u
IHRoZSByZWNvdmVyeS90aW1lb3V0L2V0YyBwYXRocyB0byBtYXJrIGpvYnMgYXMgZXJyb3JlZCAo
c2luY2UNCj4+IHRob3NlIGRvIGl0IGV4cGxpY2l0bHkpIGFuZCBuZXZlciBuZWVkIGVycm9yIGZv
cndhcmRpbmcgZnJvbSB0aGUgaHcNCj4+IGZlbmNlPw0KPiANCj4gVGhlIGVuZCBiZWhhdmlvciBu
ZWVkcyB0byBiZSB0aGF0IGFsbCBmZW5jZXMgZm9yIGFsbCBqb2JzIHN1Ym1pdHRlZCB0bw0KPiB0
aGUgcXVldWUgZ2V0IHNpZ25hbGVkLiAgVGhhdCdzIG5lZWRlZCB0byBzYXRpc2Z5IHRoZSBmaW5p
dGUgdGltZQ0KPiBndWFyYW50ZWVzIG9mIGRtYV9mZW5jZS4gIEV4YWN0bHkgaG93IHRoYXQgaGFw
cGVucyAobGV0IHRoZSBqb2IgcnVuLA0KPiBhYm9ydCBhbGwgdGhlIGpvYnMsIGV0Yy4pIGlzIGFu
IGltcGxlbWVudGF0aW9uIGRldGFpbCBmb3IgdGhlIGRyaXZlciB0bw0KPiBkZWNpZGUuICBJZiB5
b3Ugd2FudCwgeW91IGNhbiBhbHNvIHNldCBhIGJpdCBvbiB0aGUgY29udGV4dCAob3IgcXVldWUp
DQo+IHRvIG1hcmsgaXQgYXMgZGVhZCBhbmQgc3RhcnQgcmV0dXJuaW5nIEVJTyBvciBzaW1pbGFy
IGZyb20gYW55IGlvY3Rscw0KPiB0cnlpbmcgdG8gc3VibWl0IG1vcmUgd29yayBpZiB5b3Ugd2Fu
dGVkLiAgTm90IHJlcXVpcmVkIGJ1dCB5b3UgY2FuLg0KDQpGZW5jZXMgaGF2ZSBhbiBlcnJvciBm
bGFnIHRob3VnaCwgZG9lcyB0aGF0IGdldCByZXBvcnRlZCB0byB1c2Vyc3BhY2UNCnNvbWVob3c/
IEkgdGhvdWdodCBpdCBkaWQsIGJ1dCBtYXliZSBub3QsIG9yIG1heWJlIG9ubHkgZHJtX3NjaGVk
IG5vdA0KcHJvcGFnYXRpbmcgaXQgaXMgdGhlIGlzc3VlPw0KDQpJbiBvdGhlciB3b3JkcywgYWJz
ZW50IG15IGZhbmN5IHN0YXRzIHJlcG9ydGluZyBCTyBzeXN0ZW0sIHdoYXQgaXMgdGhlDQpub3Jt
YWwgd2F5IHRoYXQgYW4gZXhwbGljaXQgc3luYyBkcml2ZXIgc2lnbmFscyB0byB1c2Vyc3BhY2Ug
dGhhdCB0aGUNCmpvYiBhc3NvY2lhdGVkIHdpdGggYSBzeW5jb2JqIGhhcyBmYWlsZWQ/DQoNCihJ
ZiB0aGVyZSBpcyBubyB3YXksIHRoZW4gSSdsbCBwcm9iYWJseSB3YW50IHRvIGNoYW5nZSB0aGUg
c3RhdHMgQk8NCnN5c3RlbSB0byBiZSBjb25maWd1cmFibGUsIHNvIGlmIHlvdSBhc2sgZm9yIG5v
IHN0YXRzL3RpbWUgaW5mbywgeW91DQpvbmx5IGdldCBvdmVyYWxsIGpvYiBzdGF0dXMgYW5kIGZh
dWx0cywgd2hpY2ggaGFzIGxlc3Mgb3ZlcmhlYWQuKQ0KDQp+fiBMaW5hDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
