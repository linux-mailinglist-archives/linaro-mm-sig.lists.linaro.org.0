Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B56BBAD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:27:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F81F3F462
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:27:25 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 6C0593E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 06:11:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=PlvUU7AC;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id BF1D142118;
	Thu,  9 Mar 2023 06:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678342262;
	bh=B+9nPUAyV8RcIjHdZiRtvBHrm1qUoJ2YnUJI9mL8OU8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=PlvUU7AChMN+y2uSDSmhUq9MNe+rf6C0ZtCgSk8xWkohNRj8+AyB3wr36ek6paNek
	 RiQBVRMogoYUk74mPqQnlLlVUmWj9nxyFm2F+Z4kMItrty/YfZ/AsxRmAqrPd2Sg4E
	 Q+5Mps+qnDRYVKtcv/q51vubggpiDtTCB8dVe91p6uBvaAdwhg6i9Kj3C1tawnxOPh
	 v93PGOH4x1lR1wVdsLQFREJ3WFtdSb4BoENJX7+st1wqSranqShTxvK7/pgH7lLPfb
	 IUd8fUVWqVnyfIbWo2NICrP9hSEh1gRFIbwzsB9NpGu6/qMhiTfDbyNoj0LddnTdfC
	 Vq0jJdU85h8Iw==
Message-ID: <dfbed5a2-9ec5-5cd0-c992-27f4dd6c8808@asahilina.net>
Date: Thu, 9 Mar 2023 15:10:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-2-917ff5bc80a8@asahilina.net>
 <LgJBjn9Sl_vEeMPI8yvQkT5yQzZGk3eC8zdazRRupvjTuysDp8AJU1KY937LoPXugI78XH35UbTxn5tQzunr_pnr63bV_4HC_Ft6VW_mRL8=@protonmail.com>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <LgJBjn9Sl_vEeMPI8yvQkT5yQzZGk3eC8zdazRRupvjTuysDp8AJU1KY937LoPXugI78XH35UbTxn5tQzunr_pnr63bV_4HC_Ft6VW_mRL8=@protonmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C0593E8AB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[asahilina.net:dkim,asahilina.net:email,marcansoft.com:rdns,mail.marcansoft.com:helo];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QO2LMZM2TJSPW56K34S7LQHKAK3JDNB2
