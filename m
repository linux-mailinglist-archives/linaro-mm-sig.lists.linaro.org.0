Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FDC6B235D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 12:48:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A8023F2F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 11:48:26 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 48F623EC4E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 11:48:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Hm4Ruk+S;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NMHCZo1nfWgGCidWepQEn7H90NLc3gJryuVWslIXuZA=; b=Hm4Ruk+SKwCl9vnxq7JID6VfZ8
	71NIoLHwwm5d071hkjEKwAe506Od8rhBhjdMWZrvpt2PqgDAP3YRnoHbWXAdNHE5EwOkSluUiGVXc
	MSK3vv/KdrYzqfPIR0rzSuqr24FXifCAwO/q/+V+YtavCaueRluBZpdCr+FlMFEyfNj+5Y4J828GX
	MrovSfRm+l2SPuzXfu2ykFXPfPOiMAfa+WJFXFWr9WYZxZNe2u5wF2ARie8l6+lrf9yT063JoT893
	kNHBQ1tAJBZmwaul2iDCfJx/zFv+CMX5Ql8Nwsx9kybCzBZ+O6S+gXJk9zHzoYfraA5CVs3PHyifx
	KAA9gExQ==;
Received: from [187.36.234.139] (helo=[192.168.1.195])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1paEkC-001VgO-Br; Thu, 09 Mar 2023 12:47:36 +0100
Message-ID: <8e091158-7826-1215-e717-081b25f48108@igalia.com>
Date: Thu, 9 Mar 2023 08:47:24 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Asahi Lina <lina@asahilina.net>,
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
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <488728fc-ada2-20a3-79be-8109d891a8cb@asahilina.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 48F623EC4E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[igalia.com:+];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	FREEMAIL_TO(0.00)[asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[asahilina.net:email];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: DIN4IULT3DD3GLMWBGN4EQNHXUQFGIFB
X-Message-ID-Hash: DIN4IULT3DD3GLMWBGN4EQNHXUQFGIFB
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] rust: drm: gem: shmem: Add DRM shmem helper abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DIN4IULT3DD3GLMWBGN4EQNHXUQFGIFB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMy85LzIzIDAyOjI1LCBBc2FoaSBMaW5hIHdyb3RlOg0KPiBPbiAwOC8wMy8yMDIzIDIyLjM4
LCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+PiBPbiAzLzcvMjMgMTE6MjUsIEFzYWhpIExpbmEgd3Jv
dGU6DQo+Pj4gVGhlIERSTSBzaG1lbSBoZWxwZXIgaW5jbHVkZXMgY29tbW9uIGNvZGUgdXNlZnVs
IGZvciBkcml2ZXJzIHdoaWNoDQo+Pj4gYWxsb2NhdGUgR0VNIG9iamVjdHMgYXMgYW5vbnltb3Vz
IHNobWVtLiBBZGQgYSBSdXN0IGFic3RyYWN0aW9uIGZvcg0KPj4+IHRoaXMuIERyaXZlcnMgY2Fu
IGNob29zZSB0aGUgcmF3IEdFTSBpbXBsZW1lbnRhdGlvbiBvciB0aGUgc2htZW0gbGF5ZXIsDQo+
Pj4gZGVwZW5kaW5nIG9uIHRoZWlyIG5lZWRzLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQXNh
aGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPj4+IC0tLQ0KPj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9LY29uZmlnICAgICAgICAgfCAgIDUgKw0KPj4+ICAgIHJ1c3QvYmluZGluZ3MvYmluZGlu
Z3NfaGVscGVyLmggfCAgIDIgKw0KPj4+ICAgIHJ1c3QvaGVscGVycy5jICAgICAgICAgICAgICAg
ICAgfCAgNjcgKysrKysrKw0KPj4+ICAgIHJ1c3Qva2VybmVsL2RybS9nZW0vbW9kLnJzICAgICAg
fCAgIDMgKw0KPj4+ICAgIHJ1c3Qva2VybmVsL2RybS9nZW0vc2htZW0ucnMgICAgfCAzODEgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+ICAgIDUgZmlsZXMgY2hh
bmdlZCwgNDU4IGluc2VydGlvbnMoKykNCj4+Pg0KPj4NCj4+IFsuLi5dDQo+Pg0KPj4+ICt1bnNh
ZmUgZXh0ZXJuICJDIiBmbiBnZW1fY3JlYXRlX29iamVjdDxUOiBEcml2ZXJPYmplY3Q+KA0KPj4+
ICsgICAgcmF3X2RldjogKm11dCBiaW5kaW5nczo6ZHJtX2RldmljZSwNCj4+PiArICAgIHNpemU6
IHVzaXplLA0KPj4+ICspIC0+ICptdXQgYmluZGluZ3M6OmRybV9nZW1fb2JqZWN0IHsNCj4+PiAr
ICAgIC8vIFNBRkVUWTogR0VNIGVuc3VyZXMgdGhlIGRldmljZSBsaXZlcyBhcyBsb25nIGFzIGl0
cyBvYmplY3RzIGxpdmUsDQo+Pj4gKyAgICAvLyBzbyB3ZSBjYW4gY29uanVyZSB1cCBhIHJlZmVy
ZW5jZSBmcm9tIHRoaW4gYWlyIGFuZCBuZXZlciBkcm9wIGl0Lg0KPj4+ICsgICAgbGV0IGRldiA9
IE1hbnVhbGx5RHJvcDo6bmV3KHVuc2FmZSB7IGRldmljZTo6RGV2aWNlOjpmcm9tX3JhdyhyYXdf
ZGV2KSB9KTsNCj4+PiArDQo+Pj4gKyAgICBsZXQgaW5uZXIgPSBtYXRjaCBUOjpuZXcoJipkZXYs
IHNpemUpIHsNCj4+PiArICAgICAgICBPayh2KSA9PiB2LA0KPj4+ICsgICAgICAgIEVycihlKSA9
PiByZXR1cm4gZS50b19wdHIoKSwNCj4+PiArICAgIH07DQo+Pj4gKw0KPj4+ICsgICAgbGV0IHAg
PSB1bnNhZmUgew0KPj4+ICsgICAgICAgIGJpbmRpbmdzOjprcmVhbGxvYygNCj4+PiArICAgICAg
ICAgICAgY29yZTo6cHRyOjpudWxsKCksDQo+Pj4gKyAgICAgICAgICAgIE9iamVjdDo6PFQ+OjpT
SVpFLA0KPj4+ICsgICAgICAgICAgICBiaW5kaW5nczo6R0ZQX0tFUk5FTCB8IGJpbmRpbmdzOjpf
X0dGUF9aRVJPLA0KPj4+ICsgICAgICAgICkgYXMgKm11dCBPYmplY3Q8VD4NCj4+PiArICAgIH07
DQo+Pj4gKw0KPj4+ICsgICAgaWYgcC5pc19udWxsKCkgew0KPj4+ICsgICAgICAgIHJldHVybiBF
Tk9NRU0udG9fcHRyKCk7DQo+Pj4gKyAgICB9DQo+Pj4gKw0KPj4+ICsgICAgLy8gU0FGRVRZOiBw
IGlzIHZhbGlkIGFzIGxvbmcgYXMgdGhlIGFsbG9jIHN1Y2NlZWRlZA0KPj4+ICsgICAgdW5zYWZl
IHsNCj4+PiArICAgICAgICBhZGRyX29mX211dCEoKCpwKS5kZXYpLndyaXRlKGRldik7DQo+Pj4g
KyAgICAgICAgYWRkcl9vZl9tdXQhKCgqcCkuaW5uZXIpLndyaXRlKGlubmVyKTsNCj4+PiArICAg
IH0NCj4+PiArDQo+Pj4gKyAgICAvLyBTQUZFVFk6IGRybV9nZW1fc2htZW1fb2JqZWN0IGlzIHNh
ZmUgdG8gemVyby1pbml0LCBhbmQNCj4+PiArICAgIC8vIHRoZSByZXN0IG9mIE9iamVjdCBoYXMg
YmVlbiBpbml0aWFsaXplZA0KPj4+ICsgICAgbGV0IG5ldzogJm11dCBPYmplY3Q8VD4gPSB1bnNh
ZmUgeyAmbXV0ICoocCBhcyAqbXV0IF8pIH07DQo+Pj4gKw0KPj4+ICsgICAgbmV3Lm9iai5iYXNl
LmZ1bmNzID0gJk9iamVjdDo6PFQ+OjpWVEFCTEU7DQo+Pj4gKyAgICAmbXV0IG5ldy5vYmouYmFz
ZQ0KPj4+ICt9DQo+Pg0KPj4gSXQgd291bGQgYmUgbmljZSB0byBhbGxvdyB0byBzZXQgd2MgaW5z
aWRlIHRoZSBnZW1fY3JlYXRlX29iamVjdCBjYWxsYmFjaywNCj4+IGFzIHNvbWUgZHJpdmVycyBk
byBpdCBzbywgbGlrZSB2M2QsIHZjNCwgcGFuZnJvc3QsIGxpbWEuLi4NCj4gDQo+IFRoaXMgaXMg
YWN0dWFsbHkgYSBiaXQgdHJpY2t5IHRvIGRvIHNhZmVseSwgYmVjYXVzZSB3ZSBjYW4ndCBqdXN0
IGhhdmUgYQ0KPiBjYWxsYmFjayB0aGF0IHRha2VzIHRoZSBkcm1fZ2VtX3NobWVtX29iamVjdCBp
bnN0YW5jZSBpbnNpZGUNCj4gZ2VtX2NyZWF0ZV9vYmplY3QgYmVjYXVzZSBpdCBpcyBub3QgZnVs
bHkgaW5pdGlhbGl6ZWQgeWV0IGZyb20gdGhlIHBvaW50DQo+IG9mIHZpZXcgb2YgdGhlIGdlbSBz
aG1lbSBBUEkuIE1heWJlIHdlIGNvdWxkIGhhdmUgc29tZSBzb3J0IG9mIHRlbXBvcmFyeQ0KPiBw
cm94eSBvYmplY3QgdGhhdCBvbmx5IGxldHMgeW91IGRvIHNhZmUgdGhpbmdzIGxpa2Ugc2V0IG1h
cF93Yz8gT3IgbWF5YmUNCj4gdGhlIG5ldygpIGNhbGxiYWNrIGNvdWxkIHJldHVybiBzb21ldGhp
bmcgbGlrZSBhIFNobWVtVGVtcGxhdGU8VD4gdHlwZQ0KPiB0aGF0IGNvbnRhaW5zIGJvdGggdGhl
IGlubmVyIGRhdGEgYW5kIHNvbWUgbWlzY2VsbGFuZW91cyBmaWVsZHMgbGlrZSB0aGUNCj4gaW5p
dGlhbCBtYXBfd2Mgc3RhdGU/DQoNCkkgc2VlIHRoYXQgbW9zdCBkcml2ZXJzIHVzZSB0aGlzIGhv
b2sgdG8gc2V0IG1hcF93YyBhbmQgc2V0IGZ1bmNzLiBXaGF0DQphcmUgeW91ciB0aG91Z2h0cyBv
biBzb21ldGhpbmcgbGlrZSB0aGlzPw0KDQpCZXN0IFJlZ2FyZHMsDQotIE1hw61yYSBDYW5hbA0K
DQogRnJvbSA2MWYyM2Y0YTM5MDI4YzlkMzRkM2RmNThkNzY0MGJmY2Q2NGU5YWY5IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogPT9VVEYtOD9xP01hPUMzPUFEcmE9MjBDYW5hbD89IDxt
Y2FuYWxAaWdhbGlhLmNvbT4NCkRhdGU6IFRodSwgOSBNYXIgMjAyMyAwODoyNDowOSAtMDMwMA0K
U3ViamVjdDogW1BBVENIXSBydXN0OiBkcm06IGdlbTogc2htZW06IFNldCBtYXBfd2Mgb24gZ2Vt
X2NyZWF0ZV9vYmplY3QNCiAgY2FsbGJhY2sNCk1JTUUtVmVyc2lvbjogMS4wDQpDb250ZW50LVR5
cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgNCkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6
IDhiaXQNCg0KU29tZSBkcml2ZXJzIHVzZSB0aGUgZ2VtX2NyZWF0ZV9vYmplY3QgY2FsbGJhY2sg
dG8gZGVmaW5lIHRoZSBtYXBwaW5nIG9mDQp0aGUgb2JqZWN0IHdyaXRlLWNvbWJpbmVkIChtYXBf
d2MpLiBDdXJyZW50bHksIHRoZSBEUk0gUnVzdCBhYnN0cmFjdGlvbnMNCmRvZXNuJ3QgYWxsb3cg
c3VjaCBvcGVyYXRpb24uIFNvLCBhZGQgYSBtZXRob2QgdG8gdGhlIERyaXZlck9iamVjdCB0cmFp
dA0KdG8gYWxsb3cgZHJpdmVycyB0byBzZXQgbWFwX3djIG9uIHRoZSBnZW1fY3JlYXRlX29iamVj
dCBjYWxsYmFjay4gQnkNCmRlZmF1bHQsIHRoZSBtZXRob2QgcmV0dXJucyBmYWxzZSwgd2hpY2gg
aXMgdGhlIHNobWVtIGRlZmF1bHQgdmFsdWUuDQoNClNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5h
bCA8bWNhbmFsQGlnYWxpYS5jb20+DQotLS0NCiAgcnVzdC9rZXJuZWwvZHJtL2dlbS9zaG1lbS5y
cyB8IDcgKysrKysrKw0KICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQoNCmRpZmYg
LS1naXQgYS9ydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzIGIvcnVzdC9rZXJuZWwvZHJtL2dl
bS9zaG1lbS5ycw0KaW5kZXggOGYxN2ViYTBiZTk5Li5hN2YzM2I2NmY2MGEgMTAwNjQ0DQotLS0g
YS9ydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzDQorKysgYi9ydXN0L2tlcm5lbC9kcm0vZ2Vt
L3NobWVtLnJzDQpAQCAtMjQsNiArMjQsMTEgQEAgdXNlIGdlbTo6QmFzZU9iamVjdDsNCiAgcHVi
IHRyYWl0IERyaXZlck9iamVjdDogZ2VtOjpCYXNlRHJpdmVyT2JqZWN0PE9iamVjdDxTZWxmPj4g
ew0KICAgICAgLy8vIFBhcmVudCBgRHJpdmVyYCBmb3IgdGhpcyBvYmplY3QuDQogICAgICB0eXBl
IERyaXZlcjogZHJ2OjpEcml2ZXI7DQorDQorICAgIC8vLyBEZWZpbmUgdGhlIG1hcCBvYmplY3Qg
d3JpdGUtY29tYmluZWQNCisgICAgZm4gc2V0X3djKCkgLT4gYm9vbCB7DQorICAgICAgICBmYWxz
ZQ0KKyAgICB9DQogIH0NCg0KICAvLyBGSVhNRTogVGhpcyBpcyB0ZXJyaWJsZSBhbmQgSSBkb24n
dCBrbm93IGhvdyB0byBhdm9pZCBpdA0KQEAgLTExMCw2ICsxMTUsOCBAQCB1bnNhZmUgZXh0ZXJu
ICJDIiBmbiBnZW1fY3JlYXRlX29iamVjdDxUOiBEcml2ZXJPYmplY3Q+KA0KICAgICAgbGV0IG5l
dzogJm11dCBPYmplY3Q8VD4gPSB1bnNhZmUgeyAmbXV0ICoocCBhcyAqbXV0IF8pIH07DQoNCiAg
ICAgIG5ldy5vYmouYmFzZS5mdW5jcyA9ICZPYmplY3Q6OjxUPjo6VlRBQkxFOw0KKyAgICBuZXcu
b2JqLm1hcF93YyA9IDxUPjo6c2V0X3djKCk7DQorDQogICAgICAmbXV0IG5ldy5vYmouYmFzZQ0K
ICB9DQoNCj4gDQo+IEkgdGhpbmsgd2UgY2FuIGFsc28ganVzdCB3YWl0IHVudGlsIHRoZSBmaXJz
dCB1c2VyIGJlZm9yZSB3ZSBkbyB0aGlzDQo+IHRob3VnaC4uLiB0aGUgZ29hbCBvZiB0aGUgYWJz
dHJhY3Rpb25zIGlzIHRvIHN1cHBvcnQgdGhlIEFQSXMgd2UNCj4gYWN0dWFsbHkgdXNlLiBJIGtu
b3cgeW91IG5lZWQgdGhpcyBmb3IgdmdlbSwgc28gcGxlYXNlIGZlZWwgZnJlZSB0bw0KPiBpbXBs
ZW1lbnQgaXQgYXMgYSBzZXBhcmF0ZSBwYXRjaCEgSSB0aGluayBpdCdzIGJlc3QgaWYgeW91IGdl
dCBjcmVkaXQNCj4gZm9yIHRoZSBhYnN0cmFjdGlvbiBjaGFuZ2VzIHlvdSBuZWVkLCBzbyB3ZSBj
YW4gYWxsIHdvcmsgdG9nZXRoZXIgb24gdGhlDQo+IGRlc2lnbiBzbyBpdCB3b3JrcyBmb3IgZXZl
cnlvbmUncyB1c2UgY2FzZXMgaW5zdGVhZCBvZiBqdXN0IGhhdmluZyBtZQ0KPiBtYWtlIGFsbCB0
aGUgZGVjaXNpb25zIF5eIChhbmQgaXQncyBmaW5lIGlmIHdlIGhhdmUgdG8gcmVmYWN0b3IgdGhl
IEFQSXMhKQ0KPiANCj4gfn4gTGluYQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
