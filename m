Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB26BBAE0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:29:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 497B83EBC1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:29:45 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 9E3563EB78
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 14:16:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=HjY8oRPl;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 8735242037;
	Thu,  9 Mar 2023 14:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678371395;
	bh=tUUTZQN+QgD1rn1cHyCzhI7aFoqTUUMz0V4QKuTRQe4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=HjY8oRPlc2CKr20/2jvE1xNtj9x6nJjr9+b1EGdHtTJOh8GMnTUNULcz049Y2BCc7
	 zNix/c/l5q04IeQPfaE8EacKG/v3bkO1C4SDe4Jv7CEVNPvuAENth2GdoDWRBxvPpm
	 SjDtPv89trwUCLVxH/2a6sSJAcw36eKjpLq+W1zVWssd5HHEEbEesEeRj2qGgp5Fn2
	 XbHgR14z2/1bmxa1zbiQSjiiCh4OkRUc4zj6AHT3MvQv4VN384RsyrlOMLi9KEzZM5
	 oPddH7HwLjDPcE+kPmXoSXwheMydufOcxaKPxmTTHE6plTgfpKPVlVOSusvbcQcuSG
	 TsFvLK+TY0Uxg==
Message-ID: <ac5a748a-bd1c-1076-a17f-42367494976c@asahilina.net>
Date: Thu, 9 Mar 2023 23:16:25 +0900
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
 <488728fc-ada2-20a3-79be-8109d891a8cb@asahilina.net>
 <8e091158-7826-1215-e717-081b25f48108@igalia.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <8e091158-7826-1215-e717-081b25f48108@igalia.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E3563EB78
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[igalia.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[asahilina.net:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[asahilina.net:dkim,asahilina.net:email,mail.marcansoft.com:helo,marcansoft.com:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2AQZKHWHVGCPIUBW4P5A3Z6SXWX3L72L
X-Message-ID-Hash: 2AQZKHWHVGCPIUBW4P5A3Z6SXWX3L72L
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:24:29 +0000
CC: linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] rust: drm: gem: shmem: Add DRM shmem helper abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AQZKHWHVGCPIUBW4P5A3Z6SXWX3L72L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDkvMDMvMjAyMyAyMC40NywgTWHDrXJhIENhbmFsIHdyb3RlOg0KPiBPbiAzLzkvMjMgMDI6
MjUsIEFzYWhpIExpbmEgd3JvdGU6DQo+PiBPbiAwOC8wMy8yMDIzIDIyLjM4LCBNYcOtcmEgQ2Fu
YWwgd3JvdGU6DQo+Pj4gT24gMy83LzIzIDExOjI1LCBBc2FoaSBMaW5hIHdyb3RlOg0KPj4+PiBU
aGUgRFJNIHNobWVtIGhlbHBlciBpbmNsdWRlcyBjb21tb24gY29kZSB1c2VmdWwgZm9yIGRyaXZl
cnMgd2hpY2gNCj4+Pj4gYWxsb2NhdGUgR0VNIG9iamVjdHMgYXMgYW5vbnltb3VzIHNobWVtLiBB
ZGQgYSBSdXN0IGFic3RyYWN0aW9uIGZvcg0KPj4+PiB0aGlzLiBEcml2ZXJzIGNhbiBjaG9vc2Ug
dGhlIHJhdyBHRU0gaW1wbGVtZW50YXRpb24gb3IgdGhlIHNobWVtIGxheWVyLA0KPj4+PiBkZXBl
bmRpbmcgb24gdGhlaXIgbmVlZHMuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExp
bmEgPGxpbmFAYXNhaGlsaW5hLm5ldD4NCj4+Pj4gLS0tDQo+Pj4+ICAgIGRyaXZlcnMvZ3B1L2Ry
bS9LY29uZmlnICAgICAgICAgfCAgIDUgKw0KPj4+PiAgICBydXN0L2JpbmRpbmdzL2JpbmRpbmdz
X2hlbHBlci5oIHwgICAyICsNCj4+Pj4gICAgcnVzdC9oZWxwZXJzLmMgICAgICAgICAgICAgICAg
ICB8ICA2NyArKysrKysrDQo+Pj4+ICAgIHJ1c3Qva2VybmVsL2RybS9nZW0vbW9kLnJzICAgICAg
fCAgIDMgKw0KPj4+PiAgICBydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzICAgIHwgMzgxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4gICAgNSBmaWxlcyBj
aGFuZ2VkLCA0NTggaW5zZXJ0aW9ucygrKQ0KPj4+Pg0KPj4+DQo+Pj4gWy4uLl0NCj4+Pg0KPj4+
PiArdW5zYWZlIGV4dGVybiAiQyIgZm4gZ2VtX2NyZWF0ZV9vYmplY3Q8VDogRHJpdmVyT2JqZWN0
PigNCj4+Pj4gKyAgICByYXdfZGV2OiAqbXV0IGJpbmRpbmdzOjpkcm1fZGV2aWNlLA0KPj4+PiAr
ICAgIHNpemU6IHVzaXplLA0KPj4+PiArKSAtPiAqbXV0IGJpbmRpbmdzOjpkcm1fZ2VtX29iamVj
dCB7DQo+Pj4+ICsgICAgLy8gU0FGRVRZOiBHRU0gZW5zdXJlcyB0aGUgZGV2aWNlIGxpdmVzIGFz
IGxvbmcgYXMgaXRzIG9iamVjdHMgbGl2ZSwNCj4+Pj4gKyAgICAvLyBzbyB3ZSBjYW4gY29uanVy
ZSB1cCBhIHJlZmVyZW5jZSBmcm9tIHRoaW4gYWlyIGFuZCBuZXZlciBkcm9wIGl0Lg0KPj4+PiAr
ICAgIGxldCBkZXYgPSBNYW51YWxseURyb3A6Om5ldyh1bnNhZmUgeyBkZXZpY2U6OkRldmljZTo6
ZnJvbV9yYXcocmF3X2RldikgfSk7DQo+Pj4+ICsNCj4+Pj4gKyAgICBsZXQgaW5uZXIgPSBtYXRj
aCBUOjpuZXcoJipkZXYsIHNpemUpIHsNCj4+Pj4gKyAgICAgICAgT2sodikgPT4gdiwNCj4+Pj4g
KyAgICAgICAgRXJyKGUpID0+IHJldHVybiBlLnRvX3B0cigpLA0KPj4+PiArICAgIH07DQo+Pj4+
ICsNCj4+Pj4gKyAgICBsZXQgcCA9IHVuc2FmZSB7DQo+Pj4+ICsgICAgICAgIGJpbmRpbmdzOjpr
cmVhbGxvYygNCj4+Pj4gKyAgICAgICAgICAgIGNvcmU6OnB0cjo6bnVsbCgpLA0KPj4+PiArICAg
ICAgICAgICAgT2JqZWN0Ojo8VD46OlNJWkUsDQo+Pj4+ICsgICAgICAgICAgICBiaW5kaW5nczo6
R0ZQX0tFUk5FTCB8IGJpbmRpbmdzOjpfX0dGUF9aRVJPLA0KPj4+PiArICAgICAgICApIGFzICpt
dXQgT2JqZWN0PFQ+DQo+Pj4+ICsgICAgfTsNCj4+Pj4gKw0KPj4+PiArICAgIGlmIHAuaXNfbnVs
bCgpIHsNCj4+Pj4gKyAgICAgICAgcmV0dXJuIEVOT01FTS50b19wdHIoKTsNCj4+Pj4gKyAgICB9
DQo+Pj4+ICsNCj4+Pj4gKyAgICAvLyBTQUZFVFk6IHAgaXMgdmFsaWQgYXMgbG9uZyBhcyB0aGUg
YWxsb2Mgc3VjY2VlZGVkDQo+Pj4+ICsgICAgdW5zYWZlIHsNCj4+Pj4gKyAgICAgICAgYWRkcl9v
Zl9tdXQhKCgqcCkuZGV2KS53cml0ZShkZXYpOw0KPj4+PiArICAgICAgICBhZGRyX29mX211dCEo
KCpwKS5pbm5lcikud3JpdGUoaW5uZXIpOw0KPj4+PiArICAgIH0NCj4+Pj4gKw0KPj4+PiArICAg
IC8vIFNBRkVUWTogZHJtX2dlbV9zaG1lbV9vYmplY3QgaXMgc2FmZSB0byB6ZXJvLWluaXQsIGFu
ZA0KPj4+PiArICAgIC8vIHRoZSByZXN0IG9mIE9iamVjdCBoYXMgYmVlbiBpbml0aWFsaXplZA0K
Pj4+PiArICAgIGxldCBuZXc6ICZtdXQgT2JqZWN0PFQ+ID0gdW5zYWZlIHsgJm11dCAqKHAgYXMg
Km11dCBfKSB9Ow0KPj4+PiArDQo+Pj4+ICsgICAgbmV3Lm9iai5iYXNlLmZ1bmNzID0gJk9iamVj
dDo6PFQ+OjpWVEFCTEU7DQo+Pj4+ICsgICAgJm11dCBuZXcub2JqLmJhc2UNCj4+Pj4gK30NCj4+
Pg0KPj4+IEl0IHdvdWxkIGJlIG5pY2UgdG8gYWxsb3cgdG8gc2V0IHdjIGluc2lkZSB0aGUgZ2Vt
X2NyZWF0ZV9vYmplY3QgY2FsbGJhY2ssDQo+Pj4gYXMgc29tZSBkcml2ZXJzIGRvIGl0IHNvLCBs
aWtlIHYzZCwgdmM0LCBwYW5mcm9zdCwgbGltYS4uLg0KPj4NCj4+IFRoaXMgaXMgYWN0dWFsbHkg
YSBiaXQgdHJpY2t5IHRvIGRvIHNhZmVseSwgYmVjYXVzZSB3ZSBjYW4ndCBqdXN0IGhhdmUgYQ0K
Pj4gY2FsbGJhY2sgdGhhdCB0YWtlcyB0aGUgZHJtX2dlbV9zaG1lbV9vYmplY3QgaW5zdGFuY2Ug
aW5zaWRlDQo+PiBnZW1fY3JlYXRlX29iamVjdCBiZWNhdXNlIGl0IGlzIG5vdCBmdWxseSBpbml0
aWFsaXplZCB5ZXQgZnJvbSB0aGUgcG9pbnQNCj4+IG9mIHZpZXcgb2YgdGhlIGdlbSBzaG1lbSBB
UEkuIE1heWJlIHdlIGNvdWxkIGhhdmUgc29tZSBzb3J0IG9mIHRlbXBvcmFyeQ0KPj4gcHJveHkg
b2JqZWN0IHRoYXQgb25seSBsZXRzIHlvdSBkbyBzYWZlIHRoaW5ncyBsaWtlIHNldCBtYXBfd2M/
IE9yIG1heWJlDQo+PiB0aGUgbmV3KCkgY2FsbGJhY2sgY291bGQgcmV0dXJuIHNvbWV0aGluZyBs
aWtlIGEgU2htZW1UZW1wbGF0ZTxUPiB0eXBlDQo+PiB0aGF0IGNvbnRhaW5zIGJvdGggdGhlIGlu
bmVyIGRhdGEgYW5kIHNvbWUgbWlzY2VsbGFuZW91cyBmaWVsZHMgbGlrZSB0aGUNCj4+IGluaXRp
YWwgbWFwX3djIHN0YXRlPw0KPiANCj4gSSBzZWUgdGhhdCBtb3N0IGRyaXZlcnMgdXNlIHRoaXMg
aG9vayB0byBzZXQgbWFwX3djIGFuZCBzZXQgZnVuY3MuIFdoYXQNCj4gYXJlIHlvdXIgdGhvdWdo
dHMgb24gc29tZXRoaW5nIGxpa2UgdGhpcz8NCj4gDQo+IEJlc3QgUmVnYXJkcywNCj4gLSBNYcOt
cmEgQ2FuYWwNCj4gDQo+ICBGcm9tIDYxZjIzZjRhMzkwMjhjOWQzNGQzZGY1OGQ3NjQwYmZjZDY0
ZTlhZjkgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxDQo+IEZyb206ID0/VVRGLTg/cT9NYT1DMz1B
RHJhPTIwQ2FuYWw/PSA8bWNhbmFsQGlnYWxpYS5jb20+DQo+IERhdGU6IFRodSwgOSBNYXIgMjAy
MyAwODoyNDowOSAtMDMwMA0KPiBTdWJqZWN0OiBbUEFUQ0hdIHJ1c3Q6IGRybTogZ2VtOiBzaG1l
bTogU2V0IG1hcF93YyBvbiBnZW1fY3JlYXRlX29iamVjdA0KPiAgIGNhbGxiYWNrDQo+IE1JTUUt
VmVyc2lvbjogMS4wDQo+IENvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOA0K
PiBDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0DQo+IA0KPiBTb21lIGRyaXZlcnMgdXNl
IHRoZSBnZW1fY3JlYXRlX29iamVjdCBjYWxsYmFjayB0byBkZWZpbmUgdGhlIG1hcHBpbmcgb2YN
Cj4gdGhlIG9iamVjdCB3cml0ZS1jb21iaW5lZCAobWFwX3djKS4gQ3VycmVudGx5LCB0aGUgRFJN
IFJ1c3QgYWJzdHJhY3Rpb25zDQo+IGRvZXNuJ3QgYWxsb3cgc3VjaCBvcGVyYXRpb24uIFNvLCBh
ZGQgYSBtZXRob2QgdG8gdGhlIERyaXZlck9iamVjdCB0cmFpdA0KPiB0byBhbGxvdyBkcml2ZXJz
IHRvIHNldCBtYXBfd2Mgb24gdGhlIGdlbV9jcmVhdGVfb2JqZWN0IGNhbGxiYWNrLiBCeQ0KPiBk
ZWZhdWx0LCB0aGUgbWV0aG9kIHJldHVybnMgZmFsc2UsIHdoaWNoIGlzIHRoZSBzaG1lbSBkZWZh
dWx0IHZhbHVlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdh
bGlhLmNvbT4NCj4gLS0tDQo+ICAgcnVzdC9rZXJuZWwvZHJtL2dlbS9zaG1lbS5ycyB8IDcgKysr
KysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9ydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzIGIvcnVzdC9rZXJuZWwvZHJtL2dlbS9z
aG1lbS5ycw0KPiBpbmRleCA4ZjE3ZWJhMGJlOTkuLmE3ZjMzYjY2ZjYwYSAxMDA2NDQNCj4gLS0t
IGEvcnVzdC9rZXJuZWwvZHJtL2dlbS9zaG1lbS5ycw0KPiArKysgYi9ydXN0L2tlcm5lbC9kcm0v
Z2VtL3NobWVtLnJzDQo+IEBAIC0yNCw2ICsyNCwxMSBAQCB1c2UgZ2VtOjpCYXNlT2JqZWN0Ow0K
PiAgIHB1YiB0cmFpdCBEcml2ZXJPYmplY3Q6IGdlbTo6QmFzZURyaXZlck9iamVjdDxPYmplY3Q8
U2VsZj4+IHsNCj4gICAgICAgLy8vIFBhcmVudCBgRHJpdmVyYCBmb3IgdGhpcyBvYmplY3QuDQo+
ICAgICAgIHR5cGUgRHJpdmVyOiBkcnY6OkRyaXZlcjsNCj4gKw0KPiArICAgIC8vLyBEZWZpbmUg
dGhlIG1hcCBvYmplY3Qgd3JpdGUtY29tYmluZWQNCj4gKyAgICBmbiBzZXRfd2MoKSAtPiBib29s
IHsNCj4gKyAgICAgICAgZmFsc2UNCj4gKyAgICB9DQo+ICAgfQ0KDQpJIHRoaW5rIGlmIHlvdSdy
ZSBnb2luZyB0byBtYWtlIGl0IGEgc3RhdGljIGZ1bmN0aW9uIGxpa2UgdGhhdCwgd2UgbWlnaHQN
CmFzIHdlbGwganVzdCBtYWtlIGl0IGFuIGFzc29jaWF0ZWQgY29uc3RhbnQgbGlrZSBgREVGQVVM
VF9XQ2A/IEFmdGVyIGFsbA0KdGhlcmUgaXMgbm8gaW5mb3JtYXRpb24gZ2VtX2NyZWF0ZV9vYmpl
Y3QgZ2V0cyBvdGhlciB0aGFuIHRoZSBzaXplIHNvIHdlDQpjYW4ndCByZWFsbHkgZG8gYW55dGhp
bmcgbW9yZSB1c2VmdWwsIGFuZCBgc2V0X3djKClgIGNhbid0IGRvIG11Y2ggb3RoZXINCnRoYW4g
cmV0dXJuIGEgY29uc3RhbnQgXl4NCg0KVGhlIG9ubHkgY29ybmVyIGNhc2UgSSBjYW4gdGhpbmsg
b2YgaXMgY2FzZXMgd2hlcmUgdGhlIFdDIG1vZGUgZGVwZW5kcw0Kb24gdGhlIGRldmljZSAoZm9y
IGV4YW1wbGUsIGlmIHNvbWUgZGV2aWNlcyB3YW50IHRvIGVuYWJsZSBpdCBvciBub3QNCmRlcGVu
ZGluZyBvbiB3aGV0aGVyIHRoZSBwYXJ0aWN1bGFyIGhhcmR3YXJlIHZhcmlhbnQgaXMgY2FjaGUt
Y29oZXJlbnQpLA0KYnV0IHRoZW4gaXQgc2hvdWxkIHByb2JhYmx5IGp1c3QgYmUgcGFydCBvZiB0
aGUgcmV0dXJuIHZhbHVlIGZvciBUOjpuZXcNCnNpbmNlIHRoYXQgZnVuY3Rpb24gYWxyZWFkeSBn
ZXRzIGFsbCBhdmFpbGFibGUgaW5mb3JtYXRpb24gKGRldmljZSBhbmQNCnNpemUpLiBCdXQgSSB0
aGluayBhIGNvbnN0YW50IHdvcmtzIGZvciBub3csIHdlIGNhbiBhbHdheXMgZXh0ZW5kIGl0DQp3
aGVuIGEgdXNlIGNhc2UgY29tZXMgZm9yIGRvaW5nIG1vcmUuDQoNCn5+IExpbmENCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
