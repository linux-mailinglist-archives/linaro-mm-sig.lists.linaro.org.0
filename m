Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 496806BBAD7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:26:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52A5D3F527
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:26:42 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 57DD63E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 05:32:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=r1C05zel;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id E169542037;
	Thu,  9 Mar 2023 05:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678339974;
	bh=vxS54uTlGMR5PzLTnPcns+95VipCQ+Izczvmh+Eu4cc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=r1C05zelm2ip3ely1YRxB+0WCulNo9AUwrUESJxQv2yj7gW7cyqSVF5NJf0d9LtGP
	 zBOVwJVY6yoLBsYWmKSu7CEyZojI9S42pTyme0FnYLoUVXFizgjoHE2PynxMbZsFpS
	 Ntl9VZwbrUCyrmruackUcRXRfZh+ZhVsETUxLtKY+rXYUEmUjrgWL9NfoosLLPoYeL
	 6ZrufQazfcWRHnkMRbvvwde5y4FCVBWa1rbnbqAMiVpi0TDBSNGCq3blEmhtQ489se
	 SYJ9MTtHZLNIiXGQAWvAbGG5mXxhTztPoEdiF+uOUmV7VNA709JYANjos6FWlkOwcU
	 meO9fF+DG6/Ng==
Message-ID: <93a57598-9deb-85f2-ebd9-8605404c1ef8@asahilina.net>
Date: Thu, 9 Mar 2023 14:32:45 +0900
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
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net>
 <c047e11f-33d0-6af4-21c3-adb384b68d8b@igalia.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <c047e11f-33d0-6af4-21c3-adb384b68d8b@igalia.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 57DD63E8AB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[igalia.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[marcansoft.com:rdns];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IV6UW4YEDHSUD5YGS3F5UWPHIUGYCPWC
X-Message-ID-Hash: IV6UW4YEDHSUD5YGS3F5UWPHIUGYCPWC
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:50 +0000
CC: linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IV6UW4YEDHSUD5YGS3F5UWPHIUGYCPWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAwMC4zMiwgTWHDrXJhIENhbmFsIHdyb3RlOg0KPiBPbiAzLzcvMjMgMTE6
MjUsIEFzYWhpIExpbmEgd3JvdGU6DQo+PiBEUk0gZHJpdmVycyBuZWVkIHRvIGJlIGFibGUgdG8g
ZGVjbGFyZSB3aGljaCBkcml2ZXItc3BlY2lmaWMgaW9jdGxzIHRoZXkNCj4+IHN1cHBvcnQuIFRo
aXMgYWJzdHJhY3Rpb24gYWRkcyB0aGUgcmVxdWlyZWQgdHlwZXMgYW5kIGEgaGVscGVyIG1hY3Jv
IHRvDQo+PiBnZW5lcmF0ZSB0aGUgaW9jdGwgZGVmaW5pdGlvbiBpbnNpZGUgdGhlIERSTSBkcml2
ZXIuDQo+Pg0KPj4gTm90ZSB0aGF0IHRoaXMgbWFjcm8gaXMgbm90IHVzYWJsZSB1bnRpbCBmdXJ0
aGVyIGJpdHMgb2YgdGhlDQo+PiBhYnN0cmFjdGlvbiBhcmUgaW4gcGxhY2UgKGJ1dCBpdCB3aWxs
IG5vdCBmYWlsIHRvIGNvbXBpbGUgb24gaXRzIG93biwgaWYNCj4+IG5vdCBjYWxsZWQpLg0KPj4N
Cj4+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExpbmEgPGxpbmFAYXNhaGlsaW5hLm5ldD4NCj4+IC0t
LQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0vS2NvbmZpZyAgICAgICAgIHwgICA3ICsrDQo+PiAgIHJ1
c3QvYmluZGluZ3MvYmluZGluZ3NfaGVscGVyLmggfCAgIDIgKw0KPj4gICBydXN0L2tlcm5lbC9k
cm0vaW9jdGwucnMgICAgICAgIHwgMTQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysNCj4+ICAgcnVzdC9rZXJuZWwvZHJtL21vZC5ycyAgICAgICAgICB8ICAgNSArKw0K
Pj4gICBydXN0L2tlcm5lbC9saWIucnMgICAgICAgICAgICAgIHwgICAyICsNCj4+ICAgNSBmaWxl
cyBjaGFuZ2VkLCAxNjMgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnDQo+PiBpbmRleCBkYzBm
OTRmMDJhODIuLmRhYjhmMGY5YWE5NiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9L
Y29uZmlnDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPj4gQEAgLTI3LDYgKzI3
LDEzIEBAIG1lbnVjb25maWcgRFJNDQo+PiAgIAkgIGRldGFpbHMuICBZb3Ugc2hvdWxkIGFsc28g
c2VsZWN0IGFuZCBjb25maWd1cmUgQUdQDQo+PiAgIAkgICgvZGV2L2FncGdhcnQpIHN1cHBvcnQg
aWYgaXQgaXMgYXZhaWxhYmxlIGZvciB5b3VyIHBsYXRmb3JtLg0KPj4gICANCj4gDQo+IFsuLi5d
DQo+IA0KPj4gKw0KPj4gKy8vLyBEZWNsYXJlIHRoZSBEUk0gaW9jdGxzIGZvciBhIGRyaXZlci4N
Cj4+ICsvLy8NCj4+ICsvLy8gRWFjaCBlbnRyeSBpbiB0aGUgbGlzdCBzaG91bGQgaGF2ZSB0aGUg
Zm9ybToNCj4+ICsvLy8NCj4+ICsvLy8gYChpb2N0bF9udW1iZXIsIGFyZ3VtZW50X3R5cGUsIGZs
YWdzLCB1c2VyX2NhbGxiYWNrKSxgDQo+PiArLy8vDQo+PiArLy8vIGBhcmd1bWVudF90eXBlYCBp
cyB0aGUgdHlwZSBuYW1lIHdpdGhpbiB0aGUgYGJpbmRpbmdzYCBjcmF0ZS4NCj4+ICsvLy8gYHVz
ZXJfY2FsbGJhY2tgIHNob3VsZCBoYXZlIHRoZSBmb2xsb3dpbmcgcHJvdG90eXBlOg0KPj4gKy8v
Lw0KPj4gKy8vLyBgYGANCj4+ICsvLy8gZm4gZm9vKGRldmljZTogJmtlcm5lbDo6ZHJtOjpkZXZp
Y2U6OkRldmljZTxTZWxmPiwNCj4+ICsvLy8gICAgICAgIGRhdGE6ICZtdXQgYmluZGluZ3M6OmFy
Z3VtZW50X3R5cGUsDQo+PiArLy8vICAgICAgICBmaWxlOiAma2VybmVsOjpkcm06OmZpbGU6OkZp
bGU8U2VsZjo6RmlsZT4sDQo+PiArLy8vICkNCj4+ICsvLy8gYGBgDQo+PiArLy8vIHdoZXJlIGBT
ZWxmYCBpcyB0aGUgZHJtOjpkcnY6OkRyaXZlciBpbXBsZW1lbnRhdGlvbiB0aGVzZSBpb2N0bHMg
YXJlIGJlaW5nIGRlY2xhcmVkIHdpdGhpbi4NCj4+ICsvLy8NCj4+ICsvLy8gIyBFeGFtcGxlcw0K
Pj4gKy8vLw0KPj4gKy8vLyBgYGANCj4+ICsvLy8ga2VybmVsOjpkZWNsYXJlX2RybV9pb2N0bHMh
IHsNCj4+ICsvLy8gICAgIChGT09fR0VUX1BBUkFNLCBkcm1fZm9vX2dldF9wYXJhbSwgaW9jdGw6
OlJFTkRFUl9BTExPVywgbXlfZ2V0X3BhcmFtX2hhbmRsZXIpLA0KPj4gKy8vLyB9DQo+PiArLy8v
IGBgYA0KPj4gKy8vLw0KPj4gKyNbbWFjcm9fZXhwb3J0XQ0KPj4gK21hY3JvX3J1bGVzISBkZWNs
YXJlX2RybV9pb2N0bHMgew0KPj4gKyAgICAoICQoKCRjbWQ6aWRlbnQsICRzdHJ1Y3Q6aWRlbnQs
ICRmbGFnczpleHByLCAkZnVuYzpleHByKSksKiAkKCwpPyApID0+IHsNCj4+ICsgICAgICAgIGNv
bnN0IElPQ1RMUzogJidzdGF0aWMgWyRjcmF0ZTo6ZHJtOjppb2N0bDo6RHJtSW9jdGxEZXNjcmlw
dG9yXSA9IHsNCj4+ICsgICAgICAgICAgICBjb25zdCBfOigpID0gew0KPj4gKyAgICAgICAgICAg
ICAgICBsZXQgaTogdTMyID0gJGNyYXRlOjpiaW5kaW5nczo6RFJNX0NPTU1BTkRfQkFTRTsNCj4+
ICsgICAgICAgICAgICAgICAgLy8gQXNzZXJ0IHRoYXQgYWxsIHRoZSBJT0NUTHMgYXJlIGluIHRo
ZSByaWdodCBvcmRlciBhbmQgdGhlcmUgYXJlIG5vIGdhcHMsDQo+PiArICAgICAgICAgICAgICAg
IC8vIGFuZCB0aGF0IHRoZSBzaXplb2Ygb2YgdGhlIHNwZWNpZmllZCB0eXBlIGlzIGNvcnJlY3Qu
DQo+IA0KPiBJIGJlbGlldmUgdGhhdCBub3QgbmVjZXNzYXJpbHkgdGhlIElPQ1RMcyBuZWVkIHRv
IGJlIGluIHRoZSByaWdodCBvcmRlciBhbmQNCj4gd2l0aCBubyBnYXBzLiBGb3IgZXhhbXBsZSwg
YXJtYWRhX2RybS5oIGhhcyBhIGdhcCBpbiBiZXR3ZWVuIDB4MDAgYW5kDQo+IDB4MDIgYW5kIGV4
eW5vc19kcm0uaCBhbHNvIGhhdmUgZ2Fwcy4gTW9yZW92ZXIsIHNvbWUgZHJpdmVycywgbGlrZSB2
Z2VtIGFuZA0KPiB2aXJ0Z3B1LCBzdGFydCB0aGVpciBJT0NUTHMgd2l0aCAweDAxLg0KDQpZZWFo
LCB3ZSB0YWxrZWQgYWJvdXQgdGhpcyBhIGJpdC4uLiBkbyB5b3UgaGF2ZSBhbnkgaWRlYXMgYWJv
dXQgaG93IHRvDQpkZXNpZ24gdGhpcz8gSSB0aGluayBpdCBzaG91bGQgYmUgcG9zc2libGUgd2l0
aCBhIGNvbnN0IGZ1bmN0aW9uDQppbml0aWFsaXppbmcgYW4gYXJyYXkgZW50cnkgYnkgZW50cnks
IHdlIGp1c3QgbmVlZCBhIHR3by1wYXNzIG1hY3JvDQoob25jZSB0byBkZXRlcm1pbmUgdGhlIG1h
eCBpb2N0bCBudW1iZXIsIHRoZW4gYWdhaW4gdG8gYWN0dWFsbHkgb3V0cHV0DQp0aGUgaW1wbGVt
ZW50YXRpb24pLg0KDQpJJ20gbm90IHN1cmUgd2h5IGRyaXZlcnMgd291bGQgaGF2ZSBnYXBzIGlu
IHRoZSBpb2N0bCBudW1iZXJzIHRob3VnaC4uLg0KbXkgaWRlYSB3YXMgdGhhdCBuZXcgZHJpdmVy
cyBzaG91bGRuJ3QgbmVlZCB0aGF0IGFzIGZhciBhcyBJIGNhbiB0ZWxsDQooeW91IGNhbid0IHJl
bW92ZSBBUElzIGFmdGVyIHRoZSBmYWN0IGR1ZSB0byBVQVBJIHN0YWJpbGl0eSBndWFyYW50ZWVz
LA0Kc28gYXMgbG9uZyBhcyB5b3UgZG9uJ3QgaGF2ZSBnYXBzIHRvIGJlZ2luIHdpdGguLi4pLiBC
dXQgSSBndWVzcyBpZg0Kd2UncmUgcmVpbXBsZW1lbnRpbmcgZXhpc3RpbmcgZHJpdmVycyBpbiBS
dXN0IHdlJ2xsIG5lZWQgdGhpcy4uLiB0aG91Z2gNCm1heWJlIGl0IG1ha2VzIHNlbnNlIHRvIGp1
c3Qgc2F5IGl0J3Mgbm90IHN1cHBvcnRlZCBhbmQgcmVxdWlyZQ0KcmVpbXBsZW1lbnRhdGlvbnMg
dGhhdCBoYXZlIGhvbGVzIHRvIGp1c3QgZXhwbGljaXRseSBhZGQgZHVtbXkgaW9jdGxzDQp0aGF0
IHJldHVybiBFSU5WQUw/IFdlIGNvdWxkIGV2ZW4gcHJvdmlkZSBzdWNoIGEgZHVtbXkgZ2VuZXJp
YyBpb2N0bA0KaGFuZGxlciBvbiB0aGUgYWJzdHJhY3Rpb24gc2lkZSwgc28gZHJpdmVycyBqdXN0
IGhhdmUgdG8gYWRkIGl0IHRvIHRoZQ0KbGlzdCwgb3IgbWFrZSB0aGUgbWFjcm8gdGFrZSBhIHNw
ZWNpYWwgdG9rZW4gdGhhdCBpcyB1c2VkIGZvcg0KcGxhY2Vob2xkZXIgaW9jdGxzIHRoYXQgZG9u
J3QgZXhpc3QgKHdoaWNoIHRoZW4gY3JlYXRlcyB0aGUgTlVMTA0KZnVuY3Rpb24gcG9pbnRlciB0
aGF0IHRoZSBkcm0gY29yZSBpbnRlcnByZXRzIGFzIGludmFsaWQpLi4uDQoNCkJhc2ljYWxseSBJ
J20gbm90IHN1cmUgaWYgaXQgbWFrZXMgc2Vuc2UgdG8gZnVsbHkgc3VwcG9ydCBub25jb250aWd1
b3VzDQppb2N0bCBudW1iZXJzIGF1dG9tYWdpY2FsbHksIG9yIGp1c3Qgc2F5IGRyaXZlcnMgbmVl
ZCB0byBleHBsaWNpdGx5IGxpc3QNCmdhcHMuIEknZCBsb3ZlIHRvIGhlYXIgdGhlIG9waW5pb24g
b2Ygb3RoZXIgRFJNIGZvbGtzIGFib3V0IHRoaXMhDQoNCn5+IExpbmENCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
