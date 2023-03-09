Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6286C6BBAD3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:26:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 711573F32B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:26:16 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 55C673EB78
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 05:25:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=Wx2g6hHK;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id DD45542037;
	Thu,  9 Mar 2023 05:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678339521;
	bh=AqKhfVbrCgFD4lko5eegMh8R3NTuYq179Kx+ape/AUw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Wx2g6hHKeCsXfkUgKO1J8pnackR4HNu+sLnMeFYf24PIEcG3Dr33trh9lN1i7NCYH
	 iBXJX4d1fX4S9wXV87qH+AvPl3dzcsbiKtejK806oWJHYyRm1eGW50G8xuSxHfHI90
	 OGepcjoxSmmGebCwmACxpon1dVMSfoC3C63+EZv+4Vm3TnKk2IvwKX6Q2qTyJYsz/t
	 5+dvsMlkXmq1LOhoNPBODzISgSa4rqkkMhvr0r+Dbc3br4rSjTAL1uL1RdnjAHCiq4
	 Yn/+w25IH6X8rrPCfs/hGRb5U4eY46B8GERplcPGPsP0U1EjoPg7u5myHLU5UtvHHY
	 zV/fpXAc/uWlA==
Message-ID: <488728fc-ada2-20a3-79be-8109d891a8cb@asahilina.net>
Date: Thu, 9 Mar 2023 14:25:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-6-917ff5bc80a8@asahilina.net>
 <ff51483e-2d72-3a7b-0632-58ea36cc3d8e@igalia.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <ff51483e-2d72-3a7b-0632-58ea36cc3d8e@igalia.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 55C673EB78
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[igalia.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[obj.base:url,mail.marcansoft.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AOJZ7S3DXEEA5JCRGZWWR5LXVDMWOBXD
X-Message-ID-Hash: AOJZ7S3DXEEA5JCRGZWWR5LXVDMWOBXD
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:49 +0000
CC: linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] rust: drm: gem: shmem: Add DRM shmem helper abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOJZ7S3DXEEA5JCRGZWWR5LXVDMWOBXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAyMi4zOCwgTWHDrXJhIENhbmFsIHdyb3RlOg0KPiBPbiAzLzcvMjMgMTE6
MjUsIEFzYWhpIExpbmEgd3JvdGU6DQo+PiBUaGUgRFJNIHNobWVtIGhlbHBlciBpbmNsdWRlcyBj
b21tb24gY29kZSB1c2VmdWwgZm9yIGRyaXZlcnMgd2hpY2gNCj4+IGFsbG9jYXRlIEdFTSBvYmpl
Y3RzIGFzIGFub255bW91cyBzaG1lbS4gQWRkIGEgUnVzdCBhYnN0cmFjdGlvbiBmb3INCj4+IHRo
aXMuIERyaXZlcnMgY2FuIGNob29zZSB0aGUgcmF3IEdFTSBpbXBsZW1lbnRhdGlvbiBvciB0aGUg
c2htZW0gbGF5ZXIsDQo+PiBkZXBlbmRpbmcgb24gdGhlaXIgbmVlZHMuDQo+Pg0KPj4gU2lnbmVk
LW9mZi1ieTogQXNhaGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPj4gLS0tDQo+PiAgIGRy
aXZlcnMvZ3B1L2RybS9LY29uZmlnICAgICAgICAgfCAgIDUgKw0KPj4gICBydXN0L2JpbmRpbmdz
L2JpbmRpbmdzX2hlbHBlci5oIHwgICAyICsNCj4+ICAgcnVzdC9oZWxwZXJzLmMgICAgICAgICAg
ICAgICAgICB8ICA2NyArKysrKysrDQo+PiAgIHJ1c3Qva2VybmVsL2RybS9nZW0vbW9kLnJzICAg
ICAgfCAgIDMgKw0KPj4gICBydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzICAgIHwgMzgxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+ICAgNSBmaWxlcyBjaGFu
Z2VkLCA0NTggaW5zZXJ0aW9ucygrKQ0KPj4NCj4gDQo+IFsuLi5dDQo+IA0KPj4gK3Vuc2FmZSBl
eHRlcm4gIkMiIGZuIGdlbV9jcmVhdGVfb2JqZWN0PFQ6IERyaXZlck9iamVjdD4oDQo+PiArICAg
IHJhd19kZXY6ICptdXQgYmluZGluZ3M6OmRybV9kZXZpY2UsDQo+PiArICAgIHNpemU6IHVzaXpl
LA0KPj4gKykgLT4gKm11dCBiaW5kaW5nczo6ZHJtX2dlbV9vYmplY3Qgew0KPj4gKyAgICAvLyBT
QUZFVFk6IEdFTSBlbnN1cmVzIHRoZSBkZXZpY2UgbGl2ZXMgYXMgbG9uZyBhcyBpdHMgb2JqZWN0
cyBsaXZlLA0KPj4gKyAgICAvLyBzbyB3ZSBjYW4gY29uanVyZSB1cCBhIHJlZmVyZW5jZSBmcm9t
IHRoaW4gYWlyIGFuZCBuZXZlciBkcm9wIGl0Lg0KPj4gKyAgICBsZXQgZGV2ID0gTWFudWFsbHlE
cm9wOjpuZXcodW5zYWZlIHsgZGV2aWNlOjpEZXZpY2U6OmZyb21fcmF3KHJhd19kZXYpIH0pOw0K
Pj4gKw0KPj4gKyAgICBsZXQgaW5uZXIgPSBtYXRjaCBUOjpuZXcoJipkZXYsIHNpemUpIHsNCj4+
ICsgICAgICAgIE9rKHYpID0+IHYsDQo+PiArICAgICAgICBFcnIoZSkgPT4gcmV0dXJuIGUudG9f
cHRyKCksDQo+PiArICAgIH07DQo+PiArDQo+PiArICAgIGxldCBwID0gdW5zYWZlIHsNCj4+ICsg
ICAgICAgIGJpbmRpbmdzOjprcmVhbGxvYygNCj4+ICsgICAgICAgICAgICBjb3JlOjpwdHI6Om51
bGwoKSwNCj4+ICsgICAgICAgICAgICBPYmplY3Q6OjxUPjo6U0laRSwNCj4+ICsgICAgICAgICAg
ICBiaW5kaW5nczo6R0ZQX0tFUk5FTCB8IGJpbmRpbmdzOjpfX0dGUF9aRVJPLA0KPj4gKyAgICAg
ICAgKSBhcyAqbXV0IE9iamVjdDxUPg0KPj4gKyAgICB9Ow0KPj4gKw0KPj4gKyAgICBpZiBwLmlz
X251bGwoKSB7DQo+PiArICAgICAgICByZXR1cm4gRU5PTUVNLnRvX3B0cigpOw0KPj4gKyAgICB9
DQo+PiArDQo+PiArICAgIC8vIFNBRkVUWTogcCBpcyB2YWxpZCBhcyBsb25nIGFzIHRoZSBhbGxv
YyBzdWNjZWVkZWQNCj4+ICsgICAgdW5zYWZlIHsNCj4+ICsgICAgICAgIGFkZHJfb2ZfbXV0ISgo
KnApLmRldikud3JpdGUoZGV2KTsNCj4+ICsgICAgICAgIGFkZHJfb2ZfbXV0ISgoKnApLmlubmVy
KS53cml0ZShpbm5lcik7DQo+PiArICAgIH0NCj4+ICsNCj4+ICsgICAgLy8gU0FGRVRZOiBkcm1f
Z2VtX3NobWVtX29iamVjdCBpcyBzYWZlIHRvIHplcm8taW5pdCwgYW5kDQo+PiArICAgIC8vIHRo
ZSByZXN0IG9mIE9iamVjdCBoYXMgYmVlbiBpbml0aWFsaXplZA0KPj4gKyAgICBsZXQgbmV3OiAm
bXV0IE9iamVjdDxUPiA9IHVuc2FmZSB7ICZtdXQgKihwIGFzICptdXQgXykgfTsNCj4+ICsNCj4+
ICsgICAgbmV3Lm9iai5iYXNlLmZ1bmNzID0gJk9iamVjdDo6PFQ+OjpWVEFCTEU7DQo+PiArICAg
ICZtdXQgbmV3Lm9iai5iYXNlDQo+PiArfQ0KPiANCj4gSXQgd291bGQgYmUgbmljZSB0byBhbGxv
dyB0byBzZXQgd2MgaW5zaWRlIHRoZSBnZW1fY3JlYXRlX29iamVjdCBjYWxsYmFjaywNCj4gYXMg
c29tZSBkcml2ZXJzIGRvIGl0IHNvLCBsaWtlIHYzZCwgdmM0LCBwYW5mcm9zdCwgbGltYS4uLg0K
DQpUaGlzIGlzIGFjdHVhbGx5IGEgYml0IHRyaWNreSB0byBkbyBzYWZlbHksIGJlY2F1c2Ugd2Ug
Y2FuJ3QganVzdCBoYXZlIGENCmNhbGxiYWNrIHRoYXQgdGFrZXMgdGhlIGRybV9nZW1fc2htZW1f
b2JqZWN0IGluc3RhbmNlIGluc2lkZQ0KZ2VtX2NyZWF0ZV9vYmplY3QgYmVjYXVzZSBpdCBpcyBu
b3QgZnVsbHkgaW5pdGlhbGl6ZWQgeWV0IGZyb20gdGhlIHBvaW50DQpvZiB2aWV3IG9mIHRoZSBn
ZW0gc2htZW0gQVBJLiBNYXliZSB3ZSBjb3VsZCBoYXZlIHNvbWUgc29ydCBvZiB0ZW1wb3JhcnkN
CnByb3h5IG9iamVjdCB0aGF0IG9ubHkgbGV0cyB5b3UgZG8gc2FmZSB0aGluZ3MgbGlrZSBzZXQg
bWFwX3djPyBPciBtYXliZQ0KdGhlIG5ldygpIGNhbGxiYWNrIGNvdWxkIHJldHVybiBzb21ldGhp
bmcgbGlrZSBhIFNobWVtVGVtcGxhdGU8VD4gdHlwZQ0KdGhhdCBjb250YWlucyBib3RoIHRoZSBp
bm5lciBkYXRhIGFuZCBzb21lIG1pc2NlbGxhbmVvdXMgZmllbGRzIGxpa2UgdGhlDQppbml0aWFs
IG1hcF93YyBzdGF0ZT8NCg0KSSB0aGluayB3ZSBjYW4gYWxzbyBqdXN0IHdhaXQgdW50aWwgdGhl
IGZpcnN0IHVzZXIgYmVmb3JlIHdlIGRvIHRoaXMNCnRob3VnaC4uLiB0aGUgZ29hbCBvZiB0aGUg
YWJzdHJhY3Rpb25zIGlzIHRvIHN1cHBvcnQgdGhlIEFQSXMgd2UNCmFjdHVhbGx5IHVzZS4gSSBr
bm93IHlvdSBuZWVkIHRoaXMgZm9yIHZnZW0sIHNvIHBsZWFzZSBmZWVsIGZyZWUgdG8NCmltcGxl
bWVudCBpdCBhcyBhIHNlcGFyYXRlIHBhdGNoISBJIHRoaW5rIGl0J3MgYmVzdCBpZiB5b3UgZ2V0
IGNyZWRpdA0KZm9yIHRoZSBhYnN0cmFjdGlvbiBjaGFuZ2VzIHlvdSBuZWVkLCBzbyB3ZSBjYW4g
YWxsIHdvcmsgdG9nZXRoZXIgb24gdGhlDQpkZXNpZ24gc28gaXQgd29ya3MgZm9yIGV2ZXJ5b25l
J3MgdXNlIGNhc2VzIGluc3RlYWQgb2YganVzdCBoYXZpbmcgbWUNCm1ha2UgYWxsIHRoZSBkZWNp
c2lvbnMgXl4gKGFuZCBpdCdzIGZpbmUgaWYgd2UgaGF2ZSB0byByZWZhY3RvciB0aGUgQVBJcyEp
DQoNCn5+IExpbmENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