X-Message-ID-Hash: QO2LMZM2TJSPW56K34S7LQHKAK3JDNB2
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:50 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 02/18] rust: drm: Add Device and Driver abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QO2LMZM2TJSPW56K34S7LQHKAK3JDNB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMDgvMDMvMjAyMyAwMy4xOSwgQmrDtnJuIFJveSBCYXJvbiB3cm90ZToNCj4gLS0tLS0tLSBP
cmlnaW5hbCBNZXNzYWdlIC0tLS0tLS0NCj4gT24gVHVlc2RheSwgTWFyY2ggN3RoLCAyMDIzIGF0
IDE1OjI1LCBBc2FoaSBMaW5hIDxsaW5hQGFzYWhpbGluYS5uZXQ+IHdyb3RlOg0KPiANCj4+IEFk
ZCB0aGUgaW5pdGlhbCBhYnN0cmFjdGlvbnMgZm9yIERSTSBkcml2ZXJzIGFuZCBkZXZpY2VzLiBU
aGVzZSBnbw0KPj4gdG9nZXRoZXIgaW4gb25lIGNvbW1pdCBzaW5jZSB0aGV5IGFyZSBmYWlybHkg
dGlnaHRseSBjb3VwbGVkIHR5cGVzLg0KPj4NCj4+IEEgZmV3IHRoaW5ncyBoYXZlIGJlZW4gc3R1
YmJlZCBvdXQsIHRvIGJlIGltcGxlbWVudGVkIGFzIGZ1cnRoZXIgYml0cyBvZg0KPj4gdGhlIERS
TSBzdWJzeXN0ZW0gYXJlIGludHJvZHVjZWQuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQXNhaGkg
TGluYSBsaW5hQGFzYWhpbGluYS5uZXQNCj4+DQo+PiAtLS0NClsuLi5dDQoNCj4+ICsvLy8gSW5m
b3JtYXRpb24gZGF0YSBmb3IgYSBEUk0gRHJpdmVyLg0KPj4gK3B1YiBzdHJ1Y3QgRHJpdmVySW5m
byB7DQo+PiArICAgIC8vLyBEcml2ZXIgbWFqb3IgdmVyc2lvbi4NCj4+ICsgICAgcHViIG1ham9y
OiBpMzIsDQo+PiArICAgIC8vLyBEcml2ZXIgbWlub3IgdmVyc2lvbi4NCj4+ICsgICAgcHViIG1p
bm9yOiBpMzIsDQo+PiArICAgIC8vLyBEcml2ZXIgcGF0Y2hsZXZlbCB2ZXJzaW9uLg0KPj4gKyAg
ICBwdWIgcGF0Y2hsZXZlbDogaTMyLA0KPj4gKyAgICAvLy8gRHJpdmVyIG5hbWUuDQo+PiArICAg
IHB1YiBuYW1lOiAmJ3N0YXRpYyBDU3RyLA0KPj4gKyAgICAvLy8gRHJpdmVyIGRlc2NyaXB0aW9u
Lg0KPj4gKyAgICBwdWIgZGVzYzogJidzdGF0aWMgQ1N0ciwNCj4+ICsgICAgLy8vIERyaXZlciBk
YXRlLg0KPj4gKyAgICBwdWIgZGF0ZTogJidzdGF0aWMgQ1N0ciwNCj4+ICt9DQo+PiArDQo+IA0K
PiBDb3VsZCB5b3UgcGxlYXNlIGFkZCBhbiBJbnZhcmlhbnRzIHNlY3Rpb24gdG8gdGhlIGRvYyBj
b21tZW50cyBpbmRpY2F0aW5nIHdoYXQgcmVxdWlyZW1lbnRzIHRoZXNlIGZ1bmN0aW9uIHBvaW50
ZXJzIG11c3Qgc2F0aXNmeT8NCg0KSSBjYW4gdHJ5IChhcyBtdWNoIGFzIEkgY2FuIGRpdmluZSBm
cm9tIHRoZSBDIHNpZGUgYW55d2F5Li4uKS4gSSBndWVzcw0KeW91IHdhbnQgaW50ZXJmYWNlIGRv
Y3MgZm9yIGVhY2ggY2FsbGJhY2ssIHNvIGxpa2Ugd2hhdCBpdCBtdXN0IGRvIGFuZA0Kd2hhdCBp
bnZhcmlhbnRzIGVhY2ggb25lIG11c3QgdXBob2xkPw0KDQpOb3RlIHRoYXQgdGhpcyBpcyBhIGtl
cm5lbCBjcmF0ZS1vbmx5IHN0cnVjdCAodGhlIGZpZWxkcyBhcmUgbm90IHB1YmxpYykNCnNvIHVz
ZXJzIGNhbid0IGNyZWF0ZSB0aGVpciBvd24gQWxsb2NPcHMgdmFyaWFudHMgYW55d2F5IChwbHVz
IEFsbG9jSW1wbA0KaXMgc2VhbGVkLCBvbiB0b3Agb2YgdGhhdCksIGJ1dCBJIGd1ZXNzIGl0IG1h
a2VzIHNlbnNlIHRvIGRvY3VtZW50IGZvcg0KaW50ZXJuYWwga2VybmVsIGNyYXRlIHB1cnBvc2Vz
LiBBdCBzb21lIHBvaW50IGl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8NCmFsbG93IGRyaXZlcnMgdG8g
b3ZlcnJpZGUgdGhlc2Ugd2l0aCBwcm9wZXIgUnVzdCBjYWxsYmFja3MgKGFuZCB0aGVuIHRoZQ0K
d3JhcHBlcnMgbmVlZCB0byBlbnN1cmUgc2FmZXR5KSwgYnV0IHJpZ2h0IG5vdyB0aGF0J3Mgbm90
IGltcGxlbWVudGVkLg0KDQo+PiArLy8vIEludGVybmFsIG1lbW9yeSBtYW5hZ2VtZW50IG9wZXJh
dGlvbiBzZXQsIG5vcm1hbGx5IGNyZWF0ZWQgYnkgbWVtb3J5IG1hbmFnZXJzIChlLmcuIEdFTSku
DQo+PiArLy8vDQo+PiArLy8vIFNlZSBga2VybmVsOjpkcm06OmdlbWAgYW5kIGBrZXJuZWw6OmRy
bTo6Z2VtOjpzaG1lbWAuDQo+PiArcHViIHN0cnVjdCBBbGxvY09wcyB7DQo+PiArICAgIHB1Yihj
cmF0ZSkgZ2VtX2NyZWF0ZV9vYmplY3Q6IE9wdGlvbjwNCj4+ICsgICAgICAgIHVuc2FmZSBleHRl
cm4gIkMiIGZuKA0KPj4gKyAgICAgICAgICAgIGRldjogKm11dCBiaW5kaW5nczo6ZHJtX2Rldmlj
ZSwNCj4+ICsgICAgICAgICAgICBzaXplOiB1c2l6ZSwNCj4+ICsgICAgICAgICkgLT4gKm11dCBi
aW5kaW5nczo6ZHJtX2dlbV9vYmplY3QsDQo+PiArICAgID4sDQo+PiArICAgIHB1YihjcmF0ZSkg
cHJpbWVfaGFuZGxlX3RvX2ZkOiBPcHRpb248DQo+PiArICAgICAgICB1bnNhZmUgZXh0ZXJuICJD
IiBmbigNCj4+ICsgICAgICAgICAgICBkZXY6ICptdXQgYmluZGluZ3M6OmRybV9kZXZpY2UsDQo+
PiArICAgICAgICAgICAgZmlsZV9wcml2OiAqbXV0IGJpbmRpbmdzOjpkcm1fZmlsZSwNCj4+ICsg
ICAgICAgICAgICBoYW5kbGU6IHUzMiwNCj4+ICsgICAgICAgICAgICBmbGFnczogdTMyLA0KPj4g
KyAgICAgICAgICAgIHByaW1lX2ZkOiAqbXV0IGNvcmU6OmZmaTo6Y19pbnQsDQo+PiArICAgICAg
ICApIC0+IGNvcmU6OmZmaTo6Y19pbnQsDQo+PiArICAgID4sDQo+PiArICAgIHB1YihjcmF0ZSkg
cHJpbWVfZmRfdG9faGFuZGxlOiBPcHRpb248DQo+PiArICAgICAgICB1bnNhZmUgZXh0ZXJuICJD
IiBmbigNCj4+ICsgICAgICAgICAgICBkZXY6ICptdXQgYmluZGluZ3M6OmRybV9kZXZpY2UsDQo+
PiArICAgICAgICAgICAgZmlsZV9wcml2OiAqbXV0IGJpbmRpbmdzOjpkcm1fZmlsZSwNCj4+ICsg
ICAgICAgICAgICBwcmltZV9mZDogY29yZTo6ZmZpOjpjX2ludCwNCj4+ICsgICAgICAgICAgICBo
YW5kbGU6ICptdXQgdTMyLA0KPj4gKyAgICAgICAgKSAtPiBjb3JlOjpmZmk6OmNfaW50LA0KPj4g
KyAgICA+LA0KPj4gKyAgICBwdWIoY3JhdGUpIGdlbV9wcmltZV9pbXBvcnQ6IE9wdGlvbjwNCj4+
ICsgICAgICAgIHVuc2FmZSBleHRlcm4gIkMiIGZuKA0KPj4gKyAgICAgICAgICAgIGRldjogKm11
dCBiaW5kaW5nczo6ZHJtX2RldmljZSwNCj4+ICsgICAgICAgICAgICBkbWFfYnVmOiAqbXV0IGJp
bmRpbmdzOjpkbWFfYnVmLA0KPj4gKyAgICAgICAgKSAtPiAqbXV0IGJpbmRpbmdzOjpkcm1fZ2Vt
X29iamVjdCwNCj4+ICsgICAgPiwNCj4+ICsgICAgcHViKGNyYXRlKSBnZW1fcHJpbWVfaW1wb3J0
X3NnX3RhYmxlOiBPcHRpb248DQo+PiArICAgICAgICB1bnNhZmUgZXh0ZXJuICJDIiBmbigNCj4+
ICsgICAgICAgICAgICBkZXY6ICptdXQgYmluZGluZ3M6OmRybV9kZXZpY2UsDQo+PiArICAgICAg
ICAgICAgYXR0YWNoOiAqbXV0IGJpbmRpbmdzOjpkbWFfYnVmX2F0dGFjaG1lbnQsDQo+PiArICAg
ICAgICAgICAgc2d0OiAqbXV0IGJpbmRpbmdzOjpzZ190YWJsZSwNCj4+ICsgICAgICAgICkgLT4g
Km11dCBiaW5kaW5nczo6ZHJtX2dlbV9vYmplY3QsDQo+PiArICAgID4sDQo+PiArICAgIHB1Yihj
cmF0ZSkgZ2VtX3ByaW1lX21tYXA6IE9wdGlvbjwNCj4+ICsgICAgICAgIHVuc2FmZSBleHRlcm4g
IkMiIGZuKA0KPj4gKyAgICAgICAgICAgIG9iajogKm11dCBiaW5kaW5nczo6ZHJtX2dlbV9vYmpl
Y3QsDQo+PiArICAgICAgICAgICAgdm1hOiAqbXV0IGJpbmRpbmdzOjp2bV9hcmVhX3N0cnVjdCwN
Cj4+ICsgICAgICAgICkgLT4gY29yZTo6ZmZpOjpjX2ludCwNCj4+ICsgICAgPiwNCj4+ICsgICAg
cHViKGNyYXRlKSBkdW1iX2NyZWF0ZTogT3B0aW9uPA0KPj4gKyAgICAgICAgdW5zYWZlIGV4dGVy
biAiQyIgZm4oDQo+PiArICAgICAgICAgICAgZmlsZV9wcml2OiAqbXV0IGJpbmRpbmdzOjpkcm1f
ZmlsZSwNCj4+ICsgICAgICAgICAgICBkZXY6ICptdXQgYmluZGluZ3M6OmRybV9kZXZpY2UsDQo+
PiArICAgICAgICAgICAgYXJnczogKm11dCBiaW5kaW5nczo6ZHJtX21vZGVfY3JlYXRlX2R1bWIs
DQo+PiArICAgICAgICApIC0+IGNvcmU6OmZmaTo6Y19pbnQsDQo+PiArICAgID4sDQo+PiArICAg
IHB1YihjcmF0ZSkgZHVtYl9tYXBfb2Zmc2V0OiBPcHRpb248DQo+PiArICAgICAgICB1bnNhZmUg
ZXh0ZXJuICJDIiBmbigNCj4+ICsgICAgICAgICAgICBmaWxlX3ByaXY6ICptdXQgYmluZGluZ3M6
OmRybV9maWxlLA0KPj4gKyAgICAgICAgICAgIGRldjogKm11dCBiaW5kaW5nczo6ZHJtX2Rldmlj
ZSwNCj4+ICsgICAgICAgICAgICBoYW5kbGU6IHUzMiwNCj4+ICsgICAgICAgICAgICBvZmZzZXQ6
ICptdXQgdTY0LA0KPj4gKyAgICAgICAgKSAtPiBjb3JlOjpmZmk6OmNfaW50LA0KPj4gKyAgICA+
LA0KPj4gKyAgICBwdWIoY3JhdGUpIGR1bWJfZGVzdHJveTogT3B0aW9uPA0KPj4gKyAgICAgICAg
dW5zYWZlIGV4dGVybiAiQyIgZm4oDQo+PiArICAgICAgICAgICAgZmlsZV9wcml2OiAqbXV0IGJp
bmRpbmdzOjpkcm1fZmlsZSwNCj4+ICsgICAgICAgICAgICBkZXY6ICptdXQgYmluZGluZ3M6OmRy
bV9kZXZpY2UsDQo+PiArICAgICAgICAgICAgaGFuZGxlOiB1MzIsDQo+PiArICAgICAgICApIC0+
IGNvcmU6OmZmaTo6Y19pbnQsDQo+PiArICAgID4sDQo+PiArfQ0KPj4gKw0KDQp+fiBMaW5hDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
